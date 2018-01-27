### 授权服务器

* 构建状态 [![Build Status](https://travis-ci.org/jinfeijie/idea.svg?branch=master)](https://travis-ci.org/jinfeijie/idea)
* 使用方法
![](https://ws2.sinaimg.cn/large/006tKfTcly1fl2xjjnriyj30q80n4q4x.jpg)

* 构建方法：
	- Dockerfile构建：`docker build -f Dockerfile -t idea ./ `
	- DockerHub构建：`docker pull mrjin/idea:latest`

* 部署方法：
	- 本地部署：`docker run -d -e PORT=9501 -e USER=jinfeijie.cn -p 9501:9501 --restart=always --name=idea idea`
	- DockerHub部署：`docker run -d -e PORT=9501 -e USER=jinfeijie.cn -p 9501:9501 --restart=always --name=idea mrjin/idea:latest`

* 参数

	| 环境变量       | 默认值           | 备注 |
	| ------------- |:-------------:| :---:|
	| PORT      | 9501 | 内部端口号|
	| USER | jinfeijie.cn | 授权用户 |

* 手头宽裕请支持正版：[https://www.jetbrains.com/idea/](https://www.jetbrains.com/idea/)
* 其他问题[@jinfeijie](https://t.me/jinfeijie)

