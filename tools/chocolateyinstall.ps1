
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.92.1/doctl-1.92.1-windows-amd64.zip'
$checksum64    = 'ecda1c944d1533d9be29a9637f3b177220786f1e29f2291e2aadcde86b37e315'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
