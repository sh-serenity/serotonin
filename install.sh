export dbhost=dbhost
export dbuser=dbuser
export dbpass=passtololo
export myroot=passtrololo

cd /opt

git clone https://github.com/sh-serenity/serotonin.git

export dbuser=dbuser
export dbpass=12houres
export dbhost=dbhost
export db=db
export myroot=dbblaroot

cd serotonin

docker-compose up --build -d

docker exec -i $dbhost mysql -uroot -p$myroot -e "create user $dbuser identified by '$dbpass'"
docker exec -i $dbhost mysql -uroot -p$myroot -e "create database $db"
docker exec -i $dbhost mysql -uroot -p$myroot -e "grant all on $db.* to $dbuser"
docker exec -i $dbhost mysql -u$dbuser -p$dbpass $db  < db.sql