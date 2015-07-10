#!/bin/bash


VDD_IP=$(echo "$1")

echo "============================================================="
echo "Install finished! Visit http://$VDD_IP in your browser." 
echo "============================================================="

# Prepare needed commands
GIT=`which git`
CD=`which cd`
SH=`which sh`

# Go to www
$CD /var/www

# Clone git repository
$GIT clone https://github.com/jabberwooki/pnf.git
$CD pnf

# Switch to develop branch
$GIT checkout develop

# Launch build script
$SH scripts/build.sh

echo "============================================================="
echo "PNF BUILD OK"
echo "============================================================="