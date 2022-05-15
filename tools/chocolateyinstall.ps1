
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.75.0/doctl-1.75.0-windows-amd64.zip'
$checksum64    = 'dfef3d609e22e2b7a9210cf8531e00d2fc4c348cb340e975f4b378f9b65e640d'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
