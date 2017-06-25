# Docker化tomcat容器安装

## tomcat容器安装要求
- 宿主机需要可以连接外部网络
- 宿主机需要已经安装Docker
- 宿主机已经存在镜像nanquanyuhao/jdk1.7:demo（仅Dockerfile方式安装需要）

## 安装及步骤方式
- 方式一.镜像下载
	- 通过如下命令从DockerHub直接获取镜像
	```
	docker pull nanquanyuhao/tomcat7:demo
	```
- 方式二.Dockerfile安装
	- 在项目子目录tomcat下，通过如下命令完成tomcat7容器镜像安装
	```
	cd tomcat
	docker build -t nanquanyuhao/tomcat7:demo .
	```