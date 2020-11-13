sudo wget http://172.169.8.254:10000/files/shares/install-kubernetes-worker.tar.gz &&\
sudo tar -zxvf install-kubernetes-worker.tar.gz && cd install-kubernetes-worker/kube_pack && \
./worker_node.sh;
