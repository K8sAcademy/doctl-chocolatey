
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.48.1/doctl-1.48.1-windows-amd64.zip'
$checksum64    = '3e2bf548c3725588dd0e8699f32efa40a674328ac341a74392c217c4daa5d359'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
