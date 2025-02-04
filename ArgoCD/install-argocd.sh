# Argocd install
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
#verify installation
kubectl get pods -n argocd

# Install Argocd CLI
brew install argocd
