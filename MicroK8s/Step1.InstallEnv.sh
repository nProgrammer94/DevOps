echo "================ Update enviroment & install microk8s"
sudo yum update -y
sudo yum install epel-release -y
sudo yum install snapd -y
sudo setenforce 0
sudo sed -i 's/^SELINUX=.*/SELINUX=permissive/g' /etc/selinux/config
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install microk8s --classic
echo "================ Join Groups"
sudo usermod -aG microk8s $USER
sudo chown -f -R $USER ~/.kube
microk8s stop
microk8s start