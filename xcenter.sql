-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.12-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 xcenter 的数据库结构
CREATE DATABASE IF NOT EXISTS `xcenter` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `xcenter`;


-- 导出  表 xcenter.xcenter_admin 结构
CREATE TABLE IF NOT EXISTS `xcenter_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `classic` varchar(2) NOT NULL DEFAULT '2' COMMENT '1代表超级管理员，其它的为一般管理员',
  `flag` varchar(1) NOT NULL DEFAULT '1' COMMENT '状态标示，1代表正常，2代表冻结',
  `created` varchar(20) NOT NULL,
  `salt` varchar(6) NOT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_admin 的数据：~2 rows (大约)
DELETE FROM `xcenter_admin`;
/*!40000 ALTER TABLE `xcenter_admin` DISABLE KEYS */;
INSERT INTO `xcenter_admin` (`id`, `username`, `password`, `classic`, `flag`, `created`, `salt`, `role_id`) VALUES
	(1, 'admin', '8715f560ad31e23d4f0d42f73c615919', '1', '1', '1271130344', '57b859', 0),
	(11, 'master', '1bb8b05c93d7034bb9789d3f4699ac2c', '2', '1', '1387182572', 'c537db', 5);
/*!40000 ALTER TABLE `xcenter_admin` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_ads 结构
CREATE TABLE IF NOT EXISTS `xcenter_ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `intro` varchar(200) DEFAULT NULL COMMENT '广告描述',
  `img` varchar(40) NOT NULL,
  `weblink` varchar(100) DEFAULT NULL,
  `flag` varchar(1) NOT NULL DEFAULT '1',
  `classid` int(10) unsigned NOT NULL,
  `created` varchar(25) DEFAULT NULL,
  `sort_number` smallint(5) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_ads 的数据：~270 rows (大约)
