
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.73.0/doctl-1.73.0-windows-amd64.zip'
$checksum64    = 'b41b56f4ef8cade5bfebb929a9c3e4f2961d7d7897f246d6dfd11ccbd79877e0'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
