choco 

docker pull mcr.microsoft.com/mssql/server

$sqlVolume = "D:\Docker\SQLServer\data:/var/opt/mssql/data"
$sqlLog = "D:\Docker\SQLServer\log:/var/opt/mssql/log"

docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Pa33word" --name sql2019 --hostname sql2019 -v ${sqlVolume} -v ${sqlLog} -p 1433:1433 --name sql2019 -d mcr.microsoft.com/mssql/server