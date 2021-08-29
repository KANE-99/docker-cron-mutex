echo "Activating crontab"
crontab /etc/crontab
echo "CRONLOCK_PREFIX=${CRONLOCK_PREFIX}" >> /etc/cronlock.conf