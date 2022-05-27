
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.76.2/doctl-1.76.2-windows-amd64.zip'
$checksum64    = '0dbaecbd21aa9c55a5bb181be4d924e1a587a0b7d68ecc816d32c21559a3c1a9'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
