echo "================ Prepare Hostname, Firewall and SELinux ================"
source /root/scripts/enviroment.yml
if [ $1 == 1 ]
then
    hostnamectl set-hostname  $WORKER_1_NAME
else
    hostnamectl set-hostname  $WORKER_2_NAME
fi
source /root/scripts/enviroment.yml
cat <<EOF>> /etc/hosts
$MASTER_IP master-node
$WORKER_1_IP $WORKER_1_NAME worker-$WORKER_1_NAME
$WORKER_2_IP $WORKER_2_NAME worker-$WORKER_2_NAME
EOF

setenforce 0
sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux

cat <<EOF>> /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

yum install kubeadm docker -y 
systemctl enable kubelet
systemctl start kubelet
systemctl enable docker
systemctl start docker