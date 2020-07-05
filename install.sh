export DBHOST=dbhost
export DBUSER=dbuser
export DBPASS=passtololo
export MYROOT=pastrololo
export DB=db
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
        dbDriver := \"mysql\"
     dbUser := \"$DBUSER\"
      dbPass := \"$DBPASS\"
      dbHost := \"$DBHOST\"
        dbPort := \"3306\"
      dbName := \"$DB\"
        db, err := sql.Open(dbDriver, dbUser +\":\"+ dbPass +\"@tcp(\"+ dbHost +\":\"+ dbPort +\")\"+ dbName +\"?charset=utf8\")
        if err != nil {
                return
        }
        return db
}

" > /opt/serotonin/d/dbcon.go



docker-compose up --build -d

sleep 30

docker exec  $DBHOST mysql -uroot -p$MYROOT -e "create user $DBUSER identified by '$DBPASS'"
docker exec  $DBHOST mysql -uroot -p$MYROOT -e "create database $DB"
docker exec  $DBHOST mysql -uroot -p$MYROOT -e "grant all privileges on $DB.* to $DBUSER"
docker exec  $DBHOST mysql -uroot -p$MYROOT $DB < db.sql
