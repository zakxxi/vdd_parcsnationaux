#!/bin/bash


VDD_IP=$(echo "$1")

echo "============================================================="
echo "Install finished! Visit http://$VDD_IP in your browser." 
echo "============================================================="

cd /var/www

# Delete pnf/www folder
rm -rf pnf

# Clone git repository
git clone https://github.com/jabberwooki/pnf.git
cd pnf

# Switch to develop branch
git checkout develop

# Launch build script
sh scripts/build.sh

echo "============================================================="
echo "PNF BUILD OK"
echo "============================================================="