
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.96.1/doctl-1.96.1-windows-amd64.zip'
$checksum64    = 'dc6b22cc5c8a12650da5925f9e5e7d37e7d789b9253b81f89ebbb58c998cf3e6'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
