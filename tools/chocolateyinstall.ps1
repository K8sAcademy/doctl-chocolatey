
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.45.0/doctl-1.45.0-windows-amd64.zip'
$checksum64    = '9c7231dcd36afed12c1c9404e30d820523f327d4e732b0ff6dd0908ebcfd9c83'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
