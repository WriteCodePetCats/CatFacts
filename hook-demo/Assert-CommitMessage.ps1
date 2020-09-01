[CmdletBinding()]
param (
    [Parameter(Mandatory = $true, Position = 0)]
    [string]    
    $TempFile
)

$commitMessage = Get-Content $TempFile | Select-Object -First 1

if ($commitMessage -notmatch '^cat-check') {
    exit 1
}
exit 0