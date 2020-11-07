# opt for docker
mkdir -p /data/dockerstorage && mkdir -p /data/DockerRootDir && mkdir -p  /data/bigdrive/docker-tmp;
cp -rf daemon.json /etc/docker/daemon.json && systemctl daemon-reload && systemctl restart docker;
docker run -d -p 9000:9000  --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock  portainer/portainer;

## install nvdia docker 
echo "install drivers "
apt install ubuntu-drivers-common;
ubuntu-drivers autoinstall

echo "installing nvdia docker "
apt-get install -y gcc && apt-get install make ;
apt-get install linux-headers-$(uname -r);
distribution=$(. /etc/os-release;echo $ID$VERSION_ID);
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | tee /etc/apt/sources.list.d/nvidia-docker.list

apt-get update && apt-get install -y nvidia-container-toolkit;
systemctl restart docker;

# docker build . -t nvidia-tk:1.0.3;

# docker run -d  --restart==always --name=GPU-2-10022 -P --gpus '"device=1"' nvidia-tk:1.0.3

echo "172.169.8.254 tinker.siat.ac.cn" >> /etc/hosts;
mkdir -p /etc/docker/certs.d/tinker.siat.ac.cn && cd /etc/docker/certs.d/tinker.siat.ac.cn && \
wget http://tinker.siat.ac.cn:10000/files/shares/ca.crt --no-check-certificate;