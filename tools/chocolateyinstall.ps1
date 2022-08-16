
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.79.0/doctl-1.79.0-windows-amd64.zip'
$checksum64    = '1a4f1ce7757f7f7db44052de60b83bd866c3a17514e27f49ff6ae0c4748ad058'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
