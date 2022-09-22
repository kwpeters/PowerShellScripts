#!/usr/bin/env pwsh

$portNum = $args[0]
Get-Process -Id (Get-NetTCPConnection -LocalPort $portNum).OwningProcess
