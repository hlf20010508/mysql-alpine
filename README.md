# mysql-alpine-ds
> A mysql alpine image, data stored in container

## Image contains
- Alpine 3.15.5
- MySQL 10.6.8-MariaDB

## Size
- Compressed 56.99MB
- Total 310MB

## launch through docker
```sh
sudo docker run --name mysql -e MYSQL_ROOT_PASSWD="your root password" -p 3306:3306 --restart always -d hlf01/mysql-alpine-ds
```

## save new data to image, and push to docker hub
```sh
sudo docker commit mysql user/repo
sudo docker push user/repo
sudo docker image prune -a --force
```

## build image
```sh
git clone https://github.com/hlf20010508/mysql-alpine-ds.git
cd mysql-alpine-ds
sudo docker build -f Dockerfile -t mysql .
```

## Link
[Docker Hub](https://hub.docker.com/repository/docker/hlf01/mysql-alpine-ds)
