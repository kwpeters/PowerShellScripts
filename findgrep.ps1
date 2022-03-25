#!/usr/bin/env pwsh

$textPattern = $args[0]
Write-Host "dir -Recurse | Select-String -pattern `"$textPattern`""
Get-ChildItem -Recurse | Select-String -pattern $textPattern
