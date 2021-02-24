
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.57.0/doctl-1.57.0-windows-amd64.zip'
$checksum64    = 'd35d0b1ed5509c87731a6c6628bb80bfbf3c1342b9120e8c80ab65ba60acb945'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
