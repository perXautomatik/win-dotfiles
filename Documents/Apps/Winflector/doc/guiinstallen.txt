Readme.txt for Winflector software

If you have installed Winflector package using the supplied installer (strongly recommended) it
has done for you most of the configuration activities described below. In such a case below
instructions can be used for checking the existing installation in case something doesn't
work correctly.

NOTE! Activities described in point 3. must be performed manually, if required.


1. Application server system
- Windows XP
- Windows 2003
- Windows Vista
- Windows 7
- Windows 2008
- Windows 2008 R2
- Windows 8
- Windows 8.1
- Windows 2012

Current version of Winflector server should work as a process of the logged-in user (desktop server
version). It cannot work as a service.

2. Winflector client system
- Windows XP
- Windows 2003
- Windows Vista
- Windows 7
- Windows 2008
- Windows 2008 R2
- Windows 8
- Windows 8.1
- Windows 2012
- Linux
- Android

3. Configuring the server

3.1. Turning on Themes

Starting from Windows XP windows themes are automatically installed and configured by 
the system installer. It is required for proper operation of Winflector to have
Themes service running. If themes are not enabled for any reason, open 
Control Panel/Administration Tools/Services, select Themes service, change start mode to
automatic and press, "Start" then "OK".
After turning on the Themes service you should change the active Theme as follows:
a) On Windows XP:
Go to Control panel/Screen select tab Themes, then select theme "Windows XP" and commit
by pressing "OK"
b) On Windows Vista
Go to Control panel/Personalization/Windows Color and Appearance. Select color schema
"Windows Vista Basic" and press "Apply"
c) On Windows 7
Go to Control panel/Personalization. Select color schema "Windows Basic" and press "Apply"
d) On Windows 2008
As on Windows Vista. Sometimes it may be necessary to previously install additional system
components using Server Manager/Features/ select Desktop Experience

3.2. Server graphics settings

Application server _must_ work in 32-bit True color graphics mode.

3.3. User Account Control

On Vista/Windows 7/Windows 2008 you need to turn off the User Account Control (UAC) as follows:
In Control Panel -> User Accounts -> Turn User Account Control on or Off, then unselect the UAC function.

4.4. Installation directory

Directory containing Winflector server files should be located on the local hard disk.
The directory must contain cnetlib.dll and trmglob.dll files. trmglob.dll must be
located in the same directory as cnetlib.dll and wfserver.exe files.

4. Configuring server to work using Windows users for authorization.

If terminal applications will be started within the context of the Windows users accounts
you additionally need to do the following:

a) On the account where Winflector server is running:
- ensure account is in Administrators and "Winflector users" group set up by installer
- on Windows XP/2003 you need to add some users privileges. As authorized user run:
Control panel -> 
  Administrative tools -> 
    Local security policy -> 
       Local policies -> 
         User rights assignment
Then add the user to the following policies:
             - act as part of the operating system (required)
             - replace a process level token (required)
             - create a token object (recommended)
             - take ownership of files or other objects (recommended) 
             - bypass traverse checking (recommended)

b) Accounts to be used for running applications could not be restricted and should belong to the
"Winflector users" group. On Windows XP/2003 the accounts should be in Administrators
group - otherwise some elements of the GUI interface could be invisible and the application
could run incorrectly.

5. Memory for desktops of the GUI sessions.

Every GUI session (one Winflector user) creates one desktop object in the system memory allocated
for desktops. If the system is out of desktop memory you will get an error:
"Cannot create desktop"

On Vista, Windows 2008 and Windows 7 systems desktop memory is allocated dynamically and does not
require adjustments. On Windows XP and Windows 2003 systems you may need to adjust the desktop
memory settings.

The amount of memory accessible for all desktops created by GUI applications and console desktop
can be set in MB (Megabytes) by editing the following registry key:

HKEY_LOCAL_MACHINE\SYSTEM\
	CurrentControlSet\Control\Session Manager\Memory Management\SessionViewSize

The amount of memory allocated for each created desktop object (every GUI session) and for
console desktop can be set in KB (kilobytes) by editing the following registry entry:

