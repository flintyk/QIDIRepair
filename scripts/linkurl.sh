#!/bin/bash
#name:Show Qidi link URL
#dir:Q1 Pro
#description:Shows QIDI link URL
subdomain=$(sudo awk -F "=" '/subdomain/ {print $2}' /root/frp/frpc.toml)
server=$(sudo awk -F "=" '/serverAddr/ {print $2}' /root/frp/frpc.toml | sed -e "s/www/${subdomain}/g" | tr -d \" | tr -d ' ')
echo "Your QIDI Link URL"
echo "http://"$server:7680
exit 0