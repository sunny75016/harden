#!/bin/bash
echo "ulimit -c 0" >> /etc/profile
echo "* hard core 0" >> /etc/profile
echo "* soft core 0" >> /etc/profile
