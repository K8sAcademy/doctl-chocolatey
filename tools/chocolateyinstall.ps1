
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.103.0/doctl-1.103.0-windows-amd64.zip'
$checksum64    = '0588eb7d154b412e10ed38708081689b7f390d00c90c4317177235d4b36e9935'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName -Url64bit $url -UnzipLocation "$toolsDir" -checksum64 $checksum64 -checksumType64 $checksumType64
