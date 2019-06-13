# 心机App简介
####  《心机》是一项在线手机商城app，实现用户可在线浏览手机详情、在线购买等功能。APP前端使用vue2.0用户界面的渐进式框架，界面结合YDUI框架书写美观的、交互性强的前端页面。后端使用Express基于 Node.js 平台、极简的 Web 开发框架，使用ajax，json语言实现前后端数据交互。
---
####   为确保后端数据不被窃取、在数据交互中使用RSA非对称加密算法对数据进行加密，加密分为后端私钥加密，公钥解密、前端公钥加密、私钥解密，且在用户注册时用户数据不被暴露，使用md5对用户传输数据进行加密处理。
---
####   开发APP过程中，为了给用户流畅的交互体验，APP运用Redis缓存机制、避免不必要的数据重复请求。
---
### shop-bend
***
后端的api接口，nodejs + mysql + express + redis + rsa 实现

### shop-fend

#### RSA 非对称加密api设计思路
私钥加密 公钥解密

* 1：前端传递参数给后端的时候，先将数据 object 转换为 "key=value&key=value" ，然后通过私钥对数据进行加密，放到请求头中token传递给后端，

* 2：后端拿到请求头通过公钥解密，重新排列数据为 object， 然后查询计算完成拿到数据，后端再用公钥加密json数据，然后返回给前端

* 3：前端通过私钥解密后端的json，渲染页面