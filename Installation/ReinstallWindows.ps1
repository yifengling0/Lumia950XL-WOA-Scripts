. "$PSScriptRoot\Functions.ps1"

Write-Host "Windows Reinstallation Script" -ForegroundColor Green 
Write-Host "<< You can quit anytime pressing Control+C >>" -ForegroundColor Yellow 

Step "Please, switch to Mass Storage Mode."

Write-Host "Ensuring the required Phone partitions are mounted..."
EnsurePartitionsAreMounted

Scripted-Step "Deletion of Previous Windows installation.`nWe are about to delete the existing Windows installation. Proceed with caution." "$($PSScriptRoot)\RemovePreviousWindowsInstallationPartitions.ps1"
Scripted-Step "We will now Install Windows 10 ARM64" "$($PSScriptRoot)\SetupWindows.ps1"

Write-Host "Setup completed ;)"
