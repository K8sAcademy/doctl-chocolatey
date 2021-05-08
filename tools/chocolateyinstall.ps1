
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.60.0/doctl-1.60.0-windows-amd64.zip'
$checksum64    = '34afa5276afba2e8da6ec27ad9ea1764a323d9030da0254711f5e0d681398997'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
