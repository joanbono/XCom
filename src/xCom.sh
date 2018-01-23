#!/bin/bash
DIR=$(echo $1 | sed -e 's/\.go//g') 
DIRECTORY=$1 

if ["$DIR" = "" ]; then
	echo "Provide a valid directory"
exit 0 else
	echo "Provide a valid directory"
	GOOS=android GOARCH=arm go build -o $DIR\_android-arm $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Android ARM"
	GOOS=darwin GOARCH=386 go build -o $DIR\_darwin-386 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Darwin i386"
	GOOS=darwin GOARCH=amd64 go build -o $DIR\_darwin-amd64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Darwin amd64"
	#GOOS=darwin GOARCH=arm go build -o $DIR\_darwin-arm $DIRECTORY > /dev/null
	#echo -ne "\n\tCompiled for Darwin ARM"
	GOOS=darwin GOARCH=arm64 go build -o $DIR\_darwin-arm64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Darwin ARM64"
	GOOS=dragonfly GOARCH=amd64 go build -o $DIR\_dragonfly-amd64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for DragonFly amd64"
	GOOS=freebsd GOARCH=386 go build -o $DIR\_freebsd-386 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for FreeBSD i386"
	GOOS=freebsd GOARCH=amd64 go build -o $DIR\_freebsd-amd64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for FreeBSD amd64"
	GOOS=freebsd GOARCH=arm go build -o $DIR\_freebsd-arm $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for FreeBSD ARM"
	GOOS=linux GOARCH=386 go build -o $DIR\_linux-386 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Linux i386"
	GOOS=linux GOARCH=amd64 go build -o $DIR\_linux-amd64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Linux amd64"
	GOOS=linux GOARCH=arm go build -o $DIR\_linux-arm $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Linux ARM"
	GOOS=linux GOARCH=arm64 go build -o $DIR\_linux-arm64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Linux ARM64"
	GOOS=linux GOARCH=ppc64 go build -o $DIR\_linux-ppc64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Linux PPc64"
	GOOS=linux GOARCH=ppc64le go build -o $DIR\_linux-ppc64le $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Linux PPc64le"
	GOOS=linux GOARCH=mips go build -o $DIR\_linux-mips $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Linux MIPS"
	GOOS=linux GOARCH=mipsle go build -o $DIR\_linux-mipsle $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Linux MIPSle"
	GOOS=linux GOARCH=mips64 go build -o $DIR\_linux-mips64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Linux MIPS64"
	GOOS=linux	GOARCH=mips64le go build -o $DIR\_linux-mips64le $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Linux MIPS64le"
	GOOS=netbsd GOARCH=386 go build -o $DIR\_netbsd-386 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for NetBSD i386"
	GOOS=netbsd GOARCH=amd64 go build -o $DIR\_netbsd-amd64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for NetBSD amd64"
	GOOS=netbsd GOARCH=arm go build -o $DIR\_netbsd-arm $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for NetBSD ARM"
	GOOS=openbsd GOARCH=386 go build -o $DIR\_openbsd-386 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for OpenBSD i386"
	GOOS=openbsd GOARCH=amd64 go build -o $DIR\_openbsd-amd64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for OpenBSD amd64"
	GOOS=openbsd GOARCH=arm go build -o $DIR\_openbsd-arm $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for OpenBSD ARM"
	GOOS=plan9 GOARCH=386 go build -o $DIR\_plan9-386 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Plan9 i386"
	GOOS=plan9 GOARCH=amd64 go build -o $DIR\_plan9-amd64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Plan9 amd64"
	GOOS=solaris GOARCH=amd64 go build -o $DIR\_solaris-amd64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Solaris amd64"
	GOOS=windows GOARCH=386 go build -o $DIR\_windows-386 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Windows x86"
	GOOS=windows GOARCH=amd64 go build -o $DIR\_windows-amd64 $DIRECTORY > /dev/null
	echo -ne "\n\tCompiled for Windows x64" 
fi
