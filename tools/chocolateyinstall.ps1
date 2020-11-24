
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.53.0/doctl-1.53.0-windows-amd64.zip'
$checksum64    = '96022b9eba96ef0c2cf0d7b2249fe238005a38a3923e119784397644c0c49cb6'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
