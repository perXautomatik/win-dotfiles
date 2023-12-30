# Optimize virtual machine disk size
Convert-VHD -Path "C:\MyVM\MyVM.vhdx" -DestinationPath "C:\MyVM\MyVM.vhdx" -Mode Dynamic

# Utilize thin provisioning
New-VHD -Dynamic -Path "C:\MyVM\MyVM.vhdx" -SizeBytes 32GB

# Optimize virtual machine disk size
$vmName = "<Your VM Name>"
$vmDiskPath = (Get-VM -Name $vmName | Select-Object -ExpandProperty VirtualDisks)[0].Path
Optimize-VHD -Path $vmDiskPath -Mode Full

# Utilize thin provisioning
$vm = Get-VM -Name $vmName
$vmDisk = $vm.VirtualDisks[0]
Set-VMHardDiskDrive -VMName $vmName -DiskNumber 0 -DynamicSize -MaximumSize $vmDisk.MaxSize

<# Customize Features: Utilize the "Turn Windows features on or off" option in the Control Panel to disable unnecessary features that won't be used in the virtual environment. This can include features like Media Center, Windows Search, and Language Packs.

Remove Unused Languages: Delete any language packs that are not required for the intended usage of the virtual machine. This can be done in the "Language settings" section of the Control Panel.

Disable Hibernation: Hibernation saves the entire system state to disk, consuming significant storage space. Disable hibernation to conserve disk space.

Delete Temporary Files: Regularly clean up temporary files and cached data using Disk Cleanup or third-party tools to free up disk space.

Optimize Virtual Machine Disk Size: Allocate only the necessary amount of disk space to the virtual machine. Use dynamic disks that expand as needed rather than allocating a large static size upfront.

Use Minimal Installation: Consider using a minimal installation of Windows 10, which includes only the core components and essential features. This can be achieved using the DISM (Deployment Imaging Servicing and Management) command-line tool.

Remove Unwanted Applications: Uninstall any pre-installed applications that are not required for the virtual machine's purpose.

Disable Unused Services: Identify and disable any services that are not essential for the virtual machine's operation. This can be done using the Services console.

Enable Compact OS: Enable Compact OS, a feature that optimizes the Windows installation by compressing system files and reducing overall size.

Utilize Thin Provisioning: Utilize thin provisioning for virtual disks, which only allocates disk space as needed, rather than pre-allocating the entire disk size. #>

function Filter-Like($list, $patterns) {
    $filteredList = $list | Where-Object {
        foreach ($pattern in $patterns) {
            if ($_ -like $pattern) {
                return $true
            }
        }
        return $false
    }
    return $filteredList
}

# Enable Compact OS
Enable-WindowsOptionalFeature -Online -FeatureName "Compact-OS"

# Enable Compact OS
DISM /online /Enable-Feature /FeatureName CompactOS

# Use minimal installation
DISM /online /Cleanup-Image /StartComponentCleanup /ScanState /Follow

# Disable unnecessary Windows features
$featureToRemove = @("Microsoft-Windows-MediaCenter", "Windows-Search","Language-Pack-Management")
foreach ($feature in $featureToRemove) {
    Enable-WindowsOptionalFeature -Online -FeatureName $feature -Remove
}

# Disable unnecessary Windows features
$featuresToDisable = @("MediaCenter", "WindowsSearch","Media-Center")
foreach ($feature in $featuresToDisable) {
    Disable-WindowsOptionalFeature -Online -FeatureName $feature -NoRestart
}

# Remove unused languages
$languagesToKeep = @("*en-US", "*en-GB")

Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\MUI\Languages | ForEach-Object {
    if (! (Filter-Like @($_.DisplayName), $languagesToKeep)
     ) {
        Uninstall-WindowsFeature -Online -FeatureName $_.DisplayName -NoRestart
    }
}

# Remove unused languages
$languagesToRemove = Get-WinUserLanguage | Where-Object {!(Filter-Like $_.LanguageTag, $languagesToKeep)} 

foreach ($language in $languagesToRemove) {
    Remove-WinUserLanguage -LanguageTag $language.LanguageTag
}


# Remove unused languages
$languagesToRemove = (Get-Win32Language | Where-Object {!(Filter-Like $_.LanguageTag, $languagesToKeep)})

    foreach ($language in $languagesToRemove) {
        Remove-Win32Language -LanguageName $language.LanguageName
    }


# Disable hibernation
Powercfg -h off
# Disable hibernation
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernteEnabled" -Type Dword -Value 0

<# draft 2 #>

# Remove unwanted applications
$applicationsToRemove = @("*Xbox*","*Maps*","*Money*","*News*","*OneNote*","*Photos*","*SkyDrive*","*Store*","*VoiceRecorder*")
Filter-Like (Get-AppxPackage), $applicationsToRemove  | UnInstall-AppxPackage 


# Disable unused services
$servicesToNotAlter = @("VMware*","Hyper-V*","WinRM*","RemoteDesktop*")
Get-Service | 
    Where-Object {$_.Status -eq "Running" -and $_.StartType -eq "Automatic"} |
    ForEach-Object {
    if (!
    (Filter-Like $_.Name , $servicesToNotAlter )
    ) {
        Set-Service -Name $_.Name -StartupType Manual
    }
}

# Remove temporary files
Start-Process -FilePath "cleanmgr.exe" -ArgumentList "/s /d drives"
# Delete temporary files
Start-Process -FilePath "C:\Windows\System32\cleanmgr.exe" -ArgumentList "/sageset:6"
Start-Sleep -Seconds 10
Start-Process "C:\Windows\System32\rundll32.exe" -ArgumentList "shell32.dll,PurgeIconsCache"
Start-Process "C:\Windows\System32\rundll32.exe" -ArgumentList "shell32.dll,PurgeStartMenuCache"

