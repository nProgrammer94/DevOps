# Add VirtualBox / EPEL repository
echo "================ Config Master ================"
cd /var/vagrant
cp /root/scripts/VagantConfigs/install-docker-kube.sh install-docker-kube.sh
sudo chmode +x /var/vagrant/install-docker-kube.sh
mkdir master
sudo cp /root/scripts/VagantConfigs/Vagrantfile_Master /var/vagrant/master/Vagrantfile
sudo systemctl start vboxdrv
vagrant up --provider=virtualbox
echo "================ Init Cluster ================"
vagrant ssh
kubeadm init --apiserver-advertise-address=172.16.10.100 --pod-network-cidr=192.168.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://docs.projectcalico.org/v3.10/manifests/calico.yaml