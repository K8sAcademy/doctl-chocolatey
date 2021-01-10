
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.54.1/doctl-1.54.1-windows-amd64.zip'
$checksum64    = '5faa5c2e918659d9433f4836efd4fa2a01f74c43ccf8a248d1cd5ab6751d875e'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
