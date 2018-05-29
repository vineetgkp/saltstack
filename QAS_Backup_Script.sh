#!/bin/bash
> /rootbackup.log

USER='vineet.pandey'
PASS='vineet123#'
WG=IMFCORP
mount="//10.12.2.243/openpage_books_bkp"
sudo mount -t cifs //10.12.2.243/openpage_books_bkp /openpage_books_bkp -o username=$USER,password=$PASS

# Daily backup script

if grep -qs "$mount" /proc/mounts; then
  echo "Product QA/QAS BACKUP STATUS !!
rsync --bwlimit=100 -avzhe --progress /ebsvol1/html/OPCR_prod /openpage_books_bkp
rsync -avzP /ebsvol/webapps /openpage_books_bkp
rsync -avzP /ebsvol1/base_epub_prod /openpage_books_bkp
    

" >> /root/mysqlbackup.log
else
  echo "Network drive Mounting failed for /openpage_books_bkp backup!

" >> /root/mysqlbackup.log
fi


sonar.exclusions=**/web/r.js,**/widgets/**, **/deploy_default/**,**/lib/**,**/test/**,**/user/**,**/iframe/**,/**gradle-profile/**,**/gradle-flavor/**,**/web/bootstrap.js,**/web/karma.config.js,**/web/build.gradle

**/web/themes/cengage/**,**/web/themes/ngl/**,**/web/themes/harpercollins/**,**/web/themes/cup/**,**/web/themes/ati/**,**/web/themes/cdx/**,**/web/themes/edukate/**,**/web/themes/gkc/**,**/web/themes/jbl/**,**/web/themes/hodder/**,**/web/themes/repro/**,**/web/themes/rs/**,**/web/themes/veph/**