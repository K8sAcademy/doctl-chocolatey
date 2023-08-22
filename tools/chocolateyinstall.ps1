
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.98.0/doctl-1.98.0-windows-amd64.zip'
$checksum64    = '7390fdd5bcf7533f9e67d594981ed45f49b66a1d061d2793f4c8422675805b5e'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
