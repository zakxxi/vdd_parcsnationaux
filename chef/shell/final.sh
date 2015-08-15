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

drush @parcsnationaux si pnf -y

echo "============================================================="
echo "PNF INSTALL OK"
echo "============================================================="

cp -r /var/www/pnf/shared/template /var/www/pnf/shared/cevennes-parcnational.fr
ln -s /var/www/pnf/shared/cevennes-parcnational.fr /var/www/pnf/www/sites/cevennes-parcnational.fr
drush @cevennes si pnf -y

echo "============================================================="
echo "CEVENNES INSTALL OK"
echo "============================================================="