# cyclecloud-ray
This project sets up a [Ray](https://github.com/ray-project/ray) cluster using Azure CycleCloud..

**Table of contents**
- [Pre-Requisites](#pre-requisites)
- [Configuring the Project](#configuring-the-project)

## Pre-Requisites ##
1. [CycleCloud](https://learn.microsoft.com/en-us/azure/cyclecloud/qs-install-marketplace?view=cyclecloud-8) must be installed and running (CycleCloud 8.0 or later).
2. The CycleCloud CLI tool, installed and working.

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
4. Import the Ray template

``` bash
cyclecloud import_template -f templates/ray.txt
```

You will now see a new Ray icon under the 'Applications' category in the CycleCloud web app.
