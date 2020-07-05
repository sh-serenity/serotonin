dbuser=dbuser
dbpasd=dbpass
dbhost=dbhost
dbname=db

cat > /opt/serotonin/d/dbcon.go << "EOF"
    db, err := sql.Open(dbDriver, $dbuser +":"+ $dbpass +"@tcp("+ $dbhost +":"+ dbPort +")/"+ $dbname +"?charset=utf8")
EOF
