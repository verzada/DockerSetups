#https://docs.inedo.com/docs/proget/installation/installation-guide/linux-docker

#registry https://proget.inedo.com/containers/registry?feedId=22

#docker network create proget
#docker network connect proget sql2019
#docker network connect proget teamcity 

#proget-packages:/var/proget/packages
#docker pull proget.inedo.com/productimages/inedo/proget:5.3.16

$ProGetPackageLocationHost = "D:\data\proget\:/var/proget/"


docker run -d -p 8585:80 --net=sql -v ${ProGetPackageLocationHost} --hostname proget --name=proget-server --restart=unless-stopped -e SQL_CONNECTION_STRING='Server=sql2019;Database=ProGet;User ID=user;Password=user' proget.inedo.com/productimages/inedo/proget:5.3.16

