#!/usr/bin/env pwsh

# To install http-server:
# npm install -g http-server

$dir = $args[0]
$portNum = $args[1] || 8000

# http-server .\src\Server\ --cors -p 8001
http-server $dir --cors -p $portNum
