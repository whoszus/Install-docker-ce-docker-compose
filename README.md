# Machine Learning Env 

### Install Nvidia Docker 

Script to Install Docker CE and compose on Debian/Ubuntu/CentOS and  install  Nvidia docker 

#### 1. Download or clone:
```shell
git clone https://github.com/whoszus/Install-docker-ce-docker-compose.git
```

#### 2. Set permission:
```shell
cd Install-docker-ce-docker-compose && chmod +x *.sh
```

#### 3. Run script:
```shell
   # install docker-ce and docker compose
   ./1-install.sh
   # Nvidia Drivers ,notice that here will rebot you device
   ./2-installNvidiaDriver.sh
   # if you have a bigdrive mount on /data,this scrpit will mv the docker root to /data ,or plz edit the script 
   ./3-installDockerEnv.sh
```

### How to use it

请参考：[Manual](https://github.com/whoszus/Install-docker-ce-docker-compose/blob/master/HowToUse.md)