DELETE FROM `xcenter_ads`;
/*!40000 ALTER TABLE `xcenter_ads` DISABLE KEYS */;
INSERT INTO `xcenter_ads` (`id`, `title`, `intro`, `img`, `weblink`, `flag`, `classid`, `created`, `sort_number`) VALUES
	(1, '别 做 烫 染 活 寡 妇', NULL, '20091223162447171.jpg', 'http://www.bb580.com.cn/bb580em/?29', '1', 1, '1258603209', 255),
	(2, '大揭秘：揪出化妆七大禁忌', NULL, '20100409165232725.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5609', '1', 1, '1258603463', 255),
	(3, '珠宝表悄悄爬上男人手腕', NULL, '20100409164806757.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4958', '1', 1, '1258603592', 255),
	(4, '专家揭露最健康减肥方法排行榜', NULL, '20100413165726326.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5639', '1', 1, '1258603910', 255),
	(5, '各种果汁的营养与疗效', NULL, '20100413170251497.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5998', '1', 3, '1258610045', 255),
	(6, '汇健康', NULL, '20091119135647542.jpg', 'http://www.bb580.com.cn', '1', 102, '1258610207', 255),
	(7, '跟孔子学习冬季如何饮食:一天吃肉不超二两 三九天多吃姜', NULL, '20100120170705250.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4130', '1', 4, '1258610894', 255),
	(8, '睡前10招 让你醒来容光焕发', NULL, '20100203142833366.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3942', '1', 5, '1258611050', 255),
	(9, '准新娘成功减肥秘籍', NULL, '20100413153753165.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5563', '1', 7, '1258611105', 255),
	(10, '有机的就是健康的', NULL, '20091119141239828.jpg', 'http://www.bb580.com.cn/bb580em/?2', '1', 6, '1258611159', 255),
	(11, '出门4大瘦脸功紧急变小脸蛋', NULL, '20100413153144241.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5996', '1', 2, '1258611240', 255),
	(12, '春节非主流自由行攻略', NULL, '20100206134039700.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4798', '1', 8, '1258611718', 255),
	(13, '在家装个舒适变形沙发', NULL, '20100205145548696.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3968', '1', 9, '1258611793', 255),
	(14, '60个生活实用小妙招', NULL, '20091229180738589.jpg', 'http://www.bb580.com/view/article/list.php?sid=21', '1', 10, '1258611829', 255),
	(15, '韩国时尚BOBO头', NULL, '20100414105524608.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5594', '1', 11, '1258612190', 255),
	(17, '韩国人气外套打造时尚型MM', NULL, '20100206114744532.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3988', '1', 12, '1258612906', 255),
	(18, '不同脸型MM适用的万能卷发', NULL, '20100206114109890.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4180', '1', 13, '1258612955', 255),
	(19, '错选内衣让你的胸部下垂', NULL, '20100206113354281.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4064', '1', 14, '1258613066', 255),
	(20, '瘦腰大法坐着也能瘦哦', NULL, '20100206110259308.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4183', '1', 15, '1258613133', 255),
	(21, '春节也能享受&quot;平价游&quot;', NULL, '20100206134642815.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4757', '1', 17, '1258613609', 255),
	(22, '体验中国名山大川之旅', NULL, '20100206134543446.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3454', '1', 18, '1258613638', 255),
	(23, '长安2012年进入自主轿车', NULL, '2010030416251552.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4333', '1', 19, '1258613697', 255),
	(24, '时尚汽车', NULL, '2009111914571610.jpg', 'http://www.bb580.com.cn/view/article/list.php?bid=9', '1', 24, '1258613836', 255),
	(25, '国产奥迪Q5上市', NULL, '20100413150832872.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5615', '1', 25, '1258613860', 255),
	(26, '拜金女马诺令人记忆犹新的雷人语录', NULL, '20100413143027971.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=6006', '1', 20, '1258614068', 255),
	(27, '恰到好处的职场距离', NULL, '20091119150404424.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1635', '1', 22, '1258614244', 255),
	(28, '该争取就开口', NULL, '20091119150506344.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1636', '1', 23, '1258614306', 255),
	(30, '上班族为何星期三心情最低落', NULL, '20100413150543281.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5995', '1', 21, '1258614805', 255),
	(31, '韩国OL教你选裙子 化身甜美公主', NULL, '2010041411594629.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=6002', '1', 16, '1258615391', 255),
	(33, '用12种水果塑造美腿', NULL, '20091126173602118.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=196', '1', 50, '1258619144', 255),
	(34, '早上吃什么减肥你知道吗', NULL, '20091119164120281.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1625', '1', 51, '1258620080', 255),
	(35, '送给上班族的轻松养肝秘诀', NULL, '20100415141918886.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=6026', '1', 49, '1258622356', 255),
	(36, '各种果汁的营养与疗效', NULL, '20100415141516524.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5998', '1', 49, '1258622746', 255),
	(37, '25岁女人如何吃出好身材', NULL, '20100415140641689.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=6058', '1', 49, '1258624436', 255),
	(38, '恪守着关于饮食的种种箴言，是对是错', NULL, '20100122111000673.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3767', '1', 52, '1258684379', 255),
	(39, '吃柿子有很多好处有几点需要', NULL, '20100122112110235.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3659', '1', 53, '1258684602', 255),
	(40, '健康减肥食谱', NULL, '20091120105558342.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1629', '1', 54, '1258685758', 255),
	(41, '餐馆点菜大有学问', NULL, '20100122111639689.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1088', '1', 55, '1258685825', 255),
	(42, '冬季涮火锅吃冻', NULL, '20100122111240653.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3686', '1', 56, '1258685881', 255),
	(43, '小心吃果蔬皮也会让', NULL, '20100122110712866.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4155', '1', 57, '1258685969', 255),
	(44, '“高跟鞋女人”的养生之道', NULL, '2009112011422073.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1755', '1', 58, '1258688540', 255),
	(45, '生机饮食全民新食尚', NULL, '20091120114429808.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1743', '1', 59, '1258688669', 255),
	(46, '冬季多补水帮助防皮', NULL, '20100122114137821.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4142', '1', 60, '1258688805', 255),
	(47, '中年女人的保养之道', NULL, '20091120115449282.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=79', '1', 61, '1258689127', 255),
	(48, '多吃橙既可护肤美肤', NULL, '20091120115550193.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1522', '1', 62, '1258689350', 255),
	(49, '长期大量喝奶致癌', NULL, '20091120133747568.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1524', '1', 63, '1258695467', 255),
	(50, '感冒期间少吃水果', NULL, '20091120133852714.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1518', '1', 64, '1258695532', 255),
	(51, '女人不同时期的丰胸方法', NULL, '20091120134715996.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1525', '1', 65, '1258696035', 255),
	(52, '三款白菜减肥法', NULL, '20091120135130128.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1630', '1', 66, '1258696290', 255),
	(53, '肥胖的人吃什么好呢', NULL, '20091120135323147.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1627', '1', 67, '1258696403', 255),
	(54, '四位校花明星的减肥秘笈', NULL, '20091120135911314.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1623', '1', 68, '1258696751', 255),
	(55, '职业女性减肥四大战略', NULL, '20091120140013475.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=173', '1', 69, '1258696813', 255),
	(56, '值得推荐的豆芽减肥法', NULL, '20091120140135884.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1626', '1', 70, '1258696895', 255),
	(57, '有机蔬菜的6大秘籍', NULL, '20091120141318720.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1732', '1', 71, '1258697598', 255),
	(58, '食得健康的12大秘诀', NULL, '20091120141614616.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1731', '1', 72, '1258697774', 255),
	(59, '有机食品有哪些好处？', NULL, '20091120141727597.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1667', '1', 73, '1258697847', 255),
	(60, '生机饮食全民新食尚', NULL, '20091120141957881.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1743', '1', 74, '1258697997', 255),
	(61, '时尚达人春夏穿衣随心搭', NULL, '20100414155311405.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5590', '1', 28, '1258698519', 255),
	(62, '八大胖脸女明星瘦脸秘诀', NULL, '20100414155059862.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5597', '1', 28, '1258698632', 255),
	(63, '精致生活 精致描绘', NULL, '20091125152526312.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1827', '1', 75, '1259133926', 255),
	(64, '红酒文化', NULL, '20091125153507957.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1839', '1', 75, '1259134507', 255),
	(65, '盘点《蜗居》中经典台词', NULL, '20100415161118678.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2974', '1', 75, '1259134549', 255),
	(66, '怎样才能走出“剩女”的困局', NULL, '20100415142242788.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5433', '1', 75, '1259134628', 255),
	(67, '每天喝咖啡超过三杯会让乳房变小', NULL, '20100120172020394.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3500', '1', 76, '1259134879', 255),
	(68, '别墅装修施工常识50条汇总', NULL, '20100120172719633.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1828', '1', 77, '1259135047', 255),
	(69, '家庭的消毒方法', NULL, '2009112515460513.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1808', '1', 78, '1259135165', 255),
	(70, '男人更愿意为妻子花钱', NULL, '20100120173125481.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4197', '1', 79, '1259141293', 255),
	(71, '女人经常说话口是', NULL, '20100120175439905.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4196', '1', 80, '1259201487', 255),
	(72, '在壁室设计漂亮', NULL, '20100120180619550.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3972', '1', 81, '1259201762', 255),
	(73, '精致生活 精致描绘', NULL, '20091126101639353.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1827', '1', 82, '1259201799', 255),
	(74, '体验泰国水疗度', NULL, '20100121102449102.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3976', '1', 83, '1259201834', 255),
	(75, '四招试探男人对你有无意思', NULL, '20100120174047272.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3920', '1', 84, '1259202175', 255),
	(76, '厨房用具禁忌', NULL, '200911261025528.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1795', '1', 85, '1259202352', 255),
	(77, '洋酒的品味', NULL, '20091126104856387.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1723', '1', 86, '1259202836', 255),
	(78, '2010星座面面', NULL, '20100121103725523.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3407', '1', 87, '1259202925', 255),
	(79, '品味鸡尾酒', NULL, '20091126103608644.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1733', '1', 88, '1259202968', 255),
	(80, '畅游捷克葡萄', NULL, '20100121105052478.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3257', '1', 89, '1259203212', 255),
	(81, '如何品味咖啡', NULL, '20091126104046285.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1838', '1', 90, '1259203246', 255),
	(82, '世界上最小的狗身长仅10厘米', NULL, '20100121103240280.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3854', '1', 91, '1259203403', 255),
	(83, '贵宾狗狗美容', NULL, '20091126104629691.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1842', '1', 92, '1259203589', 255),
	(84, '女人的气质与修养', NULL, '20100121110349145.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3388', '1', 93, '1259203974', 255),
	(85, '学会做一个精致女人', NULL, '20091126105334765.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1793', '1', 94, '1259204014', 255),
	(86, '杭州西湖美景', NULL, '20100125104908322.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2774', '1', 108, '1259204389', 255),
	(87, '细数你一生当中应该远离的九种人', NULL, '20100121105640100.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3622', '1', 97, '1259204518', 255),
	(88, '气质女人代表', NULL, '20091126110244583.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1841', '1', 96, '1259204564', 255),
	(89, '懂得保养的女人', NULL, '20091126111319447.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1846', '1', 97, '1259204615', 255),
	(90, '爱丽舍宫', NULL, '20091126110349135.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1915', '1', 109, '1259204629', 255),
	(91, '蓬莱八仙幻宫', NULL, '20091126110643916.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1909', '1', 110, '1259204803', 255),
	(92, '夏日有约,冰爽同行', NULL, '20100125102201400.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3996', '1', 111, '1259205026', 255),
	(93, '“天下第一关”山', NULL, '20100125102705981.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2755', '1', 112, '1259205179', 255),
	(94, '西湖风景区', NULL, '20091126111548516.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1896', '1', 113, '1259205348', 255),
	(95, '北京奥林匹克', NULL, '20100125103000992.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2747', '1', 114, '1259205475', 255),
	(96, '江郎山', NULL, '20091126112033714.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1895', '1', 115, '1259205633', 255),
	(97, '神游充满奇幻', NULL, '20100125101137248.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3003', '1', 116, '1259205882', 255),
	(98, '去冰岛享受人间', NULL, '20100125101533414.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3002', '1', 117, '1259206011', 255),
	(99, '桐庐', NULL, '20091126112935168.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1890', '1', 118, '1259206175', 255),
	(101, '江郎山', NULL, '20091126113429195.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1895', '1', 119, '1259206469', 255),
	(102, '龙游石窟', NULL, '20091126113645302.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1893', '1', 120, '1259206605', 255),
	(103, '桐庐', NULL, '20091126113954788.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1890', '1', 121, '1259206794', 255),
	(104, '梅兰芳公园', NULL, '20091126114235959.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1884', '1', 122, '1259206955', 255),
	(105, '九寨沟风景', NULL, '20100125100337235.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2228', '1', 123, '1259207094', 255),
	(106, '预测2010年旅游必将火爆的目', NULL, '20100125103412268.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4067', '1', 124, '1259207437', 255),
	(107, '河阳民居', NULL, '20091126115506739.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1855', '1', 125, '1259207706', 255),
	(108, '要趁早去印度的', NULL, '20100125103807550.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3455', '1', 126, '1259207943', 255),
	(110, '体验中国佛教道教名山大川之旅', NULL, '20100125104216688.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3454', '1', 127, '1259208229', 255),
	(111, '南浔古镇', NULL, '20091126135130284.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1694', '1', 128, '1259214690', 255),
	(112, '机器人「新手」上市', NULL, '20091126140251811.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=949', '1', 98, '1259215204', 255),
	(113, '乐高机器人解数独', NULL, '20091126140751896.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=938', '1', 99, '1259215671', 255),
	(114, '机器人「新手」上市', NULL, '20091126140814110.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=949', '1', 100, '1259215694', 255),
	(115, '哈卜喀耶山', NULL, '2009112614111083.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1879', '1', 129, '1259215870', 255),
	(116, '少女峰', NULL, '20091126141321375.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1878', '1', 130, '1259216001', 255),
	(117, '世界最奇趣U盘', NULL, '20091126141600977.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=215', '1', 101, '1259216160', 255),
	(118, '圣淘沙', NULL, '20091126141847759.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1913', '1', 131, '1259216327', 255),
	(119, '左上弦手表的“左倾”主义', NULL, '20100122155226909.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3397', '1', 134, '1259216515', 255),
	(120, '泰山桃花峪', NULL, '20091130104536568.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2319', '1', 132, '1259216835', 255),
	(121, '懂得保养得女人--大S', NULL, '20091126143040585.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1846', '1', 106, '1259217040', 255),
	(122, '四川九寨沟风景', NULL, '20100125100114620.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2228', '1', 107, '1259217616', 255),
	(123, '谢霆锋惨遭强吻惊', NULL, '20100122165822711.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3774', '1', 138, '1259217653', 255),
	(124, '湖南武陵源风景名胜区', NULL, '20100125095823331.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2245', '1', 107, '1259217776', 255),
	(125, '张家界风景', NULL, '2010012509560268.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2590', '1', 107, '1259217989', 255),
	(126, '杭州西湖美景', NULL, '20100125095158224.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2774', '1', 107, '1259218747', 255),
	(127, '亮色奢华珠宝', NULL, '2009112615063746.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1660', '1', 133, '1259219197', 255),
	(128, 'Twins合体“复出”开怀大笑', NULL, '20100122163833538.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4149', '1', 137, '1259220236', 255),
	(129, '非洲猎豹抓住小羚羊玩耍后放生', NULL, '20100201160738905.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4623', '1', 184, '1259222440', 255),
	(130, '看看名表的身份和地位', NULL, '20100122155443746.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3393', '1', 135, '1259222565', 255),
	(131, '重庆最黑恶势力被捕', NULL, '20091126160518675.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1791', '1', 185, '1259222718', 255),
	(132, '阅兵之后歼10战斗机模型热销', NULL, '20091126160748515.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1597', '1', 186, '1259222868', 255),
	(133, '天价"金饭碗"亮相南京国内仅有3只', NULL, '20100122160453909.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3989', '1', 136, '1259222945', 255),
	(134, '09年广东固定资产投资增速', NULL, '20100203141404480.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4549', '1', 194, '1259223134', 255),
	(135, '450美元一双的LV筷子', NULL, '20091126162126549.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1665', '1', 158, '1259223686', 255),
	(136, '品牌的奢华玩物', NULL, '20091126162346313.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1658', '1', 156, '1259223826', 255),
	(137, '港股扭转近日', NULL, '2010020314265056.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4491', '1', 195, '1259223829', 255),
	(138, '登喜路的“玩物”', NULL, '20091126162518819.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1640', '1', 157, '1259223918', 255),
	(139, '股指午评：多', NULL, '20100203142902775.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4439', '1', 196, '1259223987', 255),
	(140, '创业板午评：13', NULL, '20100203143137697.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4437', '1', 197, '1259224163', 255),
	(141, '最能打动男人心的限量版奢华品', NULL, '20091126163017359.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1672', '1', 155, '1259224217', 255),
	(142, '炒高档中药强过', NULL, '20100203143532470.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4100', '1', 198, '1259224313', 255),
	(143, '钟表的独特魅力', NULL, '20100125140351947.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3391', '1', 144, '1259224376', 255),
	(144, '理财锦囊', NULL, '20091126163355497.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1644', '1', 199, '1259224435', 255),
	(145, '亮色奢华珠宝', NULL, '20091126163447728.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1660', '1', 142, '1259224487', 255),
	(146, '钨金珠宝展现神秘异彩', NULL, '20091126163556423.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1645', '1', 143, '1259224556', 255),
	(147, '外国人免费游安阳之举招恶评', NULL, '20091126163745976.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1316', '1', 192, '1259224665', 255),
	(148, '抗击甲流全球在行动', NULL, '20091126163917228.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1777', '1', 193, '1259224757', 255),
	(149, '职场江湖小心5大行为自', NULL, '20100203152024422.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4002', '1', 200, '1259224949', 255),
	(150, '令人心旷神怡的新型豪华SUV-奥迪Q7', NULL, '20100125141939919.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2344', '1', 151, '1259224954', 255),
	(151, '法拉利携带顶级超跑隆重亮相', NULL, '20091126164441773.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1948', '1', 152, '1259225081', 255),
	(152, '财富.人生.故事', NULL, '20091126164452256.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1786', '1', 201, '1259225092', 255),
	(153, '成功白领职场必备八追求', NULL, '20100203152414595.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3931', '1', 202, '1259225206', 255),
	(154, '法拉利经典跑车', NULL, '20091126164727479.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1948', '1', 153, '1259225247', 255),
	(155, '众SUV中的佼佼者-宝马X6憾世登场', NULL, '20100125142307982.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2340', '1', 154, '1259225345', 255),
	(156, '老百姓买房的5大致命误区', NULL, '201004141428335.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5012', '1', 183, '1259225478', 255),
	(157, '完美职场人必备的五种性格', NULL, '2010041413583623.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5868', '1', 183, '1259225568', 255),
	(158, '职场中最不受老板喜欢的十种人', NULL, '20100414140527907.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3575', '1', 183, '1259225702', 255),
	(159, '极品时髦的两款保时捷', NULL, '20100125141555195.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2658', '1', 150, '1259225761', 255),
	(160, '97%的毕业生遭遇职场问题', NULL, '2010041413555572.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5869', '1', 183, '1259225844', 255),
	(161, '劳力士蚝式表', NULL, '20091126165824504.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1952', '1', 145, '1259225904', 255),
	(162, '法拉利携带顶级超跑隆重亮相', NULL, '20091126170024690.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1948', '1', 133, '1259226024', 255),
	(163, '看看名表的身份和地位', NULL, '20100125140045904.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3393', '1', 146, '1259226175', 255),
	(164, '独特的家居钟表欣赏', NULL, '20091126170435376.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1954', '1', 147, '1259226275', 255),
	(165, '钱塘江今日将迎来本', NULL, '20091126170714570.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1593', '1', 187, '1259226434', 255),
	(166, '王者之风：200万级别百达翡丽', NULL, '20091126171032454.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1950', '1', 133, '1259226572', 255),
	(167, '重庆打黑警官', NULL, '20091126171027321.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1553', '1', 188, '1259226627', 255),
	(168, '双胞胎兄弟一', NULL, '20091126171219527.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1554', '1', 189, '1259226739', 255),
	(169, '国庆晚会', NULL, '20091126171723694.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1545', '1', 190, '1259227043', 255),
	(170, '美籍华人高', NULL, '20091126172047655.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1595', '1', 191, '1259227247', 255),
	(171, '世界十大经典名表为你呈现', NULL, '20091126172744429.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1956', '1', 148, '1259227664', 255),
	(172, '夏利N5', NULL, '20091127112732593.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1669', '1', 161, '1259228267', 255),
	(175, '新一代宝马5系全面曝光', NULL, '20091127112550879.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1857', '1', 161, '1259228505', 255),
	(176, '显瘦的腮红打法', NULL, '20091126174439346.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1703', '1', 29, '1259228552', 255),
	(177, '2009广州车展最受期待新车', NULL, '2009112711241136.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2407', '1', 161, '1259228622', 255),
	(178, '2009', NULL, '20091127112341911.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=7', '1', 161, '1259228812', 255),
	(179, '2009', NULL, '20091126174853817.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=7', '1', 162, '1259228933', 255),
	(180, '女人教你保养胸部小绝招', NULL, '20100414153153673.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=6036', '1', 28, '1259228999', 255),
	(181, '2009广州车展最受期待新车', NULL, '20091126175100480.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1661', '1', 163, '1259229060', 255),
	(182, '时尚界引领春天的缤纷眼妆', NULL, '20100414152908331.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5158', '1', 28, '1259229088', 255),
	(184, 'Bape继续发布2009秋季潮流时', NULL, '20100121162731114.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1451', '1', 30, '1259286656', 255),
	(185, 'HOW', NULL, '20091127101435429.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1965', '1', 164, '1259288075', 255),
	(186, '新一代宝马5系全面曝光', NULL, '20091127101934149.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1857', '1', 165, '1259288374', 255),
	(187, '全系标配', NULL, '2009112710215890.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1856', '1', 166, '1259288518', 255),
	(188, '蓝天的诱惑', NULL, '20091127102441473.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1854', '1', 167, '1259288681', 255),
	(189, '隆重亮相', NULL, '20091127102715677.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1853', '1', 168, '1259288835', 255),
	(190, '2010款悦动', NULL, '20091127102854682.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1851', '1', 169, '1259288934', 255),
	(191, '别克英朗首发', NULL, '2009112710320480.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1850', '1', 170, '1259289124', 255),
	(192, '瑞麒X1上市', NULL, '20091127103425862.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1673', '1', 171, '1259289265', 255),
	(193, '尽驰骋 驾天下', NULL, '20091127103857160.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1897', '1', 172, '1259289537', 255),
	(194, '宝马集团重磅', NULL, '20091127104129609.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1752', '1', 173, '1259289689', 255),
	(195, '不是终点是起点', NULL, '20091127104748122.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1750', '1', 174, '1259290068', 255),
	(196, '张柏芝生女愿望落', NULL, '20100122170151925.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3773', '1', 139, '1259290206', 255),
	(197, '中华品牌争取', NULL, '20091127105206877.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1749', '1', 175, '1259290326', 255),
	(198, '赵薇与富商感情稳定', NULL, '20091127105431782.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1966', '1', 140, '1259290471', 255),
	(199, '华泰B级轿车', NULL, '20091127105444527.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1740', '1', 176, '1259290484', 255),
	(200, '比亚迪正式', NULL, '2009112710592128.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1737', '1', 177, '1259290761', 255),
	(201, '春晚一夜走红明星', NULL, '20091127110506603.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1968', '1', 141, '1259291106', 255),
	(202, '仰融回归沈阳投资环保车', NULL, '20091127110746682.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1736', '1', 178, '1259291266', 255),
	(203, '奥迪Q5先进口', NULL, '20091127111018611.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1735', '1', 179, '1259291418', 255),
	(204, '华晨欲产奔驰车', NULL, '20091127111415302.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1734', '1', 180, '1259291655', 255),
	(205, '雷克萨斯GX460', NULL, '20091127111718621.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1983', '1', 181, '1259291838', 255),
	(206, '深圳车展 拉开帷幕', NULL, '20091127112010275.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1975', '1', 182, '1259292010', 255),
	(207, '明星们真金白银的较量', NULL, '2010041416364133.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5630', '1', 133, '1259292136', 255),
	(208, '萧邦Elton John系列手表', NULL, '20091127113708594.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1959', '1', 149, '1259293028', 255),
	(209, '智慧裸露 写真更诱人', NULL, '20091127140720602.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=179', '1', 31, '1259302040', 255),
	(210, 'Bape继续发布09秋季潮流配件', NULL, '20091127141415954.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1451', '1', 32, '1259302455', 255),
	(211, '香港的潮流之夏', NULL, '20091127142117995.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=33', '1', 33, '1259302877', 255),
	(212, '熟女性感服饰搭配', NULL, '20091127142519184.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1558', '1', 34, '1259303119', 255),
	(213, '冬季里服饰搭配的技巧', NULL, '20091127142718369.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1555', '1', 35, '1259303238', 255),
	(214, '时尚MM 穿出不一样的白衬衫', NULL, '20091127143026968.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1456', '1', 36, '1259303426', 255),
	(216, '小外套搭配显腿长', NULL, '20091127143418981.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1397', '1', 37, '1259303658', 255),
	(217, '肩章式小外套的巧妙搭配', NULL, '20091127143506635.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1329', '1', 38, '1259303706', 255),
	(218, '优雅蝙蝠装', NULL, '20091127143754803.jpg', 'http://video.baidu.com/', '1', 39, '1259303874', 255),
	(219, '最佳女性搭配尽显女人魅力', NULL, '20091127144019362.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1232', '1', 40, '1259304019', 255),
	(220, '染前必看', NULL, '20091127144347269.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1139', '1', 41, '1259304227', 255),
	(221, '2009秋冬流行发色', NULL, '20091127144426142.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1124', '1', 42, '1259304266', 255),
	(222, '2009情人节彩妆系列', NULL, '2009112714563515.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1707', '1', 43, '1259304995', 255),
	(223, '四步给你完美瓜子脸', NULL, '20091127151503794.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1712', '1', 44, '1259306103', 255),
	(224, '完全不脱妆的五大技巧', NULL, '20091127152529689.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1699', '1', 45, '1259306729', 255),
	(225, '轻金属裸妆', NULL, '20091127152700851.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1706', '1', 46, '1259306820', 255),
	(226, '时尚韩妆步骤', NULL, '20091127153624829.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1713', '1', 47, '1259307186', 255),
	(227, '淡妆美眉', NULL, '200911271539348.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1753', '1', 48, '1259307574', 255),
	(228, '冬季3天蜂蜜瘦身法', NULL, '20091127175848171.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1619', '1', 206, '1259315928', 255),
	(229, '最轻松的职业: 遛遛狗，20万', NULL, '20100203151716555.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4082', '1', 203, '1259317385', 255),
	(230, '职场正当防卫 勇敢说不', NULL, '20091127182546578.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2068', '1', 204, '1259317546', 255),
	(231, '4步DIY勾勒清新迷人日常妆', NULL, '2010041410353223.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4806', '1', 209, '1259574326', 255),
	(232, '2010用颜色碰撞出万紫千红', NULL, '20100414103744731.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=5531', '1', 210, '1259574341', 255),
	(233, '刚起不能喝的', NULL, '2010020614075789.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3654', '1', 211, '1259722033', 255),
	(234, '富二代晒传说中的豪宅雅舍家装', NULL, '20100205152039161.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4269', '1', 212, '1259735783', 255),
	(235, '鹈鹕教训...', NULL, '20091202144038821.jpg', 'http://www.bb580.com/view/article/show.php?id=1923', '1', 213, '1259736038', 255),
	(236, '在壁室设计漂亮的空气压力吸盘”', NULL, '201002061414099.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3972', '1', 213, '1259736143', 255),
	(237, '绅士淑女不可不知的咖啡礼仪', NULL, '2010020515070296.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2341', '1', 214, '1259736467', 255),
	(238, '寵物美容', NULL, '20100206140515535.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=2510', '1', 215, '1259737074', 255),
	(239, '气质女人的习惯如何养成', NULL, '20100206140023526.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4411', '1', 216, '1259737511', 255),
	(240, '摩托罗拉荣登CES2010最佳手机', NULL, '20100120143455784.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3812', '1', 217, '1259738006', 255),
	(241, '我国将成世界第四大有机食品消费大国', NULL, '20091202171219548.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1784', '1', 218, '1259745139', 255),
	(242, '有机农业与有机食品培训', NULL, '20091202173507514.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1781', '1', 219, '1259746507', 255),
	(243, '香米', NULL, '20091203153452403.jpg', 'http://www.bb580.com.cn/bb580em/?33', '1', 208, '1259825692', 255),
	(244, '购物', NULL, '20100324171925480.jpg', 'http://www.bb580.com.cn/bb580em/index.php?app=search&amp;brand=CONVERSE', '1', 220, '1259909905', 255),
	(245, '这个冬天不怕冷MM们的时尚装扮', NULL, '20100121165206866.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4248', '1', 29, '1259922052', 255),
	(246, '09秋季潮流配件', NULL, '20091204182520516.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=1451', '1', 238, '1259922320', 255),
	(247, '2010春夏流行趋势', NULL, '20091204182642122.jpg', 'http://www.bb580.com/view/article/show.php?id=1761', '1', 239, '1259922402', 255),
	(248, '超级容易模仿的穿搭组合', NULL, '20100121143109620.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4064', '1', 221, '1259922672', 255),
	(249, '熟女性感服饰搭配', NULL, '20091204183158888.jpg', 'http://www.bb580.com/view/article/show.php?id=1558', '1', 222, '1259922718', 255),
	(250, '三款自然蓬松中长发尽显脸小', NULL, '20100121163359576.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4182', '1', 223, '1259922833', 255),
	(251, '染前必看', NULL, '20091204183618764.jpg', 'http://www.bb580.com/view/article/show.php?id=1139', '1', 224, '1259922978', 255),
	(252, '时尚染发我们给你专业指导', NULL, '20091204183647609.jpg', 'http://www.bb580.com/view/article/show.php?id=1136', '1', 225, '1259923007', 255),
	(253, '时尚染发我们给你专业指导', NULL, '20100121163711173.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4181', '1', 226, '1259923194', 255),
	(254, '学习瑞模9款最绝美的发型搭配', NULL, '20100121164349253.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=4161', '1', 227, '1259923231', 255),
	(255, '换个发型放松下心情', '辅导辅导', '20091204184332254.jpg', 'http://www.bb580.com/view/article/show.php?id=1131', '1', 228, '1310356297', 255),
	(256, '只需10分钟就能让你瘦', '法国风格', '20091204184542771.jpg', 'http://www.bb580.com/view/article/show.php?id=2397', '1', 243, '1320630545', 255),
	(257, '快速减肥法', NULL, '20091204184834445.jpg', 'http://www.bb580.com/view/article/show.php?id=2392', '1', 230, '1259923714', 12),
	(258, '赴敌甘负的收购德太 阳论坛热帖', NULL, '2009120418494232.jpg', 'http://www.bb580.com/view/article/show.php?id=2390', '1', 231, '1259923782', 255),
	(259, '塑身徐塑身      塑 身 塑', NULL, '20091204185148869.jpg', 'http://www.bb580.com/view/article/show.php?id=2380', '1', 232, '1259923908', 255),
	(260, '轻轻松松去除小腹', NULL, '20091204185212789.jpg', 'http://www.bb580.com/view/article/show.php?id=2379', '1', 233, '1259923932', 255),
	(261, '四款立体颊妆打造可爱', NULL, '20091204185428539.jpg', 'http://www.bb580.com/view/article/show.php?id=2493', '1', 234, '1259924068', 255),
	(262, '男生看过来：校花', NULL, '20091204185626290.jpg', 'http://www.bb580.com/view/article/show.php?id=2490', '1', 235, '1259924186', 255),
	(263, '10分钟就快速', NULL, '20091204185648487.jpg', 'http://www.bb580.com/view/article/show.php?id=2489', '1', 236, '1259924208', 255),
	(265, '教你彻底卸去你美丽妆', NULL, '20091204190149871.jpg', 'http://www.bb580.com/view/article/show.php?id=2495', '1', 239, '1259924452', 255),
	(268, '水都国际健康俱乐部', NULL, '20100317144902352.jpg', 'hhttp://www.bb580.com.cn/bb580dp/shop/shop.php?shopid=11', '1', 243, '1306735216', 255),
	(269, '测试', NULL, '20100520092701234.jpg', 'http://www.bb580.com.cn/index.php?app=news&act=show&id=6677', '1', 1, '1262080187', 255),
	(270, '看包识女人', NULL, '2010012110584019.jpg', 'http://www.bb580.com.cn/view/article/show.php?id=3859', '1', 95, '1264042720', 1),
	(271, 'vfg', NULL, '2011042507431567.gif', 'http://www.12.com', '1', 243, '1303746195', 255),
	(273, '缺省标题', NULL, '20110530030853157.jpg', '#', '1', 243, '1306735183', 255),
	(274, '缺省标题', '和交换机', '20110711115556686.jpg', 'http://localhost/xcenter_mini', '1', 103, '1310356556', 255),
	(275, '缺省标题', '', '20111122144307685.png', 'http://localhost/xcenter_mini', '1', 243, '1321944187', 255),
	(276, '缺省标题', '', '20111122144428796.png', 'http://localhost/xcenter_mini', '1', 103, '1321944268', 255),
	(277, '缺省标题', '', '20111122144449967.png', 'http://localhost/xcenter_mini', '1', 243, '1321944289', 255),
	(278, '缺省标题', '', '20111122144828819.png', 'http://localhost/xcenter_mini', '1', 243, '1321944508', 255),
	(279, '缺省标题', '', '20111122144902567.png', 'http://localhost/xcenter_mini', '1', 103, '1321944542', 255),
	(280, '缺省标题', '', '20111122145005317.png', 'http://localhost/xcenter_mini', '1', 243, '1321944605', 255),
	(281, '缺省标题', '', '20111122145115595.png', 'http://localhost/xcenter_mini', '1', 243, '1321944675', 255),
	(282, '缺省标题', '', '20111122145230373.png', 'http://localhost/xcenter_mini', '1', 243, '1321944750', 255),
	(283, '测试标题', '默认描述', '20111122145250729.png', 'http://localhost/xcenter_mini', '2', 243, '1321944770', 123);
