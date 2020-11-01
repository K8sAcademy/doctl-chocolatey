
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.50.0/doctl-1.50.0-windows-amd64.zip'
$checksum64    = '4f58e32cafec829a26119498c77364b94925f51e28d2945a88eb7c5a48cbfc63'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
