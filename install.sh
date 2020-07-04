dbhost=dbhost
dbuser=dbuser
dbpass=passtololo

cd /opt

git clone https://github.com/sh-serenity/serotonin.git

export dbuser=dbuser
export dbpass=12houres
export dbhost=dbhost
export db=db
export myroot=dbblaroot

cd serotonin

docker-compose up --build -d

docker exec -i $dbhost mysql -uroot -pblablapass -e "create user $dbuser identified by '$dbpass'"
docker exec -i $dbhost mysql -uroot -pblablapass -e "create database $db"
docker exec -i $dbhost mysql -uroot -pblablapass -e "grant all on $db.* to $dbuser"
docker exec -i $dbhost mysql -u$dbuser -p$dbpass $db  < db.sql