/*!40000 ALTER TABLE `xcenter_ads` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_ads_bclass 结构
CREATE TABLE IF NOT EXISTS `xcenter_ads_bclass` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `is_del` varchar(1) NOT NULL DEFAULT '1' COMMENT '1代表可删除，默认为可删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_ads_bclass 的数据：~10 rows (大约)
DELETE FROM `xcenter_ads_bclass`;
/*!40000 ALTER TABLE `xcenter_ads_bclass` DISABLE KEYS */;
INSERT INTO `xcenter_ads_bclass` (`id`, `name`, `is_del`) VALUES
	(1, '首页', '1'),
	(2, '健康生活', '1'),
	(3, '美容时尚', '1'),
	(4, '精致生活', '1'),
	(5, '旅游天下', '1'),
	(6, '奢华人生', '1'),
	(7, '汽车资讯', '1'),
	(8, '社会万象', '2'),
	(10, '测试广告频道', '1'),
	(11, '测试广告频道', '1');
/*!40000 ALTER TABLE `xcenter_ads_bclass` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_ads_sclass 结构
CREATE TABLE IF NOT EXISTS `xcenter_ads_sclass` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `width` varchar(5) DEFAULT NULL,
  `height` varchar(5) DEFAULT NULL,
  `bid` varchar(10) DEFAULT NULL,
  `is_del` varchar(1) NOT NULL DEFAULT '2' COMMENT '1代表可删除，默认为不删除',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_ads_sclass 的数据：~223 rows (大约)
DELETE FROM `xcenter_ads_sclass`;
/*!40000 ALTER TABLE `xcenter_ads_sclass` DISABLE KEYS */;
INSERT INTO `xcenter_ads_sclass` (`id`, `name`, `width`, `height`, `bid`, `is_del`) VALUES
	(1, '首页-TOP-左边-翻转广告', '300', '400', '1', '1'),
	(2, '首页-健康生活-左边', '250', '305', '1', '1'),
	(3, '首页-健康生活-中间-营养饮食', '160', '130', '1', '1'),
	(4, '首页-健康生活-中间-养生之道', '80', '80', '1', '1'),
	(5, '首页-健康生活-中间-保养秘籍', '160', '130', '1', '1'),
	(6, '首页-健康生活-有机食品1', '55', '55', '1', '1'),
	(7, '首页-健康生活-中间-食疗减肥', '160', '130', '1', '1'),
	(8, '首页-旅游天下-左边', '250', '325', '1', '1'),
	(9, '首页-精致生活-家居生活', '160', '130', '1', '1'),
	(10, '首页-精致生活-生活窍门', '160', '130', '1', '1'),
	(11, '首页-美容时尚-美发', '220', '200', '1', '1'),
	(12, '首页-美容时尚—左边—bottom（4）', '160', '120', '1', '1'),
	(13, '首页-美容时尚—左边—bottom（3）', '160', '120', '1', '1'),
	(14, '首页-美容时尚—左边—bottom（2）', '160', '120', '1', '1'),
	(15, '首页-美容时尚—左边—bottom（1）', '160', '120', '1', '1'),
	(16, '首页-美容时尚-左边—TOP', '250', '280', '1', '1'),
	(17, '首页-旅游天下1', '160', '130', '1', '1'),
	(18, '首页-旅游天下2', '160', '130', '1', '1'),
	(19, '首页-汽车资讯-左一', '200', '266', '1', '1'),
	(20, '首页-奢华人生', '200', '266', '1', '1'),
	(21, '首页-社万象会-左边', '200', '250', '1', '1'),
	(22, '首页-社万象会-右边（1）', '110', '120', '1', '1'),
	(23, '首页-社会万象-右边（2）', '110', '120', '1', '1'),
	(24, '首页-汽车资讯-右一', '110', '120', '1', '1'),
	(25, '首页-汽车资讯-右二', '110', '120', '1', '1'),
	(26, '文章列表页右一', '235', '250', NULL, '1'),
	(28, '美容时尚-TOP-左边-焦点图', '300', '400', '3', '1'),
	(29, '美容时尚-TOP-中间', '186', '147', '3', '1'),
	(30, '美容时尚-潮流资讯-左边（1）', '171', '216', '3', '1'),
	(32, '美容时尚-潮流资讯-中间', '285', '75', '3', '1'),
	(37, '美容时尚-潮流资讯下1', '103', '75', '3', '1'),
	(38, '美容时尚-潮流资讯下2', '103', '75', '3', '1'),
	(49, '健康生活-TOP-左边-焦点图', '300', '400', '2', '1'),
	(50, '健康生活-TOP-中间', '186', '147', '2', '1'),
	(51, '健康生活-TOP-右边-精彩推荐', '80', '95', '2', '1'),
	(52, '健康生活-TOP-右边-健康饮食专题', '80', '95', '2', '1'),
	(53, '健康生活-营养饮食-上面', '171', '216', '2', '1'),
	(54, '健康生活-营养饮食-下面（1）', '103', '75', '2', '1'),
	(55, '健康生活-营养饮食-下面（2）', '103', '75', '2', '1'),
	(56, '健康生活-营养饮食-下面（3）', '103', '75', '2', '1'),
	(57, '健康生活-营养饮食-下面（4）', '103', '75', '2', '1'),
	(58, '健康生活-养生之道（1）', '103', '85', '2', '1'),
	(59, '健康生活-养生之道（2）', '103', '85', '2', '1'),
	(60, '健康生活-保养秘籍-左边', '171', '216', '2', '1'),
	(61, '健康生活-保养秘籍-中间（1）', '107', '100', '2', '1'),
	(62, '健康生活-保养秘籍-中间（2）', '107', '100', '2', '1'),
	(63, '健康生活-保养秘籍-中间（3）', '107', '100', '2', '1'),
	(64, '健康生活-保养秘籍-中间（4）', '107', '100', '2', '1'),
	(65, '健康生活-保养秘籍-右边', '270', '100', '2', '1'),
	(66, '健康生活-食疗减肥-左边', '171', '190', '2', '1'),
	(67, '健康生活-食疗减肥-中间（1）', '100', '80', '2', '1'),
	(68, '健康生活-食疗减肥-中间（2）', '100', '80', '2', '1'),
	(69, '健康生活-食疗减肥-右边（1）', '125', '80', '2', '1'),
	(70, '健康生活-食疗减肥-右边（2）', '125', '80', '2', '1'),
	(71, '健康生活-有机食品-左边', '230', '275', '2', '1'),
	(72, '健康生活-有机食品-中间（1）', '100', '110', '2', '1'),
	(73, '健康生活-有机食品-左边（2）', '100', '110', '2', '1'),
	(74, '健康生活-有机食品-右边', '270', '100', '2', '1'),
	(75, '精致生活-TOP-左边-焦点图', '300', '400', '4', '1'),
	(76, '精致生活-TOP-中间', '186', '147', '4', '1'),
	(77, '精致生活-TOP-右边-精彩推荐', '80', '95', '4', '1'),
	(78, '精致生活-TOP-右边-专题', '80', '95', '4', '1'),
	(79, '精致生活-家居生活-上面', '171', '216', '4', '1'),
	(80, '精致生活-家居生活-下面（1）', '103', '75', '4', '1'),
	(81, '精致生活-家居生活-下面（2）', '103', '75', '4', '1'),
	(82, '精致生活-家居生活-下面（3）', '103', '75', '4', '1'),
	(83, '精致生活-家居生活-下面（4）', '103', '75', '4', '1'),
	(84, '精致生活-生活窍门（1）', '103', '85', '4', '1'),
	(85, '精致生活-生活窍门（2）', '103', '85', '4', '1'),
	(86, '精致生活-咖啡美酒-上面', '171', '216', '4', '1'),
	(87, '精致生活-咖啡美酒-下面（1）', '103', '75', '4', '1'),
	(88, '精致生活-咖啡美酒-下面（2）', '103', '75', '4', '1'),
	(89, '精致生活-咖啡美酒-下面（3）', '103', '75', '4', '1'),
	(90, '精致生活-咖啡美酒-下面（4）', '103', '75', '4', '1'),
	(91, '精致生活-宠物（1）', '103', '85', '4', '1'),
	(92, '精致生活-宠物（2）', '103', '85', '4', '1'),
	(93, '精致生活-气质修养-左边', '171', '216', '4', '1'),
	(94, '精致生活-气质修养-中间（1）', '107', '100', '4', '1'),
	(95, '精致生活-气质修养-中间（2）', '107', '100', '4', '1'),
	(96, '精致生活-气质修养-中间（3）', '107', '100', '4', '1'),
	(97, '精致生活-气质修养-中间（4）', '107', '100', '4', '1'),
	(98, '精致生活-数码科技-左边', '230', '275', '4', '1'),
	(99, '精致生活-数码科技-中间（1）', '100', '110', '4', '1'),
	(100, '精致生活-数码科技-中间（2）', '100', '110', '4', '1'),
	(101, '精致生活-数码科技-右边', '270', '100', '4', '1'),
	(102, '首页-右边-杂志', '221', '160', '1', '1'),
	(103, '健康生活-通栏广告（1）', '980', '90', '2', '1'),
	(104, '精致生活-气质修养-中间（3）', '103', '75', '4', '1'),
	(105, '精致生活-气质修养-中间（4）', '103', '75', '4', '1'),
	(106, '精致生活-气质修养-右边', '270', '100', '4', '1'),
	(107, '旅游天下-top-焦点图', '300', '400', '5', '1'),
	(108, '旅游天下-top-今日聚焦之下', '186', '147', '5', '1'),
	(109, '旅游天下-top-精彩推荐', '80', '95', '5', '1'),
	(110, '旅游天下-top-专题', '80', '95', '5', '1'),
	(111, '旅游天下-国内-上', '171', '216', '5', '1'),
	(112, '旅游天下-国内-下1', '103', '75', '5', '1'),
	(113, '旅游天下-国内-下2', '103', '75', '5', '1'),
	(114, '旅游天下-国内-下3', '103', '75', '5', '1'),
	(115, '旅游天下-国内-下4', '103', '75', '5', '1'),
	(116, '旅游天下-出境1', '103', '85', '5', '1'),
	(117, '旅游天下-出境2', '103', '85', '5', '1'),
	(118, '旅游天下-自驾-左', '171', '216', '5', '1'),
	(119, '旅游天下-自驾-中1', '107', '100', '5', '1'),
	(120, '旅游天下-自驾-中2', '107', '100', '5', '1'),
	(121, '旅游天下-自驾-中3', '107', '100', '5', '1'),
	(122, '旅游天下-自驾-中4', '107', '100', '5', '1'),
	(123, '旅游天下-自驾-右', '270', '100', '5', '1'),
	(124, '旅游天下-人气线路-左1', '171', '190', '5', '1'),
	(125, '旅游天下-人气线路-中1', '100', '80', '5', '1'),
	(126, '旅游天下-人气线路-中2', '100', '80', '5', '1'),
	(127, '旅游天下-人气线路-右1', '125', '80', '5', '1'),
	(128, '旅游天下-人气线路-右2', '125', '80', '5', '1'),
	(129, '旅游天下-旅游论坛-左1', '230', '275', '5', '1'),
	(130, '旅游天下-旅游论坛-中1', '100', '110', '5', '1'),
	(131, '旅游天下-旅游论坛-中2', '100', '110', '5', '1'),
	(132, '旅游天下-旅游论坛-右', '270', '100', '5', '1'),
	(133, '奢华人生-top-焦点图', '300', '400', '6', '1'),
	(134, '奢华人生-top-今日聚焦之下', '186', '147', '6', '1'),
	(135, '奢华人生-top-精彩推荐', '80', '95', '6', '1'),
	(136, '奢华人生-top-专题', '80', '95', '6', '1'),
	(137, '奢华人生-明星-上', '171', '216', '6', '1'),
	(138, '奢华人生-明星-下1', '103', '75', '6', '1'),
	(139, '奢华人生-明星-下2', '103', '75', '6', '1'),
	(140, '奢华人生-明星-下3', '103', '75', '6', '1'),
	(141, '奢华人生-明星-下4', '103', '75', '6', '1'),
	(142, '奢华人生-珠宝1', '103', '85', '6', '1'),
	(143, '奢华人生-珠宝2', '103', '85', '6', '1'),
	(144, '奢华人生-钟表-左', '171', '216', '6', '1'),
	(145, '奢华人生-钟表-中1', '107', '100', '6', '1'),
	(146, '奢华人生-钟表-中2', '107', '100', '6', '1'),
	(147, '奢华人生-钟表-中3', '107', '100', '6', '1'),
	(148, '奢华人生-钟表-中4', '107', '100', '6', '1'),
	(149, '奢华人生-钟表-右', '270', '100', '6', '1'),
	(150, '奢华人生-名车-左1', '171', '190', '6', '1'),
	(151, '奢华人生-名车-中1', '100', '80', '6', '1'),
	(152, '奢华人生-名车-中2', '100', '80', '6', '1'),
	(153, '奢华人生-名车-右1', '125', '80', '6', '1'),
	(154, '奢华人生-名车-右2', '125', '80', '6', '1'),
	(155, '奢华人生-名车-玩物-左1', '230', '275', '6', '1'),
	(156, '奢华人生-玩物-中1', '100', '110', '6', '1'),
	(157, '奢华人生-玩物-中2', '100', '110', '6', '1'),
	(158, '奢华人生-玩物-右', '270', '100', '6', '1'),
	(161, '汽车资讯-top-焦点图', '300', '400', '7', '1'),
	(162, '汽车资讯-TOP-中间', '186', '147', '7', '1'),
	(163, '汽车资讯-TOP-右边-精彩推荐', '80', '95', '7', '1'),
	(164, '汽车资讯-TOP-右边-专题', '80', '95', '7', '1'),
	(165, '汽车资讯-新车关注-上面', '171', '216', '7', '1'),
	(166, '汽车资讯-新车关注-下面（1）', '103', '75', '7', '1'),
	(167, '汽车资讯-新车关注-下面（2）', '103', '75', '7', '1'),
	(168, '汽车资讯-新车关注-下面（3）', '103', '75', '7', '1'),
	(169, '汽车资讯-新车关注-下面（4）', '103', '75', '7', '1'),
	(170, '汽车资讯-汽车导购（1）', '103', '85', '7', '1'),
	(171, '汽车资讯-汽车导购（2）', '103', '85', '7', '1'),
	(172, '汽车资讯-厂商要闻-左边', '171', '216', '7', '1'),
	(173, '汽车资讯-厂商要闻-中间（1）', '107', '100', '7', '1'),
	(174, '汽车资讯-厂商要闻-中间（2）', '107', '100', '7', '1'),
	(175, '汽车资讯-厂商要闻-中间（3）', '107', '100', '7', '1'),
	(176, '汽车资讯-厂商要闻-中间（4）', '107', '100', '7', '1'),
	(177, '汽车资讯-厂商要闻-右边', '270', '100', '7', '1'),
	(178, '汽车资讯-行业信息-左边', '171', '190', '7', '1'),
	(179, '汽车资讯-行业信息-中间（1）', '100', '80', '7', '1'),
	(180, '汽车资讯-行业信息-中间（2）', '100', '80', '7', '1'),
	(181, '汽车资讯-行业信息-右边（1）', '125', '80', '7', '1'),
	(182, '汽车资讯-行业信息-右边（2）', '125', '80', '7', '1'),
	(183, '社会万象-TOP-焦点图', '300', '400', '8', '1'),
	(184, '社会万象-TOP-中间', '186', '147', '8', '1'),
	(185, '社会万象-TOP-右边-精彩推荐', '80', '95', '8', '1'),
	(186, '社会万象-TOP-右边-专题', '80', '95', '8', '1'),
	(187, '社会万象-今日要闻-上面', '171', '216', '8', '1'),
	(188, '社会万象-今日要闻-下面（1）', '103', '75', '8', '1'),
	(189, '社会万象-今日要闻-下面（2）', '103', '75', '8', '1'),
	(190, '社会万象-今日要闻-下面（3）', '103', '75', '8', '1'),
	(191, '社会万象-今日要闻-下面（4）', '103', '75', '8', '1'),
	(192, '社会万象-社会聚焦（1）', '103', '85', '8', '1'),
	(193, '社会万象-社会聚焦（2）', '103', '85', '8', '1'),
	(194, '社会万象-生活理财-左边', '171', '216', '8', '1'),
	(195, '社会万象-生活理财-中间（1）', '107', '100', '8', '1'),
	(196, '社会万象-生活理财-中间（2）', '107', '100', '8', '1'),
	(197, '社会万象-生活理财-中间（3）', '107', '100', '8', '1'),
	(198, '社会万象-生活理财-中间（4）', '107', '100', '8', '1'),
	(199, '社会万象-生活理财', '270', '100', '8', '1'),
	(200, '社会万象-职场人生-左边', '171', '190', '8', '1'),
	(201, '社会万象-职场人生-中间（1）', '100', '80', '8', '1'),
	(202, '社会万象-职场人生-中间（2）', '100', '80', '8', '1'),
	(203, '社会万象-职场人生-右边（1）', '125', '80', '8', '1'),
	(204, '社会万象-职场人生-右边（2）', '125', '80', '8', '1'),
	(205, '精致生活-通栏广告（1）', '980', '90', '4', '1'),
	(206, '美容时尚-top-专题', '80', '95', '3', '1'),
	(207, '社会万象-top-通栏广告', '980', '90', '8', '1'),
	(208, '美容时尚-top-通栏广告', '980', '90', '3', '1'),
	(209, '首页-美容时尚-中1', '170', '120', '1', '1'),
	(210, '首页-美容时尚-中2', '170', '120', '1', '1'),
	(211, '首页-健康生活-左边-小图', '80', '80', '1', '1'),
	(212, '首页-精致生活-左边-大图', '250', '305', '1', '1'),
	(213, '首页-精致生活-左边-小图', '80', '80', '1', '1'),
	(214, '首页-精致生活-咖啡美酒', '160', '130', '1', '1'),
	(215, '首页-精致生活-宠物', '80', '80', '1', '1'),
	(216, '首页-精致生活-气质修养', '80', '80', '1', '1'),
	(217, '首页-精致生活-数码科技', '240', '50', '1', '1'),
	(218, '首页-健康生活-有机食品2', '55', '55', '1', '1'),
	(219, '首页-健康生活-有机食品3', '55', '55', '1', '1'),
	(220, '文章列表页右一', '268', '250', '3', '1'),
	(221, '美容时尚-服饰搭配左一', '103', '85', '3', '1'),
	(222, '美容时尚-服饰搭配左二', '103', '85', '3', '1'),
	(223, '美容时尚-美容美发左一', '171', '216', '3', '1'),
	(224, '美容时尚-美容美发中1', '107', '100', '3', '1'),
	(225, '美容时尚-美容美发中2', '107', '100', '3', '1'),
	(226, '美容时尚-美容美发中3', '107', '100', '3', '1'),
	(227, '美容时尚-美容美发中4', '107', '100', '3', '1'),
	(228, '美容时尚-美容美发右', '270', '100', '3', '1'),
	(229, '美容时尚-美体瘦身左', '171', '190', '3', '1'),
	(230, '美容时尚-美体瘦身中1', '100', '80', '3', '1'),
	(231, '美容时尚-美体瘦身中2', '100', '80', '3', '1'),
	(232, '美容时尚-美体瘦身右1', '125', '80', '3', '1'),
	(233, '美容时尚-美体瘦身右2', '125', '80', '3', '1'),
	(234, '美容时尚-风尚彩妆左', '230', '275', '3', '1'),
	(235, '美容时尚-风尚彩妆中1', '100', '110', '3', '1'),
	(236, '美容时尚-风尚彩妆中2', '100', '110', '3', '1'),
	(238, '美容时尚-潮流资讯下3', '103', '75', '3', '1'),
	(239, '美容时尚-潮流资讯下4', '103', '75', '3', '1'),
	(243, '首页-点评圈-左二', '125', '114', '1', '1'),
	(244, '获国家', '64', '64', '1', '1'),
	(245, '47', '1', '2', '2', '2');
