# docker-cronlock:
# 
# VERSION  1.0.0
# AUTHOR   Kirtesh Suthar <kirtesh.suthar15@gmail.com>

FROM ubuntu


RUN apt-get -y install wget
RUN mkdir /docker-cronlock-init.d
RUN wget https://raw.github.com/kvz/cronlock/master/cronlock -O /usr/bin/cronlock
RUN chmod +x /usr/bin/cronlock


ADD ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["cron", "-f"]