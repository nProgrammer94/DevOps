# Add VirtualBox / EPEL repository
echo "================ Config Master ================"
cp /var/vagrant/
sudo vagrant init
sudo vagrant plugin install vagrant-vbguest
sudo yum -y install rsync
cp /root/scripts/VagantConfigs/install-docker-kube.sh install-docker-kube.sh
sudo chmode +x /var/vagrant/install-docker-kube.sh
mkdir master
sudo cp /root/scripts/VagantConfigs/Vagrantfile_Master /master/Vagrantfile
echo "================ Complete ================"