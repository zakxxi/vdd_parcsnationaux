'########::'##::: ##:'########:
 ##.... ##: ###:: ##: ##.....::
 ##:::: ##: ####: ##: ##:::::::
 ########:: ## ## ##: ######:::
 ##.....::: ##. ####: ##...::::
 ##:::::::: ##:. ###: ##:::::::
 ##:::::::: ##::. ##: ##:::::::
..:::::::::..::::..::..::::::::

Based on VDD 8.x-1.x-dev
https://www.drupal.org/project/vdd

Please read "VDD-README.txt"

# Install
vagrant up

# Launch page
http://192.168.21.21/

# NFS Mode
For OS X or Linux, change "type": "nfs" in config.json
then
vagrant reload

# Config vhosts (to be improved)
    <VirtualHost *:80>
      DocumentRoot /var/www/pnf/www
      ServerName www.calanques-parcnational.dev
      ServerAlias calanques-parcnational.dev
      ServerAdmin admin@example.com
        <Directory /var/www/pnf/www>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride
                Require all granted
                AuthType None
                RewriteEngine On
                Satisfy Any
        </Directory>
      ErrorLog /var/log/apache2/calanques.error.log
      LogLevel warn
      CustomLog /var/log/apache2/calanques.access.log combined
    </VirtualHost>

# Drush snippets
drush @calanques si pnf --db-url="mysql://root:root@localhost/calanques" --site-name="calanques" -y
drush @cevennes si pnf --db-url="mysql://root:root@localhost/cevennes" -y
drush @ecrins si pnf --db-url="mysql://root:root@localhost/ecrins" -y
drush @guadeloupe si pnf --db-url="mysql://root:root@localhost/guadeloupe" -y
drush @mercantour si pnf --db-url="mysql://root:root@localhost/mercantour" -y
drush @guyane si pnf --db-url="mysql://root:root@localhost/guyane" -y
drush @pyrenees si pnf --db-url="mysql://root:root@localhost/pyrenees" -y
drush @parcsnationaux si pnf --db-url="mysql://root:root@localhost/parcsnationaux" -y
drush @portcros si pnf --db-url="mysql://root:root@localhost/portcros" -y
drush @reunion si pnf --db-url="mysql://root:root@localhost/reunion" -y
drush @vanoise si pnf --db-url="mysql://root:root@localhost/vanoise" -y

drush @calanques vset clean_url 0 -y
drush @calanques variable-set site_name "calanques"

drush @cevennes vset clean_url 0 -y
drush @cevennes variable-set site_name "cevennes"

drush @ecrins vset clean_url 0 -y
drush @ecrins variable-set site_name "ecrins"

drush @guadeloupe vset clean_url 0 -y
drush @guadeloupe variable-set site_name "guadeloupe"

drush @mercantour vset clean_url 0 -y
drush @mercantour variable-set site_name "mercantour"

drush @guyane vset clean_url 0 -y
drush @guyane variable-set site_name "guyane"

drush @pyrenees vset clean_url 0 -y
drush @pyrenees variable-set site_name "pyrenees"

drush @parcsnationaux vset clean_url 0 -y
drush @parcsnationaux variable-set site_name "parcsnationaux"

drush @portcros vset clean_url 0 -y
drush @portcros variable-set site_name "portcros"

drush @reunion vset clean_url 0 -y
drush @reunion variable-set site_name "reunion"

drush @vanoise vset clean_url 0 -y
drush @vanoise variable-set site_name "vanoise"
