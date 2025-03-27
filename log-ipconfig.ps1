# Get the path to user's Desktop directory
$desktopPath = [Environment]::GetFolderPath("Desktop")
$machineName = $env:COMPUTERNAME
$logFile = Join-Path $desktopPath "ipconfig-$machineName.log"

# Create timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Run ipconfig and capture output
$ipconfigOutput = ipconfig | Out-String

# Append timestamp and ipconfig output to log file
Add-Content -Path $logFile -Value "=== $timestamp ==="
Add-Content -Path $logFile -Value $ipconfigOutput
Add-Content -Path $logFile -Value "`n"
