# Docker化tomcat容器安装

## tomcat容器安装要求
- 宿主机需要可以连接外部网络
- 宿主机需要已经安装Docker
- 宿主机已经存在镜像nanquanyuhao/jre1.7:demo

## tomcat容器安装步骤
- 在项目子目录tomcat/scripts下，通过如下命令完成执行脚本赋权
```
cd tomcat/scripts
chmod +x create_tomcat_admin_user
chmod +x run
```
- 在项目子目录tomcat下，通过如下命令完成tomcat7容器镜像安装
```
cd tomcat
docker build -t nanquanyuhao/tomcat7:demo .
```
