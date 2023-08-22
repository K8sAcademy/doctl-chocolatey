
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.98.1/doctl-1.98.1-windows-amd64.zip'
$checksum64    = 'dfdc060b9133dc226fb8db33bce87fffac3332ae6b36a042ae215fe71fd68fd1'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
