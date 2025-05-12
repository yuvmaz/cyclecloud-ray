#!/usr/bin/env bash

set -e


cluster_user=$(jetpack config cyclecloud.cluster.user.name)
cluster_name=$(jetpack config cyclecloud.cluster.name)


sudo -u $cluster_user ray stop
sudo -u $cluster_user ray start --disable-usage-stats --address="$cluster_name-head:6379"
