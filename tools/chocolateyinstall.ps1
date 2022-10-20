
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.84.0/doctl-1.84.0-windows-amd64.zip'
$checksum64    = '021b4891462dd1422ca79994cb4c16ee9b2048f9ee3d7d19fe9d300f5f0d9208'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
