$wingetInstalled = Get-Command winget -ErrorAction SilentlyContinue

if ($wingetInstalled) {
    Write-Host "Windows Package Manager (winget) is already installed."
}
else {
    Write-Host "Installing Windows Package Manager (winget)..."
    Add-AppxPackage -Path C:\Users\PC\Desktop\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
    #Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
    if ($?) {
        Write-Host "Windows Package Manager (winget) has been installed successfully."
    }
    else {
        Write-Host "Failed to install Windows Package Manager (winget)."
    }
}