/*!40000 ALTER TABLE `xcenter_ads_sclass` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_article 结构
CREATE TABLE IF NOT EXISTS `xcenter_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(10) DEFAULT NULL COMMENT '上传者id',
  `classic` varchar(5) NOT NULL COMMENT '文章所属二级分类',
  `title` varchar(200) NOT NULL COMMENT '文章标题',
  `title_2` varchar(100) DEFAULT NULL COMMENT '副标题',
  `title_pinyin` varchar(200) DEFAULT NULL,
  `content` mediumtext NOT NULL COMMENT '内容',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `keyword` varchar(50) DEFAULT NULL COMMENT '关键字',
  `created` varchar(20) DEFAULT NULL COMMENT '上传日期',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `hit` int(10) unsigned DEFAULT '0' COMMENT '点击数',
  `is_visible` varchar(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `is_del` varchar(1) NOT NULL DEFAULT '1' COMMENT '是否允许被删除，2代表不允许，1代表允许',
  `color` varchar(7) DEFAULT '#000000' COMMENT '标题字的颜色',
  `fromwho` varchar(50) DEFAULT '互联网' COMMENT '源自',
  `is_top` varchar(1) DEFAULT NULL COMMENT '是否置顶',
  `is_html` varchar(1) DEFAULT NULL,
  `is_focus` varchar(1) DEFAULT NULL COMMENT '是否焦点',
  `img` varchar(50) DEFAULT NULL COMMENT '引导图片',
  `flag` varchar(1) NOT NULL DEFAULT '1' COMMENT '文章评论是否开启',
  `shenhe` varchar(2) NOT NULL DEFAULT '2' COMMENT '是否审核',
  PRIMARY KEY (`id`),
  KEY `classic` (`classic`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_article 的数据：~4 rows (大约)
DELETE FROM `xcenter_article`;
/*!40000 ALTER TABLE `xcenter_article` DISABLE KEYS */;
INSERT INTO `xcenter_article` (`id`, `uid`, `classic`, `title`, `title_2`, `title_pinyin`, `content`, `author`, `keyword`, `created`, `description`, `hit`, `is_visible`, `is_del`, `color`, `fromwho`, `is_top`, `is_html`, `is_focus`, `img`, `flag`, `shenhe`) VALUES
	(10, NULL, '11', '法国风格', '', NULL, '<p>&nbsp;规范</p>', '', '', '1376006400', '', 0, '1', '1', '#000000', '', '2', NULL, '2', NULL, '1', '2'),
	(11, NULL, '11', '法国风格法国风格', '', NULL, '<p>&nbsp;规范</p>', '', '', '1376006400', '', 0, '1', '1', '#000000', '', '2', NULL, '2', NULL, '1', '2'),
	(12, NULL, '11', '瑞特让他', '', NULL, '<p>&nbsp;规范</p>', '', '', '1376006400', '', 0, '1', '1', '#000000', '', '2', NULL, '2', NULL, '1', '2'),
	(14, NULL, '1', '菊花哥', '', NULL, '<p>&nbsp;改价格<span style="color: rgb(255, 0, 0);">监管</span>局gdgdgdfgdfg</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>[removed]alert(1);[removed]</p>', '', '', '1387900800', '', 0, '2', '2', '#000000', '', '2', NULL, '2', '68daaec700c2e317a992e0696746b538.jpg', '1', '2');
