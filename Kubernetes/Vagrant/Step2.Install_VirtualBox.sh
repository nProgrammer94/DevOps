# Add VirtualBox / EPEL repository
echo "================ Download VirtualBox ================"
wget https://www.virtualbox.org/download/oracle_vbox.asc
rpm --import oracle_vbox.asc -y
mkdir /etc/yum.repo.d/
cd /etc/yum.repo.d/
wget http://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -O /etc/yum.repos.d/virtualbox.repo
echo "================ Install VirtualBox ================"
yum install VirtualBox-6.0 -y
yum groupinstall "Development tools" -y
yum install kernel-devel -y
sudo Step3.Install_Vagrannt.sh