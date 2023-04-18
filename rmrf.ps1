#!/usr/bin/env pwsh

$dirOrFile = $args[0]

if (test-path $dirOrFile) {
    Write-Host "Remove-Item -Recurse -Force $dirOrFile"
    Remove-Item -Recurse -Force $dirOrFile
}
else {
    Write-Host "$dirOrFile does not exist."
}
