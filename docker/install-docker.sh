#Docker Installation

sudo apt-get update
sudo apt-get install docker.io -y
sudo apt-get install docker-compose-v2
sudo usermod -aG docker $USER && newgrp docker
