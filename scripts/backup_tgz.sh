#!/usr/bin/env bash

# output backup zip file
OUTPUT=${1:-pwnagotchi-backup.tgz}
# what to backup
FILES_TO_BACKUP=(
  /root/brain.nn
  /root/brain.json
  /root/.api-report.json
  /root/.bashrc
  /root/handshakes
  /root/peers
  /etc/pwnagotchi/
  /var/log/pwnagotchi.log
  /home/pi/.bashrc
)

echo "@ backing up to $OUTPUT ..."
sudo tar -cv ${FILES_TO_BACKUP[@]} | gzip -9 > "$OUTPUT"
