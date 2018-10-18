/*
Navicat MySQL Data Transfer

Source Server         : eee
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-10-18 02:58:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `shop_cart`;
CREATE TABLE `shop_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_id` int(11) DEFAULT NULL COMMENT '关联商品表的id',
  `user_id` int(11) DEFAULT NULL COMMENT '关联用户表的id',
  `cart_nums` varchar(255) DEFAULT NULL COMMENT '收藏商品的数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_cart
-- ----------------------------
INSERT INTO `shop_cart` VALUES ('15', '14', '9', '1');
INSERT INTO `shop_cart` VALUES ('16', '9', '9', '1');
INSERT INTO `shop_cart` VALUES ('19', '21', '9', '1');

-- ----------------------------
-- Table structure for shop_commodity
-- ----------------------------
DROP TABLE IF EXISTS `shop_commodity`;
CREATE TABLE `shop_commodity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_name` varchar(255) DEFAULT NULL COMMENT '标题',
  `commodity_nowprice` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `commodity_brand` varchar(255) DEFAULT NULL COMMENT '品牌',
  `commodity_stock` varchar(255) DEFAULT NULL COMMENT '库存',
  `commodity_oldprice` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `commodity_sales` varchar(255) DEFAULT NULL COMMENT '销量',
  `commodity_main` varchar(500) DEFAULT NULL COMMENT '商品主题',
  `commodity_thumbnail` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `commodity_attachimg` varchar(255) DEFAULT NULL COMMENT '附图',
  `commodity_content` varchar(255) DEFAULT NULL COMMENT '商品介绍',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_commodity
-- ----------------------------
INSERT INTO `shop_commodity` VALUES ('1', '小米6X', '1199.00', '小米', '1008', '1499.00', '9998', '[{\"id\":1, \"url\":\"https://i8.mifile.cn/a1/pms_1527144859.25489991!560x560.jpg\"}]', 'https://i8.mifile.cn/a1/pms_1527144859.25489991!560x560.jpg', null, '全系感恩回馈价「4GB+32GB最高省300元」「4GB+64GB／6GB+128GB立省250元」 「6GB+64GB立省200元」\r\n                      轻薄美观的拍照手机 / 前置2000万“治愈系”自拍 / 后置2000万 AI双摄 / 标配骁龙660 AIE处理器\r\n                  ');
INSERT INTO `shop_commodity` VALUES ('2', '小米8 青春版', '1399.00', '小米', '21213', '1399.00', '25452', '[{\"id\":\"1\",\"url\":\"https://i8.mifile.cn/a1/pms_1537323963.1278763!560x560.jpg\"},{\"id\":\"2\",\"url\":\"https://i8.mifile.cn/a1/pms_1537323963.2662931!560x560.jpg\"},{\"id\":\"3\",\"url\":\"https://i8.mifile.cn/a1/pms_1537323963.12643245!560x560.jpg\"},{\"id\":\"4\",\"url\":\"https://i8.mifile.cn/a1/pms_1537323963.40512928!560x560.jpg\"}]', 'https://i8.mifile.cn/a1/pms_1537323963.1278763!560x560.jpg', null, '潮流镜面渐变色 / 2400万自拍旗舰 / 7.5mm超薄机身 / 6.26\"小刘海全面屏 / AI裸妆美颜 / 骁龙660AIE处理器');
INSERT INTO `shop_commodity` VALUES ('3', '小米8', '2499.00', '小米', '278', '2699.00', '968', '[{\"id\":\"1\",\"url\":\"https://i8.mifile.cn/a1/pms_1527735134.03584233!560x560.jpg\"},{\"id\":\"2\",\"url\":\"https://i8.mifile.cn/a1/pms_1527735134.08232431!560x560.jpg\"},{\"id\":\"3\",\"url\":\"https://i8.mifile.cn/a1/pms_1527735134.24873718!560x560.jpg\"},{\"id\":\"4\",\"url\":\"https://i8.mifile.cn/a1/pms_1527735134.01919050!560x560.jpg\"}]', 'https://i8.mifile.cn/a1/pms_1527735134.03584233!560x560.jpg', null, '全球首款双频GPS / 骁龙845处理器 / 红外人脸解锁 / AI变焦双摄 / 三星 AMOLED 屏');
INSERT INTO `shop_commodity` VALUES ('4', '小米MIX 2S', '2899.00', '小米', '4500', '3299.00', '3400', '[{\"id\":\"1\",\"url\":\"https://i8.mifile.cn/a1/pms_1522033929.93635904!560x560.jpg\"}]', 'https://i8.mifile.cn/a1/pms_1522033929.93635904!560x560.jpg', null, '陶瓷机身 手机中的艺术品 / 搭载高通骁龙845 年度旗舰处理器 / AI超感光双摄，DxO百分相机 / 高效 Qi 无线充电');
INSERT INTO `shop_commodity` VALUES ('5', '小米8 SE', '1699.00', '小米', '3200', '1799.00', '1890', '[{\"id\":\"1\",\"url\":\"https://i8.mifile.cn/a1/pms_1527684986.69698543!560x560.jpg\"},\r\n[{\"id\":\"2\",\"url\":\"https://i8.mifile.cn/a1/pms_1527684986.76121192!560x560.jpg\"},\r\n[{\"id\":\"3\",\"url\":\"https://i8.mifile.cn/a1/pms_1527684986.6891825!560x560.jpg\"},\r\n[{\"id\":\"4\",\"url\":\"https://i8.mifile.cn/a1/pms_1527684986.69828101!560x560.jpg\"}]', 'https://i8.mifile.cn/a1/pms_1527684986.69698543!560x560.jpg', null, '三星 AMOLED 全面屏 小屏旗舰 / 骁龙710处理器 / AI 超感光双摄 / 前置2000万柔光自拍');
INSERT INTO `shop_commodity` VALUES ('6', '黑鲨游戏手机', '3199.00', '小米', '5600', '3499.00', '3400', '[{\"id\":\"1\",\"url\":\"https://i8.mifile.cn/a1/pms_1524032283.82393376!560x560.jpg\"}]', 'https://i8.mifile.cn/a1/pms_1524032283.82393376!560x560.jpg', null, '液冷散热 / 独立图像处理芯片 / 一键游戏模式 / 骁龙845处理器 / 18:9全面屏 / 前后2000万摄像头');
INSERT INTO `shop_commodity` VALUES ('7', '坚果 Pro 2S', '1798.00', '锤子', '20000', '1798.00', '32653', '[{\"id\":1,\"url\":\"https://resource.smartisan.com/resource/b07b9765e272f866da6acda4ee107d88.png?x-oss-process=image/resize,w_659/format,webp\"}]', 'https://resource.smartisan.com/resource/b07b9765e272f866da6acda4ee107d88.png?x-oss-process=image/resize,w_659/format,webp', null, '双系统，无限屏，骁龙 ™ 710 处理器 · 前置 1600 万像素摄像头 · 6.01 英寸全高清全面屏 · AI 通话降噪 · 人脸解锁 + 指纹解锁');
INSERT INTO `shop_commodity` VALUES ('8', '坚果 R1', '2999.00', '锤子', '30000', '2999.00', '32102', '[{\"id\":1,\"url\":\"https://resource.smartisan.com/resource/06c2253354096f5e9ebf0616f1af2086.png?x-oss-process=image/resize,w_659/format,webp\"}]', 'https://resource.smartisan.com/resource/06c2253354096f5e9ebf0616f1af2086.png?x-oss-process=image/resize,w_659/format,webp', null, '骁龙 845 处理器 · 光学防抖双摄像头 · 6.17 英寸压力感应屏幕 · 10W快速无线充电功能');
INSERT INTO `shop_commodity` VALUES ('9', '坚果 Pro 2', '1799.00', '锤子', '25266', '1799.00', '31516', '[{\"id\":1,\"url\":\"https://resource.smartisan.com/resource/c71ce2297b362f415f1e74d56d867aed.png?x-oss-process=image/resize,w_659/format,webp\"}]', 'https://resource.smartisan.com/resource/c71ce2297b362f415f1e74d56d867aed.png?x-oss-process=image/resize,w_659/format,webp', null, '骁龙 ™ 660 处理器 · 1200 万 + 500 万像素双摄像头 · 3500mAh 大电池 · 18W 快速充电 · 人脸解锁 + 指纹解锁');
INSERT INTO `shop_commodity` VALUES ('10', '坚果 3', '1599.00', '锤子', '15314', '1599.00', '26265', '[{\"id\":1,\"url\":\"https://resource.smartisan.com/resource/13e91511f6ba3227ca5378fd2e93c54b.png?x-oss-process=image/resize,w_659/format,webp\"}]', 'https://resource.smartisan.com/resource/13e91511f6ba3227ca5378fd2e93c54b.png?x-oss-process=image/resize,w_659/format,webp', null, '三面无边框 Almost，4000mAh 超巨型电池，双 1300 万诚实双摄，双面玻璃 + 金属中框，人脸解锁 + 指纹支付');
INSERT INTO `shop_commodity` VALUES ('11', '荣耀畅玩8C', '1099.00', '华为', '999', '1099.00', '1005', '[{\"id\":\"1\",\"url\":\"https://res.vmallres.com/pimages//product/6901443259571/800_800_1538278169451mp.png\"},{\"id\":\"2\",\"url\":\"https://res.vmallres.com/pimages//product/6901443259571/group//800_800_1538299156732.png\"},{\"id\":\"3\",\"url\":\"https://res.vmallres.com/pimages//product/6901443259571/group//800_800_1538299163016.png\"}]', 'https://res0.vmallres.com/pimages//product/6901443259588/428_428_1538278298963mp.png', null, '荣耀畅玩8C 全网通标配版 4GB+32GB（幻夜黑）');
INSERT INTO `shop_commodity` VALUES ('12', '荣耀10', '2299.00', '华为', '999', '2599.00', '999', '[{\"id\":\"1\",\"url\":\"https://res.vmallres.com/pimages//product/6901443232413/group//800_800_1535358140458.jpg\"},{\"id\":\"2\",\"url\":\"https://res.vmallres.com/pimages//product/6901443232413/group//800_800_1535358145378.jpg\"},{\"id\":\"3\",\"url\":\"https://res.vmallres.com/pimages//product/6901443232413/group//800_800_1535358149095.jpg\"}]', 'https://res0.vmallres.com/pimages//frontLocation/content/4520161/1539566459947.png', null, '荣耀10 GT游戏加速 AIS手持夜景 AI摄影手机 6GB+64GB 幻影蓝 全网通 双卡双待 荣耀10GT');
INSERT INTO `shop_commodity` VALUES ('13', '荣耀Play', '1799.00', '华为', '899', '1999.00', '886', '[{\"id\":\"1\",\"url\":\"https://res.vmallres.com/pimages//product/6901443242641/group//800_800_1527925619010.jpg\"},{\"id\":\"2\",\"url\":\"https://res.vmallres.com/pimages//product/6901443242641/group//800_800_1527925620829.jpg\"},{\"id\":\"3\",\"url\":\"https://res.vmallres.com/pimages//product/6901443242641/group//800_800_1527925621679.jpg\"}]', 'https://res0.vmallres.com/pimages//frontLocation/content/1268791/1539427302857.png', null, '荣耀Play 全网通 4GB+64GB 幻夜黑 GT游戏加速 AI芯片 全面屏游戏手机 双卡双待');
INSERT INTO `shop_commodity` VALUES ('14', 'Note9', '8999.00', '三星', '2101', '11210.00', '4512', '[{\"id\":2, \"url\":\"http://res.samsungeshop.com.cn/resources/2018/9/11/15366540528318522_570X570.jpg\"}]', 'http://res.samsungeshop.com.cn/resources/2018/9/11/15366540528318522_570X570.jpg', null, '智能 S Pen、海量存储8G+512G、4000mAh大容量电池');
INSERT INTO `shop_commodity` VALUES ('15', '盖乐世 A9 Star Lite', '1999.00', '三星', '9564', '2499.00', '8954', '[{\"id\":2, \"url\":\"http://res.samsungeshop.com.cn/resources/2018/6/2/15278704537512520_570X570.jpg\"}]', 'http://res.samsungeshop.com.cn/resources/2018/6/2/15278704537512520_570X570.jpg', null, '身临其境 多彩世界、前置2400万像素 “亮”丽美颜、双摄再现 深邃之美');
INSERT INTO `shop_commodity` VALUES ('16', 'Note8', '6988.00', '三星', '3', '8599.00', '8957', '[{\"id\":2, \"url\":\"http://res.samsungeshop.com.cn/resources/2017/9/25/15063262024762790_570X570.jpg\"}]', 'http://res.samsungeshop.com.cn/resources/2017/9/25/15063262024762790_570X570.jpg', null, '6GB大运行内存、智能双摄、IP68级防尘防水、息屏提醒');
INSERT INTO `shop_commodity` VALUES ('18', 'iphone8', '5099.00', '苹果', '2123', '5099.00', '5566', '[{\"id\":1, \"url\":\"https://store.storeimages.cdn-apple.com/8755/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone8/plus/iphone8-plus-select-2017?wid=234&hei=330&fmt=png-alpha&.v=1503618522714\"}]', 'https://store.storeimages.cdn-apple.com/8755/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone8/plus/iphone8-plus-select-2017?wid=234&hei=330&fmt=png-alpha&.v=1503618522714', null, '5.5 英寸显示屏');
INSERT INTO `shop_commodity` VALUES ('19', 'iphonexs', '8699.00', '苹果', '8699', '12222.00', '212', '[{\"id\":1, \"url\":\"https://store.storeimages.cdn-apple.com/8755/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/xs/iphone-xs-max-select-2018-group?wid=289&hei=491&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1536616752354\"}]', 'https://store.storeimages.cdn-apple.com/8755/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/xs/iphone-xs-max-select-2018-group?wid=289&hei=491&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1536616752354', null, '\r\n突破性的双镜头系统。 这款在全世界广受欢迎的相机，正在将摄影领入新纪元。创新的感光元件、图像信号处理器和神经网络引擎默契协作，让你拍出的照片一张比一张出彩');
INSERT INTO `shop_commodity` VALUES ('20', 'iphonexr', '6499.00', '苹果', '6499', '1212.00', '331', '[{\"id\":1, \"url\":\"https://store.storeimages.cdn-apple.com/8755/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/xr/iphone-xr-select-static-201809_GEO_CN?wid=756&hei=472&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1536451409425\"}]', 'https://store.storeimages.cdn-apple.com/8755/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/xr/iphone-xr-select-static-201809_GEO_CN?wid=756&hei=472&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1536451409425', null, '全新 Liquid 视网膜显示屏，是 iPhone 迄今最先进的 LCD 屏。此外，更有识别速度进一步提升的面容 ID、iPhone 史上最智能最强大的芯片，以及支持景深控制功能的突破性摄像头系统。iPhone XR，怎么看，都满是亮点。');
INSERT INTO `shop_commodity` VALUES ('21', 'OnePlus 6', '3199.00', '一加', '3200', '3199.00', '7897', '[{\"id\":1, \"url\":\"https://image01.oneplus.cn/shop/201807/05/1921/da71f98cd8531fbf83e1ec2b868c10d9.jpg\"}]', 'https://image01.oneplus.cn/shop/201807/05/1921/da71f98cd8531fbf83e1ec2b868c10d9.jpg', null, '全新 OnePlus 6 搭载骁龙™ 845，性能比上一代提升 30%。最高 8GB 四通道 LPDDR4X 大内存+256GB UFS2.1 双通道超大闪存*，App 运行更流畅。令人羡慕的强悍配置之外，还对 50 余款热门游戏进行特别优化，让你的游戏体验，更畅快，更尽兴');
INSERT INTO `shop_commodity` VALUES ('22', '一加OnePlus 5', '2199.00', '一加', '21992', '2199.00', '12342', '[{\"id\":1,\"url\":\"https://image01.oneplus.cn/ebp/201706/17/1202/99221ac82845113af2d037955adcf04a.png\"}]', 'https://img14.360buyimg.com/n0/jfs/t26602/337/711702057/94056/24431f7b/5bb70e47N15590c4f.jpg', null, '用过，才知道什么叫流畅\r\n月岩灰搭载 64 GB /128GB 存储，薄荷金搭载 64GB 存储，星辰黑搭载 128 GB 存储，均为 UFS 2.1 双通道存储。相比 UFS2.0，UFS 2.1 的带宽速度快了将近一倍。');

-- ----------------------------
-- Table structure for shop_infoimg
-- ----------------------------
DROP TABLE IF EXISTS `shop_infoimg`;
CREATE TABLE `shop_infoimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infoimg_other` varchar(255) DEFAULT NULL COMMENT '商品详情图',
  `infoimg_shopid` int(11) DEFAULT NULL COMMENT '关联主表的id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_infoimg
-- ----------------------------

-- ----------------------------
-- Table structure for shop_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE `shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(11) DEFAULT NULL COMMENT '用户名',
  `user_pwd` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `user_nicname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `user_addres` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `user_icons` varchar(255) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user
-- ----------------------------
INSERT INTO `shop_user` VALUES ('9', '15155145354', 'e10adc3949ba59abbe56e057f20f883e', 'bmy', null, null);
INSERT INTO `shop_user` VALUES ('11', '18305520337', 'fc51c4612ee06de1b3a9c9223f465434', 'bmy', null, null);
