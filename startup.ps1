Write-Output "$(Get-Date) Running Startup script"
Write-Output "$(Get-Date) Setting keyboard language to de-DE"
Set-WinUserLanguageList -LanguageList de-DE -Force

Write-Output "$(Get-Date) Harden Windows Defender configuration"
Write-Output "$(Get-Date) Set Microsoft Defender Signature update interval to 1h"
Set-MpPreference -SignatureUpdateInterval 1
Write-Output "$(Get-Date) Check Microsoft Defender Signature updates before every scan"
Set-MpPreference -CheckForSignaturesBeforeRunningScan 1