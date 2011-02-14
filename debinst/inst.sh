#!/bin/sh

# update and upgrade (aka up^2)
up2 () {
    apt-get update
    echo 'yy' | apt-get dist-upgrade
}

SOURCES=/etc/apt/sources.list
NDIST="squeeze"   
ODIST="squeeze"       
DEV_USER="$1"
TOR="deb http://deb.torproject.org/torproject.org ${NDIST} main"

if [ -z "${DEV_USER}" ]; then
    echo "need to specify a user name!"
    exit 1
fi

if [ "$UID" != "0" ]; then
    echo "requires root privileges!"
    exit 1
fi

grep ${DEV_USER} /etc/passwd 2>&1 > /dev/null
if [ "$?" = "1" ]; then
    adduser ${DEV_USER}
fi

# track squeeze
if [ ! "$ODIST"  = "$NDIST" ]; then 
    sed -i -e "s/${ODIST}/${NDIST}/g ; /.\+volatile.\+/d" ${SOURCES}
    sed -i -e 's/main/main contrib non-free/' ${SOURCES}
fi

# refresh package cache and upgrade system
up2

# add tor repo, update package cache and upgrade system
echo ${TOR} >> ${SOURCES}
gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

up2

# install packages and ensure system is up to date
PACKAGES=$(cat pkg.list | sed -e '/^[ \t]*$/D ; /^\#.*/D' | xargs)
apt-get install $(${PACKAGES})
up2

# change dev user's shell
usermod -s /bin/zsh ${DEV_USER}

# add user to sudo group
sed -i -e 's/^\(sudo.\+\)/\1${DEV_USER}/' /etc/group

# clone dotconf into user's dir
mkdir -p ~${DEV_USER}/code
cd ~${DEV_USER}
git clone git://github.com/kisom/dotconf.git

# remove git dir until pubkey added to github account
rm -fr ~${DEV_USER}/.git

# ensure permissions are set properly
chown -R ${DEV_USER}:${DEV_USER} ~${DEV_USER}
chmod u+rw,a-rw,g=r ~${DEV_USER}


echo "POST INSTALL TASKS"
echo "* visudo"
echo "* user gen pubkey -> github"
