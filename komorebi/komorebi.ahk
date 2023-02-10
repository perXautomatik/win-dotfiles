#SingleInstance Force
#WinActivateForce

; You can generate a fresh version of this file with "komorebic ahk-library"
#Include %A_ScriptDir%\komorebic.lib.ahk
; https://github.com/LGUG2Z/komorebi/#generating-common-application-specific-configurations
#Include %A_ScriptDir%\komorebi.generated.ahk

; Default to minimizing windows when switching workspaces
WindowHidingBehaviour("minimize")

; Set cross-monitor move behaviour to insert instead of swap
CrossMonitorMoveBehaviour("insert")

; Enable hot reloading of changes to this file
WatchConfiguration("enable")

; Ensure there is 1 workspace created on monitor 0
EnsureWorkspaces(0, 1)

; Configure the invisible border dimensions
; InvisibleBorders(7, 0, 14, 7)

; Configure the 1st workspace
WorkspaceName(0, 0, "I")

; Uncomment the next two lines if you want a visual border drawn around the focused window
ActiveWindowBorderColour(66, 165, 245, "single") ; this is a nice blue colour
ActiveWindowBorder("enable")

; Allow komorebi to start managing windows
CompleteConfiguration()

MouseFollowsFocus("disable")

!o::ToggleMouseFollowsFocus()

; Change the focused window
!h::Focus("left")
!j::Focus("down")
!k::Focus("up")
!l::Focus("right")

; Move the focused window in a given direction
!^h::Move("left")
!^j::Move("down")
!^k::Move("up")
!^l::Move("right")

; Move the focused window in a given direction
!+h::ResizeAxis("horizontal", "decrease")
!+l::ResizeAxis("horizontal", "increase")
!+j::ResizeAxis("vertical", "increase")
!+k::ResizeAxis("vertical", "decrease")

; Stack the focused window in a given direction
^!+h::Stack("left")
^!+l::Stack("right")
^!+k::Stack("up")
^!+j::Stack("down")

