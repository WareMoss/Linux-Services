#!/bin/bash
#
LOGFILE="var/log/updateupgrade.log"

log() {
  echo "$(date '+%Y-%m-%d %H-%M-%S') - $1" >>$LOGFILE
}
log "Starting Update"
if sudo apt-get update $$ sudo apt-get -y upgrade; then 
  log "Update Successful"
else
  log "Update Failed"
fi
log "Update Service Complete"
