#!/bin/sh
#vars
ROOT_DIR="$(cd "$(dirname $0)"; pwd)"
CONFIG="$ROOT_DIR/client.conf"
source $CONFIG
pid_file="/tmp/minivtun.pid"
#func
function start_mv(){
if [ -f $pid_file ];then
	echo minivtun is already running
	exit 1
fi
sudo $ROOT_DIR/minivtun -r $server:$port -a $local_tun_ip/24 -e $password -t rc4 -p $pid_file -d
sudo sh $ROOT_DIR/client_up.sh
}
function stop_mv(){
if [ ! -f $pid_file ];then
	echo minivtun is not running yet
	exit 1
fi
sudo sh $ROOT_DIR/client_down.sh
kill -9 `cat $pid_file` 
rm $pid_file
}
#choose
action=$1
[  -z $1 ] && action=start
case "$action" in
start)
    start_mv
    ;;
stop)
    stop_mv
    ;;
*)
   echo "Usage: $0 {start|stop}" >&2
   exit 3 
   ;;
esac

exit 0
