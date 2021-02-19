#!/usr/bin/env pwsh

$azuriteDir = 'c:\azurite'
$debugLogFile = Join-Path -Path $azuriteDir -ChildPath "debug.log"

Write-Output "Running Azurite at $azuriteDir"
azurite --silent --location $azuriteDir --debug $debugLogFile
