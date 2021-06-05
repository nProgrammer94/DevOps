sudo yum -y install git
git clone https://github.com/nProgrammer94/DevOps.git
mkdir /root/scripts
cp -r /root/DevOps/Kubernetes/K8s/. /root/scripts/
cd /root/scripts
sudo sh Setup.MasterNode.sh