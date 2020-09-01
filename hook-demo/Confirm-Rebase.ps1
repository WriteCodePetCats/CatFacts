[CmdletBinding()]
param ()

$userName = git config --get user.name
$resp = Read-Host -Prompt "Are you absolutely sure you want to rebase, $userName? If you f--- something up, it's on you... [y/N]"

if ($resp.ToLower() -ne 'y') {
    exit 1
}
exit 0