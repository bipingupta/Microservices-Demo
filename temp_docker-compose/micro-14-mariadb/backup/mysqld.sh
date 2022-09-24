#!/bin/bash

# Simple mysqld start script for containers
# We do not use mysqld_safe

# Variables

MYSQLD=mysqld
LOG_MESSAGE="Docker startscript: "
wsrep_recover_position=
OPT="$@"

# Do we want to check for programms?

which $MYSQLD || exit 1

# Check for mysql.* schema
# If it does not exists we got to create it

test -d /var/lib/mysql/mysql
if [ $? != 0 ]; then
  mysql_install_db --user=mysql
  if [ $? != 0 ]; then
    echo "${LOG_MESSAGE} Tried to install mysql.* schema because /var/lib/mysql seemed empty"
    echo "${LOG_MESSAGE} it failed :("
  fi
fi

# Get the GTID possition

echo  "${LOG_MESSAGE} Get the GTID positon"
tmpfile=$(mktemp)
$MYSQLD --wsrep-recover 2>${tmpfile}
if [ $? != 0 ]; then
  echo "${LOG_MESSAGE} An error happened while trying to '--wsrep-recover'"
  cat ${tmpfile}
  rm  ${tmpfile}
  exit 1
fi

wsrep_start_position=$(sed -n 's/.*Recovered\ position:\s*//p' ${tmpfile})

# What should we do if there is no recoverd position?
# We will not start, as most likely Galera is not configured

if test -z ${wsrep_start_position}
  then echo "${LOG_MESSAGE} We found no wsrep position!"
       echo "${LOG_MESSAGE} Most likely Galera is not configured, so we refuse to start"
       exit 1
fi

# Start mysqld

exec $MYSQLD $OPT --wsrep_start_position=$wsrep_start_position

# We should never end in here

echo "${LOG_MESSAGE} Uhh thats evil! How are you able to see this in your log?!"
exit 1