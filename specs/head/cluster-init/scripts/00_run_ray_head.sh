#!/usr/bin/env bash

set -e


cluster_user=$(jetpack config cyclecloud.cluster.user.name)
ray_port=$(jetpack config ray.port)
ray_client_server_port=$(jetpack config ray.client_server_port)


sudo -u $cluster_user ray stop
sudo -u $cluster_user ray start --disable-usage-stats --head --port=$ray_port --ray-client-server-port=$ray_client_server_port

