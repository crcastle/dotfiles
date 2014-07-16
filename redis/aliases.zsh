alias redis-up='redis-server /usr/local/etc/redis.conf > /dev/null 2>&1 &'
alias redis-down='killall -u $USER -m redis-server'
