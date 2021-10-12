
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.65.0/doctl-1.65.0-windows-amd64.zip'
$checksum64    = '4d30ce7d7fe5a954d3bbd596d3a6c21066b97e0090e94b51752ab85a3f3f2324'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