/*!40000 ALTER TABLE `xcenter_article` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_article_bclass 结构
CREATE TABLE IF NOT EXISTS `xcenter_article_bclass` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `paixun` smallint(5) unsigned NOT NULL DEFAULT '255',
  `flag` varchar(1) NOT NULL DEFAULT '2' COMMENT '默认为2，代表可删除，1代表不可删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_article_bclass 的数据：~7 rows (大约)
DELETE FROM `xcenter_article_bclass`;
/*!40000 ALTER TABLE `xcenter_article_bclass` DISABLE KEYS */;
INSERT INTO `xcenter_article_bclass` (`id`, `name`, `paixun`, `flag`) VALUES
	(1, '健康生活地方', 10, '1'),
	(3, '精致生活', 255, '2'),
	(4, '社会万象', 255, '2'),
	(5, '奢华人生', 255, '2'),
	(7, '旅游天下', 255, '2'),
	(8, '百纳图库', 255, '2'),
	(9, '汽车资讯', 255, '2');
/*!40000 ALTER TABLE `xcenter_article_bclass` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_article_sclass 结构
CREATE TABLE IF NOT EXISTS `xcenter_article_sclass` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `paixun` smallint(5) unsigned NOT NULL DEFAULT '255',
  `flag` varchar(1) NOT NULL DEFAULT '2' COMMENT '默认为2，代表可删除，1代表不可删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_article_sclass 的数据：~38 rows (大约)
DELETE FROM `xcenter_article_sclass`;
/*!40000 ALTER TABLE `xcenter_article_sclass` DISABLE KEYS */;
INSERT INTO `xcenter_article_sclass` (`id`, `bid`, `name`, `paixun`, `flag`) VALUES
	(1, 1, '营养饮食', 11, '1'),
	(3, 2, '潮流资讯', 255, '2'),
	(4, 2, '服饰搭配', 255, '2'),
	(5, 2, '美容养发', 255, '2'),
	(6, 2, '美体瘦身', 255, '2'),
	(7, 3, '数码科技', 255, '2'),
	(8, 3, '气质修养', 255, '2'),
	(9, 4, '今日要闻', 255, '2'),
	(10, 4, '社会聚焦', 255, '2'),
	(11, 1, '食疗减肥', 255, '2'),
	(12, 1, '养生之道', 255, '2'),
	(13, 5, '明星', 255, '2'),
	(14, 5, '珠宝', 255, '2'),
	(15, 5, '钟表', 255, '2'),
	(16, 5, '名车', 255, '2'),
	(17, 9, '有机食品', 1, '2'),
	(18, 2, '风尚彩妆', 255, '2'),
	(19, 3, '宠物', 255, '2'),
	(20, 3, '咖啡美酒', 255, '2'),
	(21, 3, '生活窍门', 255, '2'),
	(22, 3, '家居生活', 255, '2'),
	(23, 7, '国内', 255, '2'),
	(24, 7, '出境', 255, '2'),
	(25, 7, '自驾', 255, '2'),
	(26, 7, '人气线路', 255, '2'),
	(27, 7, '旅游论坛', 255, '2'),
	(28, 5, '玩物', 255, '2'),
	(29, 9, '新车关注', 255, '2'),
	(30, 9, '汽车导购', 255, '2'),
	(31, 9, '厂商要闻', 255, '2'),
	(32, 1, '行业信息', 255, '2'),
	(33, 4, '生活理财', 255, '2'),
	(34, 4, '职场人生', 255, '2'),
	(35, 8, '奇趣世界', 255, '2'),
	(36, 8, '时尚街拍', 255, '2'),
	(37, 8, '各国风情', 255, '2'),
	(38, 8, '美丽风光', 255, '2'),
	(42, 8, '测试二级分类', 255, '2');
