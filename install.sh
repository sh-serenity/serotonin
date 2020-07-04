export DBHOST=dbhost
export DBUSER=dbuser
export DBPASS=passtololo
export MYROOT=pastrololo
export DB=db
cd /opt

git clone https://github.com/sh-serenity/serotonin.git

cd serotonin

docker-compose up --build -d

sleep 30

docker exec -i $DBHOST mysql -uroot -p$MYROOT -e "create user $DBUSER identified by '$DBPASS'"
docker exec -i $DBHOST mysql -uroot -p$MYROOT -e "create database $DB"
docker exec -i $DBHOST mysql -uroot -p$MYROOT -e "grant all privileges on $DB.* to $DBUSER"
docker exec -i $DBHOST mysql -u$DBUSER -p$DBPASS $DB  < db.sql
