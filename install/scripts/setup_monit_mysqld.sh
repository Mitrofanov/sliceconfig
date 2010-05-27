# Copyright (c) 2008-2009, the Flatsoft, LLC.
# All rights reserved


# include config
. `dirname $0`/configuration.sh


# copy config
copy_file $sliceconfig/config/etc/monit.d/mysqld.conf /etc/monit.d/mysqld.conf
copy_file $sliceconfig/config/etc/monit.d/backup_mysql.conf /etc/monit.d/backup_mysql.conf


# reload monit
monit reload
