# docker-mysql  

# downloads xtraBackup  

  wget https://www.percona.com/downloads/XtraBackup/Percona-XtraBackup-2.4.4/binary/debian/jessie/x86_64/percona-xtrabackup-24_2.4.4-1.jessie_amd64.deb


# set china timezone

  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime  
  echo "Asia/Shanghai" >> /etc/timezone
  
# docker example 
  docker run --restart=always --privileged=true -e MYSQL_ROOT_PASSWORD='mysqlroot' --name mysql -v /opt/backups/:/opt/backups/ -v /data/mysql/my.cnf:/etc/mysql/my.cnf -v /data/mysql/data:/usr/data/ -p 3306:3306 -d benxjc/mysql-xtrabackup:5.6

# link
  [dockerhub](https://cloud.docker.com/u/benxjc/repository/docker/benxjc/mysql-xtrabackup)