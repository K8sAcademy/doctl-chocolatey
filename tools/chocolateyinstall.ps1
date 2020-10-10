
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.48.0/doctl-1.48.0-windows-amd64.zip'
$checksum64    = '970966cfa66f7d252d0b094f96b82e3e84be4be2296f42172957fe6a6e342aa0'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
