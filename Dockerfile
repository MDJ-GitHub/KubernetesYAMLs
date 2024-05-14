FROM mysql:latest
USER root
RUN chown -R root:root /var/lib/mysql
EXPOSE 3306
CMD ["mysqld"]