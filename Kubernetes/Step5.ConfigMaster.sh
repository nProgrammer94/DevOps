# Add VirtualBox / EPEL repository
echo "================ Config Master ================"
cd /var/vagrant
cp /root/scripts/VagantConfigs/install-docker-kube.sh install-docker-kube.sh
sudo chmode +x /var/vagrant/install-docker-kube.sh
mkdir master
sudo cp /root/scripts/VagantConfigs/Vagrantfile_Master /var/vagrant/master/Vagrantfile
echo "================ Complete ================"