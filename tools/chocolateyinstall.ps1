
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.45.1/doctl-1.45.1-windows-amd64.zip'
$checksum64    = '98de7550d5af2fc26050498c75fdec7b98b4bf29ff96decb4cc874ede74d43f0'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
