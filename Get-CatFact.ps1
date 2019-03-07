$factUrl = 'https://catfact.ninja/fact'
$fact = Invoke-RestMethod $factUrl
$fact.Fact
