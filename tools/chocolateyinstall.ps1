
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.59.0/doctl-1.59.0-windows-amd64.zip'
$checksum64    = 'de710b71b8e4563e3673e9912d829eeae8e10fe1dd656afcb2b7654af5d2cb3c'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
