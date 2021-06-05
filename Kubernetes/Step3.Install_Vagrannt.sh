# Add VirtualBox / EPEL repository
echo "================ Install vagrant ================"
sudo yum -y update
sudo yum -y install https://releases.hashicorp.com/vagrant/2.2.16/vagrant_2.2.16_x86_64.rpm
vagrant --version
sudo sh Step4.Install_EnvFolder.sh
echo "================ Complete ================"