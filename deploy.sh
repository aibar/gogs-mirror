#!/bin/bash

Version=0.8.43

Gogs=gogs-${Version}.tar.gz

if [ ! -f ${Gogs} ]
then
    wget https://github.com/gogits/gogs/releases/download/v${Version}/linux_amd64.tar.gz \
         -O ${Gogs}
fi


curl https://api.bintray.com/content/walkingdevs/mirrors/gogs/${Version}/${Gogs} -v -# \
     -uaibar:${BintrayKey} \
     -T ${Gogs}