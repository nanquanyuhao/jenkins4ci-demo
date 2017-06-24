# Docker化Jenkins容器安装

## Jenkins容器安装要求
- 宿主机需要可以连接外部网络
- 宿主机需要已经安装Docker

## Jenkins容器安装步骤
- 在项目子目录jenkins下，通过如下命令完成Jenkins容器镜像安装
```
cd jenkins
docker build -t nanquanyuhao/jenkins:demo .
```
- 给启动脚本赋予执行权限
```
chmod +x jenkins_startup.sh
```
- 在jenkins目录下直接执行脚本完成容器启动
```
./jenkins_startup.sh
```
- 访问所在宿主机的8080端口即可访问Jenkins程序