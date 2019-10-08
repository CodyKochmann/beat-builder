#!/bin/bash
# @Author: cody kochmann
# @Date:   2019-08-07 07:11:25
# @Last Modified by:   cody
# @Last Modified time: 2019-08-07 07:44:47

set -euxo pipefail

for i in beat-binaries filebeat metricbeat packetbeat heartbeat
do
    docker build -t $i ./$i/
done

docker image rm beat-binaries
