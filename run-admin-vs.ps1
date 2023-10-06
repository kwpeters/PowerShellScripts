# See if vswhere.exe is installed.  It will be used to locate the Visual
# Studio installation directory.
$vsWhereFilePath = Join-Path ${Env:ProgramFiles(x86)} "Microsoft Visual Studio\\Installer\\vswhere.exe"
if (![System.IO.File]::Exists($vsWhereFilePath)) {
    Write-Error "Cannot find vswhere.  $vsWhereFilePath does not exist."
    return
}

# Invoke vswhere.exe to get the installation path.
$devEnvPath = &"$vsWhereFilePath" -property productPath
Write-Host "devEnv.exe path: $vsWhereFilePath"

Start-Process -Verb RunAs $devEnvPath
