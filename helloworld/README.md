# Docker化应用的构建

## 应用构建要求
- 在项目子目录helloworld下，通过如下命令完成初始化脚本赋权
```
cd helloworld
chmod +x init
```
- 若使用脚本通过主机登陆直接启动镜像进行测试，可通过以下脚本进行，最后访问宿主机IP即可
```
docker build -t nanquanyuhao/helloworld .
docker run -d --name helloworld -p 80:8080 nanquanyuhao/helloworld
```