/*!40000 ALTER TABLE `xcenter_article_sclass` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_config 结构
CREATE TABLE IF NOT EXISTS `xcenter_config` (
  `var` varchar(25) NOT NULL,
  `datavalue` text NOT NULL,
  PRIMARY KEY (`var`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_config 的数据：~10 rows (大约)
DELETE FROM `xcenter_config`;
/*!40000 ALTER TABLE `xcenter_config` DISABLE KEYS */;
INSERT INTO `xcenter_config` (`var`, `datavalue`) VALUES
	('close_reason', '系统升级中，暂时关闭，请稍候！'),
	('close_site', '2'),
	('description', '这是一个小巧灵活方便定制的通用系统'),
	('keyword', 'Xcenter'),
	('smtp_host', 'mail.malama.ca'),
	('smtp_mail', 'service@malama.ca'),
	('smtp_port', '25'),
	('smtp_psw', '82508253'),
	('smtp_user', 'service@malama.ca'),
	('title', 'Xcenter');
/*!40000 ALTER TABLE `xcenter_config` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_link 结构
CREATE TABLE IF NOT EXISTS `xcenter_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `img` varchar(40) DEFAULT NULL,
  `flag` varchar(2) NOT NULL DEFAULT '2' COMMENT '是否前台显示',
  `classic` varchar(1) NOT NULL DEFAULT '1' COMMENT '文字链接还是图片链接，默认为文字链接(1)',
  `paixun` smallint(5) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_link 的数据：~3 rows (大约)
DELETE FROM `xcenter_link`;
/*!40000 ALTER TABLE `xcenter_link` DISABLE KEYS */;
INSERT INTO `xcenter_link` (`id`, `name`, `web`, `img`, `flag`, `classic`, `paixun`) VALUES
	(35, 'df', 'http://www.bb580.com.cn', '', '1', '1', 255),
	(37, 'test', 'https://www.a.com', NULL, '1', '1', 255),
	(38, '网易sd', 'http://www.163.comdsd', 'ac8e1a9209065c7e2275f29a8a8c5991.png', '1', '2', 255);
/*!40000 ALTER TABLE `xcenter_link` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_log 结构
CREATE TABLE IF NOT EXISTS `xcenter_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `ip` varchar(18) NOT NULL,
  `created` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_log 的数据：~84 rows (大约)
DELETE FROM `xcenter_log`;
/*!40000 ALTER TABLE `xcenter_log` DISABLE KEYS */;
INSERT INTO `xcenter_log` (`id`, `uid`, `ip`, `created`) VALUES
	(1, 1, '127.0.0.1', '1386829748'),
	(2, 1, '127.0.0.1', '1386832571'),
	(3, 1, '127.0.0.1', '1386835158'),
	(4, 1, '127.0.0.1', '1386836303'),
	(5, 1, '127.0.0.1', '1386899758'),
	(6, 1, '127.0.0.1', '1386918532'),
	(7, 1, '127.0.0.1', '1386928912'),
	(8, 1, '127.0.0.1', '1386983901'),
	(9, 1, '127.0.0.1', '1386989303'),
	(10, 1, '127.0.0.1', '1387157196'),
	(12, 1, '127.0.0.1', '1387172151'),
	(13, 1, '127.0.0.1', '1387172735'),
	(14, 1, '127.0.0.1', '1387172750'),
	(15, 1, '127.0.0.1', '1387172782'),
	(16, 1, '127.0.0.1', '1387172812'),
	(17, 1, '127.0.0.1', '1387174729'),
	(18, 11, '127.0.0.1', '1387182597'),
	(19, 11, '127.0.0.1', '1387183913'),
	(20, 1, '127.0.0.1', '1387244534'),
	(21, 1, '127.0.0.1', '1387245560'),
	(22, 11, '127.0.0.1', '1387245585'),
	(23, 1, '127.0.0.1', '1387245696'),
	(24, 11, '127.0.0.1', '1387248653'),
	(25, 1, '127.0.0.1', '1387249201'),
	(26, 1, '127.0.0.1', '1387249228'),
	(27, 1, '127.0.0.1', '1387249792'),
	(28, 1, '127.0.0.1', '1387249805'),
	(29, 1, '127.0.0.1', '1387249833'),
	(30, 1, '127.0.0.1', '1387249858'),
	(31, 1, '127.0.0.1', '1387252275'),
	(32, 1, '127.0.0.1', '1387252292'),
	(33, 11, '127.0.0.1', '1387252312'),
	(34, 1, '127.0.0.1', '1387263175'),
	(35, 11, '127.0.0.1', '1387263197'),
	(36, 1, '127.0.0.1', '1387263309'),
	(37, 1, '127.0.0.1', '1387447466'),
	(38, 1, '127.0.0.1', '1387447682'),
	(39, 1, '127.0.0.1', '1387510414'),
	(40, 1, '127.0.0.1', '1387518592'),
	(41, 1, '127.0.0.1', '1387518786'),
	(42, 1, '127.0.0.1', '1387533586'),
	(43, 1, '127.0.0.1', '1387761966'),
	(44, 1, '127.0.0.1', '1387938649'),
	(45, 1, '127.0.0.1', '1387943883'),
	(46, 1, '127.0.0.1', '1387954965'),
	(47, 1, '127.0.0.1', '1387956195'),
	(48, 1, '127.0.0.1', '1387956252'),
	(49, 1, '127.0.0.1', '1388028423'),
	(50, 1, '127.0.0.1', '1388036880'),
	(51, 1, '127.0.0.1', '1388037365'),
	(52, 1, '127.0.0.1', '1388114651'),
	(53, 1, '127.0.0.1', '1388122978'),
	(54, 1, '127.0.0.1', '1388128603'),
	(55, 1, '127.0.0.1', '1388198259'),
	(56, 1, '127.0.0.1', '1388368719'),
	(57, 1, '127.0.0.1', '1388462722'),
	(58, 1, '127.0.0.1', '1388473320'),
	(59, 1, '127.0.0.1', '1388644621'),
	(60, 1, '127.0.0.1', '1389765370'),
	(61, 1, '127.0.0.1', '1390186825'),
	(62, 1, '127.0.0.1', '1392272113'),
	(63, 1, '127.0.0.1', '1393206774'),
	(64, 1, '127.0.0.1', '1393206911'),
	(65, 1, '127.0.0.1', '1393210834'),
	(66, 1, '127.0.0.1', '1398754255'),
	(67, 1, '127.0.0.1', '1398824385'),
	(68, 1, '127.0.0.1', '1399171062'),
	(69, 1, '127.0.0.1', '1399190371'),
	(70, 1, '127.0.0.1', '1399864474'),
	(71, 1, '127.0.0.1', '1399878801'),
	(72, 1, '127.0.0.1', '1400725864'),
	(73, 1, '127.0.0.1', '1401154525'),
	(74, 1, '127.0.0.1', '1405423448'),
	(75, 1, '127.0.0.1', '1405424969'),
	(76, 1, '127.0.0.1', '1408010184'),
	(77, 1, '127.0.0.1', '1408502112'),
	(78, 1, '127.0.0.1', '1408952837'),
	(79, 1, '127.0.0.1', '1410745801'),
	(80, 1, '127.0.0.1', '1410759725'),
	(81, 1, '127.0.0.1', '1411124786'),
	(82, 1, '127.0.0.1', '1411715483'),
	(83, 1, '127.0.0.1', '1411715914'),
	(84, 1, '127.0.0.1', '1418635424'),
	(85, 1, '127.0.0.1', '1419496531');
/*!40000 ALTER TABLE `xcenter_log` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_menu 结构
CREATE TABLE IF NOT EXISTS `xcenter_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `paixun` int(10) unsigned NOT NULL DEFAULT '255',
  `is_del` varchar(1) NOT NULL DEFAULT '1' COMMENT '1代表可删除，2代表不可删除',
  `flag` varchar(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_menu 的数据：~7 rows (大约)
DELETE FROM `xcenter_menu`;
/*!40000 ALTER TABLE `xcenter_menu` DISABLE KEYS */;
INSERT INTO `xcenter_menu` (`id`, `name`, `paixun`, `is_del`, `flag`) VALUES
	(1, '系统管理', 2, '2', '1'),
	(2, '数据库管理', 1, '2', '1'),
	(3, '广告管理', 5, '1', '1'),
	(4, '信息管理', 7, '1', '1'),
	(5, '产品管理', 6, '1', '1'),
	(6, '友情链接管理', 3, '1', '2'),
	(7, '留言管理', 4, '1', '2');
/*!40000 ALTER TABLE `xcenter_menu` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_menu_rights 结构
CREATE TABLE IF NOT EXISTS `xcenter_menu_rights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `sourceMod` varchar(100) NOT NULL COMMENT '该菜单的原始链接',
  `paixun` int(10) unsigned NOT NULL DEFAULT '255',
  `flag` varchar(1) NOT NULL DEFAULT '1' COMMENT '1代表显示，2代表隐藏',
  `is_del` varchar(1) NOT NULL DEFAULT '1' COMMENT '1代表可删除，2代表不可删除',
  PRIMARY KEY (`id`),
  KEY `menu` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_menu_rights 的数据：~26 rows (大约)
DELETE FROM `xcenter_menu_rights`;
/*!40000 ALTER TABLE `xcenter_menu_rights` DISABLE KEYS */;
INSERT INTO `xcenter_menu_rights` (`id`, `menu_id`, `name`, `sourceMod`, `paixun`, `flag`, `is_del`) VALUES
	(1, 1, '超级系统管理员', 'system/administrator', 10, '1', '2'),
	(2, 1, '模块管理', 'system/module', 9, '2', '2'),
	(3, 1, '菜单管理', 'system/menuGroup', 8, '1', '2'),
	(4, 1, '角色管理', 'system/role', 7, '2', '2'),
	(5, 1, '管理员列表', 'system/master', 6, '2', '2'),
	(6, 1, '系统设置', 'system/config', 5, '1', '2'),
	(7, 1, '系统日志', 'system/log', 4, '1', '2'),
	(8, 2, '数据备份', 'master/backup', 3, '1', '2'),
	(10, 2, '数据管理', 'master/manage', 2, '1', '2'),
	(20, 1, '服务器信息', 'system/phpinfo', 3, '1', '2'),
	(26, 1, '邮件设置', 'system/emailConfig', 2, '1', '2'),
	(29, 2, 'Sql执行', 'master/execSql', 1, '1', '2'),
	(30, 1, '修改密码', 'system/pswEdit', 1, '2', '2'),
	(31, 3, '广告频道', 'ad/channel', 4, '1', '1'),
	(32, 3, '广告位置', 'ad/classic', 3, '1', '1'),
	(33, 3, '新增广告', 'ad/add', 2, '1', '1'),
	(34, 3, '广告管理', 'ad/manage', 1, '1', '1'),
	(35, 4, '信息分类', 'news/bclass', 3, '1', '1'),
	(36, 4, '新增信息', 'news/add', 2, '1', '1'),
	(37, 4, '管理信息', 'news/manage', 1, '1', '1'),
	(38, 5, '产品分类', 'product/bclass', 3, '1', '1'),
	(39, 5, '新增产品', 'product/add', 2, '1', '1'),
	(40, 5, '管理产品', 'product/manage', 1, '1', '1'),
	(41, 6, '新增友情链接', 'link/add', 2, '1', '1'),
	(42, 6, '管理友情链接', 'link/manage', 1, '1', '1'),
	(43, 7, '管理留言', 'message/manage', 255, '1', '1');
/*!40000 ALTER TABLE `xcenter_menu_rights` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_message 结构
CREATE TABLE IF NOT EXISTS `xcenter_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `flag` varchar(1) NOT NULL DEFAULT '1' COMMENT '是否在前台显示',
  `created` varchar(25) DEFAULT NULL,
  `fb_content` text COMMENT '回复内容',
  `fb_time` varchar(25) DEFAULT NULL COMMENT '回复时间',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_message 的数据：~0 rows (大约)
DELETE FROM `xcenter_message`;
/*!40000 ALTER TABLE `xcenter_message` DISABLE KEYS */;
INSERT INTO `xcenter_message` (`id`, `name`, `title`, `content`, `flag`, `created`, `fb_content`, `fb_time`) VALUES
	(2, '留言者', '留言标题', '留言内容', '2', NULL, '回复内容', NULL);
