
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.62.0/doctl-1.62.0-windows-amd64.zip'
$checksum64    = 'fdff546530ccf4b27fe7402e193401834cebf845ecae6982bea294fcee0af4bf'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
