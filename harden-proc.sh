#!/bin/bash
clear
echo "Hardening your /proc mount in fstab"
echo "proc /proc proc defaults,nosuid,nodev,noexec,relatime,hidepid=2 0 0" >> /etc/fstab
