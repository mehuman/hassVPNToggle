#!/bin/bash
user=admin
server="ip of router"
key="path to ssh key"
vpnclient="1"

if [ "$1" == "start" ];
then
  vpncommand="service start_vpnclient$vpnclient"
elif [ "$1" == "stop" ];
then
  vpncommand="service stop_vpnclient$vpnclient"
else
  echo "Valid arguments are start or stop"
  exit
fi

ssh -i $key $user@$server $vpncommand


