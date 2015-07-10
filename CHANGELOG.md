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

# Changelog
## V 0.0.0 -- 10/07/2015
* config.json modified for PNF
* vhosts are automaticly configured (edit of chef/cookbooks/core/vdd/templates/default/localhost.conf.erb)
* clone PNF repository, switch to develop branche, run the build.sh script (edit of chef/shell/final.sh/)

### ISSUES
* clean url not working (vhost config?)
* error on http://www.cevennes-parcnational.dev/ and site install fail via drush
* http://cevennes-parcnational.dev/ display "calanques"
* error on http://www.parcsnationaux.dev/ and site install fail via drush
* http://cevennes-parcnational.dev/ display "calanques"
* http://www.vanoise-parcnational.dev/ display "calanques"
* http://vanoise-parcnational.dev/ "calanques"

#### Error of cevennes & calanques
PDOException: SQLSTATE[28000] [1045] Access denied for user 'pnf'@'localhost' (using password: YES) in lock_may_be_available() (line 167 of 
/var/www/pnf/builds/15-07-10--14-14-31/includes/lock.inc).
