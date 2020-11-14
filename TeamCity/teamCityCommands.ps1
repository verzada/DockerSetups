# ref https://hub.docker.com/r/jetbrains/teamcity-server/

docker pull jetbrains/teamcity-server

# run

$pathToDataDirectoryHost = "D:\data\teamcityServer\datadir" 
$pathToDataDirectoryDocker = "/data/teamcity_server/datadir"

$pathToLogsDirectoryHost = "D:\TeamCity\logs"
$pathToLogsDirectoryDocker = "/opt/teamcity/logs"

$portFromHost = 8111
$portToDocker = 8111

$image = "jetbrains/teamcity-server"


docker network create sql
docker network connect sql teamcity-server-instance
docker network connect sql sql2019


docker run --name teamcity-server-instance --hostname teamcity -v ${pathToDataDirectoryHost}:${pathToDataDirectoryDocker} -v ${pathToLogsDirectoryHost}:${pathToLogsDirectoryDocker} -p ${portFromHost}:${portToDocker} $image

#https://www.digitalocean.com/community/questions/how-to-ping-docker-container-from-another-container-by-name

docker inspect teamcity
# get sql2019 Ip address
# <sql2019 IP>:1433