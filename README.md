# mysql-alpine
> A mysql alpine image

## Image contains
- Alpine 3.15.5
- MySQL 10.6.8-MariaDB

## Size
- Compressed 56.99MB
- Total 310MB

## launch through docker
Please provide `your root password`
```sh
# data stored in container
sudo docker run --name mysql -e MYSQL_ROOT_PASSWD="your root password" -p 3306:3306 --restart always -d hlf01/mysql-alpine
```

Use specified volumn. Please provide `YOUR_ABSOLUTE_PATH` and `your root password`
```sh
# data stored locally
docker run -v YOUR_ABSOLUTE_PATH:/var/lib/mysql --name mysql -e MYSQL_ROOT_PASSWD="your root password" -p 3306:3306 --restart always -d hlf01/mysql-alpine
```

Or use auto volumn. Please provide `your root password`
```sh
# data stored locally
docker run -v /var/lib/mysql --name mysql -e MYSQL_ROOT_PASSWD="your root password" -p 3306:3306 --restart always -d hlf01/mysql-alpine
```

## save new data to image, and push to docker hub
If your data stored in container, you can add your new data to image and upload it to docker hub
```sh
sudo docker commit mysql user/repo
sudo docker push user/repo
```

## build image
```sh
git clone https://github.com/hlf20010508/mysql-alpine.git
cd mysql-alpine
sudo docker build -f Dockerfile -t mysql .
```

## Link
[Docker Hub](https://hub.docker.com/repository/docker/hlf01/mysql-alpine)
