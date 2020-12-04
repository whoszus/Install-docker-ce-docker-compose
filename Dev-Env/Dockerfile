FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
        software-properties-common\
        openssh-server  vim  git   iputils-ping wget curl
RUN add-apt-repository ppa:deadsnakes/ppa &&  \
        apt-get install -y --no-install-recommends python3.8  \
        python3-pip python-dev python3-setuptools && \
        rm -rf /var/lib/apt/lists/*

RUN mkdir /var/run/sshd
RUN echo 'root:cloud' | chpasswd

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config &&\
    sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd &&\
    echo "export VISIBLE=now" >> /etc/profile


COPY requirements.txt .

ENV LANG=zh_CN.UTF-8 LANGUAGE=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8
CMD    ["/usr/sbin/sshd", "-D"]

