FROM jordan/rundeck

MAINTAINER Kazuhisa Yamamoto

RUN apt-get install -y vim

RUN { \
    echo '[mysqld]'; \
    echo 'character-set-server=utf8'; \
    echo 'collation-server=utf8_general_ci'; \
    echo '[client]'; \
    echo 'default-character-set=utf8'; \
} > /etc/mysql/conf.d/charset.cnf

RUN cp -p /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN { \
    echo 'Asia/Tokyo'; \
} > /etc/timezone