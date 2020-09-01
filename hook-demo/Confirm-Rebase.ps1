[CmdletBinding()]
param ()

$aheadBehind = git status -sb
if ($aheadbehind -match '\[\w+.*\w+\]$') {
    $ahead = [regex]::matches($aheadbehind, '(?<=ahead\s)\d+').value
    $behind = [regex]::matches($aheadbehind, '(?<=behind\s)\d+').value

    $distance = [int]($ahead + $behind)
}

if ($distance -gt 2) {
    Write-Output "Your branch is too far out of date to rebase ($distance)"
    exit 1
}
exit 0