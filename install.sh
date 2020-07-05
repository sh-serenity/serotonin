export DBHOST=dbhost
export DBUSER=dbuser
export DBPASS=passtololo
export MYROOT=pastrololo
export DB=db

apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get -y install docker-ce docker-ce-cli containerd.io
cd /opt

git clone https://github.com/sh-serenity/serotonin.git

cd serotonin
 
printf " 
package main

import (
        \"database/sql\"
        _ \"github.com/go-sql-driver/mysql\"
)
var db *sql.DB
func dbConnect() (db *sql.DB) {
    db, _ = sql.Open(\"mysql\", \"$DBUSER:$DBPASS@tcp($DBHOST:3306)/$DB\")
return db
}" > /opt/serotonin/d/dbcon.go




docker-compose up --build -d

sleep 30

docker exec -i $DBHOST mysql -uroot -p$MYROOT -e "create user $DBUSER identified by '$DBPASS'"
docker exec -i $DBHOST mysql -uroot -p$MYROOT -e "create database $DB"
docker exec -i $DBHOST mysql -uroot -p$MYROOT -e "grant all privileges on $DB.* to $DBUSER"
docker exec -i $DBHOST mysql -h127.0.0.1 -uroot -p$MYROOT $DB < /opt/serotonin/db.sql
