# harden
Scripts for hardening Ubuntu or Debian droplets on Digital Ocean. Read and understand before running.
Here is a list of scripts and a brief description of what they do.
1. harden-kernel.sh updates the kernel to the latest mainline generic build for AMD64 from kernel.org
2. harden-openssl.sh updates OpenSSL to the latest version from OpenSSL.org
3. harden-openssh.sh updates OpenSSH to the latest version from OpenSSH.org
4. harden-lynis.sh installs lynis from github CISOfy/lynis and runs for the first time.
5. harden-ppa.sh adds my favourite repositaries for apache2, php, nginx and MariaDB (either Bionic or Focal)
6. [Additional scripts will be placed here.]
IMPORTANT - USE AT YOUR OWN RISK. I AM NOT RESPONSIBLE FOR YOUR ACTIONS.
Requests for additional scripts are welcome.

Instructions - On a FRESH Ubuntu 20.04 Droplet on DigitalOcean using SSH keys.

cd /home && git clone https://github.com/sunny75016/harden.git && cd harden && chmod +x *.sh && echo "You can use ./harden-all.sh if you wish"
