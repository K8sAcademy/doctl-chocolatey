
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.92.0/doctl-1.92.0-windows-amd64.zip'
$checksum64    = 'f46144bc9c533c6dea80bc60e6826bd6578abec9d5754a6e655a13139f187840'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
