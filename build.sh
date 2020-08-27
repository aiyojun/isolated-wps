#!/bin/bash

echo """Make sure your system has the following commands:
    wget
    docker
"""

wps_version="wps-office_11.1.0.9615_amd64.deb"

echo "--> Download [$wps_version]"

wget https://wdl1.cache.wps.cn/wps/download/ep/Linux2019/9615/$wps_version

docker build -t iso-wps:18.04 .

echo "---------------------------"
echo "Here, mount /opt/ws to container as default!"
echo "If you want to mount other dir, you can modify by yourself!"
echo "And here, open excel as default!"
echo "---------------------------"

docker run -it \
	--name wps-office \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /opt/ws:/opt/ws \
	iso-wps:18.04 \
	/opt/kingsoft/wps-office/office6/et

docker ps -a | grep "iso-wps"