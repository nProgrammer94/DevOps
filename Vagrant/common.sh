sudo yum install -y epel-release
sudo yum install -y htop
yum install -y net-tools

echo -e "GATEWAY=10.0.0.254"  >> /etc/sysconfig/network-scripts/ifcfg-eth2
sudo systemctl restart NetworkManager.service

# Tat SELinux
setenforce 0
sed -i --follow-symlinks 's/^SELINUX=enforcing/SELINUX=disabled/' /etc/sysconfig/selinux


# Tat Firewall
systemctl disable firewalld >/dev/null 2>&1
systemctl stop firewalld

sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's/^#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config

echo "11052194" | passwd --stdin root