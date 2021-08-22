
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.64.0/doctl-1.64.0-windows-amd64.zip'
$checksum64    = '0acfbabf0b9954cc6d356244a70f1fe490353db06bcdc55228fa6c8509bf69f4'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
