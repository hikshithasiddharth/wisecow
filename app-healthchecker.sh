DOMAIN="google.com"
INTERVAL=3
while true
do
  status=`curl http://$DOMAIN -L -o /dev/null -w%{http_code} -s`

  [ $status -eq 200 ] && echo "up `date`" || echo "down `date`"
  sleep $INTERVAL
done

