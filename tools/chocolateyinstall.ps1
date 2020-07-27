
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.46.0/doctl-1.46.0-windows-amd64.zip'
$checksum64    = 'c90b5529d6a23f91851f90ae1cd9e790b887d486292314ecbe8b51add476390c'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
