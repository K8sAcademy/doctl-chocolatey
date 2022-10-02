
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.82.2/doctl-1.82.2-windows-amd64.zip'
$checksum64    = '1bb5ad9b5c5a249a2df9a3838f747649e67daadaf60b822ac2d41f668c59f7db'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
