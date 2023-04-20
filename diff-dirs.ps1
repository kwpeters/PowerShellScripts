#!/usr/bin/env pwsh

$leftDir = $args[0]
$rightDir = $args[1]

# Show left, right and distinct files (no equal files) while ignoring any .git
# and node_modules folders.
npx dir-compare-cli -l -r -d -x ".git,node_modules" $leftDir $rightDir
