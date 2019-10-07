#!/bin/bash
# <Pings given host machine or ipaddress>
# <Ante Skoric and Timo Quednau>
# <06.10.2019>

# ------------------------------------------------------------
# This function shows the help text for this bash script
usage(){
  echo "
  $0 [-h|-s sec] hostname|ip-address Pings the hostname or ip-address
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
    ping -c 1 $1; VAR=$?
    if [[ VAR -eq 0 ]]; then
      echo "$1 OK"
    else
      echo "$1 FAILED"
    fi
    sleep 10;
  done
elif [[ $# -eq 3 ]] && [[ $1 = "-s" ]]; then
  while [[ true ]]; do
    ping -c 1 $3; VAR=$?
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
