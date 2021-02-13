#!/usr/bin/env pwsh

$dirOrFile=$args[0]
Remove-Item -Recurse -Force $dirOrFile
