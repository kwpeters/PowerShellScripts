#!/usr/bin/env pwsh

$dirName = $args[0]

Get-ChildItem -Path "." -Include $dirName -Recurse -Directory | Remove-Item -Recurse -Force
