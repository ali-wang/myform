/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : myform

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2019-11-16 18:34:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '超级管理员', '1', '');
INSERT INTO `auth_group` VALUES ('2', '客户管理', '1', '');
INSERT INTO `auth_group` VALUES ('3', '推广管理', '1', '');
INSERT INTO `auth_group` VALUES ('4', '减肥', '1', '');

-- ----------------------------
-- Table structure for `auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_access`;
CREATE TABLE `auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_access
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `duanmoney`
-- ----------------------------
DROP TABLE IF EXISTS `duanmoney`;
CREATE TABLE `duanmoney` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `writedress` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ipdress` varchar(255) DEFAULT NULL,
  `local_ref` varchar(200) DEFAULT '',
  `utm_medium` varchar(255) DEFAULT NULL COMMENT '计划',
  `utm_content` varchar(255) DEFAULT NULL COMMENT '单元',
  `utm_term` varchar(255) DEFAULT NULL COMMENT '关键字',
  `use_id` int(11) DEFAULT NULL,
  `local_url` varchar(255) DEFAULT '',
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=504 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duanmoney
-- ----------------------------
INSERT INTO `duanmoney` VALUES ('212', '凌金凤', '15946252196', '黑龙江省-齐齐哈尔市-龙沙区', '新立街造纸厂长远小区8号楼二单元201', '', '113.6.45.187', '黑龙江省-齐齐哈尔市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570969482');
INSERT INTO `duanmoney` VALUES ('213', '郭竟寰', '13970700808', '江西省-赣州市-章贡区', '江州大道20号口名鹭江新.16栋901室', '', '117.136.123.47', '-----', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570969583');
INSERT INTO `duanmoney` VALUES ('185', '测9', '15478960121', '河北省-石家庄市-长安区', '佛挡杀佛铁', '', '1.87.203.24', '陕西省-西安市', '', '', '', '', '33', 'http://jiaoyu.xaxing04.com/jiaoyu6/form/index.html', '1570799660');
INSERT INTO `duanmoney` VALUES ('275', '王春蕾', '15545510586', '黑龙江省-哈尔滨市-道里区', '黑龙江省绥化市北林区阳光地下商场B70', '中学', '113.5.4.215', '黑龙江省-哈尔滨市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571471133');
INSERT INTO `duanmoney` VALUES ('187', '测是', '15915915916', '河南省-郑州市-中原区', '不牛逼牛逼牛逼牛逼牛逼', '', '123.139.168.18', '陕西省-汉中市', '', '', '', '', '32', 'http://127.0.0.1:8020/3421/form/index.html', '1570848217');
INSERT INTO `duanmoney` VALUES ('277', '王羿涵', '15862196705', '江苏省-徐州市-丰县', '常店镇常店街', '小学', '223.107.4.91', '江苏省-徐州市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571471796');
INSERT INTO `duanmoney` VALUES ('278', '王清', '18840267137', '陕西省-西安市-新城区', '陕西省南郑县阳春镇阳春桥开发区', '初中', '36.23.249.180', '浙江省-杭州市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571471961');
INSERT INTO `duanmoney` VALUES ('156', '辛雨玲', '15126649285', '云南省-昭通市-绥江县', '五福街', null, '183.225.75.148', '云南省-昭通市', '', '', '', '', '13', 'http://jiaoyu2.hefeiys.top/jiaoyu1/', '1569579841');
INSERT INTO `duanmoney` VALUES ('40', '羊富池', '15391704757', '湖北省-襄阳市-谷城县', '新疆维吾尔自治区和田地区和田县巴格其镇墩艾日克村', null, '223.104.247.195', '-----', '一年级的学生作业', '提高cj', '提高', '一年级学生怎样提高学习成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E4%B8%80%E5%B9%B4%E7%BA%A7%E5%AD%A6%E7%94%9F%E6%80%8E%E6%A0%B7%E6%8F%90%E9%AB%98%E5%AD%A6%E4%B9%A0%E6%88%90%E7%BB%A9&e_creative=31780783685&e_keywordi', '1567166052');
INSERT INTO `duanmoney` VALUES ('41', '许浦', '18749852356', '江西省-吉安市-井冈山市', '江西省赣州市兴国县均村乡东山村', null, '42.101.64.103', '黑龙江省-哈尔滨市', '孩子成绩可以但是不会考试', '提高cj', '怎么办', '孩子成绩差怎么办', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%80%8E%E4%B9%88%E5%8A%9E&utm_term=%E5%AD%A9%E5%AD%90%E6%88%90%E7%BB%A9%E5%B7%AE%E6%80%8E%E4%B9%88%E5%8A%9E&e_creative=31780783387&e_keywordid=138066635328&e_keywordid2=13806663', '1567167048');
INSERT INTO `duanmoney` VALUES ('42', '归宿', '13458239086', null, '考栩十瘸', null, '117.136.52.111', '湖北省-武汉市', '怎样学习成绩才能变好', '提高cj', '提高', '如何提高学习成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E5%AD%A6%E4%B9%A0%E6%88%90%E7%BB%A9&e_creative=31792851391&e_keywordid=138067955676&e_keywordid2=138067955676', '1567167357');
INSERT INTO `duanmoney` VALUES ('43', '卜钱', '18217520899', '天津市-天津市郊县-', '山东省聊城市莘县朝城镇孙花园村', null, '223.74.218.157', '广东省-潮州市', '能力提升专家讲座', '提高cj', '提高', '怎样提高学习能力', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E6%80%8E%E6%A0%B7%E6%8F%90%E9%AB%98%E5%AD%A6%E4%B9%A0%E8%83%BD%E5%8A%9B&e_creative=31780783692&e_keywordid=138066638048&e_keywordid2=138066638048', '1567167623');
INSERT INTO `duanmoney` VALUES ('44', '屠水', '13146279267', '黑龙江省-七台河市-勃利县', '浙江省丽水市云和县元和街道包山村', null, '120.239.146.212', '广东省-湛江市', '暑假英语怎么提高', '提高cj', '提高', '如何提高英语', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E8%8B%B1%E8%AF%AD&e_creative=31780783685&e_keywordid=138066656851&e_keywordid2=138066656851', '1567167937');
INSERT INTO `duanmoney` VALUES ('45', '罗艳', '15012293406', '云南省-昭通市-威信县', '罗坎', null, '183.225.79.103', '云南省-昭通市', '', '小学补习', '补课', '小学补课', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%B0%8F%E5%AD%A6%E8%A1%A5%E4%B9%A0&utm_content=%E8%A1%A5%E8%AF%BE&utm_term=%E5%B0%8F%E5%AD%A6%E8%A1%A5%E8%AF%BE&e_matchtype=2&e_creative=31891623711&e_adposition=mt2&e_pagenum=1&e_keywordid=13895457', '1567168865');
INSERT INTO `duanmoney` VALUES ('46', '曾月静', '18389671475', null, '海南文昌外国语学院红楼', null, '117.136.13.109', '海南省-海口市', '', '提高cj', '方法', '如何学习英语的方法', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%96%B9%E6%B3%95&utm_term=%E5%A6%82%E4%BD%95%E5%AD%A6%E4%B9%A0%E8%8B%B1%E8%AF%AD%E7%9A%84%E6%96%B9%E6%B3%95&e_creative=31846447009&e_keywordid=138066638535&e_keywordid2=13806663', '1567170208');
INSERT INTO `duanmoney` VALUES ('47', '张浩', '15029252629', null, '河南省', null, '117.136.86.40', '陕西省-西安市', '初中学习方法总结', '初中成绩', '初中方法', '初中学习方法总结', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E6%88%90%E7%BB%A9&utm_content=%E5%88%9D%E4%B8%AD%E6%96%B9%E6%B3%95&utm_term=%E5%88%9D%E4%B8%AD%E5%AD%A6%E4%B9%A0%E6%96%B9%E6%B3%95%E6%80%BB%E7%BB%93&e_matchtype=1&e_creative=3189165', '1567171212');
INSERT INTO `duanmoney` VALUES ('48', '侯波', '13975193952', '湖南省-长沙市-雨花区', '香樟路528号2栋310号', null, '58.20.64.95', '湖南省-长沙市', '中考多少成绩多少', '提高cj', '提高', '中考如何提高成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E4%B8%AD%E8%80%83%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_creative=31846447005&e_keywordid=138066654928&e_keywordid2=138066654928', '1567171351');
INSERT INTO `duanmoney` VALUES ('49', '董炳春', '13439977973', '北京市-北京市市辖区-顺义区', '北小营镇西府村西府市场南临5号', null, '140.255.195.81', '山东省-滨州市', '', '提高cj', '提高', '数学成绩怎样提高', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E6%95%B0%E5%AD%A6%E6%88%90%E7%BB%A9%E6%80%8E%E6%A0%B7%E6%8F%90%E9%AB%98&e_creative=31846447005&e_keywordid=138066637955&e_keywordid2=138066637955', '1567173098');
INSERT INTO `duanmoney` VALUES ('50', '宋鑫怡', '15959925363', null, '新口村', null, '59.59.191.58', '福建省-南平市', '', '小学补习', '补课', '小学补课网站', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%B0%8F%E5%AD%A6%E8%A1%A5%E4%B9%A0&utm_content=%E8%A1%A5%E8%AF%BE&utm_term=%E5%B0%8F%E5%AD%A6%E8%A1%A5%E8%AF%BE%E7%BD%91%E7%AB%99&e_matchtype=2&e_creative=31891623709&e_adposition=mt1&e_pagenum=1&e_', '1567173693');
INSERT INTO `duanmoney` VALUES ('51', '苏研', '15277659723', '广西壮族自治区-百色市-西林县', '古城路', null, '117.136.97.168', '广西壮族自治区-南宁市', '要怎样才能学好英语', '提高cj', '方法', '怎样学好英语的方法', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%96%B9%E6%B3%95&utm_term=%E6%80%8E%E6%A0%B7%E5%AD%A6%E5%A5%BD%E8%8B%B1%E8%AF%AD%E7%9A%84%E6%96%B9%E6%B3%95&e_creative=31846447009&e_keywordid=138066638440&e_keywordid2=13806663', '1567174186');
INSERT INTO `duanmoney` VALUES ('52', '布子牛沙', '18280638616', '四川省-凉山彝族自治州-布拖县', '特木里镇普提上街16号', null, '139.206.0.97', '四川省-凉山彝族自治州', '怎么才能让娃儿成绩好呢', '提高cj', '提高', '怎样能让孩子成绩好', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E6%80%8E%E6%A0%B7%E8%83%BD%E8%AE%A9%E5%AD%A9%E5%AD%90%E6%88%90%E7%BB%A9%E5%A5%BD&e_creative=31780783690&e_keywordid=138066656749&e_keywordid2=13806665', '1567174546');
INSERT INTO `duanmoney` VALUES ('53', '蒋城娜', '13874751191', '湖南省-永州市-新田县', '商务产业园转114', null, '42.49.86.67', '湖南省-永州市', '初二成绩下滑到初三还能上去吗', '提高cj', '怎么办', '初二成绩下滑怎么办', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%80%8E%E4%B9%88%E5%8A%9E&utm_term=%E5%88%9D%E4%BA%8C%E6%88%90%E7%BB%A9%E4%B8%8B%E6%BB%91%E6%80%8E%E4%B9%88%E5%8A%9E&e_creative=31780783384&e_keywordid=138066635339&e_keywordid2', '1567174997');
INSERT INTO `duanmoney` VALUES ('54', '王向茸', '18393110228', null, '靖远黄河边', null, '27.226.25.122', '甘肃省-白银市', '', '初中补习', '语文补习', '二年级语文同步补习', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E8%A1%A5%E4%B9%A0&utm_content=%E8%AF%AD%E6%96%87%E8%A1%A5%E4%B9%A0&utm_term=%E4%BA%8C%E5%B9%B4%E7%BA%A7%E8%AF%AD%E6%96%87%E5%90%8C%E6%AD%A5%E8%A1%A5%E4%B9%A0&e_matchtype=2&e_creativ', '1567175033');
INSERT INTO `duanmoney` VALUES ('55', '祁贺', '18284302580', '四川省-广安市-邻水县', '山西省运城市盐湖区龙居镇小张坞村', null, '112.98.12.66', '黑龙江省-齐齐哈尔市', '西安中考成绩时间', '提高cj', '提高', '中考如何提高成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E4%B8%AD%E8%80%83%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_creative=31780783685&e_keywordid=138066654928&e_keywordid2=138066654928', '1567175290');
INSERT INTO `duanmoney` VALUES ('56', '佟童', '13756274332', '吉林省-长春市-', '高新技术开发区，汉森香榭里', null, '117.136.58.89', '吉林省-长春市', '尖子生学习方法', '提高cj', '提高', '怎样提高学习成绩和学习方法', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E6%80%8E%E6%A0%B7%E6%8F%90%E9%AB%98%E5%AD%A6%E4%B9%A0%E6%88%90%E7%BB%A9%E5%92%8C%E5%AD%A6%E4%B9%A0%E6%96%B9%E6%B3%95&e_creative=31846447005&e_keywordi', '1567181362');
INSERT INTO `duanmoney` VALUES ('57', '李康平', '15523729311', '重庆市-重庆市市辖区-万州区', '天湖美郡13号楼', null, '123.147.250.47', '重庆市-重庆市', '初中生的学习方法', '提高cj', '提高', '提高成绩的学习方法', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9%E7%9A%84%E5%AD%A6%E4%B9%A0%E6%96%B9%E6%B3%95&e_creative=31792851391&e_keywordid=138066638143&e_keywordid2=13806663', '1567182298');
INSERT INTO `duanmoney` VALUES ('58', '裘後', '13848624840', '云南省-怒江傈僳族自治州-兰坪白族普米族自治县', '河北省邢台市南和县河郭乡南豆村村', null, '183.2.235.31', '广东省-佛山市', '高考不理想', '提高cj', '怎么办', '高考成绩不好怎么办', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%80%8E%E4%B9%88%E5%8A%9E&utm_term=%E9%AB%98%E8%80%83%E6%88%90%E7%BB%A9%E4%B8%8D%E5%A5%BD%E6%80%8E%E4%B9%88%E5%8A%9E&e_creative=31846447000&e_keywordid=138066635341&e_keywordid2', '1567199145');
INSERT INTO `duanmoney` VALUES ('59', '胡伦庞', '18734983610', '澳门特别行政区-风顺堂区-', '福建省福州市晋安区鼓山镇鼓一村', null, '117.136.45.67', '江苏省-南京市', '洛阳中考一模成绩', '提高cj', '提高', '中考如何提高成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E4%B8%AD%E8%80%83%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_creative=31780783692&e_keywordid=138066654928&e_keywordid2=138066654928', '1567200638');
INSERT INTO `duanmoney` VALUES ('60', '逄胡', '13166613986', '上海市-上海市郊县-', '新疆维吾尔自治区喀什地区伽师县克孜勒苏乡吾斯坦布依村', null, '110.155.239.96', '新疆维吾尔自治区-和田地区', 'gct数学如何提高', '提高cj', '提高', '提高学习成绩的方法', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E6%8F%90%E9%AB%98%E5%AD%A6%E4%B9%A0%E6%88%90%E7%BB%A9%E7%9A%84%E6%96%B9%E6%B3%95&e_creative=31780783692&e_keywordid=138066654979&e_keywordid2=13806665', '1567200904');
INSERT INTO `duanmoney` VALUES ('61', '杭宋', '13945156373', '青海省-西宁市-湟中县', '湖南省娄底市新化县油溪乡油溪村', null, '115.52.169.17', '河南省-南阳市', '初中文凭怎么提升', '提高cj', '提高', '初中成绩怎么提高', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%88%9D%E4%B8%AD%E6%88%90%E7%BB%A9%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98&e_creative=31780783685&e_keywordid=138066637952&e_keywordid2=138066637952', '1567202336');
INSERT INTO `duanmoney` VALUES ('62', '汪友', '18647316728', null, '乌海市海南区和谐小区4号楼2单元502', null, '220.195.67.86', '-----', '福建初中孩子学习不好怎么留级', '提高cj', '提高', '初中孩子成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%88%9D%E4%B8%AD%E5%AD%A9%E5%AD%90%E6%88%90%E7%BB%A9&e_creative=31846447005&e_keywordid=138066668192&e_keywordid2=138066668192', '1567202433');
INSERT INTO `duanmoney` VALUES ('63', '刘磊', '15053871769', null, '山东省肥城市石横镇教室公寓1号楼3单元4层西户', null, '111.17.52.140', '山东省-泰安市', '小学成绩不好初中会好吗', '提高cj', '提高', '初中孩子成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%88%9D%E4%B8%AD%E5%AD%A9%E5%AD%90%E6%88%90%E7%BB%A9&e_creative=31846447005&e_keywordid=138066668192&e_keywordid2=138066668192', '1567202546');
INSERT INTO `duanmoney` VALUES ('64', '王汉荣', '13574890314', '湖南省-长沙市-浏阳市', '达浒镇象形村', null, '120.228.149.6', '湖南省-长沙市', '初二怎样提高成绩', '提高成绩方法', '怎样提高', '八年级怎样提高成绩', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9%E6%96%B9%E6%B3%95&utm_content=%E6%80%8E%E6%A0%B7%E6%8F%90%E9%AB%98&utm_term=%E5%85%AB%E5%B9%B4%E7%BA%A7%E6%80%8E%E6%A0%B7%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_mat', '1567205117');
INSERT INTO `duanmoney` VALUES ('65', '董春阳', '18243507505', '吉林省-通化市-梅河口市', '梅河口市天怡花园1064栋聚金白酒商店', null, '218.92.226.233', '江苏省-盐城市', '补习初二语文', '初中补习', '语文补习', '语文补习初二', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E8%A1%A5%E4%B9%A0&utm_content=%E8%AF%AD%E6%96%87%E8%A1%A5%E4%B9%A0&utm_term=%E8%AF%AD%E6%96%87%E8%A1%A5%E4%B9%A0%E5%88%9D%E4%BA%8C&e_matchtype=1&e_creative=31891658536&e_adposition=', '1567205250');
INSERT INTO `duanmoney` VALUES ('66', '单寿结', '13868560782', '辽宁省-朝阳市-北票市', '河北省保定市高碑店市辛桥镇董家营村村', null, '39.180.31.57', '浙江省-宁波市', '如何快速提高写字水平', '提高cj', '提高', '如何快速提高学习', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%A6%82%E4%BD%95%E5%BF%AB%E9%80%9F%E6%8F%90%E9%AB%98%E5%AD%A6%E4%B9%A0&e_creative=31780783692&e_keywordid=138066641970&e_keywordid2=138066641970', '1567206141');
INSERT INTO `duanmoney` VALUES ('67', '单寿结', '13868560782', '辽宁省-朝阳市-北票市', '河北省保定市高碑店市辛桥镇董家营村村', null, '39.180.31.57', '浙江省-宁波市', '如何快速提高写字水平', '提高cj', '提高', '如何快速提高学习', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%A6%82%E4%BD%95%E5%BF%AB%E9%80%9F%E6%8F%90%E9%AB%98%E5%AD%A6%E4%B9%A0&e_creative=31780783692&e_keywordid=138066641970&e_keywordid2=138066641970', '1567206141');
INSERT INTO `duanmoney` VALUES ('68', '曾文艳', '15262138865', '江苏省-徐州市-睢宁县', '千百度鞋业有限公司', null, '223.107.17.107', '江苏省-徐州市', '小孩子不爱学习怎么办', '提高成绩方法', '怎么提高', '小孩子不爱学习怎么办', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9%E6%96%B9%E6%B3%95&utm_content=%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98&utm_term=%E5%B0%8F%E5%AD%A9%E5%AD%90%E4%B8%8D%E7%88%B1%E5%AD%A6%E4%B9%A0%E6%80%8E%E4%B9%88%E5%8A', '1567210108');
INSERT INTO `duanmoney` VALUES ('69', '平德才', '15962711620', null, '江苏如东河口镇于栟路016号', null, '112.23.142.145', '江苏省-南通市', '初一成绩多少正常', '提高cj', '提高', '初一如何提高成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%88%9D%E4%B8%80%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_creative=31846447005&e_keywordid=138066668156&e_keywordid2=138066668156', '1567212519');
INSERT INTO `duanmoney` VALUES ('70', '杨如有', '13362958048', null, '浙江省金华市婺城区旌孝街   游园街小区', null, '36.23.97.33', '浙江省-杭州市', '', '提高cj', '方法', '语文学习的方法', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%96%B9%E6%B3%95&utm_term=%E8%AF%AD%E6%96%87%E5%AD%A6%E4%B9%A0%E7%9A%84%E6%96%B9%E6%B3%95&e_creative=31846447009&e_keywordid=138066638587&e_keywordid2=138066638587', '1567214733');
INSERT INTO `duanmoney` VALUES ('71', '张茹涵', '13965593021', null, '太和', null, '114.96.31.36', '安徽省-合肥市', '', '初中补习', '语文补习', '语文补习初二', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E8%A1%A5%E4%B9%A0&utm_content=%E8%AF%AD%E6%96%87%E8%A1%A5%E4%B9%A0&utm_term=%E8%AF%AD%E6%96%87%E8%A1%A5%E4%B9%A0%E5%88%9D%E4%BA%8C&e_matchtype=2&e_creative=31891658538&e_adposition=', '1567215096');
INSERT INTO `duanmoney` VALUES ('72', '崔田超', '18210902455', '陕西省-西安市-雁塔区', '西北工业大学附属小学', null, '123.139.69.234', '陕西省-汉中市', '数学成绩怎样提高', '提高流量', '推广单元_1', '数学成绩怎么提高', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98%E6%B5%81%E9%87%8F&utm_content=%E6%8E%A8%E5%B9%BF%E5%8D%95%E5%85%83_1&utm_term=%E6%95%B0%E5%AD%A6%E6%88%90%E7%BB%A9%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98&e_creative=31892293421&e_keywordid=1389623', '1567215117');
INSERT INTO `duanmoney` VALUES ('73', '于米提', '13809952950', '新疆维吾尔自治区-乌鲁木齐市-天山区', '建银小区。', null, '223.104.30.180', '新疆维吾尔自治区-乌鲁木齐市', '初中军事化管理学校', '初中补习', '培训', '初中物理培训学校', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E8%A1%A5%E4%B9%A0&utm_content=%E5%9F%B9%E8%AE%AD&utm_term=%E5%88%9D%E4%B8%AD%E7%89%A9%E7%90%86%E5%9F%B9%E8%AE%AD%E5%AD%A6%E6%A0%A1&e_matchtype=2&e_creative=31891656321&e_adposition=', '1567215308');
INSERT INTO `duanmoney` VALUES ('74', '陈静', '18655250869', null, '河南商丘虞城', null, '61.158.152.87', '河南省-郑州市', '', '提高cj', '提高', '孩子学习成绩太差', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%AD%A9%E5%AD%90%E5%AD%A6%E4%B9%A0%E6%88%90%E7%BB%A9%E5%A4%AA%E5%B7%AE&e_creative=31846447005&e_keywordid=138066656719&e_keywordid2=138066656719', '1567218184');
INSERT INTO `duanmoney` VALUES ('75', '测试', '13312345678', '广东省-广州市-白云区', '测试888', null, '113.99.18.226', '广东省-广州市', '', '', '', '', '10', 'http://ffv.xzy3.cn/', '1567303613');
INSERT INTO `duanmoney` VALUES ('77', '张丙群', '18153259786', null, '山东省青岛市莱西市店埠镇后水口村', null, '223.79.8.31', '山东省-青岛市', '', '', '', '', '15', 'http://ffv.xzy3.cn/', '1567306695');
INSERT INTO `duanmoney` VALUES ('81', '测试', '15679065380', null, '西安', null, '117.136.87.23', '-----', '', '初中成绩', '怎么办', '12岁孩子成绩不好怎么办', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E6%88%90%E7%BB%A9&utm_content=%E6%80%8E%E4%B9%88%E5%8A%9E&utm_term=12%E5%B2%81%E5%AD%A9%E5%AD%90%E6%88%90%E7%BB%A9%E4%B8%8D%E5%A5%BD%E6%80%8E%E4%B9%88%E5%8A%9E&e_matchtype=%7Bmatcht', '1567329808');
INSERT INTO `duanmoney` VALUES ('79', '黄平', '17807303013', '湖南省-岳阳市-岳阳楼区', '奇家岭廖家二巷廖家组23号', null, '111.23.227.4', '湖南省-怀化市', '', '', '', '', '15', 'http://ffv.xzy3.cn/', '1567319240');
INSERT INTO `duanmoney` VALUES ('80', '朱玲玲', '15044451110', null, '吉林省双辽市', null, '42.101.74.238', '黑龙江省-哈尔滨市', '', '', '', '', '15', 'http://ffv.xzy3.cn/', '1567319331');
INSERT INTO `duanmoney` VALUES ('82', '肖鹤昊', '13973464747', '湖南省-衡阳市-石鼓区', '蔡伦大道218号金鸿控股大楼', null, '117.136.88.194', '湖南省-长沙市', '初中生学英语用什么好', '初中成绩', '初中方法', '中学生学习英语方法', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E6%88%90%E7%BB%A9&utm_content=%E5%88%9D%E4%B8%AD%E6%96%B9%E6%B3%95&utm_term=%E4%B8%AD%E5%AD%A6%E7%94%9F%E5%AD%A6%E4%B9%A0%E8%8B%B1%E8%AF%AD%E6%96%B9%E6%B3%95&e_matchtype=2&e_creativ', '1567330379');
INSERT INTO `duanmoney` VALUES ('83', '鄂钮', '13117922761', '贵州省-黔南布依族苗族自治州-罗甸县', '山东省济宁市微山县韩庄镇大公村', null, '120.235.120.34', '广东省-中山市', '英语成绩提高翻译', '提高成绩方法', '怎么提高', '怎么提高英语成绩', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9%E6%96%B9%E6%B3%95&utm_content=%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98&utm_term=%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98%E8%8B%B1%E8%AF%AD%E6%88%90%E7%BB%A9&e_matchtype=2&', '1567330611');
INSERT INTO `duanmoney` VALUES ('84', '侯汀波', '15129273716', null, '西安新城区万寿路地铁站a口斜对面', null, '117.136.87.16', '-----', '如何让英语成绩提高', '提高流量', '推广单元_1', '英语成绩怎么提高', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98%E6%B5%81%E9%87%8F&utm_content=%E6%8E%A8%E5%B9%BF%E5%8D%95%E5%85%83_1&utm_term=%E8%8B%B1%E8%AF%AD%E6%88%90%E7%BB%A9%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98&e_creative=31892293399&e_keywordid=1389623', '1567331732');
INSERT INTO `duanmoney` VALUES ('85', '胡浩轩', '18703054339', null, '西安', null, '117.136.87.23', '-----', '一年级补习', '初中补习', '补习', '一年级补习', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E8%A1%A5%E4%B9%A0&utm_content=%E8%A1%A5%E4%B9%A0&utm_term=%E4%B8%80%E5%B9%B4%E7%BA%A7%E8%A1%A5%E4%B9%A0&e_matchtype=1&e_creative=31891658534&e_adposition=mt3&e_pagenum=1&e_keywordid', '1567332974');
INSERT INTO `duanmoney` VALUES ('183', '测试', '13289825666', '江苏省-南京市-玄武区', '萨达试客联盟', '', '123.139.161.29', '陕西省-延安市', '', '', '', '', '33', 'http://jiaoyu.xaxing04.com/jiaoyu6/form/index.html', '1570796918');
INSERT INTO `duanmoney` VALUES ('182', '测试98', '18092362920', '河北省-石家庄市-长安区', ' 内心激动激动激动', '', '36.46.12.122', '陕西省-西安市', '', '', '', '', '35', 'http://jiaoyu.xaxing04.com/jiaoyu8/form/index.html', '1570796506');
INSERT INTO `duanmoney` VALUES ('180', '江伯森', '18320407154', '广东省-广州市-花都区', '广州市花都区花东镇先科二路23号', '', '14.24.161.41', '广东省-广州市', '', '', '', '', '34', 'http://jiaoyu.xaxing04.com/jiaoyu7/form/index.html', '1570796484');
INSERT INTO `duanmoney` VALUES ('181', '江伯森', '18320407154', '广东省-广州市-花都区', '广州市花都区花东镇先科二路23号', '', '14.24.161.41', '广东省-广州市', '', '', '', '', '34', 'http://jiaoyu.xaxing04.com/jiaoyu7/form/index.html', '1570796484');
INSERT INTO `duanmoney` VALUES ('235', '陆长青', '15097576640', '河北省-唐山市-遵化市', '马蹄峪', '', '10.39.252.221', '-----', '', '', '', '', '38', 'http://cnk30.cnkaifa.top/form/index.html', '1571033157');
INSERT INTO `duanmoney` VALUES ('274', '黄志洲', '13587511658', '浙江省-温州市-瑞安市', '南滨街道南爿村', '初中', '60.180.24.230', '浙江省-温州市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571471031');
INSERT INTO `duanmoney` VALUES ('89', '代天昊', '18253001686', null, '山东单县', null, '223.104.191.3', '-----', '孩子外语成绩不好', '提高成绩方法', '英语', '孩子英语成绩不好', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9%E6%96%B9%E6%B3%95&utm_content=%E8%8B%B1%E8%AF%AD&utm_term=%E5%AD%A9%E5%AD%90%E8%8B%B1%E8%AF%AD%E6%88%90%E7%BB%A9%E4%B8%8D%E5%A5%BD&e_matchtype=1&e_creative=3189165', '1567334025');
INSERT INTO `duanmoney` VALUES ('90', '牧匡牛', '15669773512', '福建省-宁德市-福安市', '江苏省淮安市淮阴区丁集镇劳动村', null, '120.239.22.65', '广东省-江门市', '怎样给高三学生补脑', '提高cj', '提高', '高三怎样提高成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E9%AB%98%E4%B8%89%E6%80%8E%E6%A0%B7%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_creative=31780783693&e_keywordid=138066654939&e_keywordid2=138066654939&bd_v', '1567336662');
INSERT INTO `duanmoney` VALUES ('91', '郭紫玲', '13774005784', null, '13774005784', null, '111.182.4.114', '湖北省-荆门市', '', '提高cj', '方法', '小学补习', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%96%B9%E6%B3%95&utm_term=%E5%B0%8F%E5%AD%A6%E8%A1%A5%E4%B9%A0&e_creative=31846447009&e_keywordid=139007420553&bd_vid=8488256683533058896', '1567337219');
INSERT INTO `duanmoney` VALUES ('92', '胡国辉', '18164142738', null, '湖北省通城县沙堆镇九井街113', null, '119.36.216.40', '湖北省-荆州市', '', '提高cj', '方法', '英语正确的学习方法', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%96%B9%E6%B3%95&utm_term=%E8%8B%B1%E8%AF%AD%E6%AD%A3%E7%A1%AE%E7%9A%84%E5%AD%A6%E4%B9%A0%E6%96%B9%E6%B3%95&e_creative=31846447009&e_keywordid=138066638559&e_keywordid2=13806663', '1567337274');
INSERT INTO `duanmoney` VALUES ('93', '龚巧枝', '19869497848', null, '云南省，临沧市沧源县', null, '182.244.234.207', '云南省-临沧市', '小孩不爱写作业怎么办呢', 'A高。', '搜索词', '小孩子不爱学习怎么办', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=A%E9%AB%98%E3%80%82&utm_content=%E6%90%9C%E7%B4%A2%E8%AF%8D&utm_term=%E5%B0%8F%E5%AD%A9%E5%AD%90%E4%B8%8D%E7%88%B1%E5%AD%A6%E4%B9%A0%E6%80%8E%E4%B9%88%E5%8A%9E&e_creative=31920078316&e_keywordid=139134106224&bd_v', '1567338600');
INSERT INTO `duanmoney` VALUES ('211', '房国枝', '15053290566', '山东省-青岛市-崂山区', '科苑经一路兴旺幕墙', '', '112.226.148.89', '山东省-青岛市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570969391');
INSERT INTO `duanmoney` VALUES ('210', '孙秀娟', '15948004516', '吉林省-长春市-南关区', '中环小区不是一栋六门502', '', '123.246.202.46', '辽宁省-沈阳市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570969263');
INSERT INTO `duanmoney` VALUES ('95', '李垒', '18736585983', null, '河南省唐河县七小', null, '222.88.254.213', '河南省-南阳市', '高二学习计划', '提高cj', '提高', '学习成绩提高计划', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%AD%A6%E4%B9%A0%E6%88%90%E7%BB%A9%E6%8F%90%E9%AB%98%E8%AE%A1%E5%88%92&e_creative=31780783693&e_keywordid=138066638112&e_keywordid2=138066638112&bd_v', '1567339526');
INSERT INTO `duanmoney` VALUES ('96', '肖银株', '18388386928', null, '块所村269号', null, '39.130.34.5', '云南省-昆明市', '学习上', '提高cj', '方法', '学习方法', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%96%B9%E6%B3%95&utm_term=%E5%AD%A6%E4%B9%A0%E6%96%B9%E6%B3%95&e_creative=31792851393&e_keywordid=138066638580&e_keywordid2=138066638580&bd_vid=7754735226094583744', '1567339689');
INSERT INTO `duanmoney` VALUES ('97', '夏侯甜甜', '18779613483', null, '江西省吉安市吉水县', null, '39.158.156.235', '江西省-吉安市', '', '初中成绩', '学习差', '中学生学习网站大全', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E6%88%90%E7%BB%A9&utm_content=%E5%AD%A6%E4%B9%A0%E5%B7%AE&utm_term=%E4%B8%AD%E5%AD%A6%E7%94%9F%E5%AD%A6%E4%B9%A0%E7%BD%91%E7%AB%99%E5%A4%A7%E5%85%A8&e_matchtype=2&e_creative=3189165', '1567341232');
INSERT INTO `duanmoney` VALUES ('98', '谭继春', '13306358504', null, '谭庄村', null, '182.46.156.137', '山东省-聊城市', '', '提高cj', '怎么办', '高考成绩不好怎么办', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%80%8E%E4%B9%88%E5%8A%9E&utm_term=%E9%AB%98%E8%80%83%E6%88%90%E7%BB%A9%E4%B8%8D%E5%A5%BD%E6%80%8E%E4%B9%88%E5%8A%9E&e_creative=31846447001&e_keywordid=138066635341&e_keywordid2', '1567344136');
INSERT INTO `duanmoney` VALUES ('99', '潘小强', '13008833203', null, '湖南常德', null, '123.139.168.157', '陕西省-汉中市', '小学六年级辅导班', '小学补习', '补课', '六年级补课', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%B0%8F%E5%AD%A6%E8%A1%A5%E4%B9%A0&utm_content=%E8%A1%A5%E8%AF%BE&utm_term=%E5%85%AD%E5%B9%B4%E7%BA%A7%E8%A1%A5%E8%AF%BE&e_matchtype=2&e_creative=31891623712&e_adposition=mt1&e_pagenum=1&e_keywordid', '1567345341');
INSERT INTO `duanmoney` VALUES ('100', '唐芳', '18074608799', '湖南省-永州市-双牌县', '紫金南路80号', null, '175.5.111.240', '湖南省-永州市', '初三怎么快速提高成绩', '提高cj', '提高', '初三学生如何快速提高成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%88%9D%E4%B8%89%E5%AD%A6%E7%94%9F%E5%A6%82%E4%BD%95%E5%BF%AB%E9%80%9F%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_creative=31846447005&e_keywordid=1380666', '1567346991');
INSERT INTO `duanmoney` VALUES ('101', '白晓红', '18835213980', null, '山西省大同市广灵县广场', null, '117.136.91.177', '山西省-太原市', '如何使成绩提升', '提高成绩方法', '方法', '如何提高成绩的方法', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9%E6%96%B9%E6%B3%95&utm_content=%E6%96%B9%E6%B3%95&utm_term=%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9%E7%9A%84%E6%96%B9%E6%B3%95&e_matchtype=2&e_creativ', '1567347721');
INSERT INTO `duanmoney` VALUES ('102', '盛婉婷', '15655765085', null, '灵璧县广志外国语学校', null, '58.243.254.82', '安徽省-合肥市', '初中生的学习方法', '提高cj', '提高', '中学生提高学习成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E4%B8%AD%E5%AD%A6%E7%94%9F%E6%8F%90%E9%AB%98%E5%AD%A6%E4%B9%A0%E6%88%90%E7%BB%A9&e_creative=31846447004&e_keywordid=138066638133&e_keywordid2=13806663', '1567348680');
INSERT INTO `duanmoney` VALUES ('209', '康连秩', '13706352318', '山东省-聊城市-临清市', '北门里街颐清园小区2号别墅', '', '182.46.175.239', '山东省-聊城市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570968830');
INSERT INTO `duanmoney` VALUES ('273', '王雨鑫', '15730934628', '甘肃省-天水市-武山县', '金刚村', '初三', '117.157.185.61', '甘肃省-兰州市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571470510');
INSERT INTO `duanmoney` VALUES ('192', '测试', '15221212121', '江西省-南昌市-东湖区', '洒水多撒', '', '123.139.160.68', '陕西省-延安市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570960585');
INSERT INTO `duanmoney` VALUES ('104', '杨浩', '18392385692', null, '山东临沂', null, '117.136.87.16', '-----', '如何提高语文成绩', '提高流量', '推广单元_1', '语文成绩怎么提高', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98%E6%B5%81%E9%87%8F&utm_content=%E6%8E%A8%E5%B9%BF%E5%8D%95%E5%85%83_1&utm_term=%E8%AF%AD%E6%96%87%E6%88%90%E7%BB%A9%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98&e_creative=31892293405&e_keywordid=1389623', '1567349112');
INSERT INTO `duanmoney` VALUES ('105', '蒋林', '13823765986', null, '广东深圳', null, '111.18.95.149', '-----', '如何提高语文成绩', '提高流量', '推广单元_1', '语文成绩怎么提高', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98%E6%B5%81%E9%87%8F&utm_content=%E6%8E%A8%E5%B9%BF%E5%8D%95%E5%85%83_1&utm_term=%E8%AF%AD%E6%96%87%E6%88%90%E7%BB%A9%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98&e_creative=31892293405&e_keywordid=1389623', '1567349321');
INSERT INTO `duanmoney` VALUES ('106', '黄芬', '15888320457', null, '湖北省黄梅县蔡山镇曹坝村', null, '117.136.74.198', '湖北省-武汉市', '初二怎么提高成绩', '提高cj', '提高', '初二如何提高成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E5%88%9D%E4%BA%8C%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_creative=31792851391&e_keywordid=138066656909&e_keywordid2=138066656909&bd_v', '1567350559');
INSERT INTO `duanmoney` VALUES ('107', '柳颜刁', '15625323248', '澳门特别行政区-风顺堂区-', '河北省邯郸市曲周县河南疃镇骆庄村', null, '121.230.28.22', '江苏省-泰州市', '学习雅思的方法', '提高cj', '方法', '如何学习英语的方法', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%96%B9%E6%B3%95&utm_term=%E5%A6%82%E4%BD%95%E5%AD%A6%E4%B9%A0%E8%8B%B1%E8%AF%AD%E7%9A%84%E6%96%B9%E6%B3%95&e_creative=31780783528&e_keywordid=138066638535&e_keywordid2=13806663', '1567375354');
INSERT INTO `duanmoney` VALUES ('108', '陈校军', '15064277565', '山东省-青岛市-黄岛区', '泊里镇西小滩村', null, '39.88.19.72', '山东省-青岛市', '怎样才能提高学习成绩', '提高cj', '提高', '怎样快速提高学习成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E6%80%8E%E6%A0%B7%E5%BF%AB%E9%80%9F%E6%8F%90%E9%AB%98%E5%AD%A6%E4%B9%A0%E6%88%90%E7%BB%A9&e_creative=31846447005&e_keywordid=138067955537&e_keywordid2', '1567379529');
INSERT INTO `duanmoney` VALUES ('109', '舄纪', '18748810967', '贵州省-铜仁市-江口县', '西藏自治区那曲地区班戈县普保镇多尔格村', null, '117.136.30.100', '重庆市-重庆市', '体育成绩', '提高cj', '提高', '提高体育成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E6%8F%90%E9%AB%98%E4%BD%93%E8%82%B2%E6%88%90%E7%BB%A9&e_creative=31860679819&e_keywordid=138066665925&e_keywordid2=138066665925&bd_vid=890392318405766', '1567379854');
INSERT INTO `duanmoney` VALUES ('110', '杨志斌', '18713238997', null, '河北保定曲阳县齐村镇温家庄村', null, '117.136.2.164', '河北省-石家庄市', '中考各科满分是多少', '提高cj', '提高', '中考如何提高成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E4%B8%AD%E8%80%83%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_creative=31846447005&e_keywordid=138066654928&e_keywordid2=138066654928&bd_v', '1567382575');
INSERT INTO `duanmoney` VALUES ('111', '李乐', '18710860185', null, '贵阳市乌当区新添大道北段', null, '117.136.87.16', '-----', '如何提高语文成绩', '提高流量', '推广单元_1', '语文成绩怎么提高', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98%E6%B5%81%E9%87%8F&utm_content=%E6%8E%A8%E5%B9%BF%E5%8D%95%E5%85%83_1&utm_term=%E8%AF%AD%E6%96%87%E6%88%90%E7%BB%A9%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98&e_creative=31892293405&e_keywordid=1389623', '1567384275');
INSERT INTO `duanmoney` VALUES ('112', '赵冠淳', '15105571183', '安徽省-宿州市-埇桥区', '安徽省宿州市埇桥区农科路农科小区B栋407室', null, '117.136.117.189', '-----', '小学生学英语方法', '提高cj', '方法', '英语正确的学习方法', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%96%B9%E6%B3%95&utm_term=%E8%8B%B1%E8%AF%AD%E6%AD%A3%E7%A1%AE%E7%9A%84%E5%AD%A6%E4%B9%A0%E6%96%B9%E6%B3%95&e_creative=31780783551&e_keywordid=138066638559&e_keywordid2=13806663', '1567386821');
INSERT INTO `duanmoney` VALUES ('113', '张荣康', '15705875226', null, '河南省郑州市二七区金海小区18号楼', null, '117.136.104.244', '-----', '', '提高流量', '推广单元_1', '语文成绩怎么提高', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98%E6%B5%81%E9%87%8F&utm_content=%E6%8E%A8%E5%B9%BF%E5%8D%95%E5%85%83_1&utm_term=%E8%AF%AD%E6%96%87%E6%88%90%E7%BB%A9%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98&e_creative=31892293405&e_keywordid=1389623', '1567396245');
INSERT INTO `duanmoney` VALUES ('114', '韩罗', '18372967201', '四川省-广安市-华蓥市', '浙江省温州市平阳县怀溪镇杭坑村', null, '222.220.245.150', '云南省-红河哈尼族彝族自治州', '黔南中考各科成绩', '提高cj', '提高', '中考如何提高成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E4%B8%AD%E8%80%83%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_creative=31780783692&e_keywordid=138066654928&e_keywordid2=138066654928&bd_v', '1567399215');
INSERT INTO `duanmoney` VALUES ('115', '韩罗', '18372967201', '四川省-广安市-华蓥市', '浙江省温州市平阳县怀溪镇杭坑村', null, '222.220.245.150', '云南省-红河哈尼族彝族自治州', '黔南中考各科成绩', '提高cj', '提高', '中考如何提高成绩', '10', 'http://jy11.yyswkjk.cn/jiaoyu3/?utm_medium=%E6%8F%90%E9%AB%98cj&utm_content=%E6%8F%90%E9%AB%98&utm_term=%E4%B8%AD%E8%80%83%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_creative=31780783692&e_keywordid=138066654928&e_keywordid2=138066654928&bd_v', '1567399215');
INSERT INTO `duanmoney` VALUES ('276', '陈仁凯', '13868518180', '浙江省-温州市-平阳县', ' 福祥家园', '中学', '111.1.214.38', '浙江省-温州市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571471249');
INSERT INTO `duanmoney` VALUES ('117', '测试', '15129524829', null, '西安', null, '223.104.11.26', '陕西省-西安市', '小孩数学差怎么提高', '提高成绩方法', '怎么提高', '孩子的数学太差怎么办', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9%E6%96%B9%E6%B3%95&utm_content=%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98&utm_term=%E5%AD%A9%E5%AD%90%E7%9A%84%E6%95%B0%E5%AD%A6%E5%A4%AA%E5%B7%AE%E6%80%8E%E4%B9%88%E5%8A', '1567409945');
INSERT INTO `duanmoney` VALUES ('119', '韩女士', '13422856182', '广东省-深圳市-福田区', 'shenzhen China, shenzhen', null, '113.110.247.173', '广东省-深圳市', '', '初中成绩', '怎么办', '12岁孩子成绩不好怎么办', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E6%88%90%E7%BB%A9&utm_content=%E6%80%8E%E4%B9%88%E5%8A%9E&utm_term=12%E5%B2%81%E5%AD%A9%E5%AD%90%E6%88%90%E7%BB%A9%E4%B8%8D%E5%A5%BD%E6%80%8E%E4%B9%88%E5%8A%9E&e_matchtype={matchtyp', '1567412261');
INSERT INTO `duanmoney` VALUES ('120', '张丙群', '18153259786', null, '山东省青岛市莱西市店埠镇后水口村', null, '223.79.8.31', '山东省-青岛市', '', '初中补习', '数学补习', '在线补习初一数学', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E8%A1%A5%E4%B9%A0&utm_content=%E6%95%B0%E5%AD%A6%E8%A1%A5%E4%B9%A0&utm_term=%E5%9C%A8%E7%BA%BF%E8%A1%A5%E4%B9%A0%E5%88%9D%E4%B8%80%E6%95%B0%E5%AD%A6&e_matchtype=%7Bmatchtype%7D&e_cr', '1567414177');
INSERT INTO `duanmoney` VALUES ('121', '黄平', '17807303013', '湖南省-岳阳市-岳阳楼区', '奇家岭廖家二巷廖家组23号', null, '111.23.227.4', '湖南省-怀化市', '', '初中成绩', '提升提高', '怎样使孩子提高学习成绩', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E6%88%90%E7%BB%A9&utm_content=%E6%8F%90%E5%8D%87%E6%8F%90%E9%AB%98&utm_term=%E6%80%8E%E6%A0%B7%E4%BD%BF%E5%AD%A9%E5%AD%90%E6%8F%90%E9%AB%98%E5%AD%A6%E4%B9%A0%E6%88%90%E7%BB%A9&e_mat', '1567414541');
INSERT INTO `duanmoney` VALUES ('122', '刘瑞莹', '15201355271', null, '古城现代嘉园68号院4号楼2单元303', null, '36.102.6.62', '内蒙古自治区-呼和浩特市', '', '', '', '', '15', 'http://ffv.xzy3.cn/', '1567416992');
INSERT INTO `duanmoney` VALUES ('123', '任玉霞', '13209783510', '青海省-西宁市-城西区', '西关大街25号送变电', null, '43.242.180.27', '青海省-西宁市', '', '', '', '', '15', 'http://ffv.xzy3.cn/', '1567419423');
INSERT INTO `duanmoney` VALUES ('124', '潘泯锖', '13557546763', '广西壮族自治区-梧州市-藤县', '藤县塘步镇大罗四徳村', null, '113.12.35.48', '广西壮族自治区-梧州市', '如何让学渣变成学霸', '提高成绩方法', '怎么提高', '怎么提高成绩成为学霸', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9%E6%96%B9%E6%B3%95&utm_content=%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98&utm_term=%E6%80%8E%E4%B9%88%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9%E6%88%90%E4%B8%BA%E5%AD%A6%E9%9C', '1567423271');
INSERT INTO `duanmoney` VALUES ('214', '孙秀娟', '15948004516', '吉林省-长春市-南关区', '中环小区51栋六门502', '', '123.246.202.46', '辽宁省-沈阳市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570969834');
INSERT INTO `duanmoney` VALUES ('130', '朱小丽', '15062913859', '江苏省-连云港市-连云区', '墟沟街道紫荆花园', null, '111.19.106.73', '陕西省-西安市', '超级学霸学习方法', '初中成绩', '学霸方法', '超级学霸的学习方法', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E6%88%90%E7%BB%A9&utm_content=%E5%AD%A6%E9%9C%B8%E6%96%B9%E6%B3%95&utm_term=%E8%B6%85%E7%BA%A7%E5%AD%A6%E9%9C%B8%E7%9A%84%E5%AD%A6%E4%B9%A0%E6%96%B9%E6%B3%95&e_matchtype=1&e_creativ', '1567433447');
INSERT INTO `duanmoney` VALUES ('126', '王文连', '17851765855', null, '安徽省阜阳市颖东区老庙镇粮站东', null, '223.104.36.152', '-----', '', '初中补习', '数学补习', '在线补习初一数学', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E8%A1%A5%E4%B9%A0&utm_content=%E6%95%B0%E5%AD%A6%E8%A1%A5%E4%B9%A0&utm_term=%E5%9C%A8%E7%BA%BF%E8%A1%A5%E4%B9%A0%E5%88%9D%E4%B8%80%E6%95%B0%E5%AD%A6&e_matchtype=%7Bmatchtype%7D&e_cr', '1567427958');
INSERT INTO `duanmoney` VALUES ('127', '任玉霞', '13209783510', '青海省-西宁市-城西区', '西关大街25号送变电', null, '43.242.180.27', '青海省-西宁市', '', '初中成绩', '提升提高', '怎样使孩子提高成绩', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E6%88%90%E7%BB%A9&utm_content=%E6%8F%90%E5%8D%87%E6%8F%90%E9%AB%98&utm_term=%E6%80%8E%E6%A0%B7%E4%BD%BF%E5%AD%A9%E5%AD%90%E6%8F%90%E9%AB%98%E6%88%90%E7%BB%A9&e_matchtype={matchtype}', '1567428000');
INSERT INTO `duanmoney` VALUES ('128', '刘瑞莹', '15201355271', null, '古城现代嘉园68号院4号楼2单元303', null, '36.102.6.62', '内蒙古自治区-呼和浩特市', '', '补课【N】', '补课+疑问1', '在线补课老师', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E8%A1%A5%E8%AF%BE%E3%80%90N%E3%80%91&utm_content=%E8%A1%A5%E8%AF%BE%2B%E7%96%91%E9%97%AE1&utm_term=%E5%9C%A8%E7%BA%BF%E8%A1%A5%E8%AF%BE%E8%80%81%E5%B8%88&e_matchtype={matchtype}&e_creative={creative}', '1567429290');
INSERT INTO `duanmoney` VALUES ('129', '朱玲玲', '15044451110', null, '吉林省双辽市', null, '42.101.74.238', '黑龙江省-哈尔滨市', '', '初中成绩', '提升提高', '怎么样能帮助孩子提高学习成绩', '13', 'http://jy.yyswkjk.cn/jiaoyu1/?cid=123456789&utm_medium=%E5%88%9D%E4%B8%AD%E6%88%90%E7%BB%A9&utm_content=%E6%8F%90%E5%8D%87%E6%8F%90%E9%AB%98&utm_term=%E6%80%8E%E4%B9%88%E6%A0%B7%E8%83%BD%E5%B8%AE%E5%8A%A9%E5%AD%A9%E5%AD%90%E6%8F%90%E9%AB%98%E5%AD%A6%E4%B9', '1567432000');
INSERT INTO `duanmoney` VALUES ('193', '测试', '14039266333', '北京市-北京市市辖区-东城区', '丰富的的', '', '59.42.238.27', '广东省-广州市', '', '', '', '', '40', 'http://lyw.jmutech.top/shou/form/index.html', '1570960795');
INSERT INTO `duanmoney` VALUES ('194', '祝卫红', '15277291008', '广西壮族自治区-柳州市-柳南区', '航生路18号荣昌明珠园7栋2单元301室', '', '117.181.172.254', '广西壮族自治区-玉林市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570961791');
INSERT INTO `duanmoney` VALUES ('195', '李陶妮', '15353618754', '陕西省-铜川市-王益区', '新庙街区龙湖香悦5号楼3单元2301室', '', '123.139.160.68', '陕西省-延安市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570962197');
INSERT INTO `duanmoney` VALUES ('196', '孟繁丽', '13204042413', '辽宁省-沈阳市-铁西区', '兴工北街3号8楼6号', '', '139.215.143.49', '吉林省-长春市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570962218');
INSERT INTO `duanmoney` VALUES ('197', '戴镜辉', '18845578921', '黑龙江省-哈尔滨市-道里区', '新阳路289号4栋1单元403室', '', '112.102.212.101', '黑龙江省-哈尔滨市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570962238');
INSERT INTO `duanmoney` VALUES ('198', '周贵云', '13881121230', '四川省-绵阳市-游仙区', '绵阳市桑林路8号东原香屿4栋30楼4号', '', '139.205.236.179', '四川省-绵阳市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570962328');
INSERT INTO `duanmoney` VALUES ('199', '邢桂兰', '18804203509', '辽宁省-大连市-中山区', '大连市中山区竹青街7号楼21-4', '', '47.75.143.208', '香港特别行政区-香港特别行政区', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570962358');
INSERT INTO `duanmoney` VALUES ('200', '戴镜辉', '18845578921', '黑龙江省-哈尔滨市-道里区', '新阳路289号4栋1单元403室', '', '112.102.212.101', '黑龙江省-哈尔滨市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570962684');
INSERT INTO `duanmoney` VALUES ('201', '阿平', '18670102159', '江西省-鹰潭市-贵溪市', '建设路45号王家村100号', '', '182.109.54.181', '江西省-鹰潭市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570963990');
INSERT INTO `duanmoney` VALUES ('202', '王建培', '13072998270', '陕西省-西安市-雁塔区', '西安市雁塔区长延堡衔道长安西路铭城16号小区', '', '1.80.38.130', '陕西省-西安市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570964582');
INSERT INTO `duanmoney` VALUES ('203', '，梁丽荣', '15822125306', '天津市-天津市市辖区-河东区', '天津市河东区广宁路实验楼2丨号楼`1门307号', '', '106.47.240.21', '天津市-天津市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570964636');
INSERT INTO `duanmoney` VALUES ('204', '王言美', '13236955261', '辽宁省-抚顺市-望花区', '演武街教堂对面架子管出租', '', '175.167.146.83', '辽宁省-沈阳市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570964651');
INSERT INTO `duanmoney` VALUES ('205', '董芳', '13844888138', '吉林省-长春市-南关区', '东岭南街警官公寓1栋2门106室', '', '36.48.27.93', '吉林省-长春市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570964832');
INSERT INTO `duanmoney` VALUES ('206', '杨素芝', '15132519814', '河北省-石家庄市-长安区', '河北省唐山市路北区7楼1门/01室', '', '182.51.79.185', '河北省-石家庄市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570965045');
INSERT INTO `duanmoney` VALUES ('207', '王意意', '15206883083', '山东省-滨州市-惠民县', '东关街信誉楼东路南杭州小笼包', '', '182.47.78.121', '山东省-滨州市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570965978');
INSERT INTO `duanmoney` VALUES ('208', '胡惠梅', '13382624555', '江苏省-盐城市-大丰区', '大中镇鸿基新村3号楼509室', '', '49.94.16.87', '江苏省-南京市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570968429');
INSERT INTO `duanmoney` VALUES ('215', '张战社', '15991016213', '陕西省-咸阳市-乾县', '乾县姜村镇农贸市场', '', '111.18.51.55', '-----', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570969870');
INSERT INTO `duanmoney` VALUES ('216', '张兴照', '13563839779', '山东省-泰安市-新泰市', '新泰华府新天地二期18疃1单元403室', '', '123.135.40.131', '山东省-泰安市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570970043');
INSERT INTO `duanmoney` VALUES ('217', '孟\'宪荣', '18748388987', '内蒙古自治区-呼和浩特市-新城区', '内蒙古扎兰屯市庆和小区再来一壶餐厅', '', '110.7.223.169', '内蒙古自治区-呼伦贝尔市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570970073');
INSERT INTO `duanmoney` VALUES ('218', '杨满成', '17769360513', '湖南省-常德市-武陵区', '湖南省常德市武陵区新外滩后岗门卫室', '', '106.16.138.195', '湖南省-长沙市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570970740');
INSERT INTO `duanmoney` VALUES ('219', '尹亚丽', '17303316053', '河北省-石家庄市-栾城区', '端古庄村', '', '60.1.54.11', '河北省-石家庄市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570970839');
INSERT INTO `duanmoney` VALUES ('220', '苏霞', '17862012172', '山东省-滨州市-邹平县', '邹平市山南步行街无忌羊汤15号', '', '112.36.12.112', '山东省-滨州市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570971250');
INSERT INTO `duanmoney` VALUES ('221', '苏霞', '17862012172', '山东省-滨州市-邹平县', '邹平市山南步行街无忌羊汤15号', '', '112.36.12.112', '山东省-滨州市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570971250');
INSERT INTO `duanmoney` VALUES ('222', '王继森', '15962346406', '江苏省-苏州市-张家港市', '锦丰镇三兴白熊路67号张家港市万宝机械有限公司', '', '183.209.104.69', '江苏省-苏州市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570971274');
INSERT INTO `duanmoney` VALUES ('223', '吴正涛', '15956571638', '安徽省-合肥市-包河区', '包河苑D区22幢605', '', '112.32.64.105', '安徽省-合肥市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570971274');
INSERT INTO `duanmoney` VALUES ('224', '张金霞', '13892378931', '陕西省-渭南市-韩城市', '韩城市，新城区，世纪花园', '', '112.64.237.242', '上海市-上海市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570971374');
INSERT INTO `duanmoney` VALUES ('225', '张金霞', '13892378931', '陕西省-渭南市-韩城市', '韩城市，新城区，世纪花园', '', '112.64.237.242', '上海市-上海市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570971374');
INSERT INTO `duanmoney` VALUES ('226', '张金霞', '13892378931', '陕西省-渭南市-韩城市', '韩城市，新城区，世纪花园', '', '112.64.237.242', '上海市-上海市', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570971374');
INSERT INTO `duanmoney` VALUES ('227', '郎诗杰', '13419883031', '河南省-新乡市-辉县市', '河南省新乡市辉县市城关街道铁南街24号', '', '117.136.107.19', '-----', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570975632');
INSERT INTO `duanmoney` VALUES ('228', '马素琴', '15560173333', '河南省-新乡市-辉县市', '河南省新乡市辉县市城关街道铁南街24号', '', '117.136.107.19', '-----', '', '', '', '', '40', 'http://jb.fudannb.org/shou/form/index.html', '1570976064');
INSERT INTO `duanmoney` VALUES ('234', '唐孝丽', '13628388699', '重庆市-重庆市市辖区-合川区', '重庆市合川区土场镇天顶村', '', '27.13.50.97', '重庆市-重庆市', '', '', '', '', '38', 'http://cnk30.cnkaifa.top/form/index.html', '1571032594');
INSERT INTO `duanmoney` VALUES ('236', '化凤月', '15649810477', '河南省-郑州市-中原区', '河南省许昌昙灵#镆南三组', '', '115.53.123.67', '河南省-许昌市', '', '', '', '', '38', 'http://cnk30.cnkaifa.top/form/index.html', '1571037627');
INSERT INTO `duanmoney` VALUES ('237', '李格侠', '15739543858', '陕西省-宝鸡市-凤翔县', '横水乡康家庄村六组', '', '223.104.30.83', '新疆维吾尔自治区-乌鲁木齐市', '', '', '', '', '38', 'http://cnk30.cnkaifa.top/form/index.html', '1571039385');
INSERT INTO `duanmoney` VALUES ('238', '宋朝红', '17390387461', '四川省-攀枝花市-仁和区', '仁和区老医院', '', '171.216.209.126', '四川省-成都市', '', '', '', '', '38', 'http://cnk30.cnkaifa.top/form/index.html', '1571039562');
INSERT INTO `duanmoney` VALUES ('239', '彭宪玲', '13853825001', '山东省-泰安市-肥城市', '王瓜店镇朱庄社区', '', '27.201.218.212', '山东省-泰安市', '', '', '', '', '38', 'http://cnk30.cnkaifa.top/form/index.html', '1571042384');
INSERT INTO `duanmoney` VALUES ('279', '浦建荣', '13013675607', '江苏省-无锡市-新吴区', '江苏省无锡市新吴区旺庄乡新光村陈湾里38号', '小学', '122.194.1.153', '江苏省-南京市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571472427');
INSERT INTO `duanmoney` VALUES ('280', '刘莹莹', '16696527881', '河南省-商丘市-永城市', '河南省商丘市永城市马桥镇孙庄村刘小楼', '初中', '223.89.249.57', '河南省-商丘市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571472824');
INSERT INTO `duanmoney` VALUES ('281', '周密', '15002526880', '甘肃省-兰州市-榆中县', '三角城庄园牧场股份有限公司', '小学', '118.181.175.251', '甘肃省-兰州市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571473661');
INSERT INTO `duanmoney` VALUES ('282', '蓝七姐', '13597100580', '广西壮族自治区-南宁市-宾阳县', '黎塘镇城南社区盛天华府A栋5单元蓝七姐百货店蓝七姐收', '数学', '112.67.107.48', '-----', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571475200');
INSERT INTO `duanmoney` VALUES ('283', '刘莹莹', '16696527881', '河南省-商丘市-永城市', '河南省商丘市永城市马桥镇孙庄村刘小楼', '初中', '223.89.249.57', '河南省-商丘市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571475456');
INSERT INTO `duanmoney` VALUES ('284', '李洪霞', '15040757152', '辽宁省-鞍山市-海城市', '辽宁省海城市牌楼镇东林小区', '小学', '123.189.101.214', '辽宁省-鞍山市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571569737');
INSERT INTO `duanmoney` VALUES ('285', '侯宇翔', '18721656926', '湖北省-孝感市-安陆市', '湖北省安陆市赵棚镇东大街', '六年级', '122.188.157.226', '湖北省-孝感市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571579716');
INSERT INTO `duanmoney` VALUES ('286', '郭二英', '17837033459', '河南省-驻马店市-西平县', '权寨镇大刘堂', '小学一年级', '223.89.128.167', '河南省-商丘市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571584461');
INSERT INTO `duanmoney` VALUES ('287', '郭二英', '17837033459', '河南省-驻马店市-西平县', '权寨镇大刘堂', '小学一年级', '223.89.128.167', '河南省-商丘市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571584461');
INSERT INTO `duanmoney` VALUES ('288', '马岩', '18999258651', '新疆维吾尔自治区-乌鲁木齐市-水磨沟区', '昆仑路印象南湖二期26号楼五单元902室', '初中', '110.152.19.90', '新疆维吾尔自治区-乌鲁木齐市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571613657');
INSERT INTO `duanmoney` VALUES ('289', '胡志平', '18561471329', '湖北省-十堰市-竹溪县', '湖北省，竹溪县，天宝乡龙滩村一组', '小学', '112.224.75.96', '山东省-济南市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571613663');
INSERT INTO `duanmoney` VALUES ('290', '测试测试', '13311131123', '北京市-北京市市辖区-东城区', '测试测试', '大学', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy03/9.html', '1571647753');
INSERT INTO `duanmoney` VALUES ('291', '测试测试', '13311131234', '北京市-北京市市辖区-东城区', '测试测试', '大学', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571648166');
INSERT INTO `duanmoney` VALUES ('292', '贾国柱', '15209696195', '宁夏回族自治区-银川市-金凤区', '鲁银城市公元35-2-301', '高中', '111.49.200.211', '宁夏回族自治区-银川市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571666343');
INSERT INTO `duanmoney` VALUES ('293', '谢全洲', '18009346608', '甘肃省-庆阳市-西峰区', '陇原小区', '初中', '124.152.181.168', '甘肃省-庆阳市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571675387');
INSERT INTO `duanmoney` VALUES ('294', '田维成', '15223931377', '重庆市-重庆市郊县-', '重庆市酉阳县车田乡', '高中', '117.136.30.58', '重庆市-重庆市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571676599');
INSERT INTO `duanmoney` VALUES ('295', '周厚富', '13635633794', '安徽省-宣城市-宁国市', '河氻园竹园24栋5单元602室', '小学', '114.101.141.77', '安徽省-淮南市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571677079');
INSERT INTO `duanmoney` VALUES ('296', '童永寿', '13576323768', '江西省-上饶市-余干县', '白马桥乡凤凰.', '.高中', '117.136.60.151', '江西省-南昌市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571680673');
INSERT INTO `duanmoney` VALUES ('297', '林泉', '15170906973', '江西省-新余市-渝水区', '毛家太塘洲', '毛家小学', '117.162.198.114', '江西省-新余市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571682321');
INSERT INTO `duanmoney` VALUES ('298', '宋武华', '15770596608', '江西省-宜春市-高安市', '八景镇，新明珠', '小学，初中', '39.178.244.143', '江西省-宜春市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571685621');
INSERT INTO `duanmoney` VALUES ('299', '晏红', '17639795385', '河南省-周口市-沈丘县', '河南省周口书沈丘县范营乡阮些行政村', '小学，中学', '61.158.152.119', '河南省-郑州市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571687515');
INSERT INTO `duanmoney` VALUES ('300', '李文博', '15936945138', '河南省-周口市-沈丘县', '付井东方学校', '高中', '223.91.49.209', '河南省-南阳市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571693083');
INSERT INTO `duanmoney` VALUES ('301', '李女士', '18953633632', '山东省-潍坊市-青州市', '青州现代钢铁物流园', '初中', '113.127.172.169', '山东省-济南市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571694067');
INSERT INTO `duanmoney` VALUES ('302', '尤艺达', '13477933673', '湖北省-恩施土家族苗族自治州-恩施市', '咸丰县二道河明珠小区对面废品收购站', '中学', '122.188.85.29', '湖北省-恩施土家族苗族自治州', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571699780');
INSERT INTO `duanmoney` VALUES ('303', '林志颖', '13376902202', '福建省-漳州市-龙海市', '紫泥镇城内村', '大一大二', '180.142.7.193', '广西壮族自治区-柳州市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/jy05/9.html', '1571734244');
INSERT INTO `duanmoney` VALUES ('309', '头条测试', '18007006003', '黑龙江省-七台河市-桃山区', '测试', '小学', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/06/9.html', '1571823062');
INSERT INTO `duanmoney` VALUES ('310', '测试', '13760614598', '北京市-北京市市辖区-东城区', '天安门广场', '', '116.21.180.36', '广东省-广州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571826353');
INSERT INTO `duanmoney` VALUES ('311', '万春富', '15195080176', '江苏省-南京市-玄武区', '溧阳市天目路湾里村254号', '', '117.136.46.180', '江苏省-南京市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571827390');
INSERT INTO `duanmoney` VALUES ('312', '陆长顺', '15998111935', '辽宁省-沈阳市-于洪区', '白山路85一2一442北美家园', '', '59.47.37.14', '辽宁省-抚顺市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571827449');
INSERT INTO `duanmoney` VALUES ('308', '杨德海', '15105813231', '浙江省-杭州市-余杭区', '康盛小区99一丨', '语文数学外语', '122.238.4.194', '浙江省-温州市', '', '', '', '', '18', 'https://me.lyqgdz2.com/cj/04/9.html', '1571816604');
INSERT INTO `duanmoney` VALUES ('313', '徐风臣', '13573486013', '山东省-德州市-夏津县', '山东省夏津县南城镇南李楼村', '', '112.8.243.172', '山东省-德州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571827629');
INSERT INTO `duanmoney` VALUES ('314', '张贵武', '19971640058', '湖北省-潜江市-', '渔洋镇(荆安村八组。。', '', '111.180.72.51', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571827698');
INSERT INTO `duanmoney` VALUES ('315', '赵宪峰', '13835709098', '山西省-临汾市-尧都区', '县底镇侯村', '', '183.200.49.88', '山西省-晋城市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571827766');
INSERT INTO `duanmoney` VALUES ('316', '王作立', '15548372590', '内蒙古自治区-锡林郭勒盟-锡林浩特市', '察哈尔大街广皓宾馆', '', '43.254.171.244', '内蒙古自治区-呼和浩特市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571827917');
INSERT INTO `duanmoney` VALUES ('317', '汤秀本', '13992700420', '陕西省-西安市-新城区', '陕西省宝鸡市凤县双石捕镇小干村', '', '117.136.50.70', '陕西省-西安市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571829485');
INSERT INTO `duanmoney` VALUES ('318', '汤秀本', '13992700420', '陕西省-西安市-新城区', '陕西省宝鸡市凤县双石捕镇小干村', '', '117.136.50.70', '陕西省-西安市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571829485');
INSERT INTO `duanmoney` VALUES ('319', '测试', '18962009958', '吉林省-长春市-南关区', '33', '大学', '58.219.137.248', '江苏省-盐城市', '', '', '', '', '18', 'https://me.lyqgdz2.com/cj/04/9.html', '1571830461');
INSERT INTO `duanmoney` VALUES ('320', '陈旭', '13277060598', '湖北省-武汉市-武昌区', '东湖景园B区巧栋', '', '113.57.182.166', '湖北省-武汉市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571832819');
INSERT INTO `duanmoney` VALUES ('321', '陈旭', '13277060598', '湖北省-武汉市-武昌区', '东湖景园B区巧栋', '', '113.57.182.166', '湖北省-武汉市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571832819');
INSERT INTO `duanmoney` VALUES ('322', '郭平', '18931931911', '河北省-石家庄市-长安区', '平乡县丰州镇公园壹品小区四号楼二单元一零二', '', '36.98.18.233', '河北省-石家庄市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571833215');
INSERT INTO `duanmoney` VALUES ('323', '韩刚', '13904298298', '辽宁省-葫芦岛市-龙港区', '都市花园A1号楼|101号', '', '113.230.112.24', '辽宁省-铁岭市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571833538');
INSERT INTO `duanmoney` VALUES ('324', '李世华', '15778437338', '广西壮族自治区-贺州市-富川瑶族自治县', '广西贺州市富川县城北街', '', '117.183.192.75', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571833637');
INSERT INTO `duanmoney` VALUES ('325', '崔善华', '13774046157', '湖北省-荆门市-京山县', '湖北省荆门市京山市罗店镇石冲村四组', '', '171.112.92.169', '湖北省-荆门市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571833773');
INSERT INTO `duanmoney` VALUES ('326', '刘振州', '18856981170', '安徽省-宿州市-萧县', '杨楼镇', '', '36.4.28.167', '安徽省-宿州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571833870');
INSERT INTO `duanmoney` VALUES ('327', '何金星', '13849546725', '河南省-平顶山市-鲁山县', '河南省平顶山市鲁山县人民路东段化肥厂口', '打电话', '39.149.182.70', '河南省-郑州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571834367');
INSERT INTO `duanmoney` VALUES ('328', '邢献明', '15831292106', '河北省-保定市-高碑店市', '高碑店列车新城河北建设集团门卫', '', '117.136.2.191', '河北省-石家庄市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571834552');
INSERT INTO `duanmoney` VALUES ('329', '李普玄', '13788235853', '广西壮族自治区-桂林市-秀峰区', '广西荔浦县荔城镇中园路城墙卷52', '', '223.104.92.132', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571835666');
INSERT INTO `duanmoney` VALUES ('330', '王延峰', '13781705865', '河南省-漯河市-舞阳县', '章化乡计生办', '', '117.136.104.170', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571836032');
INSERT INTO `duanmoney` VALUES ('331', '耿保军', '18851321187', '安徽省-合肥市-瑶海区', '安徽省毫州市涡阳县石弓镇耿瓦房村', '', '223.104.65.196', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571836385');
INSERT INTO `duanmoney` VALUES ('332', '曾传平', '13909019986', '四川省-绵阳市-平武县', '南坝场填龙州亍十二号', '', '183.221.137.148', '四川省-绵阳市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571836590');
INSERT INTO `duanmoney` VALUES ('333', '丁瑞敏', '13780652325', '山东省-青岛市-黄岛区', '大村镇中村4号。', '试试', '112.6.116.158', '山东省-济南市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571836697');
INSERT INTO `duanmoney` VALUES ('334', '马军', '15101707319', '甘肃省-酒泉市-玉门市', '新市区二转盘金佰易门口', '', '117.157.133.94', '甘肃省-兰州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571836739');
INSERT INTO `duanmoney` VALUES ('335', '刘先', '13841041933', '辽宁省-铁岭市-开原市', '辽宁省铁岭市开原市松山镇', '', '42.56.206.168', '辽宁省-铁岭市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571836887');
INSERT INTO `duanmoney` VALUES ('336', '马超', '13624041944', '辽宁省-沈阳市-和平区', '新华路125-11-8-2号', '', '182.200.117.143', '辽宁省-沈阳市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571836939');
INSERT INTO `duanmoney` VALUES ('337', '张焕军', '13871707419', '湖北省-襄阳市-樊城区', '汉江路24号', '', '117.154.140.185', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571837020');
INSERT INTO `duanmoney` VALUES ('338', '严于财', '13512591691', '江苏省-盐城市-滨海县', '正红镇武装部獐沟', '', '122.96.50.113', '江苏省-南京市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571837045');
INSERT INTO `duanmoney` VALUES ('339', '洪成超', '13952277623', '江苏省-徐州市-邳州市', '占城镇', '', '117.136.66.241', '江苏省-南京市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571837061');
INSERT INTO `duanmoney` VALUES ('340', '柏松', '18055416878', '安徽省-淮南市-大通区', '金丰易居三期43栋楼一单元601室', '', '223.245.193.224', '安徽省-淮南市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571837071');
INSERT INTO `duanmoney` VALUES ('341', '陈建军1', '13284220987', '辽宁省-沈阳市-和平区', '大连市中山区景山小区高洁巷4号楼一门栋三号', '', '175.167.146.211', '辽宁省-沈阳市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571837211');
INSERT INTO `duanmoney` VALUES ('342', '方展武', '15305539635', '安徽省-芜湖市-弋江区', '利民路艾妮宾馆游泳健身会所', '', '36.63.175.168', '安徽省-芜湖市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571837461');
INSERT INTO `duanmoney` VALUES ('343', '陈艳玲', '13643369108', '河北省-秦皇岛市-海港区', '保险公司', '', '183.199.79.104', '河北省-廊坊市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571837919');
INSERT INTO `duanmoney` VALUES ('344', '张小明', '13970029520', '江西省-南昌市-安义县', '安义县城杨梅一路一栋3O1室', '', '223.104.170.248', '江西省-南昌市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571837982');
INSERT INTO `duanmoney` VALUES ('345', '赵先生', '13028665251', '河北省-石家庄市-栾城区', '栾城区939号', '', '36.98.147.15', '河北省-石家庄市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571838452');
INSERT INTO `duanmoney` VALUES ('346', '卜庆祝', '13644657999', '黑龙江省-绥化市-绥棱县', '绥棱林业局聚', '', '42.101.65.212', '黑龙江省-哈尔滨市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571839122');
INSERT INTO `duanmoney` VALUES ('347', '严猛', '15738065532', '河南省-南阳市-唐河县', '上屯镇丁岗', '', '115.52.169.165', '河南省-南阳市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571839164');
INSERT INTO `duanmoney` VALUES ('348', '王章平', '15100116519', '河北省-石家庄市-桥西区', '永安街人民湖同27号', '', '36.98.52.83', '河北省-石家庄市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571839215');
INSERT INTO `duanmoney` VALUES ('349', '张天运', '15244509068', '山东省-烟台市-龙口市', '山东省龙口市兰高镇', '15244509068', '60.233.1.9', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571839438');
INSERT INTO `duanmoney` VALUES ('350', '幸福一生', '13606467540', '山东省-潍坊市-昌邑市', '卜庄镇郑家村', '', '60.233.1.58', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571839582');
INSERT INTO `duanmoney` VALUES ('351', '幸福一生', '13606467540', '山东省-潍坊市-昌邑市', '卜庄镇郑家村', '', '115.231.154.133', '浙江省-台州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571839678');
INSERT INTO `duanmoney` VALUES ('352', '张天运', '15244509068', '山东省-烟台市-龙口市', '山东省龙口市兰高镇', '', '60.233.1.9', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571839759');
INSERT INTO `duanmoney` VALUES ('353', '柳乐风', '13029834543', '黑龙江省-大庆市-让胡路区', '唐人', '', '221.209.186.178', '黑龙江省-大庆市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571839919');
INSERT INTO `duanmoney` VALUES ('354', '王詩貴', '13236425760', '江苏省-徐州市-泉山区', '奎中路恒天花苑7-3-301室', '', '180.104.197.142', '江苏省-徐州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571840004');
INSERT INTO `duanmoney` VALUES ('355', '张正才', '15884455792', '四川省-成都市-温江区', '政通西路恒大城', '', '175.153.168.196', '四川省-宜宾市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571840064');
INSERT INTO `duanmoney` VALUES ('356', '張建红', '15536133473', '山西省-太原市-小店区', '武乡县蟠龙镇史家咀村', '', '171.123.19.171', '山西省-长治市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571840084');
INSERT INTO `duanmoney` VALUES ('357', '陈合运', '13213238203', '河南省-郑州市-金水区', '经三路。农科路。郑州银行家属院。二号楼三单元。三楼 西户。', '', '182.119.39.83', '河南省-郑州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571840221');
INSERT INTO `duanmoney` VALUES ('358', '银玉山', '18893794278', '甘肃省-兰州市-安宁区', '安宁区久和汽配城', '15281148246', '117.136.27.131', '甘肃省-兰州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571840940');
INSERT INTO `duanmoney` VALUES ('359', '曹新兵', '15292139023', '湖南省-株洲市-荷塘区', '华晨财富小区1701', '', '36.157.162.136', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571841030');
INSERT INTO `duanmoney` VALUES ('360', '吴新会', '17337369985', '河南省-新乡市-封丘县', '黄陵镇，黄陵村', '', '1.192.236.141', '河南省-郑州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571841032');
INSERT INTO `duanmoney` VALUES ('361', '史记银', '15996086786', '江苏省-泰州市-高港区', '胡庄镇', '5饼', '223.107.195.155', '江苏省-泰州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571841093');
INSERT INTO `duanmoney` VALUES ('362', '武先生', '18317208835', '河南省-郑州市-二七区', '郑州市二七区大学路南三环交叉口向北20O百米兴城汽车服务_', '', '117.136.61.101', '河南省-郑州市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571841142');
INSERT INTO `duanmoney` VALUES ('363', '赵文生', '13907285530', '湖北省-武汉市-江岸区', '十堰市张湾区汉江路四海巷中东公司院内', '', '103.90.92.9', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571841158');
INSERT INTO `duanmoney` VALUES ('364', '黄定干', '18778878770', '广西壮族自治区-钦州市-钦南区', '英华学院商铺傍钦诊所或鸿润商店', '越快越好！', '117.182.110.10', '广西壮族自治区-南宁市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571842028');
INSERT INTO `duanmoney` VALUES ('365', '黄定干', '18778878770', '广西壮族自治区-钦州市-钦南区', '英华学院商铺傍钦诊所或鸿润商店', '越快越好！', '183.61.6.64', '广东省-珠海市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571842038');
INSERT INTO `duanmoney` VALUES ('366', '闫光强', '15886057755', '吉林省-四平市-伊通满族自治县', '吉林省，四平市伊通满族自治县，景台镇景台村一委四组', '', '222.168.201.139', '吉林省-四平市', '', '', '', '', '21', 'http://hjk.eurtech.top/man/form/index.html', '1571842115');
INSERT INTO `duanmoney` VALUES ('367', '测试啊', '18567785220', '江苏省-镇江市-句容市', '123', '18566785520', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/06/9.html', '1571885396');
INSERT INTO `duanmoney` VALUES ('368', '测试实施是', '13322224444', '河北省-石家庄市-长安区', '的是', '小学', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/06/9.html', '1571886451');
INSERT INTO `duanmoney` VALUES ('369', '头条测试', '18001008001', '浙江省-丽水市-龙泉市', '彩色', '小学', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/06/9.html', '1571886752');
INSERT INTO `duanmoney` VALUES ('370', '叶晨晨', '15215761852', '浙江省-丽水市-龙泉市', '浙江省丽水市龙泉市小梅镇大窑村44号', '中学', '115.230.9.113', '浙江省-丽水市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/06/9.html', '1571957383');
INSERT INTO `duanmoney` VALUES ('371', '测试成', '18566785541', '吉林省-延边朝鲜族自治州-安图县', '123', '小学', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '18', 'http://ak.diequ5678.com/hc/zyjy-07/form/index.html', '1571967065');
INSERT INTO `duanmoney` VALUES ('372', '郝测试', '18977451120', '天津市-天津市市辖区-红桥区', '456', '中学', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '18', 'http://ak.diequ5678.com/hc/zyjy-07/form/index.html', '1571967371');
INSERT INTO `duanmoney` VALUES ('373', '测四', '18651760833', '山西省-太原市-小店区', '1', '小学', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '18', 'https://ak.lyzz666.com/lb/06/9.html', '1571968887');
INSERT INTO `duanmoney` VALUES ('374', '测试三', '15951066527', '山西省-大同市-南郊区', '红色的哈交话费', '小学', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '18', 'https://bcs.lyqgdz4.com/lb/jy04/9.html', '1571969316');
INSERT INTO `duanmoney` VALUES ('375', '夏岩博', '15223053436', '重庆市-重庆市市辖区-江津区', '重庆江津芳草苑C丨栋23一5', '初二', '183.227.140.197', '重庆市-重庆市', '', '', '', '', '18', 'http://drb.jtwltt.com/cj/06/9.html', '1571971520');
INSERT INTO `duanmoney` VALUES ('376', '1', '17631566976', '湖北省-武汉市-江岸区', '1', '17631566976', '119.123.204.182', '广东省-深圳市', '', '', '', '', '18', 'https://me.lyqgdz2.com/cj/04/9.html', '1571974805');
INSERT INTO `duanmoney` VALUES ('377', '1', '15745678901', '北京市-北京市市辖区-东城区', '1', '1', '116.21.15.39', '广东省-广州市', '', '', '', '', '18', 'https://me.lyqgdz2.com/cj/04/9.html', '1571985367');
INSERT INTO `duanmoney` VALUES ('378', '测试微', '18651760833', '北京市-北京市市辖区-东城区', '1', '小学', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '44', 'http://ak.diequ5678.com/hc/zyjy-07/10.html', '1571995554');
INSERT INTO `duanmoney` VALUES ('379', '续建华', '17752251679', '甘肃省-兰州市-城关区', '甘肃省定西市安定区内官镇内官村四社', '', '42.93.107.49', '甘肃省-定西市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572009379');
INSERT INTO `duanmoney` VALUES ('380', '袁莉莉', '13563579823', '山东省-聊城市-东昌府区', '古楼办事处站前街电脑科技城', '初中七年级', '112.239.201.211', '山东省-聊城市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572012423');
INSERT INTO `duanmoney` VALUES ('381', '戴新华', '13588847586', '浙江省-杭州市-桐庐县', '分水镇儒桥村', '六年级', '183.129.81.8', '浙江省-杭州市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572048840');
INSERT INTO `duanmoney` VALUES ('382', '王雨嫣', '14790685906', '安徽省-安庆市-望江县', '安徽省望江县鸦滩镇凤栖村', '高中', '36.7.228.47', '安徽省-淮北市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572060213');
INSERT INTO `duanmoney` VALUES ('383', '张庆亮', '13919842282', '甘肃省-兰州市-七里河区', '建工时代', '小学', '117.136.27.151', '甘肃省-兰州市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572060812');
INSERT INTO `duanmoney` VALUES ('384', '张天奇', '15348232438', '四川省-南充市-南部县', '伏虎镇柳驿乡十一村四', '小学', '223.104.190.9', '-----', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572061693');
INSERT INTO `duanmoney` VALUES ('385', '肖毅', '18073807932', '湖南省-娄底市-冷水江市', '冷水江市锑都中路汇德公馆', '初二', '106.19.216.88', '湖南省-长沙市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572062731');
INSERT INTO `duanmoney` VALUES ('386', '王雷祥', '13954957778', '山东省-临沂市-平邑县', '平邑县西环一路八埠庄社区(福瑞王酒)办事处', '小学', '112.9.213.97', '山东省-济南市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572063862');
INSERT INTO `duanmoney` VALUES ('387', '王雷祥', '13954957778', '山东省-临沂市-平邑县', '平邑县西环一路八埠庄社区(福瑞王酒)办事处', '小学', '112.9.213.97', '山东省-济南市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572063862');
INSERT INTO `duanmoney` VALUES ('388', '吴思佳', '18118061975', '江苏省-宿迁市-沭阳县', '沭阳县北丁集周王小区', '中学', '117.95.161.240', '江苏省-宿迁市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572068763');
INSERT INTO `duanmoney` VALUES ('389', '胡家浩', '13791880677', '山东省-潍坊市-临朐县', '山东省临朐县冶源镇冶西村295', '初中', '117.136.95.153', '山东省-济南市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572073408');
INSERT INTO `duanmoney` VALUES ('390', '叶逢太', '18386038553', '贵州省-毕节市-七星关区', '贵州毕节市七星关区亮岩镇合欢村坡上组', '初中', '220.202.152.30', '湖南省-长沙市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572080694');
INSERT INTO `duanmoney` VALUES ('391', '叶逢太', '18386038553', '贵州省-毕节市-七星关区', '贵州毕节市七星关区亮岩镇合欢村坡上组', '初中', '220.202.152.30', '湖南省-长沙市', '', '', '', '', '18', 'https://drb.jtwltt.com/cj/06/9.html', '1572081057');
INSERT INTO `duanmoney` VALUES ('392', '测试微', '18651760844', '河北省-石家庄市-长安区', '1', '小学', '218.92.165.150', '江苏省-盐城市', '', '', '', '', '44', 'https://org.shwslmz.com/hc/07/10.html', '1572249187');
INSERT INTO `duanmoney` VALUES ('393', '测试1', '18092362582', '河南省-郑州市-中原区', '12312312312313', '大学', '123.139.120.65', '陕西省-安康市', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572345212');
INSERT INTO `duanmoney` VALUES ('394', 'cxx', '15366197125', '--', 'ght', 'xx', '117.90.170.189', '江苏省-镇江市', '', '', '', '', '53', 'http://localhost:63342/lx/templates/8080/csj/jy/53/index.html?_ijt=8bmp8ci7oep98s1ln0f5kfltjp', '1572351447');
INSERT INTO `duanmoney` VALUES ('395', '陈秀相', '15366197189', '安徽省-合肥市-瑶海区', '二位', '信息', '117.90.170.189', '江苏省-镇江市', '', '', '', '', '53', 'http://localhost:8085/page/80/csj/jy/53/view', '1572352644');
INSERT INTO `duanmoney` VALUES ('396', '刘诗发:', '13043018988', '河南省-郑州市-新密市', '大学南路与高洼街交叉口同赢企业总部', '初中三年级', '61.158.148.10', '河南省-郑州市', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572433101');
INSERT INTO `duanmoney` VALUES ('397', '张松', '18731971551', '河北省-邢台市-桥东区', '平安路康桥尚城', '初一', '123.180.82.161', '河北省-邢台市', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572433151');
INSERT INTO `duanmoney` VALUES ('398', '陈希银', '13869904575', '山东省-临沂市-兰山区', '怡城华府二号楼一单元402室', '中学', '112.233.241.208', '山东省-临沂市', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572433824');
INSERT INTO `duanmoney` VALUES ('399', '纪烈珍', '15842201928', '辽宁省-鞍山市-立山区', '辽宁省鞍山市立山区胜利北路正富小区5栋一单元', '初中三年级', '123.186.29.46', '辽宁省-鞍山市', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572434143');
INSERT INTO `duanmoney` VALUES ('400', '陈春丽', '18530882698', '河南省-郑州市-二七区', '兴华南街汝河路交叉口汴梁大汤包', '初中', '115.60.166.227', '河南省-郑州市', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572435146');
INSERT INTO `duanmoney` VALUES ('401', '徐桃红', '13767849201', '江西省-景德镇市-昌江区', '江西省景德镇市昌江供电公司', '中学', '182.99.58.126', '江西省-景德镇市', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572435197');
INSERT INTO `duanmoney` VALUES ('402', '杨培', '18908908577', '西藏自治区-拉萨市-城关区', '西藏拉萨市城关区东郊老安居园北区', '小学二年级', '101.248.206.103', '西藏自治区-日喀则地区', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572435592');
INSERT INTO `duanmoney` VALUES ('403', '董利兰', '13929127422', '广东省-佛山市-顺德区', '广东省顺德区佛山市黄圃镇保利外滩', '', '183.27.178.36', '广东省-佛山市', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572436190');
INSERT INTO `duanmoney` VALUES ('404', '王小姐', '17818401031', '广东省-深圳市-龙岗区', '爱联社区太平村', '小学五年级', '116.7.47.150', '广东省-深圳市', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572436540');
INSERT INTO `duanmoney` VALUES ('405', '王小姐', '17818401031', '广东省-深圳市-龙岗区', '爱联社区太平村', '小学五年级', '116.7.47.150', '广东省-深圳市', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572436540');
INSERT INTO `duanmoney` VALUES ('406', '王小姐', '17818401031', '广东省-深圳市-龙岗区', '爱联社区太平村', '小学五年级', '116.7.47.150', '广东省-深圳市', '', '', '', '', '46', 'http://jiaoyu.xaxing04.com/jiaoyu10/', '1572436540');
INSERT INTO `duanmoney` VALUES ('412', '蔡佳燚', '13600795687', '福建省-泉州市-石狮市', '福建省石狮市百德康城美墅', '小学', '175.43.183.239', '福建省-泉州市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572584572');
INSERT INTO `duanmoney` VALUES ('413', '黥冂', '15835263588', '河北省-唐山市-丰南区', '丰南镇', '中学', '110.250.124.223', '河北省-唐山市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572606165');
INSERT INTO `duanmoney` VALUES ('414', '孟彬', '18084167647', '贵州省-六盘水市-钟山区', '就读幸福学校', '初三', '1.206.249.250', '贵州省-六盘水市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572613239');
INSERT INTO `duanmoney` VALUES ('415', '孟彬', '18084167647', '贵州省-六盘水市-钟山区', '就读幸福学校', '初三', '1.206.249.250', '贵州省-六盘水市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572613239');
INSERT INTO `duanmoney` VALUES ('416', '滚', '19918539978', '湖南省-长沙市-芙蓉区', '滚', '中学', '223.104.130.213', '湖南省-长沙市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572647725');
INSERT INTO `duanmoney` VALUES ('417', '师梓涵', '15758030990', '云南省-玉溪市-通海县', '通海县四街镇', '人教版初中', '182.240.145.217', '云南省-玉溪市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572649022');
INSERT INTO `duanmoney` VALUES ('418', '邓欣悦', '15228311743', '四川省-德阳市-', '杨庙村五村十队', '黄甸小学', '183.221.144.158', '四川省-绵阳市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572651176');
INSERT INTO `duanmoney` VALUES ('419', '赵姚臣', '15333996144', '河南省-许昌市-许昌县', '蒋李集镇126街下寨村', '高中', '124.236.57.200', '河北省-石家庄市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572667293');
INSERT INTO `duanmoney` VALUES ('420', '周诗雨', '15972916996', '湖北省-武汉市-江夏区', '柏木岭', '康宁路', '103.90.92.10', '-----', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572675816');
INSERT INTO `duanmoney` VALUES ('421', '李培玉', '15172665969', '湖北省-襄阳市-襄州区', '天润汽配城119一19', '小学', '117.136.23.178', '湖北省-武汉市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572677536');
INSERT INTO `duanmoney` VALUES ('422', '帅佩琪', '15865308697', '河南省-郑州市-中原区', '东边', '爱心学校', '123.55.37.36', '河南省-平顶山市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572679802');
INSERT INTO `duanmoney` VALUES ('423', '韩长冕', '15518827345', '河南省-郑州市-中原区', '位庄村丁拐', '中召小学', '115.48.28.80', '河南省-安阳市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572681111');
INSERT INTO `duanmoney` VALUES ('424', '余音', '13457986794', '北京市-北京市市辖区-东城区', '南北路清华镇250号', '清华大学', '124.236.119.218', '河北省-石家庄市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572681344');
INSERT INTO `duanmoney` VALUES ('425', '王蕊', '13309966171', '江西省-宜春市-高安市', '江西省高安市莲花都市嘉园荷苑十二栋一单元601', '初三', '39.169.185.224', '江西省-宜春市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572683367');
INSERT INTO `duanmoney` VALUES ('426', '李新', '13481349649', '广西壮族自治区-桂林市-荔浦县', '荔浦县，青山镇满洞村，下古办', '小学六年级英语，语文', '223.104.92.182', '-----', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572694023');
INSERT INTO `duanmoney` VALUES ('427', '罗国超', '18385812115', '贵州省-黔东南苗族侗族自治州-天柱县', '天柱县凤城镇润松街上', '初中', '223.104.94.40', '贵州省-贵阳市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572798276');
INSERT INTO `duanmoney` VALUES ('428', '罗国超', '18385812115', '贵州省-黔东南苗族侗族自治州-天柱县', '天柱县凤城镇润松街上', '初中', '223.104.94.40', '贵州省-贵阳市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572798276');
INSERT INTO `duanmoney` VALUES ('429', '谭生', '13500079540', '广东省-茂名市-茂南区', '油城7路富新花园B栋2805（D号房）', '小学', '223.104.64.197', '-----', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572829917');
INSERT INTO `duanmoney` VALUES ('430', '闫淑冉', '18856854072', '安徽省-阜阳市-阜南县', '杨庄花园尚品蛋糕房', '初中', '223.104.34.97', '安徽省-合肥市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572881359');
INSERT INTO `duanmoney` VALUES ('431', '唐英杰', '13606468713', '辽宁省-沈阳市-和平区', '潍坊市昌乐县后皇村', '五年级', '117.136.78.109', '山东省-济南市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1572956238');
INSERT INTO `duanmoney` VALUES ('432', '廖晓辉', '17782231627', '浙江省-温州市-鹿城区', '仰义乡沿繁路33-1', '小学', '223.104.246.203', '-----', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1573043257');
INSERT INTO `duanmoney` VALUES ('433', 'wang', '13111111111', '天津市-天津市市辖区-和平区', '甜津津', '小学', '119.57.21.115', '北京市-北京市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1573451320');
INSERT INTO `duanmoney` VALUES ('434', '的发送到', '14654466544', '山西省-晋城市-城区', '发送到发水电费个人', '芳芳', '123.149.77.12', '河南省-郑州市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1573454250');
INSERT INTO `duanmoney` VALUES ('435', '的发送到', '14654466544', '山西省-晋城市-城区', '发送到发水电费个人', '芳芳', '123.149.77.12', '河南省-郑州市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1573454250');
INSERT INTO `duanmoney` VALUES ('436', '的发送到', '14654466544', '山西省-晋城市-城区', '发送到发水电费个人', '芳芳', '123.149.77.12', '河南省-郑州市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1573454250');
INSERT INTO `duanmoney` VALUES ('437', '康松涛', '13172374261', '山西省-长治市-黎城县', '河南省禹州市顺电子', '高中', '123.149.77.12', '河南省-郑州市', '', '', '', '', '51', 'http://jy.llww.ltd:8084/page/84/csj/xuesen/1/view', '1573455415');
INSERT INTO `duanmoney` VALUES ('438', '王琳', '18919580254', '青海省-海西蒙古族藏族自治州-德令哈市', '青海省海西蒙古族藏族自治州德令哈市祁连路10号烟草公司', '初中', '223.220.1.211', '青海省-西宁市', '', '', '', '', '44', 'http://ak.diequ5678.com/hc/zyjy-07/10.html', '1573475821');
INSERT INTO `duanmoney` VALUES ('439', '单天齐', '18248748624', '江苏省-徐州市-沛县', '江苏省徐州市沛县杨屯镇蒋海村', '小学四年语数外', '117.136.46.116', '江苏省-南京市', '', '', '', '', '44', 'http://ak.diequ5678.com/hc/zyjy-07/10.html', '1573481502');
INSERT INTO `duanmoney` VALUES ('440', '单天齐', '18248748624', '江苏省-徐州市-沛县', '江苏省徐州市沛县杨屯镇蒋海村', '小学四年语数外', '117.136.46.116', '江苏省-南京市', '', '', '', '', '44', 'http://ak.diequ5678.com/hc/zyjy-07/10.html', '1573481502');
INSERT INTO `duanmoney` VALUES ('441', 'ceshi', '13166366161', '北京市-北京市市辖区-东城区', '硕大无比覅黑的', '', '116.21.181.146', '广东省-广州市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd/form/index.html', '1573550110');
INSERT INTO `duanmoney` VALUES ('442', '黄倩', '18598590698', '重庆市-重庆市市辖区-万州区', '重庆市开州区大进镇', '大进小学', '183.131.110.107', '浙江省-嘉兴市', '', '', '', '', '44', 'http://ak.diequ5678.com/hc/zyjy-07/10.html', '1573558554');
INSERT INTO `duanmoney` VALUES ('443', '赵志玉', '13644373833', '吉林省-辽源市-东丰县', '东丰县横道河镇大房八组柳树泉眼', '吉林省东丰县横道河镇中学', '139.213.188.0', '吉林省-辽源市', '', '', '', '', '44', 'http://ak.diequ5678.com/hc/zyjy-07/10.html', '1573559810');
INSERT INTO `duanmoney` VALUES ('444', '张小庆', '18553419616', '山东省-德州市-临邑县', '山东省德州市临邑县邢侗张坊村', '初二', '112.242.101.57', '山东省-德州市', '', '', '', '', '44', 'http://ak.diequ5678.com/hc/zyjy-07/10.html', '1573560102');
INSERT INTO `duanmoney` VALUES ('445', '宋俊超', '15234662271', '山西省--', '山西省晋城市高平市府西巷粮食小区7号', '初中', '218.92.221.192', '江苏省-盐城市', '', '', '', '', '44', 'http://ak.diequ5678.com/hc/zyjy-07/10.html', '1573561333');
INSERT INTO `duanmoney` VALUES ('446', '宋俊超', '15234662271', '山西省--', '山西省晋城市高平市府西巷粮食小区7号', '初中', '218.92.221.192', '江苏省-盐城市', '', '', '', '', '44', 'http://ak.diequ5678.com/hc/zyjy-07/10.html', '1573561333');
INSERT INTO `duanmoney` VALUES ('447', '测试', '13760649396', '北京市-北京市市辖区-东城区', '北京天安门', '', '113.67.74.218', '广东省-广州市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd/form/index.html', '1573637192');
INSERT INTO `duanmoney` VALUES ('448', '测试1', '13760649234', '北京市-北京市市辖区-东城区', '天安门广场', '', '113.67.74.218', '广东省-广州市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd/form/index.html', '1573640624');
INSERT INTO `duanmoney` VALUES ('449', '孙永平', '18832088444', '河北省-邯郸市-丛台区', '上北镇东孙庄村', '', '117.136.47.221', '河北省-石家庄市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd/form/index.html', '1573643612');
INSERT INTO `duanmoney` VALUES ('450', '测试', '18745654235', '辽宁省-沈阳市-和平区', '陕西西安', '小学', '123.139.140.37', '陕西省-西安市', '', '', '', '', '49', 'http://jiaoyu.xaxing04.com/jiaoyu11/', '1573700434');
INSERT INTO `duanmoney` VALUES ('451', '测试', '13012345678', '北京市-北京市市辖区-东城区', '测试', '小学', '113.110.172.87', '广东省-深圳市', '', '', '', '', '49', 'http://jiaoyu.xaxing04.com/jiaoyu11/', '1573702926');
INSERT INTO `duanmoney` VALUES ('452', '114测试', '13760649321', '北京市-北京市市辖区-东城区', '天安门', '', '113.67.74.218', '广东省-广州市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573712713');
INSERT INTO `duanmoney` VALUES ('453', '董.绍英', '15844498107', '吉林省-四平市-铁西区', '郭家店世亿星网吧', '', '139.214.246.228', '吉林省-长春市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573733015');
INSERT INTO `duanmoney` VALUES ('454', '樊国鹏', '15097070804', '甘肃省-平凉市-崆峒区', '四十里铺铺鑫港城小区八号楼', '', '117.157.174.108', '甘肃省-兰州市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573733469');
INSERT INTO `duanmoney` VALUES ('455', '卜召军', '13863398377', '山东省-日照市-五莲县', '山东省日照市五莲县洪凝镇西山阳村', '', '120.192.94.78', '山东省-济南市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573734248');
INSERT INTO `duanmoney` VALUES ('456', '张启博', '13953387071', '山东省-淄博市-淄川区', '雁阳馨居140号', '', '111.17.106.56', '山东省-淄博市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573734807');
INSERT INTO `duanmoney` VALUES ('457', '王秀春', '15174765039', '内蒙古自治区-呼和浩特市-新城区', '兴安盟突泉县陶然庭苑小区4号楼二单元1102室', '', '116.136.147.17', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573735125');
INSERT INTO `duanmoney` VALUES ('458', '刘中林', '13707839537', '广西壮族自治区-桂林市-叠彩区', '胜利路西一里40栋501室', '', '117.182.131.13', '广西壮族自治区-梧州市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573735210');
INSERT INTO `duanmoney` VALUES ('459', '王兴', '13224424567', '吉林省-吉林市-永吉县', '岔路河康泰一区', '', '175.20.114.174', '吉林省-吉林市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573736257');
INSERT INTO `duanmoney` VALUES ('460', '张伟', '15948599525', '吉林省-吉林市-舒兰市', '吉林省舒兰市法特镇李记快递', '', '117.136.6.46', '吉林省-长春市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573736355');
INSERT INTO `duanmoney` VALUES ('461', '李智武', '13111181132', '山西省-吕梁市-孝义市', '新安街地百纺沿街门市殡葬总社405', '', '113.26.38.173', '山西省-吕梁市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573736524');
INSERT INTO `duanmoney` VALUES ('462', '汪伟', '15940313778', '辽宁省-沈阳市-于洪区', '沈阳市于洪区大兴乡爱国村爱国双语幼儿园', '', '120.200.24.60', '辽宁省-沈阳市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573736636');
INSERT INTO `duanmoney` VALUES ('463', '蔡士忠', '18951383378', '江苏省-南通市-启东市', '彩臣南村7号103', '', '112.2.130.222', '江苏省-南通市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573736686');
INSERT INTO `duanmoney` VALUES ('464', '王凤春', '15641334998', '辽宁省-抚顺市-东洲区', '虎西街棚改新楼24号楼3单元1O2室', '', '61.137.189.143', '辽宁省-抚顺市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573820721');
INSERT INTO `duanmoney` VALUES ('465', '张建华', '15130132084', '河北省-石家庄市-长安区', '庄窠小区古运码头2期6号楼店站点。', '', '119.248.226.70', '河北省-石家庄市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573820750');
INSERT INTO `duanmoney` VALUES ('466', '倪志彬', '18349390860', '四川省-成都市-新津县', '文井公社玉龙村7组', '', '125.69.21.91', '四川省-成都市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573820757');
INSERT INTO `duanmoney` VALUES ('467', '谭先生', '13354294295', '辽宁省-葫芦岛市-连山区', '新华大街42号五厂', '', '113.238.18.227', '辽宁省-葫芦岛市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573820906');
INSERT INTO `duanmoney` VALUES ('468', '段社比', '13103898680', '河南省-济源市-', '梨林铻大许村', '', '221.13.176.120', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573820942');
INSERT INTO `duanmoney` VALUES ('469', '张红', '13410012562', '广东省-深圳市-福田区', '车公庙都市阳光名苑3栋负二楼机电部', '', '117.136.12.165', '广东省-广州市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573820987');
INSERT INTO `duanmoney` VALUES ('470', '鲁运动', '15961326387', '江苏省-连云港市-东海县', '山左口乡西岭村', '', '223.104.147.231', '江苏省-南京市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573820988');
INSERT INTO `duanmoney` VALUES ('471', '赵凤云', '15149213851', '内蒙古自治区-呼伦贝尔市-阿荣旗', '农业银行老家属楼一单元101', '', '1.182.99.220', '内蒙古自治区-呼伦贝尔市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821045');
INSERT INTO `duanmoney` VALUES ('472', '赵凤云', '15149213851', '内蒙古自治区-呼伦贝尔市-阿荣旗', '农业银行老家属楼一单元101', '', '1.182.99.220', '内蒙古自治区-呼伦贝尔市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821045');
INSERT INTO `duanmoney` VALUES ('473', '吴洪生', '15378354476', '四川省-成都市-锦江区', '四川自贡沿滩板仓八期安值房=十=栋六楼四十七号', '', '171.94.181.213', '四川省-自贡市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821078');
INSERT INTO `duanmoney` VALUES ('474', '郑大清', '15327623968', '湖北省-武汉市-江岸区', '湖北省长阳土家族自治县龙舟坪镇实验小学', '', '171.82.166.54', '湖北省-武汉市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821139');
INSERT INTO `duanmoney` VALUES ('475', '陈步山', '15163178870', '山东省-济南市-历下区', '威海市文登区开发区九龙新城33一9号楼二单元403', '免费领取吗？如收运费我就不要了', '111.35.11.186', '山东省-威海市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821162');
INSERT INTO `duanmoney` VALUES ('476', '徐策', '13889314687', '辽宁省-沈阳市-法库县', '大孤家子镇，大孤家子村，市场25号。', '', '112.41.100.51', '辽宁省-沈阳市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821203');
INSERT INTO `duanmoney` VALUES ('477', '张建斌', '13663239682', '河北省-张家口市-桥东区', '德胜南街东六号楼二单元', '', '183.198.250.238', '河北省-张家口市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821265');
INSERT INTO `duanmoney` VALUES ('478', '李连仁', '13500777043', '辽宁省-大连市-沙河口区', '大连市沙河口区新建东街45_2-8', '', '59.47.37.64', '辽宁省-抚顺市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821313');
INSERT INTO `duanmoney` VALUES ('479', '刘国军。', '13470117178', '辽宁省-铁岭市-调兵山市', '吉园小区八号楼。', '', '60.18.245.234', '辽宁省-铁岭市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821364');
INSERT INTO `duanmoney` VALUES ('480', '王正利', '15091671618', '陕西省-西安市-户县', '草堂镇南坡村', '', '111.19.38.17', '陕西省-西安市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821864');
INSERT INTO `duanmoney` VALUES ('481', '聂先生', '13932186121', '河北省-石家庄市-鹿泉区', '获鹿镇新开路101号', '', '183.197.43.38', '河北省-石家庄市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821864');
INSERT INTO `duanmoney` VALUES ('482', '孙长喜', '13904874976', '海南省-三亚市-吉阳区', '临春3路4巷122号', '免费可以邮不是免费滚蛋', '223.104.23.230', '海南省-海口市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821942');
INSERT INTO `duanmoney` VALUES ('483', '张广新', '18603800451', '河南省-新乡市-红旗区', '华北石油局新乡基地', '', '42.233.3.171', '河南省-新乡市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821990');
INSERT INTO `duanmoney` VALUES ('484', '程少军', '15942521617', '辽宁省-沈阳市-和平区', '辽宁省丹东市东港市龙王庙镇龙王庙六组', '', '60.23.104.89', '辽宁省-丹东市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821993');
INSERT INTO `duanmoney` VALUES ('485', '康庆林', '15141084762', '辽宁省-沈阳市-和平区', '辽宁省铁岭市盛世桃园小区大正超市', '', '42.7.132.206', '辽宁省-铁岭市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821995');
INSERT INTO `duanmoney` VALUES ('486', '郑慧', '13881610409', '四川省-雅安市-雨城区', '名山区，花香首府，六憧一单元六一四号', '', '112.18.35.201', '四川省-雅安市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821998');
INSERT INTO `duanmoney` VALUES ('487', '郑慧', '13881610409', '四川省-雅安市-雨城区', '名山区，花香首府，六憧一单元六一四号', '', '112.18.35.201', '四川省-雅安市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573821998');
INSERT INTO `duanmoney` VALUES ('488', '张成', '15241233247', '辽宁省-鞍山市-台安县', '台安县金帝家园', '', '42.249.25.34', '辽宁省-沈阳市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822041');
INSERT INTO `duanmoney` VALUES ('489', '邱德信', '15925706798', '浙江省-丽水市-松阳县', '大东坝下宅街59号', '', '117.147.156.236', '浙江省-丽水市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822041');
INSERT INTO `duanmoney` VALUES ('490', '王尊元', '13899024996', '新疆维吾尔自治区-巴音郭楞蒙古自治州-和静县', '天鸿小区7一3一202', '', '223.115.209.1', '新疆维吾尔自治区-塔城地区', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822043');
INSERT INTO `duanmoney` VALUES ('491', '黄河', '18299097078', '新疆维吾尔自治区-石河子市-', '石河子市25小区，永龙商店', '18299097078', '36.109.171.220', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822091');
INSERT INTO `duanmoney` VALUES ('492', '黄河', '18299097078', '新疆维吾尔自治区-石河子市-', '石河子市25小区，永龙商店', '18299097078', '36.109.171.220', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822091');
INSERT INTO `duanmoney` VALUES ('493', '黄河', '18299097078', '新疆维吾尔自治区-石河子市-', '石河子市25小区，永龙商店', '18299097078', '36.109.171.220', '-----', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822091');
INSERT INTO `duanmoney` VALUES ('494', '王金才', '13962786908', '江苏省-南通市-海安县', '江苏省南通市海安县海安镇泰宁人家十幢二0四室', '试用后，如产品确实好，立即购买', '223.104.4.78', '江苏省-南京市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822160');
INSERT INTO `duanmoney` VALUES ('495', '文波', '13804961220', '辽宁省-大连市-中山区', '辽宁省大连市中山区新生街64号', '下午', '36.102.228.33', '内蒙古自治区-呼和浩特市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822191');
INSERT INTO `duanmoney` VALUES ('496', '李华喜', '18792062978', '安徽省-淮南市-寿县', '迎河镇大店小学', '我先试试，若很有效，我一定购买，好吗？', '112.27.76.161', '安徽省-淮南市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822234');
INSERT INTO `duanmoney` VALUES ('497', '兰云芝.', '13589441682', '山东省-东营市-东营区', '山东省东营市东营区阳光100城市丽园29号楼101室', '', '144.12.64.128', '山东省-菏泽市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822252');
INSERT INTO `duanmoney` VALUES ('498', '余贵兴', '15234763158', '山西省-忻州市-宁武县', '凤凰大街鑫运小区门房余贵兴收', '', '1.69.222.71', '山西省-忻州市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822297');
INSERT INTO `duanmoney` VALUES ('499', '老郝', '13994230386', '山西省-太原市-万柏林区', '纺织街纺织苑B区10楼一单元1705', '', '221.205.42.92', '山西省-太原市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822387');
INSERT INTO `duanmoney` VALUES ('500', '康志会.', '13943614198', '吉林省-长春市-南关区', '白城市洮南市聚宝乡龙泉村', '', '122.138.216.67', '吉林省-白城市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573822758');
INSERT INTO `duanmoney` VALUES ('501', '白跃辉', '15962283022', '江苏省-南京市-玄武区', '江苏省苏州市太仓市科教新城南城雅苑十三幢中栋203窒', '', '183.209.125.128', '江苏省-苏州市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573823171');
INSERT INTO `duanmoney` VALUES ('502', '刘飞', '13674740174', '内蒙古自治区-呼和浩特市-赛罕区', '保全街，东达景苑小区，七号楼，四单元一楼东户，菜鸟驿站', '', '39.154.23.1', '内蒙古自治区-呼和浩特市', '', '', '', '', '21', 'http://hjk.eurtech.top/xd2/form/index.html', '1573823381');
INSERT INTO `duanmoney` VALUES ('503', '穿山甲测', '15827056725', '河北省-石家庄市-长安区', '把你的思念对方', '中学', '113.77.151.59', '广东省-东莞市', '', '', '', '', '44', 'http://ak.diequ5678.com/hc/zyjy-07/10.html', '1573892270');

-- ----------------------------
-- Table structure for `duanuser`
-- ----------------------------
DROP TABLE IF EXISTS `duanuser`;
CREATE TABLE `duanuser` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(200) NOT NULL,
  `group` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duanuser
-- ----------------------------
INSERT INTO `duanuser` VALUES ('1', 'admin', 'jiaoyu123', '0', '1');
INSERT INTO `duanuser` VALUES ('12', '百度信息流1', 'a123456', '11', '2');
INSERT INTO `duanuser` VALUES ('13', '赵总123', 'a123456', '', '3');
INSERT INTO `duanuser` VALUES ('11', 'bdxxl1', 'a123456', '', '3');
INSERT INTO `duanuser` VALUES ('5', '张三', '123456789', '2', null);
INSERT INTO `duanuser` VALUES ('8', 'wanhui', 'wanhui', '', '1');
INSERT INTO `duanuser` VALUES ('9', '搜索教育1', 'a123456', '10', '2');
INSERT INTO `duanuser` VALUES ('10', 'xiaoqiang', 'a123456', '', '3');
INSERT INTO `duanuser` VALUES ('14', '百度搜索2wang', 'a123456', '13', '2');
INSERT INTO `duanuser` VALUES ('15', '百度信息流2', 'a123456', '', '3');
INSERT INTO `duanuser` VALUES ('17', 'bdxxl2', 'a123456', '15', '2');
INSERT INTO `duanuser` VALUES ('18', 'toutiaojiaoyu2', 'toutiaojiaoyu2', '', '3');
INSERT INTO `duanuser` VALUES ('19', 'toutiaojiaoyu1', 'a123456', '18', '2');
INSERT INTO `duanuser` VALUES ('22', '黄精牡蛎tg', 'qwe123456', '', '3');
INSERT INTO `duanuser` VALUES ('20', '小米领取kf', 'a1234567', '21', '2');
INSERT INTO `duanuser` VALUES ('21', '小米领取tg', 'a123456', '', '3');
INSERT INTO `duanuser` VALUES ('23', '黄精牡蛎kh', 'qwe456789', '22', '2');
INSERT INTO `duanuser` VALUES ('24', '教育kh', 'admin456', '25', '2');
INSERT INTO `duanuser` VALUES ('25', '教育tg', 'admin123', '', '3');
INSERT INTO `duanuser` VALUES ('26', '123456789', '123456789', '', '4');
INSERT INTO `duanuser` VALUES ('27', 'jianfei', 'jianfei123', '32', '2');
INSERT INTO `duanuser` VALUES ('28', 'ag1然道减肥', 'a123456', '33', '2');
INSERT INTO `duanuser` VALUES ('30', 'ag1健熙减肥', 'a123456', '34', '2');
INSERT INTO `duanuser` VALUES ('31', 'ag1美健减肥', 'a123456', '35', '2');
INSERT INTO `duanuser` VALUES ('32', 'jianfei1', 'jianfei1234', '', '3');
INSERT INTO `duanuser` VALUES ('33', '然道', 'a123456', '', '3');
INSERT INTO `duanuser` VALUES ('34', '健熙', 'a123456', '', '3');
INSERT INTO `duanuser` VALUES ('35', '美健', 'a123456', '', '3');
INSERT INTO `duanuser` VALUES ('37', 'xiaomijianfei1', 'xiaomijianfei1', '38', '2');
INSERT INTO `duanuser` VALUES ('38', 'xiaomijianfei2', 'xiaomijianfei2', '', '3');
INSERT INTO `duanuser` VALUES ('39', '减肥kh', 'admin123', '40', '2');
INSERT INTO `duanuser` VALUES ('40', '减肥tg', 'admin456', '', '3');
INSERT INTO `duanuser` VALUES ('41', 'jy201910141', 'jy201910141', '', '3');
INSERT INTO `duanuser` VALUES ('43', 'jy201910142', 'jy201910142', '41', '2');
INSERT INTO `duanuser` VALUES ('44', 'jiaoyu1025tg', 'admin123', '', '3');
INSERT INTO `duanuser` VALUES ('45', 'jiaoyu1025kh', 'admin456', '44', '2');
INSERT INTO `duanuser` VALUES ('46', '广点通tg', 'a123456', '', '3');
INSERT INTO `duanuser` VALUES ('47', '广点通002', 'a123456', '46', '2');
INSERT INTO `duanuser` VALUES ('48', '粉丝通kh', 'admin123', '49', '2');
INSERT INTO `duanuser` VALUES ('49', '粉丝通tg', 'admin456', '', '3');
INSERT INTO `duanuser` VALUES ('50', '头条kh', 'a123456', '51', '2');
INSERT INTO `duanuser` VALUES ('51', '头条tg', 'admin456', '', '3');
INSERT INTO `duanuser` VALUES ('52', '头条kh2', 'a123456', '53', '2');
INSERT INTO `duanuser` VALUES ('53', '头条tg2', 'admin456', '', '3');
