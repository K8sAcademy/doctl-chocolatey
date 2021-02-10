
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.56.0/doctl-1.56.0-windows-amd64.zip'
$checksum64    = 'f69898fb70dcb7ef306eef7dbf81cb9db1fd0cd63326bcae4a0cb6123a8f049d'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
