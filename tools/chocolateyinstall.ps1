
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.76.0/doctl-1.76.0-windows-amd64.zip'
$checksum64    = '0827d51fcc920e3626dcfab774fec1b9b78c26d05ca062913cff8aee640518ae'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
