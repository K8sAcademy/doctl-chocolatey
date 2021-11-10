
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.67.0/doctl-1.67.0-windows-amd64.zip'
$checksum64    = '16dcc4c51a26b83622378998ea61c3e6becf9a93969a1c3b455c6d353c5fe32b'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
