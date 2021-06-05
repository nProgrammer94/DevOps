echo "================ Prepare Hostname, Firewall and SELinux ================"
hostnamectl set-hostname master-node
source /root/scripts/enviroment.yml
cat <<EOF>> /etc/hosts
$MASTER_IP master-node
$WORKER_1_IP $WORKER_1_NAME worker-$WORKER_1_NAME
$WORKER_2_IP $WORKER_2_NAME worker-$WORKER_2_NAME
EOF

setenforce 0
sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
reboot