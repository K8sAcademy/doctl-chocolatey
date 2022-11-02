
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.85.0/doctl-1.85.0-windows-amd64.zip'
$checksum64    = '827245194afc1e177f9ab33e7db0f2df4c9e5654ab5e82e9703c34a1c9039846'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
