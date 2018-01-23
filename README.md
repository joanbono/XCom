# xCom

:warning: Experimental version.

Generate build for all OS and all the architectures availables in the `go build` process.

## USAGE

From `UNIX` terminal:

~~~bash
bash xCom.sh FILE_to_build.go
~~~

The output:

~~~bash
jbono@MacBook [~]> bash xcom.sh hello.go
        Compiled for Android ARM
        Compiled for Darwin i386
        Compiled for Darwin amd64
        Compiled for Darwin ARM64
        Compiled for DragonFly amd64
        Compiled for FreeBSD i386
        Compiled for FreeBSD amd64
        Compiled for FreeBSD ARM
        Compiled for Linux i386
        Compiled for Linux amd64
        Compiled for Linux ARM
        Compiled for Linux ARM64
        Compiled for Linux PPc64
        Compiled for Linux PPc64le
        Compiled for Linux MIPS
        Compiled for Linux MIPSle
        Compiled for Linux MIPS64
        Compiled for Linux MIPS64le
        Compiled for NetBSD i386
        Compiled for NetBSD amd64
        Compiled for NetBSD ARM
        Compiled for OpenBSD i386
        Compiled for OpenBSD amd64
        Compiled for OpenBSD ARM
        Compiled for Plan9 i386
        Compiled for Plan9 amd64
        Compiled for Solaris amd64
        Compiled for Windows x86
        Compiled for Windows x64
~~~

And in the folder:

~~~bash
jbono@MacBook [~]> ls -lrth hello_*
-rwxrwxrwx 1 root root 1.6M Jan 23 09:58 hello_darwin-386
-rwxrwxrwx 1 root root 1.9M Jan 23 09:58 hello_darwin-amd64
-rwxrwxrwx 1 root root 1.8M Jan 23 09:58 hello_dragonfly-amd64
-rwxrwxrwx 1 root root 1.6M Jan 23 09:58 hello_freebsd-386
-rwxrwxrwx 1 root root 1.8M Jan 23 09:59 hello_freebsd-amd64
-rwxrwxrwx 1 root root 1.7M Jan 23 09:59 hello_freebsd-arm
-rwxrwxrwx 1 root root 1.6M Jan 23 09:59 hello_linux-386
-rwxrwxrwx 1 root root 1.8M Jan 23 09:59 hello_linux-amd64
-rwxrwxrwx 1 root root 1.7M Jan 23 09:59 hello_linux-arn
-rwxrwxrwx 1 root root 1.9M Jan 23 09:59 hello_linux-arm64
-rwxrwxrwx 1 root root 1.9M Jan 23 09:59 hello_linux-ppc64
-rwxrwxrwx 1 root root 1.9M Jan 23 09:59 hello_linux-ppc64le
-rwxrwxrwx 1 root root 1.9M Jan 23 09:59 hello_linux-mips
-rwxrwxrwx 1 root root 1.9M Jan 23 09:59 hello_linux-mipsle
-rwxrwxrwx 1 root root 2.0M Jan 23 09:59 hello_linux-mips64
-rwxrwxrwx 1 root root 2.0M Jan 23 09:59 hello_linux-mips64le
-rwxrwxrwx 1 root root 1.5M Jan 23 10:00 hello_netbsd-386
-rwxrwxrwx 1 root root 1.8M Jan 23 10:00 hello_netbsd-amd64
-rwxrwxrwx 1 root root 1.7M Jan 23 10:00 hello_netbsd-arm
-rwxrwxrwx 1 root root 1.6M Jan 23 10:00 hello_openbsd-386
-rwxrwxrwx 1 root root 1.9M Jan 23 10:00 hello_openbsd-amd64
-rwxrwxrwx 1 root root 1.8M Jan 23 10:00 hello_openbsd-arm
-rwxrwxrwx 1 root root 998K Jan 23 10:00 hello_plan9-386
-rwxrwxrwx 1 root root 1.2M Jan 23 10:00 hello_plan9-amd64
-rwxrwxrwx 1 root root 1.9M Jan 23 10:00 hello_solaris-amd64
-rwxrwxrwx 1 root root 1.7M Jan 23 10:00 hello_windows-386
-rwxrwxrwx 1 root root 1.9M Jan 23 10:01 hello_windows-amd64
~~~
