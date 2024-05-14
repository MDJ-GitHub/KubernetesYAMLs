FROM mysql:latest
RUN groupadd -g 1001 mysql && useradd -u 1001 -g 1001 -r -M -d /var/lib/mysql -s /sbin/nologin mysql
RUN chown -R mysql:mysql /var/lib/mysql
USER mysql
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]
