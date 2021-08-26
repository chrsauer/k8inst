#/bin/bash
#
#  Install Rancher via Docker Script
#
#

# Install CURL
echo "DEB update !"
read -rsn 1 -p 'Press any key to continue . . . ';echo
apt-get -y update
apt-get -y upgrade

# Get Curl
echo "Get CURL !"
read -rsn 1 -p 'Press any key to continue . . . ';echo
apt-get -y install curl

#
# Get Rancher
#
echo "Deploying Docker !"
read -rsn 1 -p 'Press any key to continue . . . ';echo

# Install Docker
curl https://releases.rancher.com/install-docker/20.10.sh | sh

# Install Rancher
echo "Deploying Rancher !"
read -rsn 1 -p 'Press any key to continue . . . ';echo

docker run -d --restart=unless-stopped -p 80:80 -p 443:443 --privileged rancher/rancher
