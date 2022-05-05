
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.74.0/doctl-1.74.0-windows-amd64.zip'
$checksum64    = '5a09416c5067ae61811dd69ff8f9b656ee04a5a0f1a330d6de5f637701bb7eaa'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