; Cycle stack
!]::CycleStack("next")
![::CycleStack("previous")

; Unstack the focused window
!+d::Unstack()

; Promote the focused window to the top of the tree
!+Enter::Promote()

; bsp, columns, rows, vertical-stack, horizontal-stack, ultrawide-vertical-stack
!+c::WorkspaceLayout(0, 0, "columns")
!+b::WorkspaceLayout(0, 0, "bsp")

!+t::ToggleTiling()

; Toggle the Monocle layout for the focused window
^!+f::ToggleMonocle()

; Toggle native maximize for the focused window
!+=::ToggleMaximize()

; Flip horizontally
; !x::FlipLayout("horizontal")

; Flip vertically
; !y::FlipLayout("vertical")

; Force a retile if things get janky
^!r::Retile()

; Float the focused window
!t::ToggleFloat()

; Pause responding to any window events or komorebic commands
^!p::TogglePause()

; Switch to workspace
!1::FocusWorkspace(0)
!2::FocusWorkspace(1)
!3::FocusWorkspace(2)
!4::FocusWorkspace(3)

; Move window to workspace
!+1::MoveToWorkspace(0)
!+2::MoveToWorkspace(1)
!+3::MoveToWorkspace(2)
!+4::MoveToWorkspace(3)

!+i::
Run, komorebic.exe save ~/.config/komorebi/layouts/primary.json
return

!+m::
Run, komorebic.exe load ~/.config/komorebi/layouts/primary.json
return

#+o::ReloadConfiguration()

#+k::Reload

^#+k::
Stop()
exitapp
#Requires AutoHotkey v2.0.2
#SingleInstance Force

DetectHiddenWindows("On")
ProcessSetPriority("High")
Persistent(true)
SendMode("Input")
SetWorkingDir(A_ScriptDir)

#Include komorebi.lib.ahk
#Include ../../ahk/variables.ahk

#Include ../../ahk/common.ahk
#Include ../../ahk/terminal.ahk

containerPadAmount := 8
workspacePadAmount := 8
workspaceCount := 6
monitorCount := MonitorGetCount()
writeLog("[Komorebi] Workspace count: " workspaceCount)
writeLog("[Komorebi] Monitor count: " monitorCount "`n")

OnMessage(0x7E, onDisplayChange)
onDisplayChange(wParam, lParam, msg, hwnd) {
    writeLog("[Komorebi] Display Changed...")
    KoremibiRestart()
}

KomorebiStart() {
    if ProcessExist("komorebi.exe") {
        writeLog("[Komorebi] Still running!")
        KomorebiStop()

        writeLog("[Komorebi] Done! Now proceed to start.")
    }

    RunWait("komorebic.exe start --await-configuration")
    Sleep(10000)

    yasb_start()

    writeLog("")
    writeLog("[Komorebi] Starting...")

    CrossMonitorMoveBehaviour("insert")
    WindowHidingBehaviour("hide")
    WatchConfiguration("enable")
    InvisibleBorders(7, 0, 14, 7)
    ToggleFocusFollowsMouse("windows")
    ToggleMouseFollowsFocus()

    ; https://github.com/sitiom/dotfiles/blob/main/chezmoi/komorebi.ahk#L20-L28
    Loop monitorCount {
        monitorIndex := A_Index - 1
        EnsureWorkspaces(monitorIndex, workspaceCount)
        Loop workspaceCount {
            workspaceIndex := A_Index - 1
            ContainerPadding(monitorIndex, workspaceIndex, containerPadAmount)
            WorkspacePadding(monitorIndex, workspaceIndex, workspacePadAmount)
        }
    }

    ; Configure floating rules
    FloatRule("class", "ExplorerBrowserControl")
    FloatRule("class", "OperationStatusWindow")
    FloatRule("class", "MsiDialogCloseClass")
    FloatRule("class", "TaskManagerWindow")
    FloatRule("title", "Control Panel")
    FloatRule("title", "Window Spy")
    FloatRule("exe", "git-credential-helper-selector.exe")
    FloatRule("exe", "ApplicationFrameHost.exe")
    FloatRule("exe", "explorer.exe")
    FloatRule("exe", "msiexec.exe")
    FloatRule("exe", "ahk.exe")

    ; Identify applications to be forcibly managed
    ManageRule("class", "ConsoleWindowClass")
    ManageRule("exe", "foobar2000.exe")

    ; Identify Minimize-to-Tray Applications
    IdentifyTrayApplication("exe", "AutoHotkeyU64.exe")
    IdentifyTrayApplication("exe", "Steam++.exe")
    IdentifyTrayApplication("exe", "Discord.exe")
    IdentifyTrayApplication("exe", "Spotify.exe")
    IdentifyTrayApplication("exe", "ShareX.exe")

    ; Identify applications that have overflowing borders
    IdentifyBorderOverflowApplication("exe", "VSCodium.exe")
    IdentifyBorderOverflowApplication("exe", "Discord.exe")
    IdentifyBorderOverflowApplication("exe", "Spotify.exe")
    IdentifyBorderOverflowApplication("exe", "ShareX.exe")
    IdentifyBorderOverflowApplication("exe", "opera.exe")

    ; Allow komorebi to start managing windows
    CompleteConfiguration()

    ; Retile windows
    Sleep(1500)
    writeLog("[Komorebi] Retiling windows")
    Retile()
    writeLog("[Komorebi] Started!")
}

yasb_start() {
    if not ProcessExist("pythonw.exe") {
        writeLog("")
        writeLog("[Yasb] Starting...")
        RunWait("pythonw " dotfiles_path "\yasb\src\main.py", , "Hide")
        writeLog("[Yasb] Started!")
    }
}

KomorebiStop() {
    if ProcessExist("komorebi.exe") {
        writeLog("[Komorebi] Stopping...")
        RunWait("komorebic restore-windows", , "Hide")
        RunWait("powershell " . "Stop-Process -Name 'komorebi'", , "Hide")
        writeLog("[Komorebi] Stopped!")
    }

    YasbStop()
}

YasbStop() {
    if ProcessExist("pythonw.exe") {
        writeLog("[Yasb] Stopping...")
        RunWait("taskkill.exe /f /im pythonw.exe", , "Hide")
        writeLog("[Yasb] Stopped!")
    }
}

KoremibiRestart() {
    writeLog("[Komorebi] Restarting...")
    Reload()
    writeLog("[Komorebi] Restarted!...")
}

KomorebiStart()

; CONTROLS
; #	Win (Windows logo key)
; !	Alt
; ^	Ctrl
; +	Shift
; &	An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.

Loop workspaceCount {
    ; Switch to workspace,  Alt + 1~9
    Hotkey("!" A_Index, (key) => writeLog("[Komorebi] Switch workspace No. " Integer(SubStr(key, 2)))
            FocusWorkspace(Integer(SubStr(key, 2)) - 1)
        , "On")
    ; Move window to workspace, Alt + Shift + 1~9
    Hotkey("!+" A_Index, (key) => writeLog("[Komorebi] Move window to workspace No. " Integer(SubStr(key, 3)))
            MoveToWorkspace(Integer(SubStr(key, 3)) - 1)
        , "On")
}

; Force a retile, Alt + Shift + R
!+r:: {
    writeLog("[Komorebi] Retiling windows")
    Retile()
}
; Float the focused window, Alt + T
!t:: {
    writeLog("[Komorebi] Float focused window")
    ToggleFloat()
}
; Reload komorebi.ahk, Alt + O
!o:: {
    writeLog("[Komorebi] Reload configuration")
    ReloadConfiguration()
    KoremibiRestart()
}
!+o:: {
    writeLog("[Komorebi] Exiting, wait for a moment...")
    KomorebiStop()
    ExitApp()
}
; Close application, Alt + Q
!q:: {
    writeLog("[Komorebi] Close actived window")
    Send("!{f4}")
}
; Open Windows Terminal, Alt + Enter
!Enter:: {
    ToggleTerminal()
}

#HotIf WinActive("ahk_exe i)\\spotify\.exe$",)
^wheelup:: SendInput("^{=}")
^wheeldown:: SendInput("^{-}")
#HotIf