# onlinemovietickets
Book the tickets online


## Build the php app image
docker build -f docker/php/Dockerfile -t hujass/onlinemovietickets:4.0 .

##Build mysql image
sudo docker build -f docker/mysql/Dockerfile -t hujass/mysql-db:1.0 .

## RUN MYSQL
sudo docker run -d --name mysql-db hujass/mysql-db:1.0

## RUN PHP APP
sudo docker run -d -p 3737:80 --name webapp_tickets12 --link mysql-db hujass/onlinemovietickets:4.0

http://<DOCKER_HOSTIP>:3737/onlinemovietickets/

