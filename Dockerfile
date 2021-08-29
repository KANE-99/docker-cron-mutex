# docker-cronlock:
# 
# VERSION  1.0.1
# AUTHOR   Kirtesh Suthar <kirtesh.suthar15@gmail.com>

FROM python:3.8


RUN apt-get update && apt-get -y install wget cron
RUN mkdir /docker-cronlock-init.d
RUN wget https://raw.github.com/kvz/cronlock/master/cronlock -O /usr/bin/cronlock
RUN chmod +x /usr/bin/cronlock

ADD cronlock.conf /etc/cronlock.conf
ADD init /docker-cronlock-init.d
ADD crontab /etc/crontab


ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["cron", "-f"]