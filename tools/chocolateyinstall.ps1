
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.82.1/doctl-1.82.1-windows-amd64.zip'
$checksum64    = '764eff36e7c70b68efa3c64f0cb09053d27054d227fe7d71b086eb68c8552fe9'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
