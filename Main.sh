sudo yum -y install git
git clone https://github.com/nProgrammer94/DevOps.git
mkdir /root/scripts

rm -rf /root/k8s_Master_Step1.sh
rm -rf /root/k8s_Master_Step2.sh
rm -rf /root/k8s_Worker_Step1.sh
rm -rf /root/k8s_Worker_Step2.sh
rm -rf /root/vagrant_Step1.sh
rm -rf /root/vagrant_Step2.sh

echo "======== Functions ========"
echo "1. Vagrant"
echo "2. Setup Master in VM"
echo "3. Setup Work in VM"

read choose

if [ $choose == 1 ]
then
    cp -r /root/DevOps/Scripts/vagrant_Step1.sh /root/vagrant_Step1
    cp -r /root/DevOps/Scripts/vagrant_Step2.sh /root/vagrant_Step2
elif  [ $choose == 2 ]
then
    cp -r /root/DevOps/Scripts/k8s_Master_Step1.sh /root/k8s_Master_Step1.sh
    cp -r /root/DevOps/Scripts/k8s_Master_Step2.sh /root/k8s_Master_Step2.sh
else
    cp -r /root/DevOps/Scripts/k8s_Worker_1.sh /root/k8s_Worker_1.sh
    cp -r /root/DevOps/Scripts/k8s_Worker_2.sh /root/k8s_Worker_2.sh
fi