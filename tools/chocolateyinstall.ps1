
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.84.1/doctl-1.84.1-windows-amd64.zip'
$checksum64    = '466ab71ba9cb5946703d92f60310f21c497f408ac2c4aeeda155be460a07f5e6'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
