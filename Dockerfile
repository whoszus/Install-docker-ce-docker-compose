FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04


RUN apt-get update && apt-get install -y --no-install-recommends \
        software-properties-common\
        openssh-server  vim      
RUN add-apt-repository ppa:deadsnakes/ppa &&  \
        apt-get install -y --no-install-recommends python3.7  \
        python3-pip python-dev python-setuptools && \
        rm -rf /var/lib/apt/lists/*

RUN mkdir /var/run/sshd
RUN echo 'root:cloud' | chpasswd

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config &&\
    sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd &&\
    echo "export VISIBLE=now" >> /etc/profile


COPY requirements.txt .
RUN pip3 install -r ./requirements.txt

EXPOSE 22 8888 80
CMD    ["/usr/sbin/sshd", "-D"]

