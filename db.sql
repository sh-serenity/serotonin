-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	5.7.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8_bin NOT NULL,
  `postid` int(64) NOT NULL,
  `owner` int(64) NOT NULL,
  `comtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (11,'<p>Ты обещал поправки добавить.</p>\n',39,21,'2020-03-30 14:19:33');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashes`
--

DROP TABLE IF EXISTS `hashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashes` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `hash` varchar(256) COLLATE utf8_bin NOT NULL,
  `email` varchar(256) COLLATE utf8_bin NOT NULL,
  `password` varchar(1024) COLLATE utf8_bin NOT NULL,
  `fname` varchar(127) COLLATE utf8_bin NOT NULL,
  `sname` varchar(127) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashes`
--

LOCK TABLES `hashes` WRITE;
/*!40000 ALTER TABLE `hashes` DISABLE KEYS */;
INSERT INTO `hashes` VALUES (3,'qrpcdQ8lsygxfPB7-qxeRFtYrQNm-nX3JZianKJ9WveMoVpadJ3Rqt8U6iE_vnMSx0SeQybYwu1R9mAzDrLrXg==','int@tinedel','c65d534786406137a74a0baba5396618','Alexandr','Bobrov'),(9,'x2NhGJGwvyw4UR5cJX6z9UsH8pd5yWVDBwtfSOvqsPV6H4NUO_M0jTkEs3jBqpzNGurX9tG6Dsc_L8ND6cSKJQ==','rsinitsyn@gmail.com','e5e492e373436604c65796b1e4a1e6aa','Rustem','Sinitsyn'),(10,'yon8A7ByHTaKPTmw9iHqJAAbCYbadbEYL3fv0HF2tC-16cgCzjo8qDASJVXzIaFvAXK2HE9luNA3QciWNT9tcQ==','rsinitsyn@gmail.com','e5e492e373436604c65796b1e4a1e6aa','Rustem','Sinitsyn'),(11,'1hrTKw7Oaqem5xA-jpn4w-CPx8FbesD-W8oEC2ti-hYyIHsxA7JPUBRIg8zPJJJXgYbvnExb5o2_E5hwt99maQ==','rsinitsyn@gmail.com','e5e492e373436604c65796b1e4a1e6aa','Rustem','Sinitsyn'),(12,'f2GPaJjrbDpEa8JXGjYO1HmspWjvTlyCg4bWxzzgH54UV-AYemAR7p1mLhCy0bZLyyBGU6iIjKlrgmVZYAfUFg==','rsinitsyn@gmail.com','e5e492e373436604c65796b1e4a1e6aa','Rustem','Sinitsyn'),(23,'vLM8PzQT5B7FBVN8065Hh1B09w5Yp9ae1PzGqRdijo2EcIwVEIoGQL4IlkJmxpOx-kPM6mKIIxDd1z2bSkQvvQ==','rsinitsyn@gmail.com','e5e492e373436604c65796b1e4a1e6aa','Rustem','Sinitsyn'),(34,'dRCPmJWmS3WliCdAe7AXesmgfYpIAS7-728gnvc31ey3UvyaDa3pQ60yYCXuCkFrsWxxDXZY9HTTFwdnvEX3-Q==','arturpir.90@mail.ru','c576a67a12f7854e0da23681f4fb12b6','Денис','Лат');
/*!40000 ALTER TABLE `hashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invites` (
  `invite` varchar(1024) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lposts`
--

DROP TABLE IF EXISTS `lposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lposts` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `owner` int(64) NOT NULL,
  `rcp` int(64) NOT NULL,
  `post` text COLLATE utf8_bin NOT NULL,
  `posttime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lposts`
--

