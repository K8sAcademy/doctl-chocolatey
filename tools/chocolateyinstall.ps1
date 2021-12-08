
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.68.0/doctl-1.68.0-windows-amd64.zip'
$checksum64    = 'ca152abcf52195a447a2fb33c9b7fb65b1f35df64810e2a6538464eb9264f029'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
