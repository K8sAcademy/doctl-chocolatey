
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.71.0/doctl-1.71.0-windows-amd64.zip'
$checksum64    = '17f993e46ce9801fd5a216187b31fb15ebe7b2d4192a48e841c9d7181ec988db'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
