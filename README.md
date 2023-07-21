# 飞廉

## 全新的2.0版本，全面支持springboot3.0 + vue3.0，全新设计的UI界面。
* 这是一个经过无数商业项目千锤百炼的开发框架，供所有个人和组织免费使用。
* 集成了平时开发需要的大量模块和组件：百度地图，即时通信websocket，OSS云存储，短信，邮件，定时任务，各类日志，多租户，动态配置的数据权限。
* 配套文鳐移动端开发框架<a href="https://gitee.com/sunseagear/wenyao" target="_blank">（点击这里）</a>，能够快速进行服务器端和移动端的开发。
* 通过仓颉全量代码生成平台<a href="http://www.sunseagear.com/#/doc/cangjie/summary" target="_blank">（30秒了解仓颉）</a>，你能快速生成多种页面的功能模块；
同时支持服务器端和移动端代码生成。<a href="http://sunseagear.com:8081/admin/" target="_blank">(立刻使用)</a>
* 工作流版本在flow分支
* QQ群：759017839
* 确定不先点个star再下载吗？
### 介绍

飞廉，山海经中神兽，身似鹿，头如雀，有角而蛇尾，虽不能飞，但身形敏捷，速度奇快。 擅长御风，是传说中的风神，秦人的先祖。

<img width="30%" src="http://feilian.oss-cn-beijing.aliyuncs.com/doc/feilian.jpeg" alt="飞廉">

图片来自网络

我们认为软件开发的第一要务就是速度。不论是做产品，接项目，甚至是接私活，速度都是成败的关键。 高效是一个团队的追求，更高的效率意味着更高的利润。高效也是一个程序员的追求，意味着更少的加班和更多的头发。

取名飞廉，是因为我们希望能够设计出一款框架，简单，好用，具有极高的开发效率，但又不过度的封装，将技术细节能够原本的展现出来。让新手能用，老手爱用。

联系作者，加QQ:553671691,或者微信: Dothegod，加人请注明“飞廉”

### 系统截图

<table border="0">
   <tr>
   <td>
   登录
   <img src="http://feilian.oss-cn-beijing.aliyuncs.com/wind/v2/login.png"/>
   </td>
   <td>
   首页
   <img src="http://feilian.oss-cn-beijing.aliyuncs.com/wind/v2/home.png"/>
   </td>
   </tr>
   <tr>
   <td>
   首页(夜间模式)
   <img src="http://feilian.oss-cn-beijing.aliyuncs.com/wind/v2/dark.png"/>
   </td>
   <td>
   用户
   <img src="http://feilian.oss-cn-beijing.aliyuncs.com/wind/v2/user.png"/>
   </td>
   </tr>
   <tr>
   <td>
   菜单
   <img src="http://feilian.oss-cn-beijing.aliyuncs.com/wind/v2/menu.png"/>
   </td>
   <td>
   权限
   <img src="http://feilian.oss-cn-beijing.aliyuncs.com/wind/v2/permission.png"/>
   </td>
   </tr>
   <tr>
   <td>
   数据规则配置
   <img src="http://feilian.oss-cn-beijing.aliyuncs.com/wind/v2/datarule.png"/>
   </td>
   <td>
   代码样例1
   <img src="https://feilian.oss-cn-beijing.aliyuncs.com/wind/v2/table.png"/>
   </td>
   </tr>
   <tr>
   <td>
   代码样例2
   <img src="https://feilian.oss-cn-beijing.aliyuncs.com/wind/v2/websocket.png"/>
   </td>
   </tr>
</table>

### 源码地址

gitee:https://gitee.com/sunseagear/wind

### 在线预览

http://www.sunseagear.com/dist/

    演示系统数据无法修改

### 在线文档

http://www.sunseagear.com/

### 文鳐地址

与飞廉配套的H5开发框架文鳐

https://gitee.com/sunseagear/wenyao

    演示系统数据无法修改

### 系统要求(推荐)

> * jdk 17+
>* tomcat 10.0+
>* mysql 5.7+
>* nodejs 16.0+
>* npm 6.0+

### 软件架构

> * 整个系统采用前后端分离的模式
>* 后端基于SpringBoot3、Mybatis plus构建核心架构，技术结构来自于JeeWeb（该项目原作者已经不维护）
>* 前端采用vuejs3.0，集成了element-plus
>* 采用Oauth2协议进行统一的Token下发与鉴权，保证系统安全性
>* spring security，能够做到按钮级别的权限管控。
>* 支持Quartz定时任务
>* 支持邮件定时发送
>* 支持短信定时发送
>* 支持webSocket
>* 支持多租户
>* 支持数据规则动态配置
>* 支持jar包和war包两种部署

### 我们做了什么

> * 自2018年底开始独立演进，修复很多原框架已有的BUG
>* 对原有框架进行了大量的简化，删除了不必要的代码，重新梳理了整个底层
>* 更新Mybatis plus到3.0+，更新了DAO层的代码实现
>* 重写了element-vue-admin的菜单加载模式，使得后台配置菜单易用性大幅提高
>* 新增了按钮级别的权限控制
>* 新增了对websocket的支持
>* 新增了多租户的支持
>* 新增了动态数据规则的支持
>* 改进后台配置，支持多种状态配置，支持两种打包模式
>* 前端页面进行了大量的重写和优化
>* 新增了百度地图套件（打点，画线，画框），系统部门选择组件，系统用户选择组件，文件图片上传组件，同时修复大量原有组件的BUG
>* 提供了多种页面的代码样例以供参考

### 项目文件组成

* Nginx配置文件
* sql 为数据库脚本
* wind-admin 为前端系统页面
* wind-server 为后台系统

### 前端运行（命令行）

```
# 安装依赖
npm install --registry=https://registry.npm.taobao.org

# 启动服务
npm run dev

# 打包部署
npm run build

```

### 前端运行（IDEA）

1. 在IDEA中打开前端项目<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/openAdmin.PNG)
2. 在命令行中输入npm install<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/npmInstall.PNG)
3. 点击 add configuration，弹出配置对话框<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/setting.PNG)
4. 点击左上角“+”， 添加npm项目<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/npm.PNG)
5. 在右侧Scripts下拉框，选择dev<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/npmDev.PNG)
6. 再次点击左上角“+”，添加npm项目<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/npm.PNG)
7. 在右侧Scripts下拉框，选择build:prod<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/npmBuild.PNG)
8. 创建好两个项目后点击“OK”，关闭对话框
9. 选择dev项目，点击运行，便可以运行项目<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/runDev.PNG)
10. 出现如下提示的时候，说明项目启动项目<br>
    ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/run.PNG)
11. 点击链接http://localhost:9527或者http://192.168.1.101:9527，自动打开浏览器，出现如下界面，说明系统启动成功<br>
    ![Image text](https://feilian.oss-cn-beijing.aliyuncs.com/wind/login0.png)

### 后端运行

1. 使用数据库工具导入数据脚本，可以使用自己的常用的数据库工具导入数据<br>
2. 在IDEA中打开后端项目<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/server/open.PNG)
3. 打开application-dev.yml文件，配置数据库连接信息<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/server/database.PNG)
4. 如果是第一次打开项目，在idea右下角会弹出对话框，点击Add as maven project，或者选择根目录pom.xml文件，右键选择Add as maven project<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/server/maven.PNG)
5. 同步完成以后，会自动识别为springBoot项目, 点击运行即可<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/server/run.PNG)
6. 系统运行成功<br>
   ![Image text](http://feilian.oss-cn-beijing.aliyuncs.com/doc/install/server/start.PNG)


