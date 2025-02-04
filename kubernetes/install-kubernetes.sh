# Update the system

sudo apt update -y
sudo apt install -y apt-transport-https ca-certificates curl

# Add Kubernetes GPG key
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/kubernetes-archive-keyring.gpg

# Add Kubernetes repository
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# Update package list
sudo apt update -y

# Install Kubernetes tools: kubeadm, kubelet, and kubectl
sudo apt install -y kubelet kubeadm kubectl

# Prevent automatic updates for Kubernetes packages
sudo apt-mark hold kubelet kubeadm kubectl

# Verify installations
kubeadm version
kubectl version --client
kubelet --version
