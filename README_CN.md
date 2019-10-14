<p align="center">
  <img width="320" src="https://wpimg.wallstcn.com/ecc53a42-d79b-42e2-8852-5126b810a4c8.svg">
</p>

<p align="center">
  <a href="https://github.com/vuejs/vue">
    <img src="https://img.shields.io/badge/vue-2.5.10-brightgreen.svg" alt="vue">
  </a>
  <a href="https://github.com/ElemeFE/element">
    <img src="https://img.shields.io/badge/element--ui-2.3.2-brightgreen.svg" alt="element-ui">
  </a>
  <a href="https://github.com/PanJiaChen/vue-element-admin/blob/master/LICENSE">
    <img src="https://img.shields.io/github/license/mashape/apistatus.svg" alt="license">
  </a>
</p>

[简体中文](./README_CN.md) | [English](./README.md)

## 介绍

[vue-element-frontend-backend](https://github.com/DevOpsUnionTop/vue-element-frontend-backend) 是一个后台前后端集成解决方案，
它前段基于 [vue-element-admin](https://panjiachen.github.io/vue-element-admin/) 和 后端自研[python+django+restful]。
前段技术大部分继承来自vue-element-admin，完全再次基础上进行开发，改进，后端技术使用python+django开发代码，使用resutful架构风格完成整体风格设计。

权限管理：

	后端权限： 使用RBAC模式，配合restful资源+方法 操作 做后端权限认证管理 
	前段权限： 根据后端userinfo返回的url匹配 menu 进行menu显示与否，具体里边是否有删除，更新权限 以后端 具体url权限为主。

另外做了一个demo举例：

	资产管理模块demo说明： 
		前段：使用avue构建前段 表格管理 
		后端：get_table_info接口返回avue框架, 以及 get list接口 数据
		两者组合 以最少的代码 合成一个 表格的增删改查导入导出功能。


## 前序准备

你需要在本地安装 [node](http://nodejs.org/) 和 python3.6。本项目技术栈基于 [vue-element-admin](https://github.com/PanJiaChen/vue-element-admin)、[vue](https://cn.vuejs.org/index.html)、[vuex](https://vuex.vuejs.org/zh-cn/)、[vue-router](https://router.vuejs.org/zh-cn/) 、[axios](https://github.com/axios/axios) , [element-ui](https://github.com/ElemeFE/element)和[python](https://www.runoob.com/python3/python3-tutorial.html)，
所有的请求数据都使用后端api接口返回，提前了解和学习这些知识会对使用本项目有很大的帮助。

- [潘(先生/女士)前段教程 (实战篇)](https://github.com/PanJiaChen/vue-element-admin)

**如有问题请先看上述使用文档和文章，若不能满足，欢迎 issue 和 pr**

 <p align="center">
  <img width="900" src="https://wpimg.wallstcn.com/a5894c1b-f6af-456e-82df-1151da0839bf.png">
</p>

Back-end api
<p align="center">
  <img width="900" src="http://www.bdkyr.com/open_galaxy/static/img/api_docs.png">
</p>


## 功能

```
- 登录(用户密码登录，手机验证码登录，第三方登录-微信，新浪微博，github登录) / 注销

- 权限管理 基于restful风格 url+resquest-method 权限细粒度管理

- 日志审计系统  记录系统 中更新，删除，创建操作

- 多环境发布
  - dev sit stage prod

- 全局功能
  - 国际化多语言
  - 多种动态换肤
  - 动态侧边栏（支持多级路由嵌套）
  - 动态面包屑
  - 快捷导航(标签页)
  - Svg Sprite 图标
  - 本地mock数据
  - Screenfull全屏
  - 自适应收缩侧边栏

- Excel
  - 导出excel
  - 导入excel

- 表格
  - 普通表格CRUD

- 错误页面
  - 401
  - 404

- 組件
  - 头像上传
  - 返回顶部

- Clipboard(剪贴复制)
```

## 前后端代码风格
前段：  
frontend  
 --build  
 --config  
 --static  
 --src  
 -------api  
 -------assets  
 -------components  
 -------directive  
 -------filters  
 -------icons  
 -------lang  
 -------router  
 -------store  
 -------styles  
 -------utils  
 -------vendor  
 -------views  

## 后端代码风格详解  
--backend  
-----------extra_apps					#完整第三方系统或者模块  例如xadmin-django后台  
-----------logs						#后台程序日志存储目录  
-----------media					#静态日志  
-----------project   					#后台总体 配置，启动，url 路由，以及wsgi启动 配置  
-----------utils					#后台所有系统 共用 验证，抽象 目 录  
----------------util.py  				#公共工具方法集合  例如 远程连接，加密解密，短信发送，表结构解析  
----------------base_mixin.py				#抽象中间件				  基础类   
----------------base_model.py				#抽象 ORM模型 中对象  			基础类 BaseModel  
----------------base_resource.py			#抽象  导入导出功能 自定义字段 	   基础类 BaseResource  
----------------base_view.py				#抽象 逻辑 控制类 			基础类  BaseModelViewSet.BaseGenericViewSet  

-----------manage.py  
-----------requirements.txt  
-----------uwsgi.ini  

-----------apps  
---------------cmdb  
---------------modellog  
---------------users  
---------------------××××××××××××××××××××××大部分模块都拥有这些文件×××××××××××××××××××××××××××××××××××××××××××××××××××××××× 
---------------------management					# 模块管理目录  一般存放 初始化，定时任务 操作的脚本等  
---------------------migrations					# ORM模型 django 操作数据库表结构脚步记录目录  
---------------------models.py					#ORM模型中的 对象 类  
---------------------serializers.py				# 序列化文件  
---------------------views.py					# 业务逻辑控制文件  
---------------------resources.py				#导入导出自定义字段文件  
---------------------filters.py					#查询过滤条件文件    
---------------------urls.py					#url 映射文件  
---------------------adminx.py					#django后台管理操作文件  
---------------------apps.py					#模块或者app基础信息类 添加到 总项目中 INSTALLED_APPS才会被使用  
---------------------util.py					# 模块 工具类  
---------------------××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××   
---------------------middleware.py				#中间件 文件  
---------------------auth.py					# 去掉 csrf检查  
---------------------ldap_tool.py				#ldap操作相关  

## 安装文档


[中文安装文档](./INSTALL_CN.md)
[English Install Docs](./INSTALL_EN.md)
