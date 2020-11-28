sudo wget http://172.169.8.254:10000/files/shares/install-kubernetes.tar.gz &&\
sudo tar -zxvf install-kubernetes.tar.gz && cd install-kubernetes/kube_pack && \
./worker_node.sh;



# push docker images:
echo "172.169.8.254 tinker.siat.ac.cn" > /etc/hosts