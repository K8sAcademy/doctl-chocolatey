
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.99.0/doctl-1.99.0-windows-amd64.zip'
$checksum64    = '2391aa8b9dc4bd88f9ea185c2f8d86cf08925c8c923560694f8e0d3a85dac8b9'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
