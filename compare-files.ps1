#!/usr/bin/env pwsh

try {
    $path1 = Resolve-Path $args[0]
    $path2 = Resolve-Path $args[1]

    $file1 = Get-Content -Path $path1 -AsByteStream -ErrorAction Stop
    $file2 = Get-Content -Path $path2 -AsByteStream -ErrorAction Stop

    if (Compare-Object -ReferenceObject $file1 -DifferenceObject $file2) {
        Write-Host "Files are different"
    } else {
        Write-Host "Files are identical"
    }
} catch {
    Write-Error "Error: $_"
    exit 1
}
