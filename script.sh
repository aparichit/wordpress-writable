#!/bin/bash
FILE=""
DIR="/var/www/wordpress"
# init
# look for empty dir 
if [ "$(ls -A $DIR)" ]; then
	echo "Wordpress allready installed"
else
	"(cd $DIR;wget http://wordpress.org/latest.tar.gz;tar xfz $DIR/latest.tar.gz;mv $DIR/wordpress/* $DIR/;rmdir $DIR/wordpress/;rm -f $DIR/latest.tar.gz)"
fi
"mv wp-config.php $DIR/wp-config.php"
# rest of the logic