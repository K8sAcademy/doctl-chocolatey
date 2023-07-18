
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.97.1/doctl-1.97.1-windows-amd64.zip'
$checksum64    = 'c9f0a69330bc411035f4235db7337439d8c2e2f36f389410053c9fcf490cad6c'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
