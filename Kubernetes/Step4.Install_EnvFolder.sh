# Add VirtualBox / EPEL repository
echo "================ Create Vagrant Folder ================"
mkdir /var/vagrant/
cd /var/vagrant/
sudo vagrant init
sudo vagrant plugin install vagrant-vbguest
sudo yum -y install rsync
echo "================ Complete ================"