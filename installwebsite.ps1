$insidepath = 'C:\inetpub\inside'
$insidename = 'inside'
$insidedomain = 'dev-inside.acmewidgetcorp.com'
$insidesource = 'C:\temp\insidewebfiles'

cd IIS:\Sites\

if (!Test-Path IIS:\Sites\$insidename))
{
    New-Item iis:\Sites\$insidename `
    del-bindings @{protocol="http";bindingInformation="*:80:$insidedomain"}`
    -physicalPath $insidepath -Verbose
}

Remove-Item -Path $insidepath\* -Recurse

Copy-Item -Path $insidesource* `
    -Destination $insidepath `
    -Recurse
    
invoke-command -scriptblock {iisreset}
