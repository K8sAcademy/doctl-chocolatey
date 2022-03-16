
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.71.1/doctl-1.71.1-windows-amd64.zip'
$checksum64    = '7c454bc8fead7c47c6e7f4fefea652702a96f797c8864ad4a3d3175d5b76195c'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
