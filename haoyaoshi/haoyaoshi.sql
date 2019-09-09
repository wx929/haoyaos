-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 年 09 月 07 日 06:57
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `haoyaoshi`
--

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `img1` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `black` varchar(200) NOT NULL,
  `store` varchar(20) NOT NULL,
  `des` varchar(30) NOT NULL,
  `now_price` int(10) NOT NULL,
  `old_price` int(10) NOT NULL,
  `img2` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=151 ;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`uid`, `img1`, `name`, `black`, `store`, `des`, `now_price`, `old_price`, `img2`) VALUES
(1, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(2, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！同仁堂 阿胶 375g(同仁堂 阿胶块)', '活动预售联系客服可享优惠价；不含辅料；效期将至；介意慎拍！此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(3, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！(免费熬胶)同仁堂阿胶(375g)', '活动预售联系客服可享优惠价；此链接为熬胶链接，介意慎拍！熬胶订单需在线支付，一经熬胶概不退换；', '好药师商城', '375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(4, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_41982/ff80808166f8265e01672ef9a4861f39_zfx_mid0.jpg', '(免费熬胶)同仁堂 阿胶 铁盒 250g', '此链接为熬胶链接，如不需熬胶请点下方关联查看！同仁堂 阿胶 每周四周五免费熬胶, 熬胶订单需在线支付', '好药师商城', '250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(5, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '钙尔奇 碳酸钙D3片(钙尔奇D) 600mg*72s', '', '重庆市昌平医药有限公司', '600mg*72s', 95, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(6, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '爱乐维 复合维生素片(爱乐维) 30s', '', '重庆市昌平医药有限公司', '30s', 83, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(7, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000048_257809/8a8094216c1eeba9016ccc88bc825324_zfx_mid0.jpg', '三九 益血生胶囊 0.25g*12s*3板', '', '重庆市昌平医药有限公司', '0.25g*12s*3板', 32, 43, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(8, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000045_257806/8a8094216c1eeba9016cd0e077cd5788_zfx_mid0.jpg', '中庸 芪归蝮蛇胶囊 0.3g*12s*2板', '', '好药师商城', '0.3g*12s*2板', 68, 79, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(9, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订75元/盒)红珊瑚 益气维血片5盒装', '补血益气，用于气虚证、气血两虚证证候治疗；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(10, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '山西九康市二院店', '0.57g*12s*4板*5', 375, 440, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(11, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000023_257777/8a8094216c1eeba9016cbd0eb7dd4e3e_zfx_mid0.jpg', '东阿 阿胶(红标铁盒) 250g', '', '重庆市昌平医药有限公司', '250g', 1288, 1399, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(12, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000024_257778/8a8094216c1eeba9016cd0e4c0d0579d_zfx_mid0.jpg', '汉方 黄芪颗粒 15g*10袋', '', '重庆市昌平医药有限公司', '15g*10袋', 58, 66, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(13, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000022_257774/8a8094216c1eeba9016cbcff95394e05_zfx_mid0.jpg', '德良方 强身颗粒 4g*12袋', '', '重庆市昌平医药有限公司', '4g*12袋', 25, 29, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(14, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000017_257769/8a8094216c1eeba9016cbc820e614d86_zfx_mid0.jpg', '云南白药 气血康口服液 10ml*10支', '', '重庆市昌平医药有限公司', '10ml*10支', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(15, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000041_257723/8a8094216c1eeba9016c992190693bec_zfx_mid0.jpg', '益欣 利舒康胶囊 0.5g*12s*2板', '', '山西九康市二院店', '0.5g*12s*2板', 58, 69, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(16, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订)红珊瑚 益气维血片 0.57g*12s*4板', '补血益气，用于气虚证、气血两虚证证候治疗；', '山西九康市二院店', '0.57g*12s*4板', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(17, 'http://image.qumaiyao.com/data/goodscenter/imges/BQA003022C_257691/8a8094216c1eeba9016c8e1aee763528_zfx_mid0.jpg', '欧意 腺苷钴胺片 0.25mg*100s 糖衣', '', '好药师商城', '0.25mg*100s 糖衣', 12, 19, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(18, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(19, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！同仁堂 阿胶 375g(同仁堂 阿胶块)', '活动预售联系客服可享优惠价；不含辅料；效期将至；介意慎拍！此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(20, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！(免费熬胶)同仁堂阿胶(375g)', '活动预售联系客服可享优惠价；此链接为熬胶链接，介意慎拍！熬胶订单需在线支付，一经熬胶概不退换；', '好药师商城', '375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(21, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_41982/ff80808166f8265e01672ef9a4861f39_zfx_mid0.jpg', '(免费熬胶)同仁堂 阿胶 铁盒 250g', '此链接为熬胶链接，如不需熬胶请点下方关联查看！同仁堂 阿胶 每周四周五免费熬胶, 熬胶订单需在线支付', '好药师商城', '250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(22, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '钙尔奇 碳酸钙D3片(钙尔奇D) 600mg*72s', '', '重庆市昌平医药有限公司', '600mg*72s', 95, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(23, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '爱乐维 复合维生素片(爱乐维) 30s', '', '重庆市昌平医药有限公司', '30s', 83, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(24, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000048_257809/8a8094216c1eeba9016ccc88bc825324_zfx_mid0.jpg', '三九 益血生胶囊 0.25g*12s*3板', '', '重庆市昌平医药有限公司', '0.25g*12s*3板', 32, 43, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(25, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000045_257806/8a8094216c1eeba9016cd0e077cd5788_zfx_mid0.jpg', '中庸 芪归蝮蛇胶囊 0.3g*12s*2板', '', '好药师商城', '0.3g*12s*2板', 68, 79, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(26, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订75元/盒)红珊瑚 益气维血片5盒装', '补血益气，用于气虚证、气血两虚证证候治疗；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(27, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '山西九康市二院店', '0.57g*12s*4板*5', 375, 440, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(28, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000023_257777/8a8094216c1eeba9016cbd0eb7dd4e3e_zfx_mid0.jpg', '东阿 阿胶(红标铁盒) 250g', '', '重庆市昌平医药有限公司', '250g', 1288, 1399, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(29, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000024_257778/8a8094216c1eeba9016cd0e4c0d0579d_zfx_mid0.jpg', '汉方 黄芪颗粒 15g*10袋', '', '重庆市昌平医药有限公司', '15g*10袋', 58, 66, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(30, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000022_257774/8a8094216c1eeba9016cbcff95394e05_zfx_mid0.jpg', '德良方 强身颗粒 4g*12袋', '', '重庆市昌平医药有限公司', '4g*12袋', 25, 29, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(31, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000017_257769/8a8094216c1eeba9016cbc820e614d86_zfx_mid0.jpg', '云南白药 气血康口服液 10ml*10支', '', '重庆市昌平医药有限公司', '10ml*10支', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(32, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000041_257723/8a8094216c1eeba9016c992190693bec_zfx_mid0.jpg', '益欣 利舒康胶囊 0.5g*12s*2板', '', '山西九康市二院店', '0.5g*12s*2板', 58, 69, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(33, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订)红珊瑚 益气维血片 0.57g*12s*4板', '补血益气，用于气虚证、气血两虚证证候治疗；', '山西九康市二院店', '0.57g*12s*4板', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(34, 'http://image.qumaiyao.com/data/goodscenter/imges/BQA003022C_257691/8a8094216c1eeba9016c8e1aee763528_zfx_mid0.jpg', '欧意 腺苷钴胺片 0.25mg*100s 糖衣', '', '好药师商城', '0.25mg*100s 糖衣', 12, 19, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(35, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(36, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！同仁堂 阿胶 375g(同仁堂 阿胶块)', '活动预售联系客服可享优惠价；不含辅料；效期将至；介意慎拍！此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(37, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！(免费熬胶)同仁堂阿胶(375g)', '活动预售联系客服可享优惠价；此链接为熬胶链接，介意慎拍！熬胶订单需在线支付，一经熬胶概不退换；', '好药师商城', '375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(38, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_41982/ff80808166f8265e01672ef9a4861f39_zfx_mid0.jpg', '(免费熬胶)同仁堂 阿胶 铁盒 250g', '此链接为熬胶链接，如不需熬胶请点下方关联查看！同仁堂 阿胶 每周四周五免费熬胶, 熬胶订单需在线支付', '好药师商城', '250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(39, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '钙尔奇 碳酸钙D3片(钙尔奇D) 600mg*72s', '', '重庆市昌平医药有限公司', '600mg*72s', 95, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(40, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '爱乐维 复合维生素片(爱乐维) 30s', '', '重庆市昌平医药有限公司', '30s', 83, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(41, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000048_257809/8a8094216c1eeba9016ccc88bc825324_zfx_mid0.jpg', '三九 益血生胶囊 0.25g*12s*3板', '', '重庆市昌平医药有限公司', '0.25g*12s*3板', 32, 43, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(42, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000045_257806/8a8094216c1eeba9016cd0e077cd5788_zfx_mid0.jpg', '中庸 芪归蝮蛇胶囊 0.3g*12s*2板', '', '好药师商城', '0.3g*12s*2板', 68, 79, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(43, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订75元/盒)红珊瑚 益气维血片5盒装', '补血益气，用于气虚证、气血两虚证证候治疗；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(44, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '山西九康市二院店', '0.57g*12s*4板*5', 375, 440, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(45, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000023_257777/8a8094216c1eeba9016cbd0eb7dd4e3e_zfx_mid0.jpg', '东阿 阿胶(红标铁盒) 250g', '', '重庆市昌平医药有限公司', '250g', 1288, 1399, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(46, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000024_257778/8a8094216c1eeba9016cd0e4c0d0579d_zfx_mid0.jpg', '汉方 黄芪颗粒 15g*10袋', '', '重庆市昌平医药有限公司', '15g*10袋', 58, 66, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(47, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000022_257774/8a8094216c1eeba9016cbcff95394e05_zfx_mid0.jpg', '德良方 强身颗粒 4g*12袋', '', '重庆市昌平医药有限公司', '4g*12袋', 25, 29, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(48, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000017_257769/8a8094216c1eeba9016cbc820e614d86_zfx_mid0.jpg', '云南白药 气血康口服液 10ml*10支', '', '重庆市昌平医药有限公司', '10ml*10支', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(49, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000041_257723/8a8094216c1eeba9016c992190693bec_zfx_mid0.jpg', '益欣 利舒康胶囊 0.5g*12s*2板', '', '山西九康市二院店', '0.5g*12s*2板', 58, 69, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(50, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订)红珊瑚 益气维血片 0.57g*12s*4板', '补血益气，用于气虚证、气血两虚证证候治疗；', '山西九康市二院店', '0.57g*12s*4板', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(51, 'http://image.qumaiyao.com/data/goodscenter/imges/BQA003022C_257691/8a8094216c1eeba9016c8e1aee763528_zfx_mid0.jpg', '欧意 腺苷钴胺片 0.25mg*100s 糖衣', '', '好药师商城', '0.25mg*100s 糖衣', 12, 19, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(52, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(53, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！同仁堂 阿胶 375g(同仁堂 阿胶块)', '活动预售联系客服可享优惠价；不含辅料；效期将至；介意慎拍！此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(54, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！(免费熬胶)同仁堂阿胶(375g)', '活动预售联系客服可享优惠价；此链接为熬胶链接，介意慎拍！熬胶订单需在线支付，一经熬胶概不退换；', '好药师商城', '375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(55, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_41982/ff80808166f8265e01672ef9a4861f39_zfx_mid0.jpg', '(免费熬胶)同仁堂 阿胶 铁盒 250g', '此链接为熬胶链接，如不需熬胶请点下方关联查看！同仁堂 阿胶 每周四周五免费熬胶, 熬胶订单需在线支付', '好药师商城', '250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(56, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '钙尔奇 碳酸钙D3片(钙尔奇D) 600mg*72s', '', '重庆市昌平医药有限公司', '600mg*72s', 95, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(57, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '爱乐维 复合维生素片(爱乐维) 30s', '', '重庆市昌平医药有限公司', '30s', 83, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(58, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000048_257809/8a8094216c1eeba9016ccc88bc825324_zfx_mid0.jpg', '三九 益血生胶囊 0.25g*12s*3板', '', '重庆市昌平医药有限公司', '0.25g*12s*3板', 32, 43, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(59, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000045_257806/8a8094216c1eeba9016cd0e077cd5788_zfx_mid0.jpg', '中庸 芪归蝮蛇胶囊 0.3g*12s*2板', '', '好药师商城', '0.3g*12s*2板', 68, 79, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(60, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订75元/盒)红珊瑚 益气维血片5盒装', '补血益气，用于气虚证、气血两虚证证候治疗；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(61, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '山西九康市二院店', '0.57g*12s*4板*5', 375, 440, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(62, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000023_257777/8a8094216c1eeba9016cbd0eb7dd4e3e_zfx_mid0.jpg', '东阿 阿胶(红标铁盒) 250g', '', '重庆市昌平医药有限公司', '250g', 1288, 1399, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(63, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000024_257778/8a8094216c1eeba9016cd0e4c0d0579d_zfx_mid0.jpg', '汉方 黄芪颗粒 15g*10袋', '', '重庆市昌平医药有限公司', '15g*10袋', 58, 66, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(64, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000022_257774/8a8094216c1eeba9016cbcff95394e05_zfx_mid0.jpg', '德良方 强身颗粒 4g*12袋', '', '重庆市昌平医药有限公司', '4g*12袋', 25, 29, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(65, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000017_257769/8a8094216c1eeba9016cbc820e614d86_zfx_mid0.jpg', '云南白药 气血康口服液 10ml*10支', '', '重庆市昌平医药有限公司', '10ml*10支', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(66, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000041_257723/8a8094216c1eeba9016c992190693bec_zfx_mid0.jpg', '益欣 利舒康胶囊 0.5g*12s*2板', '', '山西九康市二院店', '0.5g*12s*2板', 58, 69, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(67, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订)红珊瑚 益气维血片 0.57g*12s*4板', '补血益气，用于气虚证、气血两虚证证候治疗；', '山西九康市二院店', '0.57g*12s*4板', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(68, 'http://image.qumaiyao.com/data/goodscenter/imges/BQA003022C_257691/8a8094216c1eeba9016c8e1aee763528_zfx_mid0.jpg', '欧意 腺苷钴胺片 0.25mg*100s 糖衣', '', '好药师商城', '0.25mg*100s 糖衣', 12, 19, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(69, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(70, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！同仁堂 阿胶 375g(同仁堂 阿胶块)', '活动预售联系客服可享优惠价；不含辅料；效期将至；介意慎拍！此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(71, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！(免费熬胶)同仁堂阿胶(375g)', '活动预售联系客服可享优惠价；此链接为熬胶链接，介意慎拍！熬胶订单需在线支付，一经熬胶概不退换；', '好药师商城', '375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(72, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_41982/ff80808166f8265e01672ef9a4861f39_zfx_mid0.jpg', '(免费熬胶)同仁堂 阿胶 铁盒 250g', '此链接为熬胶链接，如不需熬胶请点下方关联查看！同仁堂 阿胶 每周四周五免费熬胶, 熬胶订单需在线支付', '好药师商城', '250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(73, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '钙尔奇 碳酸钙D3片(钙尔奇D) 600mg*72s', '', '重庆市昌平医药有限公司', '600mg*72s', 95, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(74, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '爱乐维 复合维生素片(爱乐维) 30s', '', '重庆市昌平医药有限公司', '30s', 83, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(75, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000048_257809/8a8094216c1eeba9016ccc88bc825324_zfx_mid0.jpg', '三九 益血生胶囊 0.25g*12s*3板', '', '重庆市昌平医药有限公司', '0.25g*12s*3板', 32, 43, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(76, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000045_257806/8a8094216c1eeba9016cd0e077cd5788_zfx_mid0.jpg', '中庸 芪归蝮蛇胶囊 0.3g*12s*2板', '', '好药师商城', '0.3g*12s*2板', 68, 79, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(77, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订75元/盒)红珊瑚 益气维血片5盒装', '补血益气，用于气虚证、气血两虚证证候治疗；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(78, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '山西九康市二院店', '0.57g*12s*4板*5', 375, 440, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(79, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000023_257777/8a8094216c1eeba9016cbd0eb7dd4e3e_zfx_mid0.jpg', '东阿 阿胶(红标铁盒) 250g', '', '重庆市昌平医药有限公司', '250g', 1288, 1399, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(80, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000024_257778/8a8094216c1eeba9016cd0e4c0d0579d_zfx_mid0.jpg', '汉方 黄芪颗粒 15g*10袋', '', '重庆市昌平医药有限公司', '15g*10袋', 58, 66, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(81, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000022_257774/8a8094216c1eeba9016cbcff95394e05_zfx_mid0.jpg', '德良方 强身颗粒 4g*12袋', '', '重庆市昌平医药有限公司', '4g*12袋', 25, 29, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(82, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000017_257769/8a8094216c1eeba9016cbc820e614d86_zfx_mid0.jpg', '云南白药 气血康口服液 10ml*10支', '', '重庆市昌平医药有限公司', '10ml*10支', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(83, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000041_257723/8a8094216c1eeba9016c992190693bec_zfx_mid0.jpg', '益欣 利舒康胶囊 0.5g*12s*2板', '', '山西九康市二院店', '0.5g*12s*2板', 58, 69, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(84, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订)红珊瑚 益气维血片 0.57g*12s*4板', '补血益气，用于气虚证、气血两虚证证候治疗；', '山西九康市二院店', '0.57g*12s*4板', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(85, 'http://image.qumaiyao.com/data/goodscenter/imges/BQA003022C_257691/8a8094216c1eeba9016c8e1aee763528_zfx_mid0.jpg', '欧意 腺苷钴胺片 0.25mg*100s 糖衣', '', '好药师商城', '0.25mg*100s 糖衣', 12, 19, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(86, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(87, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！同仁堂 阿胶 375g(同仁堂 阿胶块)', '活动预售联系客服可享优惠价；不含辅料；效期将至；介意慎拍！此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(88, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！(免费熬胶)同仁堂阿胶(375g)', '活动预售联系客服可享优惠价；此链接为熬胶链接，介意慎拍！熬胶订单需在线支付，一经熬胶概不退换；', '好药师商城', '375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(89, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_41982/ff80808166f8265e01672ef9a4861f39_zfx_mid0.jpg', '(免费熬胶)同仁堂 阿胶 铁盒 250g', '此链接为熬胶链接，如不需熬胶请点下方关联查看！同仁堂 阿胶 每周四周五免费熬胶, 熬胶订单需在线支付', '好药师商城', '250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(90, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '钙尔奇 碳酸钙D3片(钙尔奇D) 600mg*72s', '', '重庆市昌平医药有限公司', '600mg*72s', 95, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(91, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '爱乐维 复合维生素片(爱乐维) 30s', '', '重庆市昌平医药有限公司', '30s', 83, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(92, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000048_257809/8a8094216c1eeba9016ccc88bc825324_zfx_mid0.jpg', '三九 益血生胶囊 0.25g*12s*3板', '', '重庆市昌平医药有限公司', '0.25g*12s*3板', 32, 43, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(93, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000045_257806/8a8094216c1eeba9016cd0e077cd5788_zfx_mid0.jpg', '中庸 芪归蝮蛇胶囊 0.3g*12s*2板', '', '好药师商城', '0.3g*12s*2板', 68, 79, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(94, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订75元/盒)红珊瑚 益气维血片5盒装', '补血益气，用于气虚证、气血两虚证证候治疗；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(95, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '山西九康市二院店', '0.57g*12s*4板*5', 375, 440, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(96, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000023_257777/8a8094216c1eeba9016cbd0eb7dd4e3e_zfx_mid0.jpg', '东阿 阿胶(红标铁盒) 250g', '', '重庆市昌平医药有限公司', '250g', 1288, 1399, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(97, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000024_257778/8a8094216c1eeba9016cd0e4c0d0579d_zfx_mid0.jpg', '汉方 黄芪颗粒 15g*10袋', '', '重庆市昌平医药有限公司', '15g*10袋', 58, 66, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(98, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000022_257774/8a8094216c1eeba9016cbcff95394e05_zfx_mid0.jpg', '德良方 强身颗粒 4g*12袋', '', '重庆市昌平医药有限公司', '4g*12袋', 25, 29, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(99, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000017_257769/8a8094216c1eeba9016cbc820e614d86_zfx_mid0.jpg', '云南白药 气血康口服液 10ml*10支', '', '重庆市昌平医药有限公司', '10ml*10支', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(100, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000041_257723/8a8094216c1eeba9016c992190693bec_zfx_mid0.jpg', '益欣 利舒康胶囊 0.5g*12s*2板', '', '山西九康市二院店', '0.5g*12s*2板', 58, 69, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(101, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订)红珊瑚 益气维血片 0.57g*12s*4板', '补血益气，用于气虚证、气血两虚证证候治疗；', '山西九康市二院店', '0.57g*12s*4板', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(102, 'http://image.qumaiyao.com/data/goodscenter/imges/BQA003022C_257691/8a8094216c1eeba9016c8e1aee763528_zfx_mid0.jpg', '欧意 腺苷钴胺片 0.25mg*100s 糖衣', '', '好药师商城', '0.25mg*100s 糖衣', 12, 19, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(103, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(104, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！同仁堂 阿胶 375g(同仁堂 阿胶块)', '活动预售联系客服可享优惠价；不含辅料；效期将至；介意慎拍！此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(105, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！(免费熬胶)同仁堂阿胶(375g)', '活动预售联系客服可享优惠价；此链接为熬胶链接，介意慎拍！熬胶订单需在线支付，一经熬胶概不退换；', '好药师商城', '375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(106, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_41982/ff80808166f8265e01672ef9a4861f39_zfx_mid0.jpg', '(免费熬胶)同仁堂 阿胶 铁盒 250g', '此链接为熬胶链接，如不需熬胶请点下方关联查看！同仁堂 阿胶 每周四周五免费熬胶, 熬胶订单需在线支付', '好药师商城', '250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(107, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '钙尔奇 碳酸钙D3片(钙尔奇D) 600mg*72s', '', '重庆市昌平医药有限公司', '600mg*72s', 95, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(108, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '爱乐维 复合维生素片(爱乐维) 30s', '', '重庆市昌平医药有限公司', '30s', 83, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(109, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000048_257809/8a8094216c1eeba9016ccc88bc825324_zfx_mid0.jpg', '三九 益血生胶囊 0.25g*12s*3板', '', '重庆市昌平医药有限公司', '0.25g*12s*3板', 32, 43, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(110, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000045_257806/8a8094216c1eeba9016cd0e077cd5788_zfx_mid0.jpg', '中庸 芪归蝮蛇胶囊 0.3g*12s*2板', '', '好药师商城', '0.3g*12s*2板', 68, 79, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(111, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订75元/盒)红珊瑚 益气维血片5盒装', '补血益气，用于气虚证、气血两虚证证候治疗；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(112, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '山西九康市二院店', '0.57g*12s*4板*5', 375, 440, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(113, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000023_257777/8a8094216c1eeba9016cbd0eb7dd4e3e_zfx_mid0.jpg', '东阿 阿胶(红标铁盒) 250g', '', '重庆市昌平医药有限公司', '250g', 1288, 1399, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(114, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000024_257778/8a8094216c1eeba9016cd0e4c0d0579d_zfx_mid0.jpg', '汉方 黄芪颗粒 15g*10袋', '', '重庆市昌平医药有限公司', '15g*10袋', 58, 66, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(115, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000022_257774/8a8094216c1eeba9016cbcff95394e05_zfx_mid0.jpg', '德良方 强身颗粒 4g*12袋', '', '重庆市昌平医药有限公司', '4g*12袋', 25, 29, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(116, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000017_257769/8a8094216c1eeba9016cbc820e614d86_zfx_mid0.jpg', '云南白药 气血康口服液 10ml*10支', '', '重庆市昌平医药有限公司', '10ml*10支', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(117, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000041_257723/8a8094216c1eeba9016c992190693bec_zfx_mid0.jpg', '益欣 利舒康胶囊 0.5g*12s*2板', '', '山西九康市二院店', '0.5g*12s*2板', 58, 69, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(118, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订)红珊瑚 益气维血片 0.57g*12s*4板', '补血益气，用于气虚证、气血两虚证证候治疗；', '山西九康市二院店', '0.57g*12s*4板', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(119, 'http://image.qumaiyao.com/data/goodscenter/imges/BQA003022C_257691/8a8094216c1eeba9016c8e1aee763528_zfx_mid0.jpg', '欧意 腺苷钴胺片 0.25mg*100s 糖衣', '', '好药师商城', '0.25mg*100s 糖衣', 12, 19, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(120, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(121, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！同仁堂 阿胶 375g(同仁堂 阿胶块)', '活动预售联系客服可享优惠价；不含辅料；效期将至；介意慎拍！此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(122, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！(免费熬胶)同仁堂阿胶(375g)', '活动预售联系客服可享优惠价；此链接为熬胶链接，介意慎拍！熬胶订单需在线支付，一经熬胶概不退换；', '好药师商城', '375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(123, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_41982/ff80808166f8265e01672ef9a4861f39_zfx_mid0.jpg', '(免费熬胶)同仁堂 阿胶 铁盒 250g', '此链接为熬胶链接，如不需熬胶请点下方关联查看！同仁堂 阿胶 每周四周五免费熬胶, 熬胶订单需在线支付', '好药师商城', '250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(124, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '钙尔奇 碳酸钙D3片(钙尔奇D) 600mg*72s', '', '重庆市昌平医药有限公司', '600mg*72s', 95, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(125, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '爱乐维 复合维生素片(爱乐维) 30s', '', '重庆市昌平医药有限公司', '30s', 83, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(126, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000048_257809/8a8094216c1eeba9016ccc88bc825324_zfx_mid0.jpg', '三九 益血生胶囊 0.25g*12s*3板', '', '重庆市昌平医药有限公司', '0.25g*12s*3板', 32, 43, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(127, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000045_257806/8a8094216c1eeba9016cd0e077cd5788_zfx_mid0.jpg', '中庸 芪归蝮蛇胶囊 0.3g*12s*2板', '', '好药师商城', '0.3g*12s*2板', 68, 79, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(128, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订75元/盒)红珊瑚 益气维血片5盒装', '补血益气，用于气虚证、气血两虚证证候治疗；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(129, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '山西九康市二院店', '0.57g*12s*4板*5', 375, 440, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(130, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000023_257777/8a8094216c1eeba9016cbd0eb7dd4e3e_zfx_mid0.jpg', '东阿 阿胶(红标铁盒) 250g', '', '重庆市昌平医药有限公司', '250g', 1288, 1399, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(131, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000024_257778/8a8094216c1eeba9016cd0e4c0d0579d_zfx_mid0.jpg', '汉方 黄芪颗粒 15g*10袋', '', '重庆市昌平医药有限公司', '15g*10袋', 58, 66, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(132, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000022_257774/8a8094216c1eeba9016cbcff95394e05_zfx_mid0.jpg', '德良方 强身颗粒 4g*12袋', '', '重庆市昌平医药有限公司', '4g*12袋', 25, 29, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(133, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000017_257769/8a8094216c1eeba9016cbc820e614d86_zfx_mid0.jpg', '云南白药 气血康口服液 10ml*10支', '', '重庆市昌平医药有限公司', '10ml*10支', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(134, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000041_257723/8a8094216c1eeba9016c992190693bec_zfx_mid0.jpg', '益欣 利舒康胶囊 0.5g*12s*2板', '', '山西九康市二院店', '0.5g*12s*2板', 58, 69, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(135, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订)红珊瑚 益气维血片 0.57g*12s*4板', '补血益气，用于气虚证、气血两虚证证候治疗；', '山西九康市二院店', '0.57g*12s*4板', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(136, 'http://image.qumaiyao.com/data/goodscenter/imges/BQA003022C_257691/8a8094216c1eeba9016c8e1aee763528_zfx_mid0.jpg', '欧意 腺苷钴胺片 0.25mg*100s 糖衣', '', '好药师商城', '0.25mg*100s 糖衣', 12, 19, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(137, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(138, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！同仁堂 阿胶 375g(同仁堂 阿胶块)', '活动预售联系客服可享优惠价；不含辅料；效期将至；介意慎拍！此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '好药师商城', '同仁堂 阿胶375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(139, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0.jpg', '预售！(免费熬胶)同仁堂阿胶(375g)', '活动预售联系客服可享优惠价；此链接为熬胶链接，介意慎拍！熬胶订单需在线支付，一经熬胶概不退换；', '好药师商城', '375g', 988, 1200, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(140, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_41982/ff80808166f8265e01672ef9a4861f39_zfx_mid0.jpg', '(免费熬胶)同仁堂 阿胶 铁盒 250g', '此链接为熬胶链接，如不需熬胶请点下方关联查看！同仁堂 阿胶 每周四周五免费熬胶, 熬胶订单需在线支付', '好药师商城', '250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(141, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '钙尔奇 碳酸钙D3片(钙尔奇D) 600mg*72s', '', '重庆市昌平医药有限公司', '600mg*72s', 95, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(142, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000073_257834/8a8094216c1eeba9016ccd306d8355ba_zfx_mid0.jpg', '爱乐维 复合维生素片(爱乐维) 30s', '', '重庆市昌平医药有限公司', '30s', 83, 100, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(143, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000048_257809/8a8094216c1eeba9016ccc88bc825324_zfx_mid0.jpg', '三九 益血生胶囊 0.25g*12s*3板', '', '重庆市昌平医药有限公司', '0.25g*12s*3板', 32, 43, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(144, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000045_257806/8a8094216c1eeba9016cd0e077cd5788_zfx_mid0.jpg', '中庸 芪归蝮蛇胶囊 0.3g*12s*2板', '', '好药师商城', '0.3g*12s*2板', 68, 79, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(145, 'http://image.qumaiyao.com/data/goodscenter/imges/CSEYD0000040_257722/8a8094216c1eeba9016c991cf85e3be4_zfx_mid0.jpg', '预订75元/盒)红珊瑚 益气维血片5盒装', '补血益气，用于气虚证、气血两虚证证候治疗；', '好药师商城', '同仁堂 阿胶250g', 699, 980, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(146, 'http://image.qumaiyao.com/data/goodscenter/imges/set_meal_copy_56426/000000005f48950d015f5b7baa6c0f76_zfx_mid0.jpg', '同仁堂 阿胶(铁盒) 250g', '搭配同仁堂阿胶保鲜盒+礼品袋；此链接为不熬胶的链接，如需熬胶请联系客服或点击下方熬胶链接；', '山西九康市二院店', '0.57g*12s*4板*5', 375, 440, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(147, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000023_257777/8a8094216c1eeba9016cbd0eb7dd4e3e_zfx_mid0.jpg', '东阿 阿胶(红标铁盒) 250g', '', '重庆市昌平医药有限公司', '250g', 1288, 1399, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png');
INSERT INTO `goods` (`uid`, `img1`, `name`, `black`, `store`, `des`, `now_price`, `old_price`, `img2`) VALUES
(148, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000024_257778/8a8094216c1eeba9016cd0e4c0d0579d_zfx_mid0.jpg', '汉方 黄芪颗粒 15g*10袋', '', '重庆市昌平医药有限公司', '15g*10袋', 58, 66, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(149, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000022_257774/8a8094216c1eeba9016cbcff95394e05_zfx_mid0.jpg', '德良方 强身颗粒 4g*12袋', '', '重庆市昌平医药有限公司', '4g*12袋', 25, 29, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png'),
(150, 'http://image.qumaiyao.com/data/goodscenter/imges/CCPYY0000017_257769/8a8094216c1eeba9016cbc820e614d86_zfx_mid0.jpg', '云南白药 气血康口服液 10ml*10支', '', '重庆市昌平医药有限公司', '10ml*10支', 88, 99, 'http://design.ehaoyao.com/new_site/static/images/icon_zx.png');

-- --------------------------------------------------------

--
-- 表的结构 `gouwuche`
--

CREATE TABLE IF NOT EXISTS `gouwuche` (
  `uid` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `total` int(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gouwuche`
--

INSERT INTO `gouwuche` (`uid`, `phone`, `total`) VALUES
('5', '13456789123', 2),
('7', '13456789123', 2);

-- --------------------------------------------------------

--
-- 表的结构 `guanliyuan`
--

CREATE TABLE IF NOT EXISTS `guanliyuan` (
  `phone` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `guanliyuan`
--

INSERT INTO `guanliyuan` (`phone`, `password`) VALUES
('123', 'qq123'),
('456', 'qq456');

-- --------------------------------------------------------

--
-- 表的结构 `xiangqing`
--

CREATE TABLE IF NOT EXISTS `xiangqing` (
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) NOT NULL,
  `img3` varchar(200) NOT NULL,
  `img4` varchar(200) NOT NULL,
  `id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `xiangqing`
--

INSERT INTO `xiangqing` (`img1`, `img2`, `img3`, `img4`, `id`) VALUES
('http://ac01bt.img.file.ehaoyao.com/w/goods/img01/ZKA010371G_232955/4aea47a45382a5f80153a62531021004_zfx_mid5-w.jpg', 'http://ac01bt.img.file.ehaoyao.com/w/goods/img01/ZKA010371G_232955/4aea47a45382a5f80153a625187f0ff3_zfx_mid2-w.jpg', 'http://ac01bt.img.file.ehaoyao.com/w/goods/img01/ZKA010371G_232955/4aea47a45382a5f80153a62528cb0ffe_zfx_mid4-w.jpg', 'http://ac01bt.img.file.ehaoyao.com/w/goods/img01/ZKA010371G_232955/4aea47a45382a5f80153a62531021004_zfx_mid5-w.jpg', 4),
('http://ac01bt.img.file.ehaoyao.com/w/goods/img01/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0-w.jpg', 'http://ac01bt.img.file.ehaoyao.com/w/goods/img01/ZKA010356G_231724/8a8a8ac1510fa39f0151d717c8a07795_zfx_mid2-w.JPG', 'http://ac01bt.img.file.ehaoyao.com/w/goods/img01/ZKA010356G_231724/8a8a8ac1510fa39f0151d717d09e779e_zfx_mid3-w.JPG', 'http://ac01bt.img.file.ehaoyao.com/w/goods/img01/ZKA010356G_231724/8a8a8ac1510fa39f0151d717d8ad77a6_zfx_mid4-w.JPG', 5),
('http://ac01bt.img.file.ehaoyao.com/w/goods/img01/set_meal_copy_52591/8a8094216c1eeba9016c84b4f99a2e69_zfx_mid0-w.jpg', 'http://ac01bt.img.file.ehaoyao.com/w/goods/img01/ZKA010356G_231724/8a8a8ac1510fa39f0151d717c8a07795_zfx_mid2-w.JPG', 'http://ac01bt.img.file.ehaoyao.com/w/goods/img01/ZKA010356G_231724/8a8a8ac1510fa39f0151d717d09e779e_zfx_mid3-w.JPG', 'http://ac01bt.img.file.ehaoyao.com/w/goods/img01/ZKA010356G_231724/8a8a8ac1510fa39f0151d717d8ad77a6_zfx_mid4-w.JPG', 6);

-- --------------------------------------------------------

--
-- 表的结构 `zhuce`
--

CREATE TABLE IF NOT EXISTS `zhuce` (
  `phone` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zhuce`
--

INSERT INTO `zhuce` (`phone`, `password`) VALUES
('13212132121', 'qq12345'),
('13426272711', 'qq7890'),
('13434343434', 'qq12345'),
('13637373734', 'qq1234'),
('13637390794', 'qq1234'),
('13886904210', 'qq1234'),
('15920490063', 'qq1234');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
