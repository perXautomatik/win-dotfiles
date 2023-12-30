#------------------------------- Styling begin --------------------------------------	

if ( (($error.length | group).name -eq $null ) -and  (Test-IsInteractive)   ) { 
    Clear-Host # remove advertisements (preferably use -noLogo)
}
	# Keep the existing window title

if ( $(Test-CommandExists 'get-title') )
{

	$windowTitle = (get-title).Trim()

	if ($windowTitle.StartsWith("Administrator:")) {
	    $windowTitle = $windowTitle.Substring(14).Trim()
	}
}
    $nextId = (get-history -count 1).Id + 1;
    # KevMar logging
    $LastCmd = Get-History -Count 1
    if ($LastCmd) {
        $lastId = $LastCmd.Id
        Add-Content -Value "# $($LastCmd.StartExecutionTime)" -Path $PSLogPath
        Add-Content -Value "$($LastCmd.CommandLine)" -Path $PSLogPath
        Add-Content -Value '' -Path $PSLogPath
        $howlongwasthat = $LastCmd.EndExecutionTime.Subtract($LastCmd.StartExecutionTime).TotalSeconds
    }
	$currentPath = (get-location).Path.replace($home, "~")
	$idx = $currentPath.IndexOf("::")
	if ($idx -gt -1) { $currentPath = $currentPath.Substring($idx + 2) }

	$windowsIdentity = [System.Security.Principal.WindowsIdentity]::GetCurrent()
	$windowsPrincipal = new-object 'System.Security.Principal.WindowsPrincipal' $windowsIdentity

    # Kerazy_POSH propmt
    # Get Powershell version information
    $MajorVersion = $PSVersionTable.PSVersion.Major
    $MinorVersion = $PSVersionTable.PSVersion.Minor

    # Detect if the Shell is 32- or 64-bit host
    if ([System.IntPtr]::Size -eq 8) {
        $ShellBits = 'x64 (64-bit)'
    } elseif ([System.IntPtr]::Size -eq 4) {
        $ShellBits = 'x86 (32-bit)'
    }

    # Set Window Title to display Powershell version info, Shell bits, username and computername
    $host.UI.RawUI.WindowTitle = "PowerShell v$MajorVersion.$MinorVersion $ShellBits | $env:USERNAME@$env:USERDNSDOMAIN | $env:COMPUTERNAME | $env:LOGONSERVER"

    # Set Prompt Line 1 - include Date, file path location
    Write-Host(Get-Date -UFormat "%Y/%m/%d %H:%M:%S ($howlongwasthat) | ") -NoNewline -ForegroundColor DarkGreen
    Write-Host(Get-Location) -ForegroundColor DarkGreen

    # Set Prompt Line 2
    # Check for Administrator elevation
    if (Test-IsAdmin) {
        Write-Host '# ADMIN # ' -NoNewline -ForegroundColor Cyan
    } else {        
        Write-Host '# User # ' -NoNewline -ForegroundColor DarkCyan
    }

    if ($psISE) { $color = "Black"; }
    elseif ($windowsPrincipal.IsInRole("Administrators") -eq 1)
    { $color = "Yellow";}
    else{ $color = "Green";}

if ( $(Test-CommandExists 'Write-HgStatus') )
{
	Write-HgStatus (Get-HgStatus)
	Write-GitStatus (Get-GitStatus)
}
	write-host (" [" + $nextId + "]") -NoNewLine -ForegroundColor $color
	if ((get-location -stack).Count -gt 0) { write-host ("+" * ((get-location -stack).Count)) -NoNewLine -ForegroundColor Cyan }


if ( $(Test-CommandExists 'set-title') )
{    $title = $currentPath  
    if ($windowTitle -ne $null) { $title = ($title + "  »  " + $windowTitle) }
	set-title $title
}

	return " "

    Write-Host '»' -NoNewLine -ForeGroundColor Green
    ' ' # need this space to avoid the default white PS>  



# Style default PowerShell Console
$shell = $Host.UI.RawUI

$shell.WindowTitle= "PS"

$shell.BackgroundColor = "Black"
$shell.ForegroundColor = "White"

$colors = $host.PrivateData
$colors.verbosebackgroundcolor = "Magenta"
$colors.verboseforegroundcolor = "Green"
$colors.warningbackgroundcolor = "Red"
$colors.warningforegroundcolor = "white"
$colors.ErrorBackgroundColor = "DarkCyan"
$colors.ErrorForegroundColor = "Yellow"

# Load custom theme for Windows Terminal
#Set-Theme LazyAdmin
Write-Host "PSVersion: $($PSVersionTable.PSVersion.Major).$($PSVersionTable.PSVersion.Minor).$($PSVersionTable.PSVersion.Patch)"
Write-Host "PSEdition: $($PSVersionTable.PSEdition)"
Write-Host "Profile:   $PSCommandPath"
Write-Host "admin: $isAdmin"