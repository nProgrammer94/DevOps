sudo yum -y install git
git clone https://github.com/nProgrammer94/DevOps.git
mkdir /root/scripts
cp -r /root/DevOps/Kubernetes/. /root/scripts/
cd /root/scripts
sudo sh Step1.UpdateEnviroment.sh