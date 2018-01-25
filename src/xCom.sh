#!/bin/bash
# Title: xCom.sh
# Description: Go builds, the easy way
# Author: Joan Bono (@joan_bono)
# Version: 1.0.0
# Last Modified: jbono @ 20180125
RED='\033[0;31m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m'
BOLD='\033[1m'

DIRECTORY="$1"
DIR=$(echo $DIRECTORY | sed -e 's/\.go//g')

if ["$DIRECTORY" = "" ]; then
		echo -ne "\n\t${RED}${BOLD}[-]${NOCOLOR} Provide a valid go file\n"
		exit 0
else
		GOOS=darwin GOARCH=386 go build -o $DIR\_darwin-386 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Darwin i386${NOCOLOR}"
		GOOS=darwin GOARCH=amd64 go build -o $DIR\_darwin-amd64 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Darwin amd64${NOCOLOR}"
		GOOS=dragonfly GOARCH=amd64 go build -o $DIR\_dragonfly-amd64 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}DragonFly amd64${NOCOLOR}"
		GOOS=freebsd GOARCH=386 go build -o $DIR\_freebsd-386 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}FreeBSD i386${NOCOLOR}"
		GOOS=freebsd GOARCH=amd64 go build -o $DIR\_freebsd-amd64 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}FreeBSD amd64${NOCOLOR}"
		GOOS=freebsd GOARCH=arm go build -o $DIR\_freebsd-arm $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}FreeBSD ARM${NOCOLOR}"
		GOOS=linux GOARCH=386 go build -o $DIR\_linux-386 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Linux i386${NOCOLOR}"
		GOOS=linux GOARCH=amd64 go build -o $DIR\_linux-amd64 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Linux amd64${NOCOLOR}"
		GOOS=linux GOARCH=arm go build -o $DIR\_linux-arm $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Linux ARM${NOCOLOR}"
		GOOS=linux GOARCH=arm64 go build -o $DIR\_linux-arm64 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Linux ARM64${NOCOLOR}"
		GOOS=linux GOARCH=ppc64 go build -o $DIR\_linux-ppc64 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Linux PPc64${NOCOLOR}"
		GOOS=linux GOARCH=ppc64le go build -o $DIR\_linux-ppc64le $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Linux PPc64le${NOCOLOR}"
		GOOS=linux GOARCH=mips go build -o $DIR\_linux-mips $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Linux MIPS${NOCOLOR}"
		GOOS=linux GOARCH=mipsle go build -o $DIR\_linux-mipsle $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Linux MIPSle${NOCOLOR}"
		GOOS=linux GOARCH=mips64 go build -o $DIR\_linux-mips64 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Linux MIPS64${NOCOLOR}"
		GOOS=linux	GOARCH=mips64le go build -o $DIR\_linux-mips64le $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Linux MIPS64le${NOCOLOR}"
		GOOS=netbsd GOARCH=386 go build -o $DIR\_netbsd-386 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}NetBSD i386${NOCOLOR}"
		GOOS=netbsd GOARCH=amd64 go build -o $DIR\_netbsd-amd64 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}NetBSD amd64${NOCOLOR}"
		GOOS=netbsd GOARCH=arm go build -o $DIR\_netbsd-arm $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}NetBSD ARM${NOCOLOR}"
		GOOS=openbsd GOARCH=386 go build -o $DIR\_openbsd-386 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}OpenBSD i386${NOCOLOR}"
		GOOS=openbsd GOARCH=amd64 go build -o $DIR\_openbsd-amd64 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}OpenBSD amd64${NOCOLOR}"
		GOOS=openbsd GOARCH=arm go build -o $DIR\_openbsd-arm $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}OpenBSD ARM${NOCOLOR}"
		GOOS=plan9 GOARCH=386 go build -o $DIR\_plan9-386 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Plan9 i386${NOCOLOR}"
		GOOS=plan9 GOARCH=amd64 go build -o $DIR\_plan9-amd64 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Plan9 amd64${NOCOLOR}"
		GOOS=solaris GOARCH=amd64 go build -o $DIR\_solaris-amd64 $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Solaris amd64${NOCOLOR}"
		GOOS=windows GOARCH=386 go build -o $DIR\_windows-386.exe $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Windows x86${NOCOLOR}"
		GOOS=windows GOARCH=amd64 go build -o $DIR\_windows-amd64.exe $DIRECTORY > /dev/null
		echo -ne "\n\t${GREEN}${BOLD}[+]${NOCOLOR} Compiled for ${BOLD}Windows x64${NOCOLOR}\n\n"
fi
