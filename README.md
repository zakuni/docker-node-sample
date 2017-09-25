docker-node-sample
===

sample app using docker and node(express)

## Build

```
docker-compose build
```

## Run

```sh
docker-compose up
```
open http://localhost:3000

## Deploy to Heroku

```sh
docker-compose build
heroku container:push web
```
for more information, please see [heroku container registory documentation](https://devcenter.heroku.com/articles/container-registry-and-runtime).
