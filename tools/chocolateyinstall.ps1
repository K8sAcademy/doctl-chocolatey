
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.55.0/doctl-1.55.0-windows-amd64.zip'
$checksum64    = '86808c1877faa49520d0ab36db1f62d54c4c541ca99851f6bb7aa5fa85e5605b'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
