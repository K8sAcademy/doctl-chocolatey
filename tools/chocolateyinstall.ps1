
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.97.0/doctl-1.97.0-windows-amd64.zip'
$checksum64    = 'd0ec4bf42b0c489db32eef7ae0b50b51078e046e2e58c672aa589a34ff293c76'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
