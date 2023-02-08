#!/bin/bash
yc compute instance create \
  --name reddit-full \
  --hostname reddit-full \
  --zone ru-central1-a \
  --memory=4 \
  --core-fraction=100 \
  --create-boot-disk image-id="fd8n9bq4h6p0ih6du1rd",size=10G \
  --network-interface subnet-name=ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/appuser.pub
