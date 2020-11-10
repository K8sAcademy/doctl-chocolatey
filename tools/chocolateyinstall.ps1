
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/digitalocean/doctl/releases/download/v1.52.0/doctl-1.52.0-windows-amd64.zip'
$checksum64    = '19c1f750aef1df53f47820eb43ccf6c86348c3eb34e250e19c5ba5bfdb68e115'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
