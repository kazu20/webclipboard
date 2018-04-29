# webclipbord
Webブラウザで付箋をペタペタ貼れるアプリです。
Webアプリなので、「ローカルの付箋にメモしてたから、外出先で確認できない！」といったことを無くします。
付箋は自由にドラッグ、リサイズできます。

![login image](https://github.com/kazu20/webclipboard/blob/master/images/login.png)
![sample image](https://github.com/kazu20/webclipboard/blob/master/images/sampleimage.png)
![sample image2](https://github.com/kazu20/webclipboard/blob/master/images/sampleimage2.png)

# Requirement
 ruby 2.4.1p111 

 rails 5.1.5

 docker 18.03.0-ce

 docker-compose 1.20.1

# Install
以下の手順でインストール後にWebブラウザで3000ポートにアクセスすると、利用できるようになります。
DBはsqlite3とPostgreSQLを使っています。

## local install(sqlite3)
```
 $ git clone https://github.com/kazu20/webclipboard.git
 $ cd webclipboard
 $ bundle install
 $ rake db:migrate
 $ rails s
```

## local install(PostgreSQL)
```
 $ git clone https://github.com/kazu20/webclipboard.git
 $ cd webclipboard
 $ bundle install
 $ cp config/database.yml config/database.yml_postgres
 $ export DB_HOST=PostgreSQL_Server_Name
 $ rake db:migrate
 $ rails s
```

## Vagrant
```
 $ git clone https://github.com/kazu20/webclipboard.git
 $ cd webclipboard
 $ vagrant up
```

## Docker
```
 $ git clone https://github.com/kazu20/webclipboard.git
 $ cd webclipboard
 $ docker build -t username/imagename .
 $ docker run -d -p 3000:3000 username/imagename
```

## Docker-compose
```
 $ git clone https://github.com/kazu20/webclipboard.git
 $ cd webclipboard
 $ docker build -t username/imagename .
 $ docker-compose up -d 
```

# Authors
kazu20@twitter