HKEY_LOCAL_MACHINE\SYSTEM\
	CurrentControlSet\Control\Session Manager\SubSystems\Windows
You need to modify the second value after text SharedSection=
This value should not be set below 1024 (1MB) or your main Windows console may not start properly.
Decreasing this value can be considered on Vista and Windows 2008 as well because it allows for
decreasing memory usage.

The default values for global desktop memory pool (SessionViewSize) and for a single desktops are
as follows:

WindowsXP (32-bit)
48 MB = SessionViewSize (registry default value)
3073 KB = single desktop, SharedSection second parameter

Windows Server 2003 (32-bit)
48 MB = SessionViewSize (registry default value)
3073 KB = single desktop, SharedSection second parameter

Windows Server 2003 started with 3GB option (32-bit)
20 MB = SessionViewSize (registry value is ignored)
3073 KB = single desktop, SharedSection second parameter

Windows Server 2003 (64-bit)
104 MB = SessionViewSize (if we don't change the register value)
20 MB = single desktop, SharedSection second parameter

Windows Vista (32-bit)
SessionViewSize dynamically adjusted
3072 KB = single desktop, SharedSection second parameter

Windows Vista (64-bit) and Windows Server 2008 (64 bit)
SessionViewSize dynamically adjusted
20 MB = single desktop, SharedSection second parameter

Windows Vista SP1 (32-bit) and Windows Server 2008 (32 bit)
SessionViewSize dynamically adjusted
12288 KB = single desktop, SharedSection second parameter

Windows 7 (32-bit)
SessionViewSize dynamically adjusted
12 MB = single desktop, SharedSection second parameter

Windows 7 (64-bit)
SessionViewSize dynamically adjusted
20 MB = single desktop, SharedSection second parameter


6. Configuring client machine

The client machine must operate in 32-bit True Color mode. Winflector client wfc.exe must
be accessible. 


7. Starting applications in terminal mode

Applications are started using wfc.exe terminal client. Running wfc.exe with no parameters starts
the GUI interface which allows defining the application start parameters. Short description of the
command line parameters is accessible by running "wfc.exe -help"
Default transmission compression level is 6. To turn off the compression specify -cpr0 parameter.

Example:

wfc -addr=10.1.18.41 -user=test -passwd=testpwd -noprn c:\windows\system32 c:\windows\system32\notepad.exe

If directory name or application name or parameters contain spaces, specify them in double quotes.

wfc -addr=10.1.18.41 -user=test -passwd=testpwd -noprn "c:\program files\app" "c:\program files\app\main.exe" "par 1" "par 2" par3


8. Printing

If no additional parameters are specified, application will see both server and workstation printers.
Workstation (terminal) printers have @WFC postfix attached. The default workstation printer
becomes the default server printer. In case -NOPRN command line option is used, workstation printers are
not visible for application running on the server.

Default printing method is by transferring printouts in Windows metafile format.

If metafile printing does not work correctly, then try printing using bitmaps.
Use -BINPRN command line option to request bitmap printing.


9. Cursor movement optimization (-cropt parameter)
wfc -cropt1 : default value - optimizing the network traffic - cursor position is sent to application
after about 150 ms of mouse cursor inactivity. This prevents GUI controls under moving cursor from being
activated which reduces the network traffic.

wfc -cropt0 : optimization turned off - new position is sent immediately during cursor movement. 
To be used on good network connections. Increases the network traffic but gives better user experience.



10. Additional notes 
Default Winflector server listening port used for connection is 6601. You can change
default port using -PORT command line parameter. Two log files are created during
terminal work:
tapplog.txt - in applogs subdirectory of server directory (usually \Winflector\server\applogs\tapplog.txt)
tcllog.txt - in logs subdirectory of the client directory (usually \winflector\client\logs\tcllog.txt)


11. Compatibility comments


NVIDIA ForceWare Network Access Manager
-----------------------------------------
Winflector server does not work with NVIDIA firewall. You need to uninstall NVIDIA firewall
before of after installing Winflector server.

