 
package main

import (
        "database/sql"
        _ "github.com/go-sql-driver/mysql"
)
var db *sql.DB
func dbConnect() (db *sql.DB) {
    db, _ = sql.Open("mysql", "dbuser:passblyadovo@tcp(dbhost:3306)/db")
return db
}