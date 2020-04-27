# harden

DESCRIPTION
Scripts for hardening Ubuntu or Debian droplets on Digital Ocean. Read and understand before running.
Here is a list of scripts and a brief description of what they do.

./harden-all.sh - IT RUNS ALL OF THE FOLLOWING SCRIPTS.

./harden-passwords.sh - Add a complex password for root, Create nonroot user, Copy SSH keys across.

./harden-ufw.sh - Enable ufw firewall with open basic ports 22,25,53,80,110,143,465,587,993,995,etc.

./harden-ppa.sh - Add repositories for apache2, nginx, php and MariaDB server.

./harden-kernel.sh - Replace Linux kernel to the more recent version.

./harden-openssl.sh - Upgrade OpenSSL to the most recent version.

./harden-openssh.sh - Upgrade OpenSSH to the most recent version.

./harden-profile.sh - Disable kernel dumps.

./harden-chmod.sh - Restrict access to certain files and folders.

./harden-proc.sh - Harden the /proc mount

./harden-filesystem.sh - Blacklist unnecessary mounts and protocols.

./harden-install-programs.sh - Install pam, debsums, rkhunter.

./harden-stig.sh - Some of the other hardening as suggested by STIG.

./harden-lynis.sh - Installs lynis from github CISOfy/lynis to /home/lynis

INSTALLATION
Create a fresh Ubuntu 20.04 Droplet on DigitalOcean using SSH keys.
cd /home && git clone https://github.com/sunny75016/harden.git && cd harden && chmod +x *.sh && echo "You can use ./harden-all.sh if you wish"

IMPORTANT - USE AT YOUR OWN RISK. I AM NOT RESPONSIBLE FOR YOUR ACTIONS.
Requests for additional scripts are welcome.
