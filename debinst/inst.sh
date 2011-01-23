#!/bin/sh

# update and upgrade (aka up^2)
up2 () {
    apt-get update
    yes | apt-get dist-upgrade
}

SOURCES=/etc/apt/sources.list
TOR="deb http://deb.torproject.org/torproject.org ${NDIST} main"
NDIST="squeeze"
ODIST="lenny"

if [ ! "$UID" = "0" ]; then
    echo "requires root privileges!"
    exit 1
fi

# track squeeze
sed -i -e 's/${ODIST}/${NDIST}/g ; /.\+volatile.\+/d ' ${SOURCES}
sed -i -e 's/main/main contrib non-free/' ${SOURCES}

# refresh package cache and upgrade system
up2

# add tor repo, update package cache and upgrade system
echo ${TOR} >> ${SOURCES}
gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

up2

# install packages
apt-get install $(cat debian-install.txt | xargs)

