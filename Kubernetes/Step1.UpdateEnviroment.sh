# Update OS & install libaries
sudo yum -y update
sudo yum –y install epel-release
sudo yum –y install gcc dkms make qt libgomp patch
sudo yum –y install kernel-headers kernel-devel binutils glibc-headers glibc-devel font-forge
sudo yum -y install wget
sudo sh Step2.Install_VirtualBox.sh
echo "================ Complete ================"