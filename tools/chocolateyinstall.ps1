
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.66.0/doctl-1.66.0-windows-amd64.zip'
$checksum64    = 'b39811f7b3f209c314cf634975070edda4dfb1b13c15c6f7bcce62f61400851d'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
