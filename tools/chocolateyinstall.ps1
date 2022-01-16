
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.69.0/doctl-1.69.0-windows-amd64.zip'
$checksum64    = '67b2db5610744f930b069deb68d468b3dddfe06e2a7b6af0f92e7fdfe3a951db'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
