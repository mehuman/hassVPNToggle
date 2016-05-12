#!/bin/bash
user=admin
server="10.0.0.1"
vpnclient="1"

if [ "$1" == "start" ];
then
  vpncommand="service start_vpnclient$vpnclient"
elif [ "$1" == "stop" ];
then
  vpncommand="service stop_vpnclient$vpnclient"
else
  echo "Valid arguments are start or stop"
fi

ssh $user@$server $vpncommand


