
#  启动命令
`docker run -p 3306:3306 -d -v /app/mysql/data/:/var/lib/mysql/  -v mysql_conf:/etc/mysql/conf.d/ -e MYSQL_USER=root@'%' -e MYSQL_PASSWORD=123456 -e MYSQL_DATABASE='*' -e MYSQL_ROOT_PASSWORD=123456 --name mysql mysql:5.7 
`
+ MYSQL_USER 和 MYSQL_PASSWORD  MYSQL_DATABASE 是授权用户的账号和密码及数据库
+ MYSQL_ROOT_PASSWORD 为启动数据库的必备变量，是设置本地root用户的密码

+ mysql_conf 为 存储卷，可以直接给定，容器自动创建。可以直接映射容器中的文件`docker volume create mysql_conf`
