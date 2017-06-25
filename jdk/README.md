# Docker化jdk容器安装

## jdk1.7容器安装要求
- 宿主机需要可以连接外部网络
- 宿主机需要已经安装Docker
- 宿主机已经存在镜像nanquanyuhao/centos7:demo

## jdk1.7容器安装步骤
- 在项目子目录jdk下，通过如下命令完成CentOS7容器镜像安装
```
cd jdk
docker build -t nanquanyuhao/jdk1.7:demo .
```