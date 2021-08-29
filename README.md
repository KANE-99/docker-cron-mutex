# Docker Cron Mutex
Achieving cron locking on processes deployed on distributed systems (or scaled) using redis and [cron lock](https://github.com/kvz/cronlock).


## Demo

Simply run below command in your terminal
```bash
docker-compose up --scale cron_python_app_1=2 --scale cron_python_app_2=2
```

