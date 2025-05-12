#!/usr/bin/env bash

set -e


cluster_user=$(jetpack config cyclecloud.cluster.user.name)


sudo -u $cluster_user ray stop
sudo -u $cluster_user ray start --disable-usage-stats --head --port 6379 --ray-client-server-port=10001

