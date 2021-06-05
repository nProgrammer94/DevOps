# Add VirtualBox / EPEL repository
echo "================ Config Master ================"
cp /root/scripts/VagantConfigs/install-docker-kube.sh /var/vagrant/install-docker-kube.sh
sudo chmode +x /var/vagrant/install-docker-kube.sh
mkdir /var/vagrant/master
cd /var/vagrant/
sudo vagrant init
sudo vagrant plugin install vagrant-vbguest
sudo yum -y install rsync
echo "================ Complete ================"