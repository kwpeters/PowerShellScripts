#!/usr/bin/env pwsh

# Got this command from:
# https://stackoverflow.com/questions/12366150/how-to-delete-orig-files-after-merge-from-git-repository

Get-ChildItem -Recurse -Filter '*.orig' | Remove-Item
