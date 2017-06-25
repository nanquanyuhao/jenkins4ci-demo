# Docker化CentOS7容器安装

## CentOS7容器安装要求
- 宿主机需要可以连接外部网络
- 宿主机需要已经安装Docker

## 安装及步骤方式
- 方式一.镜像下载
	- 通过如下命令从DockerHub直接获取镜像
	```
	docker pull nanquanyuhao/centos7:demo
	```
- 方式二.Dockerfile安装
	- 在项目子目录jenkins下，通过如下命令完成CentOS7容器镜像安装
	```
	cd centos
	docker build -t nanquanyuhao/centos7:demo .
	```