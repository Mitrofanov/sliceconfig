# Copyright (c) 2008-2009, the Flatsoft, LLC.
# All rights reserved

# sliceconfig dir
sliceconfig=`dirname $0`/..
sliceconfig=`readlink -f $sliceconfig`


# install required software
sh $sliceconfig/install/scripts/install_nginx.sh
sh $sliceconfig/install/scripts/install_ruby_passenger_nginx.sh


# user configurations
sh $sliceconfig/install/scripts/setup_users_rails.sh

# nginx  configuration
sh $sliceconfig/install/scripts/setup_nginx.sh

# ssl configuration
sh $sliceconfig/install/scripts/setup_nginx_ca.sh


# software configuration
sh $sliceconfig/install/scripts/setup_munin_node_nginx.sh
sh $sliceconfig/install/scripts/setup_monit_nginx.sh


# setup perm on several dirs
sh $sliceconfig/security/scripts/setup_perms_nginx.sh
sh $sliceconfig/security/scripts/setup_perms_rails.sh
sh $sliceconfig/security/scripts/setup_perms_etc.sh


# erase history
sh $sliceconfig/security/scripts/erase_history.sh
