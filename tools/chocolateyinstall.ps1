
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.87.0/doctl-1.87.0-windows-amd64.zip'
$checksum64    = '01506e9987faf47ab52ff028005955818a58c1c696d7b2387f5ef76129ed4fec'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
