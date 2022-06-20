
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.77.0/doctl-1.77.0-windows-amd64.zip'
$checksum64    = '4a418ceda56fe97709d3af4be1748d6f1cc6ad3f698215fe65445126354530b8'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
