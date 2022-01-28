
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.70.0/doctl-1.70.0-windows-amd64.zip'
$checksum64    = '44fd6614b65790c14330f2315ef05bacf224b60b03ab74a6fc1d5f185808c35f'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
