
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.83.0/doctl-1.83.0-windows-amd64.zip'
$checksum64    = 'e915cd2a96a95dc0fd0f9a025fed91ffa41a63fd23193dabfae5421fa98a0515'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
