#!/bin/bash
function startServer(){
NUMSECONDS=`expr $(date +%s)`
until taskset -c 0,1 ./run.sh +exec server.cfg ; do
let DIFF=(`date +%s` - "$NUMSECONDS")
if [ "$DIFF" -gt 15 ]; then
NUMSECONDS=`expr $(date +%s)`
echo "Server 'taskset -c 0,1 ./run.sh +exec server.cfg ' crashed with exit code $?.  Respawning..." >&2 
fi
sleep 3
done
let DIFF=(`date +%s` - "$NUMSECONDS")
if [ ! -e "SERVER_STOPPED" ] && [ "$DIFF" -gt 15 ]; then
startServer
fi
}
startServer