/*!40000 ALTER TABLE `xcenter_message` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_mod 结构
CREATE TABLE IF NOT EXISTS `xcenter_mod` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_mod 的数据：~2 rows (大约)
DELETE FROM `xcenter_mod`;
/*!40000 ALTER TABLE `xcenter_mod` DISABLE KEYS */;
INSERT INTO `xcenter_mod` (`id`, `name`) VALUES
	(1, '系统管理'),
	(2, '数据库管理');
/*!40000 ALTER TABLE `xcenter_mod` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_mod_rights 结构
CREATE TABLE IF NOT EXISTS `xcenter_mod_rights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modid` int(10) unsigned NOT NULL,
  `rights` int(10) unsigned NOT NULL,
  `right_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rights` (`rights`),
  KEY `mod` (`modid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_mod_rights 的数据：~30 rows (大约)
DELETE FROM `xcenter_mod_rights`;
/*!40000 ALTER TABLE `xcenter_mod_rights` DISABLE KEYS */;
INSERT INTO `xcenter_mod_rights` (`id`, `modid`, `rights`, `right_name`) VALUES
	(1, 2, 1, '数据备份'),
	(2, 2, 2, '数据管理'),
	(3, 2, 3, 'sql执行'),
	(4, 1, 4, '超级系统管理员'),
	(5, 1, 5, '新增模块组'),
	(6, 1, 6, '编辑模块组'),
	(7, 1, 7, '删除模块组'),
	(8, 1, 8, '新增权限'),
	(9, 1, 9, '编辑权限'),
	(10, 1, 10, '删除权限'),
	(11, 1, 11, '新增菜单组'),
	(12, 1, 12, '编辑菜单组'),
	(13, 1, 13, '删除菜单组'),
	(14, 1, 14, '新增菜单'),
	(15, 1, 15, '编辑菜单'),
	(16, 1, 16, '删除菜单'),
	(17, 1, 17, '新增角色'),
	(18, 1, 18, '编辑角色'),
	(19, 1, 19, '删除角色'),
	(20, 1, 20, '角色分派菜单'),
	(21, 1, 21, '角色分派权限'),
	(22, 1, 22, '新增管理员'),
	(23, 1, 23, '编辑管理员'),
	(24, 1, 24, '删除管理员'),
	(25, 1, 25, '管理员分派角色'),
	(26, 1, 26, '系统设置'),
	(27, 1, 27, '系统日志'),
	(28, 1, 28, '服务器信息'),
	(29, 1, 29, '邮件设置'),
	(30, 1, 30, '管理员修改密码');
