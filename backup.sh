IP=192.168.0.107
DIRECTORY=learningshell
DESTINATION="/home/hikshi"
USER=hikshi
INTERVAL=3
while true
do 
  tar -cvf $DIRECTORY.tar $DIRECTORY
  scp $DIRECTORY.tar $USER@$IP:$DESTINATION
  [ $? -eq 0 ] && echo "backup pass" || echo "backup fail"
  sleep $INTERVAL
done
