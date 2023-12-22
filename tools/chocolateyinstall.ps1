
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.102.0/doctl-1.102.0-windows-amd64.zip'
$checksum64    = '9b0f8a97c43a0271e41c66935fcd80d282bcd360c47cae21844e082784229b97'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName -Url64bit $url -UnzipLocation "$toolsDir" -checksum64 $checksum64 -checksumType64 $checksumType64
