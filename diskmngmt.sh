#!/usr/bin/bash
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
df -h /
free -m
disk_used=$(df / | awk 'NR==2{print $5}' | tr -d '%')
if [[ ${disk_used -gt 80 ]]; then
  echo "WARNING: Disk $(disk_used)% full"
  fi
