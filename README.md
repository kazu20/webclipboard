# webclipbord
Webブラウザで付箋をペタペタ貼れるアプリです。

付箋は自由にドラッグ、リサイズできます。

# Requirement
 ruby 2.4.1p111
 rails 5.1.5

# Install
それぞれの手順でインストール後に、Webブラウザで3000ポートにアクセスすると、利用できるようになります。
DBはPostgresを使っています。Docker-compose以外で起動する場合は、PostgreSQLが動いているサーバが必要になります。

## local install
```
 $ git clone https://github.com/kazu20/webclipboard.git
 $ cd webclipboard
 $ bundle install
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

![login image](https://github.com/kazu20/webclipboard/blob/master/images/login.png)
![sample image](https://github.com/kazu20/webclipboard/blob/master/images/sampleimage.png)