/*!40000 ALTER TABLE `xcenter_mod_rights` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_product 结构
CREATE TABLE IF NOT EXISTS `xcenter_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `bid` int(10) unsigned NOT NULL,
  `created` varchar(18) NOT NULL,
  `flag` varchar(1) NOT NULL DEFAULT '2',
  `intro` mediumtext NOT NULL,
  `hit` int(10) unsigned DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `description` mediumtext,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_product 的数据：~55 rows (大约)
DELETE FROM `xcenter_product`;
/*!40000 ALTER TABLE `xcenter_product` DISABLE KEYS */;
INSERT INTO `xcenter_product` (`id`, `pname`, `sid`, `bid`, `created`, `flag`, `intro`, `hit`, `title`, `keyword`, `description`) VALUES
	(24, 'nokia', 5, 0, '1277965212', '1', '<p>this is a test</p>', 0, '', '', ''),
	(26, 'ghghgh', 5, 0, '1277889514', '1', '<p>fgfg</p>', 0, '', '', ''),
	(27, 'ghghghwewe', 5, 0, '1277889523', '1', '<p>fgfg</p>', 0, '', '', ''),
	(31, 'test', 8, 5, '1279174645', '1', '<p>fdf</p>\r\n<h3 style="margin: 0cm 0cm 0pt; line-height: 150%"><span lang="EN-US" style="font-family: \'Arial\',\'sans-serif\'">Detailed Product Description<o:p></o:p></span></h3>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'"><o:p>&nbsp;</o:p></span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 12pt; line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">santa claus ED210004 <br />\r\n1.material:resin <br />\r\n2.Size:5*6*9 cm <o:p></o:p></span></p>\r\n<p style="line-height: 150%"><strong><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">santa claus ED210004</span></strong><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'"><o:p></o:p></span></p>\r\n<p style="line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">1.material:resin<br />\r\n2.Size:5*6*9 cm&nbsp;<o:p></o:p></span></p>\r\n<p style="line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">&nbsp;<o:p></o:p></span></p>\r\n<p style="line-height: 150%"><strong><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">Description:</span></strong><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'"><o:p></o:p></span></p>\r\n<p style="line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">santa claus ED210004<o:p></o:p></span></p>\r\n<p style="line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">&nbsp;<o:p></o:p></span></p>\r\n<p style="line-height: 150%"><strong><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">packing details:</span></strong><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'"><o:p></o:p></span></p>\r\n<p style="line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">outer&nbsp;size:61*69*23.5cm<o:p></o:p></span></p>\r\n<p style="line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">128in one box<o:p></o:p></span></p>\r\n<p style="line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">&nbsp;<o:p></o:p></span></p>\r\n<p style="line-height: 150%"><strong><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">payment:</span></strong><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'"><o:p></o:p></span></p>\r\n<p style="line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">T/T in advance and Western union<o:p></o:p></span></p>\r\n<p style="line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">&nbsp;<o:p></o:p></span></p>\r\n<p style="line-height: 150%"><strong><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">Remarks:</span></strong><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'"><o:p></o:p></span></p>\r\n<p style="line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">Sample Lead time:&nbsp;&nbsp;&nbsp; 15 Days.&nbsp;<o:p></o:p></span></p>\r\n<p style="line-height: 150%"><span lang="EN-US" style="font-size: 9.5pt; line-height: 150%; font-family: \'Arial\',\'sans-serif\'">Sample Charge:&nbsp; 600RMB,will return after order over 3000pcs.<o:p></o:p></span></p>\r\n<p>&nbsp;</p>', 0, '', '', ''),
	(32, 'dsd', 8, 5, '1279244759', '1', '<p>dsdsd</p>', 0, '', '', ''),
	(33, 'hello7', 8, 5, '1279244786', '1', '<p>dsdsd</p>', 0, '', '', ''),
	(34, 'dsd', 8, 5, '1279245027', '1', '<p>dsdsd</p>', 0, '', '', ''),
	(35, 'dsd', 8, 5, '1279245228', '1', '<p>dsdsd</p>', 0, '', '', ''),
	(36, 'dsd', 4, 5, '1279246037', '1', '', 0, '', '', ''),
	(38, 'holi dayfg dfdfd 风格', 4, 1, '1283486940', '1', '<h3>Detailed Product Description</h3>\r\n<p><br />\r\n&nbsp;</p>\r\n<div style="clear: both">&nbsp;</div>\r\n<p>holiday decoration <br />\r\n1.Material: pewter <br />\r\n2.Size:5x6.5x1cm <br />\r\n3.Weight:50g <br />\r\n<br />\r\n&nbsp;</p>\r\n<div style="clear: both">&nbsp;</div>\r\n<p><strong>holiday decoration</strong></p>\r\n<p>1.Material: pewter<br />\r\n2.Size:5x6.5x1cm <br />\r\n3.Weight:50g&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Description:</strong></p>\r\n<p>holiday decoration for christmas ED200007</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Packing:</strong></p>\r\n<p>1pc /bubble bag/white box,</p>\r\n<p>6pcs/inner ctn,</p>\r\n<p>144pcs per master carton<br />\r\n0.012CBM PER CTN<br />\r\nGW: 9kgs per ctn&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Delivery:</strong></p>\r\n<p>production time:45-60days</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Payment:</strong></p>\r\n<p>T/T in advance and Western Union.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>OEM/ODM:</strong></p>\r\n<p>Available.</p>\r\n<p>&nbsp;</p>\r\n<p>If you want to know more ,welcome to our showroom or contact me:Miss lucky.</p>', 0, 'jg', 'gjg', 'jgj'),
	(39, 'dgdg', 10, 6, '1307599119', '1', '<p>&nbsp;sdsd</p>', NULL, '', '', ''),
	(40, 'gfgf', 8, 5, '1307599145', '1', '<p>&nbsp;gfgfgf</p>', NULL, '', '', ''),
	(41, 'gfgf', 8, 5, '1322113221', '1', '&lt;p&gt;&amp;nbsp;gfgfgf&lt;/p&gt;', NULL, '', '', ''),
	(42, 'test', 11, 7, '1322113215', '1', '&lt;p&gt;&amp;nbsp;test&lt;/p&gt;', NULL, '', '', ''),
	(43, '测试', 11, 7, '1328499669', '1', '&lt;p&gt;&amp;nbsp;fggg&lt;/p&gt;', NULL, '', '', ''),
	(44, '测试测', 10, 6, '1328598197', '1', '&lt;p&gt;&amp;nbsp;sds&lt;/p&gt;', NULL, '测试s', '', ''),
	(45, 'df', 11, 7, '1328599858', '1', '&lt;p&gt;&amp;nbsp;fdf&lt;/p&gt;', NULL, '', '', ''),
	(46, 'sdsd', 11, 7, '1328778067', '1', '&lt;p&gt;dsds&lt;/p&gt;', NULL, '', '', ''),
	(47, 'sdsd', 11, 7, '1328778262', '1', '&lt;p&gt;s&lt;/p&gt;', NULL, '', '', ''),
	(48, '测试', 11, 7, '1328778537', '1', '&lt;p&gt;&amp;nbsp;dsds&lt;/p&gt;', NULL, '', '', ''),
	(49, 'sdsd', 11, 7, '1353404381', '1', '&lt;p&gt;sdsd&lt;/p&gt;', NULL, '', 'dsd', ''),
	(50, 'dsd', 11, 7, '1353404396', '1', '&lt;p&gt;&amp;nbsp;sds&lt;/p&gt;', NULL, '', 'sdsd', ''),
	(51, '健康生活', 4, 1, '1377065780', '1', '<p>&nbsp;dfgdg</p>', NULL, '', '', ''),
	(52, 'sfsf', 4, 1, '1377065820', '1', '<p>&nbsp;fsfsff</p>', NULL, '', '', ''),
	(53, 'sfsf', 4, 1, '1377065856', '1', '<p>&nbsp;fsfsff</p>', NULL, '', '', ''),
	(54, '健康生活', 4, 1, '1377065902', '1', '<p>&nbsp;sfsfasf</p>', NULL, '', '', ''),
	(55, '健康生活', 4, 1, '1377066001', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(56, '健康生活', 4, 1, '1377066020', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(57, '健康生活', 4, 1, '1377066070', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(58, '健康生活', 4, 1, '1377066118', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(59, '健康生活', 4, 1, '1377066225', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(60, '健康生活', 4, 1, '1377066258', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(61, '健康生活', 4, 1, '1377066268', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(62, '健康生活', 4, 1, '1377066504', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(63, '健康生活', 4, 1, '1377066691', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(64, '健康生活', 4, 1, '1377066730', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(65, '健康生活', 4, 1, '1377067046', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(66, '健康生活', 4, 1, '1377067067', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(67, '健康生活', 4, 1, '1377067095', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(68, '健康生活', 4, 1, '1377067190', '1', '<p>&nbsp;hjgjg</p>', NULL, '', '', ''),
	(69, '健康生活', 4, 1, '1377067203', '1', '<p>&nbsp;dfggdfg</p>', NULL, '', '', ''),
	(70, '健康生活', 4, 1, '1377067627', '1', '<p>&nbsp;dfggdfg</p>', NULL, '', '', ''),
	(71, '健康生活', 4, 1, '1377067805', '1', '<p>&nbsp;dfggdfg</p>', NULL, '', '', ''),
	(72, '健康生活', 4, 1, '1377067879', '1', '<p>&nbsp;dfggdfg</p>', NULL, '', '', ''),
	(73, '健康生活', 4, 1, '1377067896', '1', '<p>&nbsp;fsfsf</p>', NULL, '', '', ''),
	(74, '健康生活s', 4, 1, '1377067917', '1', '<p>&nbsp;fsfsf</p>', NULL, '', '', ''),
	(75, '健康生活', 4, 1, '1377067933', '1', '<p>&nbsp;fgdgg</p>', NULL, '', '', ''),
	(76, '健康生活', 4, 1, '1377068473', '1', '<p>&nbsp;fgdgg</p>', NULL, '', '', ''),
	(77, '健康生活', 4, 1, '1377068537', '1', '<p>&nbsp;fgdgg</p>', NULL, '', '', ''),
	(78, '健康生活', 4, 1, '1377068681', '1', '<p>&nbsp;fgdgg</p>', NULL, '', '', ''),
	(79, '健康生活', 4, 1, '1377068755', '1', '<p>&nbsp;fgdgg</p>', NULL, '', '', ''),
	(80, '健康生活', 4, 1, '1377068785', '1', '<p>&nbsp;fgdgg</p>', NULL, '', '', ''),
	(84, 'dfdsf', 5, 2, '1388041995', '1', '<p>&nbsp;dfdsf</p>', NULL, '1', '2', '3'),
	(85, 'dfsf', 4, 1, '1388042070', '1', '<p>&nbsp;gfhf</p>', NULL, '1', '2', '3'),
	(86, 'gdg', 3, 1, '1388042113', '2', '<p>&nbsp;gdgd</p>', NULL, '', '', '');
/*!40000 ALTER TABLE `xcenter_product` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_product_bclass 结构
CREATE TABLE IF NOT EXISTS `xcenter_product_bclass` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `paixun` smallint(5) unsigned NOT NULL DEFAULT '255',
  `flag` varchar(1) NOT NULL DEFAULT '2' COMMENT '默认为2，代表可删除，1代表不可删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_product_bclass 的数据：~5 rows (大约)
DELETE FROM `xcenter_product_bclass`;
/*!40000 ALTER TABLE `xcenter_product_bclass` DISABLE KEYS */;
INSERT INTO `xcenter_product_bclass` (`id`, `name`, `paixun`, `flag`) VALUES
	(1, '数码科技r', 24, '2'),
	(2, '精致生活', 5, '2'),
	(3, '社会万象', 255, '2'),
	(6, '测试', 255, '2'),
	(8, 'ceshi', 255, '2');
/*!40000 ALTER TABLE `xcenter_product_bclass` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_product_img 结构
CREATE TABLE IF NOT EXISTS `xcenter_product_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '产品id',
  `img` varchar(60) NOT NULL,
  `surface` varchar(1) NOT NULL DEFAULT '2' COMMENT '是否为封面图，默认为否（2）',
  `paixun` smallint(10) unsigned NOT NULL DEFAULT '255' COMMENT '图片排序',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_product_img 的数据：~55 rows (大约)
DELETE FROM `xcenter_product_img`;
/*!40000 ALTER TABLE `xcenter_product_img` DISABLE KEYS */;
INSERT INTO `xcenter_product_img` (`id`, `pid`, `img`, `surface`, `paixun`) VALUES
	(11, 24, '2010063006034218.jpg', '2', 255),
	(12, 25, '20100630091825508.jpg', '2', 12),
	(13, 26, '20100630091834277.jpg', '2', 255),
	(14, 27, '20100630091843671.jpg', '2', 255),
	(18, 31, '20100708112706432.jpg', '2', 255),
	(19, 27, '20100903105732854.gif', '1', 255),
	(20, 26, '20100903105745311.gif', '2', 255),
	(21, 38, '20100914185638657.jpg', '2', 23),
	(22, 38, '20100914185639839.jpg', '1', 2),
	(23, 38, '20100921113840557.jpg', '2', 255),
	(24, 38, '20100921113845889.gif', '2', 255),
	(47, 41, '20110609161226255.png', '1', 255),
	(48, 42, '20111121112008829.jpg', '1', 255),
	(49, 44, '20120207150306214.jpg', '1', 255),
	(50, 44, '20120207150306703.jpg', '2', 255),
	(51, 44, '20120207150306989.jpg', '2', 255),
	(52, 44, '20120207150306290.jpg', '2', 255),
	(53, 44, '2012020715030740.jpg', '2', 255),
	(54, 45, '20120207153021804.jpg', '1', 255),
	(55, 45, '20120207153022770.jpg', '2', 255),
	(56, 45, '20120207153022510.jpg', '2', 255),
	(57, 45, '20120207153022103.jpg', '2', 255),
	(58, 45, '20120207161902773.jpg', '2', 255),
	(59, 45, '20120207161903462.jpg', '2', 255),
	(60, 48, '20120209170852142.jpg', '1', 255),
	(61, 48, '20120209170853276.jpg', '2', 255),
	(62, 48, '2012020917093542.jpg', '2', 255),
	(63, 48, '20120209170935193.jpg', '2', 255),
	(64, 48, '20120209170936354.jpg', '2', 255),
	(65, 48, '20120209170957783.jpg', '2', 255),
	(66, 48, '20120209170957330.jpg', '2', 255),
	(67, 49, '20120209171110905.jpg', '1', 255),
	(68, 49, '<script>window.parent.window.locati', '2', 255),
	(69, 49, '2012031917024039.png', '2', 255),
	(70, 49, '2012031917051883.png', '2', 255),
	(71, 49, '<script>window.parent.window.locati', '2', 255),
	(72, 49, '<script>window.parent.window.locati', '2', 255),
	(73, 49, '20120320111540498.png', '2', 255),
	(74, 49, '20120320111553861.jpg', '2', 255),
	(75, 49, '20120320111710256.jpg', '2', 255),
	(76, 49, '20120320111820554.jpg', '2', 255),
	(77, 49, '20120320112025209.jpg', '2', 255),
	(78, 49, '20120320112100485.png', '2', 255),
	(79, 49, '20120320112141162.jpg', '2', 255),
	(80, 49, '20120322153659557.png', '2', 255),
	(81, 82, 'b6d99ee9e29b0e0c75acfde76878fde7.png', '2', 255),
	(82, 83, 'e6835aeaddfc69523bb73ecceab55ab9.png', '2', 255),
	(103, 85, '5e6895d1c5dcfc63e923447b03e17592.png', '1', 255),
	(104, 8, '7d5cacd06a81cd9dcc561a89c2e2168a.jpg', '1', 255),
	(105, 8, 'e2388f52d08761dd85d52b3c76000ca4.jpg', '2', 255),
	(107, 80, '1df386c0e1a56a362a4465e0eda2ff6c.jpg', '1', 255),
	(108, 80, '1c3020321cacf1de4fc52bef68e8d44f.jpg', '2', 255),
	(109, 84, '40a77144db281d802f697ddae00d410a.jpg', '1', 255),
	(110, 85, '20d83328874153eb9119d3bf3ad6c7ee.jpg', '1', 255),
	(111, 86, 'd16d71b91a0a7df68b23ec6fcd926c34.jpg', '1', 255);
/*!40000 ALTER TABLE `xcenter_product_img` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_product_sclass 结构
CREATE TABLE IF NOT EXISTS `xcenter_product_sclass` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `paixun` smallint(5) unsigned NOT NULL DEFAULT '255',
  `flag` varchar(1) NOT NULL DEFAULT '2' COMMENT '默认为2，代表可删除，1代表不可删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_product_sclass 的数据：~8 rows (大约)
DELETE FROM `xcenter_product_sclass`;
/*!40000 ALTER TABLE `xcenter_product_sclass` DISABLE KEYS */;
INSERT INTO `xcenter_product_sclass` (`id`, `bid`, `name`, `paixun`, `flag`) VALUES
	(3, 1, '上网本', 255, '2'),
	(4, 1, 'mp3', 3, '2'),
	(5, 2, '珠宝', 255, '2'),
	(6, 3, '今日聚焦', 255, '2'),
	(8, 8, '电子产品客服', 20, '2'),
	(9, 6, '测试二级', 255, '2'),
	(10, 6, '测试二级', 255, '2'),
	(12, 8, '测试二级', 1, '2');
/*!40000 ALTER TABLE `xcenter_product_sclass` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_role 结构
CREATE TABLE IF NOT EXISTS `xcenter_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `flag` varchar(2) NOT NULL DEFAULT '1',
  `created` varchar(25) NOT NULL,
  `rights` text,
  `menu` text NOT NULL COMMENT '菜单id的集合',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_role 的数据：~2 rows (大约)
DELETE FROM `xcenter_role`;
/*!40000 ALTER TABLE `xcenter_role` DISABLE KEYS */;
INSERT INTO `xcenter_role` (`id`, `name`, `flag`, `created`, `rights`, `menu`) VALUES
	(4, '管理员', '2', '1354513599', '60,10,11,12,13,14,15,16,1,2,3,4,5,6,7,8,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,58,54,55,56,57', ''),
	(5, 'master', '1', '1386918393', '37', 'a:2:{i:0;a:2:{s:4:"name";s:12:"系统管理";s:4:"menu";a:10:{i:0;a:7:{s:2:"id";s:1:"1";s:7:"menu_id";s:1:"1";s:4:"name";s:21:"超级系统管理员";s:9:"sourceMod";s:20:"system/administrator";s:6:"paixun";s:1:"1";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}i:1;a:7:{s:2:"id";s:1:"2";s:7:"menu_id";s:1:"1";s:4:"name";s:12:"模块管理";s:9:"sourceMod";s:13:"system/module";s:6:"paixun";s:1:"3";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}i:2;a:7:{s:2:"id";s:1:"3";s:7:"menu_id";s:1:"1";s:4:"name";s:12:"菜单管理";s:9:"sourceMod";s:16:"system/menuGroup";s:6:"paixun";s:1:"3";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}i:3;a:7:{s:2:"id";s:1:"4";s:7:"menu_id";s:1:"1";s:4:"name";s:12:"角色管理";s:9:"sourceMod";s:11:"system/role";s:6:"paixun";s:1:"4";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}i:4;a:7:{s:2:"id";s:1:"5";s:7:"menu_id";s:1:"1";s:4:"name";s:15:"管理员列表";s:9:"sourceMod";s:13:"system/master";s:6:"paixun";s:1:"5";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}i:5;a:7:{s:2:"id";s:1:"6";s:7:"menu_id";s:1:"1";s:4:"name";s:12:"系统设置";s:9:"sourceMod";s:13:"system/config";s:6:"paixun";s:1:"6";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}i:6;a:7:{s:2:"id";s:1:"7";s:7:"menu_id";s:1:"1";s:4:"name";s:12:"系统日志";s:9:"sourceMod";s:10:"system/log";s:6:"paixun";s:1:"7";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}i:7;a:7:{s:2:"id";s:2:"20";s:7:"menu_id";s:1:"1";s:4:"name";s:15:"服务器信息";s:9:"sourceMod";s:14:"system/phpinfo";s:6:"paixun";s:1:"8";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}i:8;a:7:{s:2:"id";s:2:"26";s:7:"menu_id";s:1:"1";s:4:"name";s:12:"邮件设置";s:9:"sourceMod";s:18:"system/emailConfig";s:6:"paixun";s:3:"255";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}i:9;a:7:{s:2:"id";s:2:"30";s:7:"menu_id";s:1:"1";s:4:"name";s:12:"修改密码";s:9:"sourceMod";s:14:"system/pswEdit";s:6:"paixun";s:3:"255";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}}}i:1;a:2:{s:4:"name";s:15:"数据库管理";s:4:"menu";a:3:{i:0;a:7:{s:2:"id";s:1:"8";s:7:"menu_id";s:1:"2";s:4:"name";s:12:"数据备份";s:9:"sourceMod";s:13:"master/backup";s:6:"paixun";s:3:"255";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}i:1;a:7:{s:2:"id";s:2:"10";s:7:"menu_id";s:1:"2";s:4:"name";s:12:"数据管理";s:9:"sourceMod";s:13:"master/manage";s:6:"paixun";s:3:"255";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}i:2;a:7:{s:2:"id";s:2:"29";s:7:"menu_id";s:1:"2";s:4:"name";s:9:"Sql执行";s:9:"sourceMod";s:14:"master/execSql";s:6:"paixun";s:3:"255";s:4:"flag";s:1:"1";s:6:"is_del";s:1:"2";}}}}');
/*!40000 ALTER TABLE `xcenter_role` ENABLE KEYS */;


-- 导出  表 xcenter.xcenter_sessions 结构
CREATE TABLE IF NOT EXISTS `xcenter_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  xcenter.xcenter_sessions 的数据：~1 rows (大约)
DELETE FROM `xcenter_sessions`;
/*!40000 ALTER TABLE `xcenter_sessions` DISABLE KEYS */;
INSERT INTO `xcenter_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('bf08b1ebd9931a979e40c0f9e81a048c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1419498455, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:5:"admin";s:3:"uid";s:1:"1";s:10:"login_flag";s:2:"ok";s:7:"classic";s:1:"1";s:6:"rights";b:0;s:4:"role";s:1:"0";}');
/*!40000 ALTER TABLE `xcenter_sessions` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
