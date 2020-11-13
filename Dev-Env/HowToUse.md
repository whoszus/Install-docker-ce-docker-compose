### Manual

### note 

1. 目前版本内预装了驱动、cudnn 7、cuda10.1; 详情可以参考[nvidia dockerfile](https://gitlab.com/nvidia/container-images/cuda/blob/master/dist/ubuntu18.04/10.1/devel/cudnn7/Dockerfile)
2. 预装了pip3.7 ,pip2.7, python3.7,python2.7
3. 如有其它需求可以写到dockerfile 中，提交PR；

#### How to use

1. 可以直接通过SSH 连接上去，例如 ip 是172.16.101.221 端口是32780

   ~~~
   ssh 172.16.101.221 -p 32780
   ~~~

2. 修改密码

   ~~~shell
   passwd root
   ~~~

3. 上传代码或者使用以下方式调试代码 pycharm 连接服务器debug 





#### pycharm debug 

1.  add  interpreter 

   ![image-20191017170232641](https://tva1.sinaimg.cn/large/006y8mN6gy1g81b16bdapj31a20u0n0f.jpg)

2. choose the python env

   ![image-20191017170723167](https://tva1.sinaimg.cn/large/006y8mN6gy1g81b67k8ajj31hw0rkdkj.jpg)

   ![image-20191017170551888](https://tva1.sinaimg.cn/large/006y8mN6gy1g81b4njzshj31a20u0q63.jpg)

3. Done.