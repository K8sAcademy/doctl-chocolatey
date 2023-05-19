
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.96.0/doctl-1.96.0-windows-amd64.zip'
$checksum64    = '5da1cba972b2248b5de50e026ac2c1658ae21393529ebbdacb2f5cf5b0e4ffad'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
