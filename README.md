# webclipbord
Webブラウザで付箋をペタペタ貼れるアプリです。
付箋は自由にドラッグ、リサイズできます。

# Requirement
 ruby 2.4.1p111

# Install

## local install
```
 $ git clone https://github.com/kazu20/webclipboard.git
 $ cd webclipboard
 $ bundle install
 $ rake db:migrate
 $ rails s
```

## Vagrant up
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

![sample image](https://github.com/kazu20/webclipboard/blob/master/images/sampleimage.png)
