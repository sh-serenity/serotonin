package main

import (
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
)
var db *sql.DB
func dbConnect() (db *sql.DB) {
	dbDriver := "mysql"
//	dbUser := "$DBUSER"
//	dbPass := "$DBPASS"
//	dbHost := "$DBHOST"
	dbPort := "3306"
//	dbName := "$DBNAME"
	db, err := sql.Open(dbDriver, $DBUSER +":"+ $DBPASS +"@tcp("+ $DBHOST +":"+ dbPort +")/"+ $DBNAME +"?charset=utf8")
	if err != nil {
		return
	}
	return db
}
