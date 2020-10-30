
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.49.0/doctl-1.49.0-windows-amd64.zip'
$checksum64    = '9a51f875c146747e62fee6cac716b7b1cae41a4753e5627cf8f6c420fbfacc26'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
