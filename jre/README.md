# Docker化jre容器安装

## jre1.7容器安装要求
- 宿主机需要可以连接外部网络
- 宿主机需要已经安装Docker
- 宿主机已经存在镜像nanquanyuhao/centos7:demo

## jre1.7容器安装步骤
- 在项目子目录jre下，通过如下命令完成CentOS7容器镜像安装
```
cd jre
docker build -t nanquanyuhao/jre1.7:demo .
```