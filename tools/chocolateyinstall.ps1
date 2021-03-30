
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.58.0/doctl-1.58.0-windows-amd64.zip'
$checksum64    = '0cb0391f2ca1d0182907bfc3bca10c7c4d7912d36ce561c627e3b614c688b657'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
