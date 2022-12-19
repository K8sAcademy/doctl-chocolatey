
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.91.0/doctl-1.91.0-windows-amd64.zip'
$checksum64    = 'd2b322d2fe4a86952756165046a83e20d833ad523c0512399b3e66d62f979dbc'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
