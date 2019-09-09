# html5-speedtest

### 

1.按教程申请gitalk应用（https://github.com/gitalk/gitalk）

2.修改single.html或mult.html或mult-pretty.html里面对应的gitalk参数



>注:

>index.html和single-nogitalk.html为不带gitalk的原始测速页面

>single.html为带gitalk的单服务器测速页面

>mult.html和mult-pretty.html为带gitalk的多服务器测速页面（需要自行修改添加 LIST OF TEST SERVERS）


### docker

```
###环境变量node为节点名称

docker run -d -p 80:80 -e node=Server  jialezi/html5-speedtest

```

### preview

![preview](https://github.com/jialezi/html5-speedtest/raw/master/preview.png)
