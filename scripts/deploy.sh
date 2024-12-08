#!/bin/bash

set -e

for user_dir in /home/siddharth_rai/tf_gcs_buckets/*/; do
  echo $user_dir
  terraform -chdir=$user_dir init
  terraform -chdir=$user_dir plan -var-file=$(basename $user_dir).tfvars
  terraform -chdir=$user_dir apply -var-file=$(basename $user_dir).tfvars -auto-approve
done
