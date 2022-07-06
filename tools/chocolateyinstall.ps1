
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.78.0/doctl-1.78.0-windows-amd64.zip'
$checksum64    = 'f5d483b874aab33921daac4cda5884e2e0e9666f5711b62a654ba4a7d0cb5600'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
