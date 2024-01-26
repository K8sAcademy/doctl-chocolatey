
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.104.0/doctl-1.104.0-windows-amd64.zip'
$checksum64    = '46b8d70bb0266a9200aa35b5f7154c195f88f6845a39e8d3c57546ff3394627f'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName -Url64bit $url -UnzipLocation "$toolsDir" -checksum64 $checksum64 -checksumType64 $checksumType64
