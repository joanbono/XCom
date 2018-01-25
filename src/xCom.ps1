<#
.DESCRIPTION
    Invoke-Expression $command "go build the easy way
.REQUIRES
    Anything but love <3
.NOTES
    Name: xCom.ps1
    Author: Joan Bono <@joan_bono>
    Tested on Powershell v5.1
    Version: 1.0.0
.EXAMPLE
    .\xCom.ps1 -File hello.go
#>

Param(
    [Parameter(Mandatory=$True, Position=1)]
        [string]$File
)

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$ErrorActionPreference = "SilentlyContinue"

$DIR=$File -replace ".go",""

$env:GOOS="darwin"
$env:GOARCH="386"
$command="go build -o $DIR`_darwin-386 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`n`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Darwin i386"
$env:GOOS="darwin"
$env:GOARCH="amd64"
$command="go build -o $DIR`_darwin-amd64 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Darwin amd64"
$env:GOOS="dragonfly"
$env:GOARCH="amd64"
$command="go build -o $DIR`_dragonfly-amd64 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for DragonFly amd64"
$env:GOOS="freebsd"
$env:GOARCH="386"
$command="go build -o $DIR`_freebsd-386 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for FreeBSD i386"
$env:GOOS="freebsd"
$env:GOARCH="amd64"
$command="go build -o $DIR`_freebsd-amd64 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for FreeBSD amd64"
$env:GOOS="freebsd"
$env:GOARCH="arm"
$command="go build -o $DIR`_freebsd-arm $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for FreeBSD ARM"
$env:GOOS="linux"
$env:GOARCH="386"
$command="go build -o $DIR`_linux-386 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Linux i386"
$env:GOOS="linux"
$env:GOARCH="amd64"
$command="go build -o $DIR`_linux-amd64 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Linux amd64"
$env:GOOS="linux"
$env:GOARCH="arm"
$command="go build -o $DIR`_linux-arm $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Linux ARM"
$env:GOOS="linux"
$env:GOARCH="arm64"
$command="go build -o $DIR`_linux-arm64 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Linux ARM64"
$env:GOOS="linux"
$env:GOARCH="ppc64"
$command="go build -o $DIR`_linux-ppc64 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Linux PPc64"
$env:GOOS="linux"
$env:GOARCH="ppc64le"
$command="go build -o $DIR`_linux-ppc64le $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Linux PPc64le"
$env:GOOS="linux"
$env:GOARCH="mips"
$command="go build -o $DIR`_linux-mips $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Linux MIPS"
$env:GOOS="linux"
$env:GOARCH="mipsle"
$command="go build -o $DIR`_linux-mipsle $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Linux MIPSle"
$env:GOOS="linux"
$env:GOARCH="mips64"
$command="go build -o $DIR`_linux-mips64 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Linux MIPS64"
$env:GOOS="linux"
$env:GOARCH="mips64le"
$command="go build -o $DIR`_linux-mips64le $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Linux MIPS64le"
$env:GOOS="netbsd"
$env:GOARCH="386"
$command="go build -o $DIR`_netbsd-386 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for NetBSD i386"
$env:GOOS="netbsd"
$env:GOARCH="amd64"
$command="go build -o $DIR`_netbsd-amd64 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for NetBSD amd64"
$env:GOOS="netbsd"
$env:GOARCH="arm"
$command="go build -o $DIR`_netbsd-arm $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for NetBSD ARM"
$env:GOOS="openbsd"
$env:GOARCH="386"
$command="go build -o $DIR`_openbsd-386 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for OpenBSD i386"
$env:GOOS="openbsd"
$env:GOARCH="amd64"
$command="go build -o $DIR`_openbsd-amd64 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for OpenBSD amd64"
$env:GOOS="openbsd"
$env:GOARCH="arm"
$command="go build -o $DIR`_openbsd-arm $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for OpenBSD ARM"
$env:GOOS="plan9"
$env:GOARCH="386"
$command="go build -o $DIR`_plan9-386 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Plan9 i386"
$env:GOOS="plan9"
$env:GOARCH="amd64"
$command="go build -o $DIR`_plan9-amd64 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Plan9 amd64"
$env:GOOS="solaris"
$env:GOARCH="amd64"
$command="go build -o $DIR`_solaris-amd64 $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Solaris amd64"
$env:GOOS="windows"
$env:GOARCH="386"
$command="go build -o $DIR`_windows-386.exe $File"
Invoke-Expression $command  | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Windows x86"
$env:GOOS="windows"
$env:GOARCH="amd64"
$command="go build -o $DIR`_windows-amd64.exe $File"
Invoke-Expression $command | Out-Null
Write-Host "`t [+] " -ForegroundColor Green -NoNewLine
Write-Host "Compiled for Windows x64"
