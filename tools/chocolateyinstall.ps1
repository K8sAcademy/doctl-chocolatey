
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.72.0/doctl-1.72.0-windows-amd64.zip'
$checksum64    = 'd9d42c93c77eb552bf5c74e05107a73b271daf61e8b822b9f4889b5dc028f02e'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
