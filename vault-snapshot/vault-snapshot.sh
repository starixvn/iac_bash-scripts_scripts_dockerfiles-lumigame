#!/usr/bin/env sh

####################################
# authenticate using kubernetes auth
JWT=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
export JWT
VAULT_TOKEN=$(vault write -field=token  auth/kubernetes/login role="${VAULT_ROLE}" jwt="${JWT}")
export VAULT_TOKEN

####################################
# create snapshot
backupFileName=vault_"$(date +%F-%H%M).snapshot"
vault operator raft snapshot save /vault-snapshots/${backupFileName}

####################################
# upload to s3
mc alias set backup $S3_HOST $AWS_ACCESS_KEY_ID $AWS_SECRET_ACCESS_KEY
mc put /vault-snapshots/${backupFileName} backup/${S3_PATH}
mc ilm rule add backup/${S3_PATH} --expire-days "${retainDay}"