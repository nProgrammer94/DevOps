
echo "================ Prepare Hostname, Firewall and SELinux ================"
source enviroment.yml
hostnamectl set-hostname master-node
cat <<EOF>> /etc/hosts
$MASTER_IP master-node
$WORKER_1_IP node-1 worker-node-1
$WORKER_2_IP node-2 worker-node-2
EOF

setenforce 0
sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
reboot