
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.81.0/doctl-1.81.0-windows-amd64.zip'
$checksum64    = '17e15a668fe2544ee4b57dbfd18e4b8d7ae60df8fc6677f7097d28461ec1b8c61'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
