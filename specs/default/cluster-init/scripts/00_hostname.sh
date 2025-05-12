#!/usr/bin/env bash

set -e

cluster_name=$(jetpack config cyclecloud.cluster.name)
node_name=$(jetpack config cyclecloud.node.name)


hostnamectl hostname $cluster_name-$node_name 
