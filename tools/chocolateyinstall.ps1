
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.100.0/doctl-1.100.0-windows-amd64.zip'
$checksum64    = '84c0b963685205e7d0da92cc77de6de20d7094a26bce2f6dc522e614c5486b9c'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
