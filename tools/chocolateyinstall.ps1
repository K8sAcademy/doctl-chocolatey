
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.54.0/doctl-1.54.0-windows-amd64.zip'
$checksum64    = 'df0c1254889251919ceab5429fb4f5d6acd79ad82e35b8cc2c025e60b388e2c4'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
