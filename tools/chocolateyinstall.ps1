
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.82.0/doctl-1.82.0-windows-amd64.zip'
$checksum64    = '17d1167563fbbe8cd16712ba806b3670a19902b290c5914c4acde17bb015e3b3'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
