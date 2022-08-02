# mysql-docker
> A mysql image, store data in container

## Image contains
- Alpine
- mysql

## launch through docker
```sh
sudo docker run --name mysql -e MYSQL_ROOT_PASSWD="your root password" -p 3306:3306 --restart always -d hlf01/mysql
```

## save new data to image, and push to docker hub
```sh
today=$(date "+%Y-%m-%d")
sudo docker commit -m $today mysql user/repo
sudo docker push user/repo
```

## build image
```sh
sudo docker build -f Dockerfile -t hlf01/mysql .
```
