
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.86.0/doctl-1.86.0-windows-amd64.zip'
$checksum64    = '3e760697ad2b14eaa75b883afd40064ddd868778459641fa2403cf104fb3d8a7'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
