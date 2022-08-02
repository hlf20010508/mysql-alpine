# mysql-alpine
> A mysql alpine image, store data in container

## Image contains
- Alpine
- mysql

## Size
- Compressed 56.99MB
- Total 310MB

## launch through docker
```sh
sudo docker run --name mysql -e MYSQL_ROOT_PASSWD="your root password" -p 3306:3306 --restart always -d hlf01/mysql
```

## save new data to image, and push to docker hub
```sh
sudo docker commit mysql user/repo
sudo docker push user/repo
sudo docker image prune -a --force
```

## build image
```sh
git clone https://github.com/hlf20010508/mysql-alpine.git
cd mysql-alpine
sudo docker build -f Dockerfile -t user/mysql .
```

## Link
[Docker Hub](https://hub.docker.com/repository/docker/hlf01/mysql)
