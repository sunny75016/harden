#!/bin/bash
echo "Disabling kernel dumps and setting timeout to 1 hour"
echo "ulimit -c 0 > /dev/null 2>&1" > /etc/profile.d/disable-coredumps.sh
echo "TMOUT=3600" >> /etc/profile
echo "readonly TMOUT" >> /etc/profile
echo "export TMOUT" >> /etc/profile
echo "* hard core 0" >> /etc/security/limits.conf
echo "* soft core 0" >> /etc/security/limits.conf
echo "fs.suid_dumpable=0" >> /etc/sysctl.conf
echo "kernel.kptr_restrict=2" >> /etc/sysctl.conf
sysctl -p > /dev/null
