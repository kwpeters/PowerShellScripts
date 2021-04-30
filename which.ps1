#!/usr/bin/env pwsh

$cmd = $args[0]
Write-Output "Get-Command $cmd | Format-List"
Get-Command $cmd | Format-List
