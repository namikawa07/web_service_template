# README

## 参考資料
URL: https://qiita.com/maru401/items/2f5815c40fcf6d2d80d6

## development
URL: http://localhost:3200/

## pgAdmin
URL: http://localhost:8080/

id: postgres@linuxhint.com

password: 1235678

## docker立ち上げ

```
$ docker-compose build
$ docker-compose up
```

## docker終了

```
$ docker-compose down
```

## webpacker
変更を検知して自動的にビルドやブラウザのリロードを行うには、webpack-dev-serverを使う
#### 使用方法
rails sを走らせているときに別プロセスで
```
$ ./bin/webpack-dev-server
```
を実行

## 開発環境
#### server
ruby 2.6.5p114
Rails 6.1.4.1

#### front
vue.js (実装中)
nuxt.js (実装中)

#### database
postgresql

#### heroku
postgreSQL：hobby-dev

uokun-web-app：herokuのアプリにつけた名前

https://uokun-web-app.herokuapp.com/


#### other
rubocop 1.23.0
rspec-rails 4.0.2
yarn 1.22.15


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
