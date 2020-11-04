
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.51.0/doctl-1.51.0-windows-amd64.zip'
$checksum64    = '53c257ab2a201437672f998abbdd46e166fabec8e29e4cc1bded95e8145ab593'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
