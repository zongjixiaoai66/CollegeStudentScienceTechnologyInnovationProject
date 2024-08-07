/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t264`;
CREATE DATABASE IF NOT EXISTS `t264` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t264`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/daxueshengkechuangxiangmu/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/daxueshengkechuangxiangmu/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/daxueshengkechuangxiangmu/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'keyanxiangmu_types', '项目类型', 1, '资料类型1', NULL, NULL, '2022-02-17 08:08:27'),
	(2, 'keyanxiangmu_types', '项目类型', 2, '资料类型2', NULL, NULL, '2022-02-17 08:08:27'),
	(3, 'keyanxiangmu_types', '项目类型', 3, '资料类型3', NULL, NULL, '2022-02-17 08:08:27'),
	(4, 'keyanxiangmu_yesno_types', '审核结果', 1, '未审核', NULL, NULL, '2022-02-17 08:08:27'),
	(5, 'keyanxiangmu_yesno_types', '审核结果', 2, '通过', NULL, NULL, '2022-02-17 08:08:28'),
	(6, 'keyanxiangmu_yesno_types', '审核结果', 3, '拒绝', NULL, NULL, '2022-02-17 08:08:28'),
	(7, 'keyanxiangmu_yesno_types', '审核结果', 4, '待验收', NULL, NULL, '2022-02-17 08:08:28'),
	(8, 'keyanxiangmu_yesno_types', '审核结果', 5, '验收通过', NULL, NULL, '2022-02-17 08:08:28'),
	(9, 'keyanxiangmu_yesno_types', '审核结果', 6, '验收拒绝', NULL, NULL, '2022-02-17 08:08:28'),
	(10, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-02-17 08:08:28'),
	(11, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-02-17 08:08:28'),
	(12, 'news_types', '公告信息类型', 1, '公告信息类型1', NULL, NULL, '2022-02-17 08:08:28'),
	(13, 'news_types', '公告信息类型', 2, '公告信息类型2', NULL, NULL, '2022-02-17 08:08:28'),
	(14, 'news_types', '公告信息类型', 3, '公告信息类型3', NULL, NULL, '2022-02-17 08:08:28'),
	(15, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-02-17 08:08:28'),
	(16, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-02-17 08:08:28');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `jiaoshi_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, NULL, '发布内容1', NULL, 1, '2022-02-17 08:08:35', '2022-02-17 08:08:35', '2022-02-17 08:08:35'),
	(2, '帖子标题2', 1, NULL, NULL, '发布内容2', NULL, 1, '2022-02-17 08:08:35', '2022-02-17 08:08:35', '2022-02-17 08:08:35'),
	(3, '帖子标题3', 1, NULL, NULL, '发布内容3', NULL, 1, '2022-02-17 08:08:35', '2022-02-17 08:08:35', '2022-02-17 08:08:35'),
	(4, '帖子标题4', 1, NULL, NULL, '发布内容4', NULL, 1, '2022-02-17 08:08:35', '2022-02-17 08:08:35', '2022-02-17 08:08:35'),
	(5, '帖子标题5', 1, NULL, NULL, '发布内容5', NULL, 1, '2022-02-17 08:08:35', '2022-02-17 08:08:35', '2022-02-17 08:08:35'),
	(6, '帖子标题6', 3, NULL, NULL, '发布内容6', NULL, 1, '2022-02-17 08:08:35', '2022-02-17 08:08:35', '2022-02-17 08:08:35'),
	(7, '帖子标题7', 3, NULL, NULL, '发布内容7', NULL, 1, '2022-02-17 08:08:35', '2022-02-17 08:08:35', '2022-02-17 08:08:35'),
	(8, '帖子标题8', 3, NULL, NULL, '发布内容8', NULL, 1, '2022-02-17 08:08:35', '2022-02-17 08:08:35', '2022-02-17 08:08:35'),
	(9, '帖子标题9', 1, NULL, NULL, '发布内容9', NULL, 1, '2022-02-17 08:08:35', '2022-02-17 08:08:35', '2022-02-17 08:08:35'),
	(10, '帖子标题10', 3, NULL, NULL, '发布内容10', NULL, 1, '2022-02-17 08:08:35', '2022-02-17 08:08:35', '2022-02-17 08:08:35'),
	(11, '帖子标题11', 3, NULL, NULL, '发布内容11', NULL, 1, '2022-02-17 08:08:35', '2022-02-17 08:08:35', '2022-02-17 08:08:35'),
	(12, NULL, 1, NULL, NULL, '学生评论', 11, 2, '2022-02-17 08:59:31', NULL, '2022-02-17 08:59:31'),
	(13, NULL, NULL, NULL, 1, '管理回复', 11, 2, '2022-02-17 09:00:07', NULL, '2022-02-17 09:00:07'),
	(14, '11', 1, NULL, NULL, '111', NULL, 1, '2024-07-15 05:09:38', NULL, '2024-07-15 05:09:38');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiaoshi_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `username`, `password`, `jiaoshi_name`, `sex_types`, `jiaoshi_id_number`, `jiaoshi_phone`, `jiaoshi_photo`, `jiaoshi_delete`, `create_time`) VALUES
	(1, '教师1', '123456', '教师姓名1', 2, '410224199610232001', '17703786901', 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1648861393086.jpeg', 1, '2022-02-17 08:08:35'),
	(2, '教师2', '123456', '教师姓名2', 1, '410224199610232002', '17703786902', 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645086368733.jpg', 1, '2022-02-17 08:08:35'),
	(3, '教师3', '123456', '教师姓名3', 1, '410224199610232003', '17703786903', 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645086361563.jpg', 1, '2022-02-17 08:08:35');

DROP TABLE IF EXISTS `keyanxiangmu`;
CREATE TABLE IF NOT EXISTS `keyanxiangmu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keyanxiangmu_uuid_number` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `keyanxiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名称 Search111 ',
  `keyanxiangmu_types` int DEFAULT NULL COMMENT '项目类型 Search111',
  `keyanxiangmu_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `xiaozhuchengyuan` varchar(255) DEFAULT NULL COMMENT '小组成员',
  `jiaoshi_id` int DEFAULT NULL COMMENT '审核教师',
  `keyanxiangmu_yesno_types` int DEFAULT NULL COMMENT '审核结果 Search111',
  `shenheyijian_text` text COMMENT '审核意见',
  `keyanxiangmu_content` text COMMENT '项目详情',
  `keyanxiangmu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='科研项目';

DELETE FROM `keyanxiangmu`;
INSERT INTO `keyanxiangmu` (`id`, `keyanxiangmu_uuid_number`, `keyanxiangmu_name`, `keyanxiangmu_types`, `keyanxiangmu_file`, `insert_time`, `yonghu_id`, `xiaozhuchengyuan`, `jiaoshi_id`, `keyanxiangmu_yesno_types`, `shenheyijian_text`, `keyanxiangmu_content`, `keyanxiangmu_delete`, `create_time`) VALUES
	(1, '16450853156625', '项目名称1', 1, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/file.rar', '2022-02-17 08:08:35', 1, NULL, 2, 2, '审核意见1', '项目详情1', 1, '2022-02-17 08:08:35'),
	(2, '16450853156624', '项目名称2', 3, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/file.rar', '2022-02-17 08:08:35', 1, NULL, 1, 5, '7477', '项目详情2', 1, '2022-02-17 08:08:35'),
	(3, '164508531566210', '项目名称3', 2, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/file.rar', '2022-02-17 08:08:35', 2, NULL, 3, 4, '审核意见3', '项目详情3', 1, '2022-02-17 08:08:35'),
	(4, '164508531566211', '项目名称4', 1, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/file.rar', '2022-02-17 08:08:35', 1, NULL, 2, 1, '审核意见4', '项目详情4', 1, '2022-02-17 08:08:35'),
	(5, '16450853156629', '项目名称5', 3, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/file.rar', '2022-02-17 08:08:35', 1, NULL, 3, 1, '审核意见5', '项目详情5', 1, '2022-02-17 08:08:35'),
	(6, '16450853156624', '项目名称6', 3, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/file.rar', '2022-02-17 08:08:35', 3, NULL, 3, 2, '审核意见6', '项目详情6', 1, '2022-02-17 08:08:35'),
	(7, '16450853156629', '项目名称7', 2, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/file.rar', '2022-02-17 08:08:35', 1, NULL, 1, 1, '审核意见7', '项目详情7', 1, '2022-02-17 08:08:35'),
	(8, '16450853156625', '项目名称8', 2, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/file.rar', '2022-02-17 08:08:35', 3, NULL, 2, 2, '审核意见8', '项目详情8', 1, '2022-02-17 08:08:35'),
	(9, '16450853156623', '项目名称9', 1, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/file.rar', '2022-02-17 08:08:35', 2, NULL, 3, 4, '审核意见9', '项目详情9', 1, '2022-02-17 08:08:35'),
	(10, '164508531566211', '项目名称10', 1, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/file.rar', '2022-02-17 08:08:35', 1, NULL, 1, 3, '审核意见10', '项目详情10', 1, '2022-02-17 08:08:35'),
	(11, '164508531566318', '项目名称11', 2, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/file.rar', '2022-02-17 08:08:35', 2, NULL, 2, 2, '213123', '项目详情11', 1, '2022-02-17 08:08:35'),
	(12, '1645087749226', '123', 3, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645087757277.webp', '2022-02-17 08:49:19', 1, NULL, 1, 5, '通过', '<p>当被拒绝后修改数据内容后会自动变成未审核状态</p><p>验收拒绝也是一样的</p>', 1, '2022-02-17 08:49:19');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `news_delete`, `create_time`) VALUES
	(1, '公告信息标题1', 2, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645086664269.jpg', '2022-02-17 08:08:35', '<p>公告信息详情1</p>', 1, '2022-02-17 08:08:35'),
	(2, '公告信息标题2', 1, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645086656344.jpg', '2022-02-17 08:08:35', '<p>公告信息详情2</p>', 1, '2022-02-17 08:08:35'),
	(3, '公告信息标题3', 2, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645086649015.webp', '2022-02-17 08:08:35', '<p>公告信息详情3</p>', 1, '2022-02-17 08:08:35'),
	(4, '公告信息标题4', 2, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645086642235.webp', '2022-02-17 08:08:35', '<p>公告信息详情4</p>', 1, '2022-02-17 08:08:35'),
	(5, '公告信息标题5', 3, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645086636057.jpg', '2022-02-17 08:08:35', '<p>公告信息详情5</p>', 1, '2022-02-17 08:08:35'),
	(6, '公告信息标题6', 1, 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645086629257.webp', '2022-02-17 08:08:35', '<p>公告信息详情6</p>', 1, '2022-02-17 08:08:35');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'okp2w43pnbkktkhzihkajcdpidign5vo', '2022-02-17 08:25:49', '2024-07-15 06:08:05'),
	(2, 2, 'a2', 'yonghu', '学生', 'vm4zp1sqhzjkx5uwtum0pc0c3bqi8b0t', '2022-02-17 08:34:23', '2022-02-17 10:10:27'),
	(3, 2, 'a2', 'jiaoshi', '教师', '3w6wo3op3qhwwp0piaytk2adk83z17as', '2022-02-17 08:45:38', '2022-02-17 10:10:17'),
	(4, 1, 'a1', 'yonghu', '学生', '181yyjwmh18i7i34seoop9oeksvidg5w', '2022-02-17 08:46:24', '2024-07-15 06:09:26'),
	(5, 1, 'a1', 'jiaoshi', '教师', 'gff21krpg3ai88vh69pv1k9uvu3uhjep', '2022-02-17 08:48:50', '2024-07-15 06:09:04');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-02-25 07:59:12');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `sex_types`, `yonghu_id_number`, `yonghu_phone`, `yonghu_photo`, `yonghu_delete`, `create_time`) VALUES
	(1, '学生1', '123456', '学生姓名1', 2, '410224199610232001', '17703786901', 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645086513730.jpg', 1, '2022-02-17 08:08:35'),
	(2, '学生2', '123456', '学生姓名2', 2, '410224199610232002', '17703786902', 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645086505576.jpg', 1, '2022-02-17 08:08:35'),
	(3, '学生3', '123456', '学生姓名3', 2, '410224199610232003', '17703786903', 'http://localhost:8080/daxueshengkechuangxiangmu/upload/1645086497384.jpg', 1, '2022-02-17 08:08:35');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
