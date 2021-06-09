echo "================ Initialize Kubernetes Master and Setup Default User ================="
swapoff -a
kubeadm init --apiserver-advertise-address=10.0.4.221 --pod-network-cidr=192.168.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

echo "================ Setup Your Pod Network ================="
export kubever=$(kubectl version | base64 | tr -d '\n')
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$kubever"

