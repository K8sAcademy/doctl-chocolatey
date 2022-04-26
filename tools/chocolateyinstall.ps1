
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.73.1/doctl-1.73.1-windows-amd64.zip'
$checksum64    = '98ccf631693fe890229584b7d0ed6e8d78210c4d7e0545d697ef0ba466d9b7f5'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
