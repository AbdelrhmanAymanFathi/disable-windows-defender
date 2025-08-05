# Run this as Administrator!

Write-Host "Disabling Windows Defender..."

# Turn off Real-Time Protection
Set-MpPreference -DisableRealtimeMonitoring $true

# Turn off behavior monitoring
Set-MpPreference -DisableBehaviorMonitoring $true

# Turn off on-access protection
Set-MpPreference -DisableOnAccessProtection $true

# Turn off script scanning
Set-MpPreference -DisableScriptScanning $true

# Disable Windows Defender via registry (permanently)
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -Value 1

Write-Host "✅ Windows Defender should now be disabled. Restart may be required."
