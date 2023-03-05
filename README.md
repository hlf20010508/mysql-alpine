# mysql-alpine
> A mysql alpine image

## Image contains
- Alpine 3.17
- MySQL MariaDB

## Launch through docker
Data stored in container  
Please provide `your root password`
```sh
sudo docker run --name mysql -e MYSQL_ROOT_PASSWD="your root password" -p 3306:3306 --restart always -d hlf01/mysql-alpine
```

Data stored locally  
Use specified volumn. Please provide `YOUR_ABSOLUTE_PATH` and `your root password`
```sh
docker run -v YOUR_ABSOLUTE_PATH:/var/lib/mysql --name mysql -e MYSQL_ROOT_PASSWD="your root password" -p 3306:3306 --restart always -d hlf01/mysql-alpine
```

Or use auto volumn. Please provide `your root password`
```sh
docker run -v /var/lib/mysql --name mysql -e MYSQL_ROOT_PASSWD="your root password" -p 3306:3306 --restart always -d hlf01/mysql-alpine
```

## Save new data to image, and push to docker hub
If your data stored in container, you can add your new data to image and upload it to docker hub
```sh
sudo docker commit mysql user/repo
sudo docker push user/repo
```

## Build image
```sh
git clone https://github.com/hlf20010508/mysql-alpine.git
cd mysql-alpine
sudo docker build -f Dockerfile -t mysql --no-cache .
```

## Link
[Docker Hub](https://hub.docker.com/repository/docker/hlf01/mysql-alpine)