LOCK TABLES `lposts` WRITE;
/*!40000 ALTER TABLE `lposts` DISABLE KEYS */;
/*!40000 ALTER TABLE `lposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `owner` int(64) NOT NULL,
  `subj` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `post` text COLLATE utf8_bin NOT NULL,
  `posttime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,18,NULL,'<p>_\r\n<strong>Сети и фаерволы</strong></p>\r\n\r\n<p>Зачем я это пишу? Потому что в молодости сталкивался с этими проблемами. Открываешь книгу — ничего не понятно. Модель OSI и прочее. Интернета у меня тогда не было. Да но я разобрался. И хочу вам рассказть на маленьком примерчеке, что там и как.</p>\r\n\r\n<p>Начнем с Ethernet. Все что вы как начинающий админ должны знать, что эзернет работает на двух первых уровнях модели OSI. А попросту говоря, первый уровень — это веревка, которая соединяет тачку с другой тачкой, свичом, роутерем, с любой железякой. Это могут быть витая пара, оптоволокно, в случае с вайфаем вообще радиоволны. А второй уровень реализован уже на уровне железяк, которые пришедшие эзернет пакеты обрабатывают. Меня попросили не углубляться дальше, скажу только, что адрес выглядит вот так примерно: 00:1D:60:2E:ED:A5, то бишь 6 чисел от 0 до 255 в шестнадцатеричной системе написания, разделённыее двоеточиями. Называется mac адресом.</p>\r\n\r\n<p>На уровне линукса разруливается так: ядро в зависимости от настроек по какому адресу его слать  и от таблицы маршрутизации arp выбирает, в какую дырку и по какому адресу его На примитивном уровне увидел mac, на который нужно послать пакет с соответствующим IP-адресом – выслал. Опять же таки, это самый простой случай.</p>\r\n\r\n<p>Следующим уровнем, я уж и не знаю, и не помню, к какому протоколу из уровней модели OSI он причисляется, идет протокол IP. Казалось бы, зачем плодить сущности, нам одного адреса мало? Да напхаем в него в цифр побольше, на весь мир хватит. Но, кроме эзернета существуют и другие протоколы, на нем свет клином не сошелся.</p>\r\n\r\n<p>Опять же таки, ради упрощения мы сейчас не будем затрагивать Ipv6, новый протокол, пока еще вполне жив IPv4. Для IPv6 в принципе тот  же, просто цифр побольше побольше.</p>\r\n\r\n<p>Итак, стандартный IP-адрес и маршрутизация для него происходит,  учитывая его собственный адрес и маску подсети. Если вы когда-нибудь настраивали сеть в школе или рубились с кем-то в игрушки, то наверняка слышали что-то вроде 192.168.0.0/24.  Или чего-нибудь еще с десятки начинающегося.</p>\r\n\r\n<p>Вот стандартная сеть 192.168.0.0/24. Что значит 24? Это значит, что за адрес сети в этой сетке будут отвечать 24 первых бита, а оставшиеся 8 — за номер конкретного устройства в ней. Вот так:</p>\r\n\r\n<p>192.168.0.0<br>\r\n11000000.10101000.00000000.00000000</p>\r\n\r\n<p>255.255.255.0 = 24<br>\r\n11111111.11111111.11111111.00000000</p>\r\n\r\n<p>Соответственно, 8 свободных битов для устройства в сети – это 256 адресов, закавыка в том, что первый адрес будет обозначать саму сеть то бишь 192.168.0.0\r\nВторой адрес, как правило, берут как номер шлюза (если не приходится взять что-то другое или у вас фантазии много) И кстати, будете покупать роутер в хату, никогда не прибивайте сетке этот адрес. Хотя бы 192.168.1.0/24.</p>\r\n\r\n<p>Если вы поняли принцип, то поймете, что в сети c маской /23 айпишек будет в два раза больше, то бишь 512, а в сети /23, в два раза меньше – 128. Умные дяди умеют считать это все в уме, а те, кто обленился вроде меня, пользуются вот такими средствами: <a href=\"https://www.opennet.ru/ipcalc.shtml\" rel=\"nofollow\">https://www.opennet.ru/ipcalc.shtml</a>.</p>\r\n\r\n<p>Так, зачем нам это все надо? Сети используются для маршрутизации, иначе бы ни ваш девайс не был бы способен увидеть девайс на другом стороне планеты, ни он вас. В сети назначается дефолтны шлюз, через которые все пакеты отправляются через вашу эзернут карту,  потом или напрямую, или через вашроутер,  вашему провайдера, который отправляет его в длительное путешествие по проторенным маршрутам, ближайшим путем к адресу, к которому он обращен. Про Ethernet там дальше, когда он вышел из нашей сети к провайдру, можно забыть.</p>\r\n\r\n<p>Если вы краем  уха что-то слышали про ТСP/IP, то, возможно, знаете, что там также живет UDP. А вообще там сидит не два протокла, там еще сидит служебный протокол ICMP. Тут я должен добавить, что самому IP глубоко фиолетово, если это входит в его стандартный набор протоколов, он просто доставит его по адресу, а tcp, udp ли это - ему плевать.\r\nТак вот TCP устанавливает устойчивое соединение, клиент сначала стучится, потом сервер отвечает ему, клиент подтверждает, что он тут, все, соединение установлено. Обмен  TCP пакетами похож на беседу двух вежливых людей – один спросил, другой тут же ответил.</p>\r\n\r\n<p>UDP просто льет пакеты в одно ведро, из-за этого бывает проблемы с DNS-портом, на него ломятся, если хотят задавить, и еще ftp страдает из-за этого.  У меня проблемы c  UDP атак  DDSos не было, c NFS не было, хотя он на нем работает.</p>\r\n\r\n<p>Так и ICMP. Чисто служебный протокол, который передает чуть-чуть информации по поводу того, что вообще происходит в сети. Скажем, всеми любимый ping – это ICMP. Так что если вы что-то пингаете, а оно молчит – это не значит, что там ничего нет, если хотите поточнее проверить, берите nmap.</p>\r\n\r\n<p>Также каждому пакету присваивается куча данных, которые можно и менять в айпитейблс. Например, TTL, время жизни пакета. Учитывая, что в апитейблс после n-ого числа переходов, он может и обнулиться, то с ним и играются.</p>\r\n\r\n<p>Также айпитейблз можно использовать для шейпинга траффика. К примеру, вам для соединения с db нужен пошире канал, при желании решается проблема. И много другого прочего вроде проверок на спуффинг (замена адреса) и прочих дел, типа поддержки UDP, ftp, pptp итд.</p>\r\n\r\n<p>Так, меня попросили написать маленькую заметку про ipables, а меня понесло. Так вот, предположим, что у нас есть офис, что мы девелопнейнт айти компания и нам нужно, чтобы комар носа не подточил. Так как контора мы небольшая, то у нас один директор, который вообще ничего не знает, кроме того что ему нужна кнопка “сделать все зашибись, один разработчик, один сисадмин, один дизайнер, секратрь/бухгалтер/офис менеджер с 44-зубной улыбкой и платиновыми волосами» :))))))))) В конторе расположен один служебный сервак, доступ к которому должен быть доступен извне и разрабу, и сисадмину, и дизайнеру, но для разных целей. Секретарь все время в офисе во время рабочего дня, сисадмину и кодеру иногда приходится работать по ночам, а вот дизайнеру порой необходимо ездить и показывать дизайн. Директор  только пинки дает и требует результатов и отчетов.</p>\r\n\r\n<p>Итак, предположим, что у нас один внешний адрес. 66.66.66.66/25 айпи адрес шлюза для нашей тачки у провайдера будет 66.66.66.1 DNS будет свой. Внутрення сеть у нас 192.168.13.0/24 192.168.0.1 тачка на которой в один интерефейс воткнут мир, а  вторым интерфейсом смотрит во внутреннюю сеть.</p>\r\n\r\n<p>Итак, приступим.</p>\r\n\r\n<p>Мир – eth0, eth1 – в нашу сеть смотри.</p>\r\n\r\n<p>iptables – F # стираем все правила</p>\r\n\r\n<p>Настраиваем NAT.</p>\r\n\r\n<p>iptables -A FORWARD -i eth0 -o eth1 -s 192.168.13.0/24 -j ACCEPT\r\n iptables -A FORWARD -i eth1 -o eth0 -d 192.168.13.0/24 -j ACCEPT\r\niptables -P FORWARD DROP\r\n iptables -A POSTROUTING -s 192.168.0.0/24 -o eth0 -j SNAT --to-source 66.66.66.66</p>\r\n\r\n<p>Разрешаем все соединения изнутри.\r\niptables -A OUTPUT -m conntrack --ctstate ESTABLISHED -j ACCEPT</p>\r\n\r\n<p>Перенаправляем все соединения с вебом на прокси сервис, сначала смотрим логи, потом смотрим, кто как бездельничает :) И думаем, как с этим бороться.\r\niptables -A PREROUTING -d! 192.168.0.0/24 -i eth0 -p tcp -m multiport --dports 80,443 -j REDIRECT --to-ports 3128</p>\r\n\r\n<p>Открываем для сисадмина доступ снаружи к ssh\r\niptables -A INPUT -s 12.12.12.0/23 -p tcp --dport 22 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT</p>\r\n\r\n<p>iptables -A INPUT -s 192.168.13.0/24 -p tcp --dport 22 -j ACCEPT\r\niptables -A OUTPUT -p tcp --sport 22 -m conntrack --ctstate ESTABLISHED -j ACCEPT\r\nДля кодера mysql и git респозиторий.</p>\r\n\r\n<p>iptables -A PREROUTING -i eth0 -s 14.14.14.0/25 -p tcp -m tcp --dport 3306 -j DNAT --to-destination 192.168.13.200\r\niptables -A PREROUTING -i eth0 -s 14.14.14.0/25 -p tcp -m tcp --dport 9418 -j DNAT --to-destination 192.168.13.200</p>\r\n\r\n<p>И для дизайнера к файлопомойке.</p>\r\n\r\n<p>iptables -A PREROUTING -i eth0 -p tcp -m tcp --dport 20 -j DNAT --to-destination 192.168.13.200\r\niptables -A PREROUTING -i eth0 -p tcp -m tcp --dport 21 -j DNAT --to-destination 192.168.13.200</p>\r\n\r\n<p>Безопасность. Разрешаем все внутри, разрешаем соединине изнутри снаружи, которые поддерживаем, все остальное рвем.</p>\r\n\r\n<p>iptables -A INPUT -i lo -j ACCEPT\r\niptables -A INPUT -i eth0 -s 192.168.0.0/24 -j ACCEPT\r\niptables -A INPUT -i eth1 -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT\r\niptables -P INPUT DROP</p>\r\n\r\n<p>По желанию радиослушателей, могу в следующий раз рассказать, как интернет приходит в ваш дом или офис.</p>\r\n','2020-07-06 06:32:29'),(2,18,NULL,'<p><strong>Немного докера, шелла и golang</strong></p>\r\n\r\n<p>Напишу несколько строчек о докере.</p>\r\n<img width=\"512px\" src=\"https://sonnikguru.ru/sites/default/files/resize/kit-foto-1024x512-775x388.jpg\">\r\n\r\n<p>Начнем с того что такое паравиртуализация. Предположим у вас есть сервер, но у него достаточно ресурсов, чтобы обеспечить сразу несколько задач, но вы бы хотели чтобы одна задача была запущенна отдельно от другой. Скажем не городить одновременно почтовый сервер вместе с прокси сервером. Принцип был придуман довольно давно. Запереть каждый сервис в отдельный jail(тюрьму), но я ядром и системными вызовами системы он пользуется точно так же, просто имеет другой айпишник. Примеры FreeBSD jails, OpenVZ Linux.</p>\r\n\r\n<p>Докер пошел дальше. Если там подымалась практически полноценная система, то докер отрезает контейнер от внешнего мира, дает ему свой собственный внутринний айпишник для контейнера, запускает в контейнере вместо полноценной системы только один только сервис, если стандатром для всех unix систем является процесс init, то в докере вместо него запускается только этот сервис. Да, это экономия ресурсов. Вот честно не знаю почему, но если в докере вы выпустили опредленный серсвис наружу, но он видимо на уровне ядра не позволяет его заблокировать, хоть ты его каким угодно фаерволом блоч, значит за ним нужен следующий внешний фаервол. Все сервсисы которые были выпущены наружу видны на адресе хост машины.</p>\r\n\r\n<p>Кроме того в докере соединина система автоматическооц сборки. Вам достатачно написать файл, с незамысловатми инструкциями, для замысловатых лезте на docker hub, а сейчас я вам предоставлю Dockerfile для этой незамыловатой штуки, написанной на go, точно так же как и докер.</p>\r\n<pre><code>\r\nFROM golang:buster\r\nENV GOPATH /go\r\nRUN apt-get update</p>\r\n\r\n<p>COPY d /go/d</p>\r\n\r\n<p>WORKDIR /go/d\r\nRUN go get github.com/go-sql-driver/mysql github.com/gorilla/sessions github.com/shurcooL/github_flavored_markdown\r\nRUN go build</p>\r\n\r\n<p>RUN mkdir /app\r\nRUN cp d /app\r\nRUN cp -R ./static /app\r\nRUN cp -R ./tmpl /app</p>\r\n\r\n<p>WORKDIR /app</p>\r\n\r\n<p>CMD /app/d\r\n</code></pre>\r\nСобственно, что это делает? FROM означает какой именно пакет с docker hub нам нужен. Мне нужен был go. С таким же успехом я бы мог там написть FROM scratch, а потом описать всю установку базовой системы линукса и go.</p>\r\n\r\n<p>COPY копирует директорию с исходниками, с хоста в контейнер. Не забудьте, надо указать точную директорию, не /go, а именно /go/d. WORKDIR это все равно что cd. RUN подтягивает нам зависимости, а так же создает директорию для нашего приложения, которое мы после сборки туда копируем.</p>\r\n\r\n<p>И вот тут мне придется дотронутся до неприятного момента в этом всем. У всех работодателей крыша съехала, и они хотят, чтобы это все лежало на публичных ресурсах github, docker hub итд. Своих ресукрсов они создаавать не хотят, хотя это несложно. Поэтому прилагаю скрипт, где все данные заныканы в environment variables.</p>\r\n\r\n<pre><code> \r\nexport DBHOST=dbhost\r\nexport DBUSER=dbuser\r\nexport DBPASS=passtololo\r\nexport MYROOT=pastrololo\r\nexport DB=db</p>\r\n\r\n<p>apt-get -y install </p>\r\n\r\n<pre><code>apt-transport-https \\\r\nca-certificates \\\r\ncurl \\\r\ngnupg-agent \\\r\nsoftware-properties-common\r\n\r\nсurl -fsSL <a href=\"https://download.docker.com/linux/debian/gpg\" rel=\"nofollow\">https://download.docker.com/linux/debian/gpg</a> | sudo apt-key add -\r\napt-key fingerprint 0EBFCD88\r\nadd-apt-repository \\\r\n   \"deb [arch=amd64] <a href=\"https://download.docker.com/linux/debian\" rel=\"nofollow\">https://download.docker.com/linux/debian</a> \\\r\n   $(lsb_release -cs) \\\r\n   stable&#34;\r\napt-get update\r\napt-get -y install docker-ce docker-ce-cli containerd.io\r\ncd /opt\r\n</code></pre>\r\n<p>git clone <a href=\"https://github.com/sh-serenity/serotonin.git\" rel=\"nofollow\">https://github.com/sh-serenity/serotonin.git</a></p>\r\n\r\ncd serotonin\r\n\r\n<p>printf \"\r\npackage main</p>\r\n\r\nimport {\r\n\r\n    \\\"database/sql\\\";\r\n    _ \\\"github.com/go-sql-driver/mysql\\\";\r\n}\r\nvar db *sql.DB\r\nfunc dbConnect() (db *sql.DB) {</p>\r\n\r\ndb, _ = sql.Open(\\\"mysql\\\";, \\}{\\\"$DBUSER:$DBPASS@tcp($DBHOST:3306)/$DB/$DB\\\";)\r\n\r\n\r\nreturn db\r\n}\" > /opt/serotonin/d/dbcon.go</p>\r\n\r\n<p>docker-compose up --build -d</p>\r\n\r\nsleep 30\r\n\r\ndocker exec -i $DBHOST mysql -uroot -p$MYROOT -e  \"create user $DBUSER identified by \'$DBPASS\'\"\r\ndocker exec -i $DBHOST mysql -uroot -p$MYROOT -e \"create database $DB\";\r\ndocker exec -i $DBHOST mysql -uroot -p$MYROOT -e &\"grant all privileges on $DB.* to $DBUSER\"\r\ndocker exec -i $DBHOST mysql -h127.0.0.1 -uroot -p$MYROOT $DB < /opt/serotonin/db.sql\r\n</code></pre>\r\n\r\n<p>И так объясню что мы делаем. Сначал сверху определяем пароли для подключения к базе env переменных.\r\nСлкедоми идет установка, если вас он уже установлен - выкинте, а то может обновится не до той версии.\r\nСледом нам нужно как-то передать эти данные в код нашей программы написаной на go. почему так много \\\"?\r\nЭто называется экранированием, иначе бы шелл подумал что это мы ему присваим свою переменную. А на выходе мы получим голый фай только \"\r\nвместо \\\"./<p>\r\n\r\n<p>docker-compose. маленька утилитка для докера котороая из вот этогого файла docker-comose.yml</p>\r\n<pre><code>\r\nversion: \'3\'\r\nservices:\r\n  db:\r\n    container_name: dbhost\r\n    image: mysql:5.7\r\n    command: --default-authentication-plugin=mysql_native_password\r\n    restart: always\r\n    ports:\r\n      - \"3306:3306\"\r\n    \r\n    environment:\r\n      MYSQL_ROOT_PASSWORD: $MYROOT\r\n    volumes:\r\n    - /opt/serotonin/mysql:/var/lib/mysql\r\n\r\n  calm:\r\n    container_name: sera\r\n    build: ./\r\n    depends_on:\r\n      - db\r\n    ports:\r\n      - \"9001:9001\"\r\n    restart: always\r\n    volumes:\r\n    - /opt/serotonin/d:/files\r\n  web:\r\n    container_name: nginx\r\n    image: nginx:latest\r\n    restart: always\r\n    depends_on:\r\n    - calm\r\n\r\n    ports:\r\n      - \"0.0.0.0:80:80/tcp\"\r\n    volumes:\r\n    - /opt/serotonin/conf.d:/etc/nginx/conf.d\r\n    - /opt/serotonin:/files\r\n</code></pre>\r\n\r\n<p>Соотвественно у нас тут создается три контейнера. dbhost для базы данных, calm - для обслуживания динамики, обращения к базе данных и прочее, и nginx, который это все выд5ет наружу.</>\r\n\r\n<p>Тут надо привести конфиг nginx. /opt/serotonin/conf.d. На хост машине. А в вируталку мы его перенапрявлем в место для конфига нгджинкса. Если не хотите потерять после уничтожения контейнера\r\nданнные всегда храните из в volume, иначе они просто пропадут. Вон посмотрите с dbhost тоже самое, торлько там мы прячем базу данных mysql.</p>\r\n\r\n<p>Конyтейнеры созданы, осталось только залить в них данные, для доступа к бд. И сам фай с базой данных. Ну, мне скрывать нечего, все и так в отрытом доступе (кроме паролей :))? так что я просто\r\nзаливаю в контейнер дам с базой. Будь бы тами что-то секретное - зашифровалы бу хоть pgp, и добавил бы еще однин ключик для расшифровки.</p>\r\n\r\nВсe\r\n\r\n<p>Так, мне собственно терять нечего ссылка на все это <a href=\"https://github.com/sh-serenity/serotonin.git\" rel=\"nofollow\">https://github.com/sh-serenity/serotonin.git</a>. Но я практически уверен что если вы качнете вот этот файлик <a href=\"https://raw.githubusercontent.com/sh-serenity/serotonin/master/install.sh\" rel=\"nofollow\">https://raw.githubusercontent.com/sh-serenity/serotonin/master/install.sh</a> и просто запустите его командой bash install.sh, он построит всю эту мою хозяйство. Пароднте, только для debian 10, но я думаю любой грамотный убунтовод, или центосовец, сможет выдрать и добавить туда блочок для установки докера под его систему. Для виндузятников рекомендую virtualbox.</p>\r\n\r\n\r\n<p>Если хоть кто-то это прочтет - спасибо.</p>\r\n<br>','2020-07-06 07:21:06'),(3,18,NULL,'<p><strong>А теперь так сказать свежим следам. AWS, EC2, packer terraform.</strong></p>\r\n\r\n<p>Д а и чтобы не забыть :))))) </p>\r\n\r\n<p>В первую очередь что от вас потребуют, еслит вы поломитесь на подобную должность,\r\n  это AWS, AMI, EC2, дальше варьируется,к кластерм на авсе даже не приксайтестесь для тренировок - просрете 146 долларо за месяц использования,\r\n  да и все тут. Лучше вытащить отедльный тазик с поддержкой виртализации, и на него взгромоздить докер кубернейтсом на дому.\r\n  Но об этом попоздже.. Ну про AWS слшали все. EC2 - это еденичный его инстанс, попросту говоря одна виртуальная машитна в его облаке.\r\n  AMI - имадж оперционки, которая на него ставится. Если порыскать в инет, их полно на любой вкус. Но наша задачача состряпать ее самому,\r\n  так чтобы взлетала как можно быстрее, и могла умножатся в неограниченных количествах. Итак:</p>\r\n\r\n\r\n<p>Для этого предназначен packer. установка у него очень простая, это всего один бинарь, в zip архиве. Качать отсюдова https://www.packer.io/downloads\r\n  Естественно последнею версию. после распаковки сделайте ему chmod +x и положите в любую папку для бинароей, которая входжит в путь.</p>\r\n</p>\r\n\r\n<p> Да совсем забыл сказать АВС это пылесос который тянет деньги. Они говорят, пользуйтесь у нас на шару, тно на деньги вполне попасть можно, при регистрации\r\n  внимательно прочтитету что это за free tier, ти что в него включено. Будьте очень акккратны. Собстевенно что вам нужно сделать, зараегестрироватся, в нужном поближе\r\n  к вам регионе, я выбрал Лондон eu-west-2, зарегистрировать себе aws-acces_key и aws_secret_key именно в этом регионе, а так же key-pair, это сертификат доступа к ssh.\r\n  Ну а дальше летим. pakcer конфиг пишеься на json, поэтому иногда трудоно бывает разобратся чео он тебя хочет Вот мой примерю. Дальше ставим aws cli</p>\r\n\r\n<pre<code>\r\ncurl \"https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip\" -o \"awscliv2.zip\"\r\nunzip awscliv2.zip\r\nsudo ./aws/install\r\n  </code></pre>\r\n\r\n<p>Там вам возможно придется поковырять конфиги в домашней дирикториии  .aws и прописать там данные для доступа. Пример конфига пакера:</p>\r\n<pre><code>\r\n{\r\n  \"variables\": {\r\n    \"aws_access_key\": \"-------------------------\",\r\n    \"aws_secret_key\": \"---------------------------------\"\r\n  },\r\n  \"builders\": [\r\n    {\r\n      \"access_key\": \"{{user `aws_access_key`}}\",      \"ami_name\": \"packer-linux-aws-demo-{{timestamp}}\",\r\n      \"instance_type\": \"t2.micro\",\r\n      \"region\": \"eu-west-2\",\r\n      \"secret_key\": \"{{user `aws_secret_key`}}\",\r\n      \"ssh_keypair_name\":\"key_name\",\r\n      \"ssh_private_key_file\":\"/patth/to/key_name.pem\",\r\n      \"source_ami_filter\": {\r\n        \"filters\": {\r\n          \"virtualization-type\": \"hvm\",\r\n          \"name\": \"ubuntu/images/*ubuntu-xenial-16.04-amd64-server-*\",\r\n          \"root-device-type\": \"ebs\"\r\n        },\r\n        \"owners\": [\"099720109477\"],\r\n        \"most_recent\": true\r\n      },\r\n      \"ssh_username\": \"ubuntu\",\r\n      \"type\": \"amazon-ebs\"\r\n    }\r\n  ],\r\n  \"provisioners\": [\r\n    {\r\n      \"type\": \"file\",\r\n      \"source\": \"./install.sh\",\r\n      \"destination\": \"/home/ubuntu/\"\r\n    },\r\n    {\r\n      \"type\": \"shell\",\r\n      \"inline\": [\"bash /home/ubuntu/install.sh\"]\r\n    }\r\n  ]\r\n}\r\n</code></pre>\r\n\r\n<p>Ну что в ключики нужно вписывать собственные данные, надеюсь вам понятно. Юзернейм для ssh у нас будет ubuitu,\r\n  а чтобы оказать на впске которую мы после сотворим с помощью терраформа, можно будет зайти набрав ssh -i key_nam.pem ubuntu@ipaddr.\r\n  Сборка packer build somefle.json\r\n  По окнчанию работы оно вдаст вам иденетвикатор амишки, и регион. Больше ни в каких регионах ее использовать нельзя, только в это, который вы выбрали.\r\n  Данные копипастим и сохраняем. Все что делает этот файл - просто вставляет скрипт install.sh, Если посмотрите на мою предыдущую заметку про docker,\r\n  то поймете чем его можно занять. Все в ваших руках. Можете хоть написать скрипт для установки иксов и KDE. :)))))))\r\n \r\n<p>\r\n\r\n  \r\n<p>Terraform. Там несколько посложнее будет, у него собственные конфиги у которых синтаксиси прыгает от версии к версии, да и сам авс не подарок,\r\n  это далеко не всегда терраформ лажает, это можт вы налажали с авс. Пример:\r\n</p>\r\n\r\n\r\n<pre><code>\r\nprovider \"aws\" {\r\nregion = \"eu-west-2\"\r\n}\r\n\r\nresource \"aws_vpc\" \"test-vpc\" {\r\ncidr_block = \"10.3.0.0/18\"\r\n}\r\n\r\n\r\nresource \"aws_network_acl\" \"test-vpc-acl-private\" {\r\nvpc_id = \"${aws_vpc.test-vpc.id}\"\r\n\r\negress {\r\nprotocol = \"tcp\"\r\nrule_no = 200\r\naction = \"allow\"\r\ncidr_block = \"10.3.0.0/18\"\r\nfrom_port = 22\r\nto_port = 22\r\n}\r\n\r\n\r\ningress {\r\nprotocol = \"tcp\"\r\nrule_no = 100\r\naction = \"allow\"\r\ncidr_block = \"10.3.0.0/18\"\r\nfrom_port = 80\r\nto_port = 80\r\n}\r\n}\r\n\r\nresource \"aws_security_group\" \"allow_tls\" {\r\nname = \"allow_tls\"\r\ndescription = \"Allow TLS inbound traffic\"\r\nvpc_id = \"${aws_vpc.test-vpc.id}\"\r\n\r\ningress {\r\ndescription = \"TLS from VPC\"\r\nfrom_port = 443\r\nto_port = 443\r\nprotocol = \"tcp\"\r\ncidr_blocks = [aws_vpc.test-vpc.cidr_block]\r\n}\r\n\r\negress {\r\nfrom_port = 0\r\nto_port = 0\r\nprotocol = \"-1\"\r\ncidr_blocks = [\"0.0.0.0/0\"]\r\n}\r\n}\r\n\r\n\r\n\r\n\r\nresource \"aws_security_group\" \"exp\" {\r\n  name        = \"exp\"\r\n  description = \"Allow TLS inbound traffic\"\r\n\r\n  ingress {\r\n    description = \"TLS from VPC\"\r\n    from_port   = 80\r\n    to_port     = 80\r\n    protocol    = \"tcp\"\r\n    cidr_blocks = [\"0.0.0.0/0\"]\r\n  }\r\n\r\n  egress {\r\n    description = \"TLS from VPC\"\r\n    from_port   = 80\r\n    to_port     = 80\r\n    protocol    = \"tcp\"\r\n    cidr_blocks = [\"0.0.0.0/0\"]\r\n  }\r\n\r\n ingress {\r\n    description = \"TLS from VPC\"\r\n    from_port   = 22\r\n    to_port     = 22\r\n    protocol    = \"tcp\"\r\n    cidr_blocks = [\"0.0.0.0/0\"]\r\n  }\r\n egress {\r\n    description = \"TLS from VPC\"\r\n    from_port   = 22\r\n    to_port     = 22\r\n    protocol    = \"tcp\"\r\n    cidr_blocks = [\"0.0.0.0/0\"]\r\n  }\r\n\r\n  egress {\r\n    from_port   = 0\r\n    to_port     = 0\r\n    protocol    = \"-1\"\r\n    cidr_blocks = [\"0.0.0.0/0\"]\r\n  }\r\n\r\n  tags = {\r\n    Name = \"allow_tls\"\r\n  }\r\n\r\nlifecycle {\r\n    create_before_destroy = true\r\n  }\r\n\r\n}\r\nresource \"aws_instance\" \"test-vpc\" {\r\n  \r\nami = \"ami-0865487654786548\"\r\ninstance_type = \"t2.micro\"\r\nvpc_security_group_ids = [\"${aws_security_group.exp.id}\"]\r\n\r\n}\r\n</code></pre>\r\n\r\n<p>Такой амишки нету. Тут, несмотря на то что инстанс у нас единственный, нужно по любому ему сетку задать. Дли ингреса и егресса открыть доступ, ну не знаю, может вы пожелаете видеть ее\r\nтолько собственной тачки, но и зхттп и ссх открыл.\r\n\r\n  Инцилизируем терраформ<br>\r\n  terraform init<br>\r\n  готовим для него план действий<br>\r\n  terraform plan<br>\r\n  И апплаим<br>\r\n  terraform apply<br>\r\n</p>\r\n\r\n<p> После этого остается написать ему только yes, но учитите, что это значит что предудущушью впску на это имя он снесет дочиста </p>\r\n<br>\r\nСпасибо за внимание.<br>\r\n','2020-07-08 03:51:15');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sessionid` varchar(1024) COLLATE utf8_bin NOT NULL,
  `userid` int(64) NOT NULL,
  `fname` varchar(128) COLLATE utf8_bin NOT NULL,
  `sname` varchar(128) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `fname` varchar(127) COLLATE utf8_bin NOT NULL,
  `sname` varchar(127) COLLATE utf8_bin NOT NULL,
  `about` text COLLATE utf8_bin,
  `userpic` varchar(255) COLLATE utf8_bin DEFAULT 'blank.png',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rootid` int(64) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (13,'int@tinedel.kiev.ua','6044ca2d5e22e9d084545f5d37f06106','Alexey','Sinitsyn','Я админко.','blank.png','2020-03-25 22:37:32',0),(18,'int@shushik.net','776ee886e4c54b3aa30fc08afef7ce3f','Alex','Meatbeg','Я тут админко, кодер, студент и учитель одновременно. Пишу это от нефиг делать, и для того чтобы получить левел ап. Сейчас в мои интересы входит ANSI c, golang, mysql, точнее его мастшбаирование, docker, k8s, jenkins, надо вкупе ansible добавить, шелл скриптинг, можт еще чуток питон, не особо интересует, но надо подучить, ява скрипт, nosql базы данных. А еще я безумно обожаю собирать из голых исходников мелкие линуксы. :)))))) Из не около компьютерных штучек меня интересет ролевое движение, фентези, научная фантастика и псевдо-научная фантастика. Смешные фильмы, вкусно приготовить и пожрать, чай и еще можно после всего это перекурить. (траву не предлагать, только табак). Музыку люблию начиная от метала продолжая панком, кончая фолком разнообразным.','blank.png','2020-03-27 09:53:49',0),(19,'minegsoap@gmail.com','9c69eac5ddf485bbfea4852df1ce725e','Вова','Мыловаров','бла','blank.png','2020-03-29 16:23:55',0),(20,'sergey.light@gmail.com','0986307a13a0ab0846826ad4bad22a7c','Serhii','Light','бла','blank.png','2020-03-29 19:54:08',0),(21,'alex.spichka@shushik.net','eb98f11e90f75601968a51e5207fdd0d','Могйчий','Спичкин',NULL,'blank.png','2020-03-30 14:09:16',0),(22,'rbs@shushik.net','e5e492e373436604c65796b1e4a1e6aa','Rustem','Sinitsyn','Получилось.','blank.png','2020-03-30 14:53:01',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-08  5:22:42
