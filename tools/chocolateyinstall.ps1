
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.63.1/doctl-1.63.1-windows-amd64.zip'
$checksum64    = 'dc052d487d833a0b516637fd403958ee43fcc53bdb2ec3f98985d9b53022f53c'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
