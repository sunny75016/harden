#!/bin/bash
cd /home
git clone https://github.com/CISOfy/lynis
cd lynis
./lynis audit system --usecwd --verbose
