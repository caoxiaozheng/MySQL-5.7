FROM mysql:5.7
COPY mysql.cnf /etc/mysql/conf.d/
CMD ["mysqld"]
