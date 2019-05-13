#!/bin/bash
set -e # make script fail on first error
systemctl stop gdm
systemctl stop cron
systemctl stop ondemand
while true; do RunScripts/updateRunAndPublish.sh; sleep $((60*10)); done
