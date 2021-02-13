#!/usr/bin/env pwsh

$dirOrFile=$args[0]
Write-Host "Remove-Item -Recurse -Force $dirorFile"
Remove-Item -Recurse -Force $dirOrFile
