#!/bin/bash
echo "proc /proc proc defaults,nosuid,nodev,noexec,relatime,hidepid=2 0 0" >> /etc/fstab
