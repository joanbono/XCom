# xCom

:warning: Experimental version.

Generate build for all OS and all the architectures availables in the `go build` process.

## USAGE

### UNIX

From `UNIX` terminal:

~~~bash
jbono@MacBook [~]> bash xcom.sh hello.go

        [+] Compiled for Darwin i386
        [+] Compiled for Darwin amd64
        [+] Compiled for DragonFly amd64
        [+] Compiled for FreeBSD i386
        [+] Compiled for FreeBSD amd64
        [+] Compiled for FreeBSD ARM
        [+] Compiled for Linux i386
        [+] Compiled for Linux amd64
        [+] Compiled for Linux ARM
        [+] Compiled for Linux ARM64
        [+] Compiled for Linux PPc64
        [+] Compiled for Linux PPc64le
        [+] Compiled for Linux MIPS
        [+] Compiled for Linux MIPSle
        [+] Compiled for Linux MIPS64
        [+] Compiled for Linux MIPS64le
        [+] Compiled for NetBSD i386
        [+] Compiled for NetBSD amd64
        [+] Compiled for NetBSD ARM
        [+] Compiled for OpenBSD i386
        [+] Compiled for OpenBSD amd64
        [+] Compiled for OpenBSD ARM
        [+] Compiled for Plan9 i386
        [+] Compiled for Plan9 amd64
        [+] Compiled for Solaris amd64
        [+] Compiled for Windows x86
        [+] Compiled for Windows x64
~~~

***

### Windows

From `PowerShell`:

~~~powershell
PS [xCom]> .\xCom.ps1 -File .\hola.go
         [+] Compiled for Darwin i386
         [+] Compiled for Darwin amd64
         [+] Compiled for DragonFly amd64
         [+] Compiled for FreeBSD i386
         [+] Compiled for FreeBSD amd64
         [+] Compiled for FreeBSD ARM
         [+] Compiled for Linux i386
         [+] Compiled for Linux amd64
         [+] Compiled for Linux ARM
         [+] Compiled for Linux ARM64
         [+] Compiled for Linux PPc64
         [+] Compiled for Linux PPc64le
         [+] Compiled for Linux MIPS
         [+] Compiled for Linux MIPSle
         [+] Compiled for Linux MIPS64
         [+] Compiled for Linux MIPS64le
         [+] Compiled for NetBSD i386
         [+] Compiled for NetBSD amd64
         [+] Compiled for NetBSD ARM
         [+] Compiled for OpenBSD i386
         [+] Compiled for OpenBSD amd64
         [+] Compiled for OpenBSD ARM
         [+] Compiled for Plan9 i386
         [+] Compiled for Plan9 amd64
         [+] Compiled for Solaris amd64
         [+] Compiled for Windows x86
         [+] Compiled for Windows x64
~~~

***

## Output

~~~bash
jbono@MacBook [~]> file hola_*
hola_darwin-386:        Mach-O i386 executable
hola_darwin-amd64:      Mach-O 64-bit x86_64 executable
hola_dragonfly-amd64:   ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, not stripped
hola_freebsd-386:       ELF 32-bit LSB executable, Intel 80386, version 1 (FreeBSD), statically linked, not stripped
hola_freebsd-amd64:     ELF 64-bit LSB executable, x86-64, version 1 (FreeBSD), statically linked, not stripped
hola_freebsd-arm:       ELF 32-bit LSB executable, ARM, EABI5 version 1 (FreeBSD), statically linked, not stripped
hola_linux-386:         ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), statically linked, not stripped
hola_linux-amd64:       ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, not stripped
hola_linux-arm:         ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, not stripped
hola_linux-arm64:       ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, not stripped
hola_linux-mips:        ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, not stripped
hola_linux-mips64:      ELF 64-bit MSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, not stripped
hola_linux-mips64le:    ELF 64-bit LSB executable, MIPS, MIPS-III version 1 (SYSV), statically linked, not stripped
hola_linux-mipsle:      ELF 32-bit LSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, not stripped
hola_linux-ppc64:       ELF 64-bit MSB executable, 64-bit PowerPC or cisco 7500, version 1 (SYSV), statically linked, not stripped
hola_linux-ppc64le:     ELF 64-bit LSB executable, 64-bit PowerPC or cisco 7500, version 1 (SYSV), statically linked, not stripped
hola_netbsd-386:        ELF 32-bit LSB executable, Intel 80386, version 1 (NetBSD), statically linked, for NetBSD 5.99, not stripped
hola_netbsd-amd64:      ELF 64-bit LSB executable, x86-64, version 1 (NetBSD), statically linked, for NetBSD 5.99, not stripped
hola_netbsd-arm:        ELF 32-bit LSB executable, ARM, EABI5 version 1 (NetBSD), statically linked, for NetBSD 5.99, not stripped
hola_openbsd-386:       ELF 32-bit LSB executable, Intel 80386, version 1 (OpenBSD), statically linked, for OpenBSD, not stripped
hola_openbsd-amd64:     ELF 64-bit LSB executable, x86-64, version 1 (OpenBSD), statically linked, for OpenBSD, not stripped
hola_openbsd-arm:       ELF 32-bit LSB executable, ARM, version 1 (OpenBSD), statically linked, for OpenBSD, not stripped
hola_plan9-386:         Plan 9 executable, Intel 386
hola_plan9-amd64:       data
hola_solaris-amd64:     ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/amd64/ld.so.1, not stripped
hola_windows-386.exe:   PE32 executable (console) Intel 80386 (stripped to external PDB), for MS Windows
hola_windows-amd64.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
~~~
