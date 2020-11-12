
#edit nameserver and host
sudo -s echo "tinker.siat.ac.cn" >> /etc/hosts;
sudo echo "nameserver 223.5.5.5" > /etc/resolvconf/resolv.conf.d/base;

# get installation packages from file-server

cd /home && wget http://tinker.siat.ac.cn/files/shares/intall-kubernetes.tar.gz;
cd /home && tar -zxvf install-kubernetes.tar.gz;
echo 'root:@@tinker' | chpasswd && echo "@@tinker" |su root;
cd /home/install-kubernetes;
