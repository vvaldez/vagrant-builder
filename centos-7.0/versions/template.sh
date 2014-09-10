#!/bin/bash

# to use this script, from its parent dir, run: ./versions/<script>.sh <target>
# you'll want to edit the below bash variables to match your use cases :)
# eg: ./versions/centos-7.0.sh upload
# to make your own base image and upload it to your own server somewhere.

VERSION='centos-7.0'		# pick from the output of virt-builder -l
POSTFIX=''			# add this string onto the base version
SERVER='user@host.example.org'	# connect over ssh (add your public key first)
REMOTE_PATH='public_html/vagrant'	# make a $VERSION directory in this dir
REPOS=''			# add extra repos to the base image
IMAGES=''			# list of docker images to include
EXTRAS=''			# list of extra packages to include
make VERSION=$VERSION POSTFIX=$POSTFIX SERVER=$SERVER REMOTE_PATH=$REMOTE_PATH REPOS="$REPOS" IMAGES="$IMAGES" EXTRAS="$EXTRAS" $@
