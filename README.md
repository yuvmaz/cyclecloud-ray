# cyclecloud-ray
This project sets up a [Ray](https://github.com/ray-project/ray) cluster using Azure CycleCloud..

**Table of contents**
- [Pre-Requisites](#pre-requisites)
- [Configuring the Project](#configuring-the-project)
- [Adding Worker Nodes](#adding-worker-nodes)

## Pre-Requisites ##
1. [CycleCloud](https://learn.microsoft.com/en-us/azure/cyclecloud/qs-install-marketplace?view=cyclecloud-8) must be installed and running (CycleCloud 8.0 or later)
2. The CycleCloud CLI tool, installed and working
3. Configured VNET to use for the worker nodes

## Configuring the Project ##
1. Open a terminal session in CycleCloud server with the CycleCloud CLI enabled.
2. Clone the cyclecloud-ray repo
``` bash
git clone https://github.com/yuvmaz/cyclecloud-ray
```
3. Switch to the `cyclecloud-ray` project directory and upload the project to cyclecloud locker.  If you enter a wrong locker name you'll get an error listing the right locker name.

``` bash
cd cyclecloud-ray/
cyclecloud project upload <locker name>
```
4. Import the Ray template:

``` bash
cyclecloud import_template -f templates/ray.txt
```

You will now see a new Ray icon under the 'Applications' category in the CycleCloud web app.

When adding a new Ray cluster you can configure:

1.  Mandatory - The VNET on which the cluster runs.  Head node is Internet-accessible, worker nodes have private IP addresses.
2.  Optional - The port on which the Ray server runs.  Default is 6379.
3.  Optional - The port on which the Ray client listener runs.  Default is 10001.  


## Adding Worker Nodes ##

When launched, the cluster comes up only with a single head node.  In order to launch worker nodes you need to:
1.  Wait until the head node starts successfully (shows green in the CycleCloud web app)
2.  Use the CycleCloud CLI to launch nodes:

``` bash
cyclecloud add_node <CLUSTER_NAME> -t worker -c <worker count>
```

The template currently allows up to 100 worker nodes.
