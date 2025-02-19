#!/bin/bash


<<info
This is a backup script

syntax
./backup.sh <source> <destination>
src /home/ubuntu/scripts_updated
dest /home/ubuntu/backups_updated

info


src=$1
dest=$2


timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://tws-backups-demo

echo "backup completed & uploaded to S3"



