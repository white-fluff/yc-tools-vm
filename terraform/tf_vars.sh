#!/bin/bash

#### This script exports variables for terrafrom

### Required variables. ###
## IAM-Token
# TF_VAR_iam_token=$(yc iam create-token)

## The path to the service account key file
TF_VAR_sa_key = "authorized_key.json"

## ID of the target cloud
TF_VAR_cloud_id=<cloud_id>

## ID of the target folder
TF_VAR_folder_id=<folder_id>

## ID of the target subnet
TF_VAR_subnet_id=<subnet_id>


### Optional variables. Uncomment and set your own values. ###

## Name of the VM being created
# TF_VAR_vm_name = <vm_name>

## Image ID for creating boot disk. By default: fd89fsr61qsgfmegh9ju (fedora-37-v20230529)
# TF_VAR_os_image_id = <image_id>

## ID of VM platform. By default: standard-v3
# TF_VAR_instance_platform_id = <platform_id>

## Resources availability zone in Yandex Cloud. By default: ru-central1-b
# TF_VAR_zone=<zone_id>