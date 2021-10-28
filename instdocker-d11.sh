#/bin/bash
#
#  Install Rancher via Docker Script
#
#

# Install CURL
echo "Docker installation for Debian11"
echo "DEB update !"
read -rsn 1 -p 'Press any key to continue . . . ';echo
apt-get -y update
apt-get -y upgrade


#
# Get Rancher
#
echo "Deploying Docker for Deb11!"
read -rsn 1 -p 'Press any key to continue . . . ';echo

# Remove old stuff
apt remove -y docker docker-engine docker.io containerd runc
apt update
apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common

// Get Keys
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list

apt install -y docker-ce docker-ce-cli containerd.io

