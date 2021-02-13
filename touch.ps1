#!/usr/bin/env pwsh

$newFile=$args[0]

Write-Host "New-Item $newFile"
New-Item $newFile
