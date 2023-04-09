#!/bin/bash

# MySQL server details
mysql_host="localhost"
mysql_user="root"
mysql_password="old_password"

# Define the new password and the interval to change it
new_password="new_password"
change_interval_days=30

while true
do
    # Calculate the date when the password should be changed
    change_date=$(date -d "+$change_interval_days days" "+%Y-%m-%d %H:%M:%S")

    # Connect to the MySQL server and update the root password
    mysql -h $mysql_host -u $mysql_user -p$mysql_password -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$new_password';"

    # Print the success message
    echo "Root password updated successfully at $(date)"

    # Wait until the password change date
    sleep $(($(date -d "$change_date" "+%s") - $(date "+%s")))
done
