#!/bin/bash
# <Pings given host machine or ipaddress>
# <Ante Skoric and Timo Quednau>
# <06.10.2019>

# ------------------------------------------------------------
# This function shows the help text for this bash script
usage(){
  echo "
  $0 [-h|-s sec] hostname|ip-address
  Pings the given hostname or ip-address.
  Use -h for help, -s is the first parameter it represents the seconds the hostname|ip-address will
  be pinged every -s seconds.
  You can use hostname or ip-address to ping the server.
  "
}

# ---------------------- main --------------------------------
# check parameters
if [ $# -gt 3 ] || [ $1 = "-h" ]; then
    usage
    exit 1
fi

if [[ $# -eq 1 ]]; then
  while [[ true ]]; do
    ping -c 1 $1 > /dev/null; VAR=$?
    if [[ VAR -eq 0 ]]; then
      echo "$1 OK"
    else
      echo "$1 FAILED"
    fi
    sleep 10;
  done
elif [[ $# -eq 3 ]] && [[ $1 = "-s" ]]; then
  while [[ true ]]; do
    ping -c 1 $3 > /dev/null;
    VAR=$?
    if [[ VAR -eq 0 ]]; then
      echo "$3 OK"
    else
      echo "$3 FAILED"
    fi
    sleep $2;
  done
else
  usage;
fi

# ---------------------- end ---------------------------------
exit 0
