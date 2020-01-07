/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50639
Source Host           : localhost:3306
Source Database       : 1710e_cms

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2020-01-07 11:14:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '文章内容',
  `picture` varchar(200) DEFAULT NULL COMMENT '标题图片',
  `channel_id` int(11) DEFAULT NULL COMMENT '所属栏目',
  `category_id` int(11) DEFAULT NULL COMMENT '所属分类',
  `user_id` int(11) DEFAULT NULL COMMENT '文章发布人',
  `hits` int(11) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0,刚发布,1审核通过,-1 审核未通过',
  `deleted` int(11) DEFAULT NULL COMMENT '0:正常,1:删除',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `summary` text,
  `content_type` int(11) DEFAULT '0' COMMENT '文章类型: 1:html 2:image',
  `keywords` varchar(100) DEFAULT NULL,
  `original` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CMS_ARTI_REFERENCE_CMS_USER` (`user_id`),
  KEY `FK_CMS_ARTI_REFERENCE_CMS_CHAN` (`channel_id`),
  KEY `FK_CMS_ARTI_REFERENCE_CMS_CATE` (`category_id`),
  CONSTRAINT `cms_article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`id`),
  CONSTRAINT `cms_article_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `cms_channel` (`id`),
  CONSTRAINT `cms_article_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('12', 'test2', '的说法是第三方三是否是否是<img src=\"http://127.0.0.1/resource/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" />', '3aebaedc-c7af-4385-bbe7-03c0c4567f05.jpg', '2', '6', '156', '0', '0', '-1', '0', '2019-12-12 16:31:17', '2019-12-12 16:31:17', null, '0', null, null);
INSERT INTO `cms_article` VALUES ('13', '中央经济工作会议在北京举行', '<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	<strong>央视网消息</strong>（新闻联播）：中央经济工作会议12月10日至12日在北京举行。中共中央总书记、国家主席、中央军委主席习近平，中共中央政治局常委、国务院总理李克强，中共中央政治局常委栗战书、汪洋、王沪宁、赵乐际、韩正出席会议。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;习近平在会上发表重要讲话，总结2019年经济工作，分析当前经济形势，部署2020年经济工作。李克强在讲话中对明年经济工作作出具体部署，并作了总结讲话。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议认为，今年以来，面对国内外风险挑战明显上升的复杂局面，在以习近平同志为核心的党中央坚强领导下，全党全国贯彻党中央决策部署，坚持稳中求进工作总基调，坚持以供给侧结构性改革为主线，推动高质量发展，扎实做好“六稳”工作，保持经济社会持续健康发展，三大攻坚战取得关键进展，精准脱贫成效显著，金融风险有效防控，生态环境质量总体改善，改革开放迈出重要步伐，供给侧结构性改革继续深化，科技创新取得新突破，人民群众获得感、幸福感、安全感提升，“十三五”规划主要指标进度符合预期，全面建成小康社会取得新的重大进展。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议指出，当前世界经济增长持续放缓，国内经济下行压力加大，但我国经济稳中向好、长期向好的基本趋势没有改变，全党全国坚定信心、同心同德，一定能战胜各种风险挑战。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议强调，明年是全面建成小康社会和“十三五”规划收官之年，要实现第一个百年奋斗目标，为“十四五”发展和实现第二个百年奋斗目标打好基础，做好经济工作十分重要。要以习近平新时代中国特色社会主义思想为指导，全面贯彻党的十九大和十九届二中、三中、四中全会精神，坚决贯彻党的基本理论、基本路线、基本方略，增强“四个意识”、坚定“四个自信”、做到“两个维护”，紧扣全面建成小康社会目标任务，坚持稳中求进工作总基调，坚持新发展理念，坚持以供给侧结构性改革为主线，坚持以改革开放为动力，推动高质量发展，坚决打赢三大攻坚战，全面做好“六稳”工作，统筹推进稳增长、促改革、调结构、惠民生、防风险、保稳定，保持经济运行在合理区间，确保全面建成小康社会和“十三五”规划圆满收官，得到人民认可、经得起历史检验。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议指出，实现明年预期目标，要坚持稳字当头，坚持宏观政策要稳、微观政策要活、社会政策要托底的政策框架，提高宏观调控的前瞻性、针对性、有效性。坚持问题导向、目标导向、结果导向，在深化供给侧结构性改革上持续用力，确保经济实现量的合理增长和质的稳步提升。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议确定，明年要抓好以下重点工作：\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;一是坚定不移贯彻新发展理念。新时代抓发展，必须更加突出发展理念，坚定不移贯彻创新、协调、绿色、开放、共享的新发展理念，推动高质量发展。各级党委和政府必须适应我国发展进入新阶段、社会主要矛盾发生变化的必然要求，紧紧扭住新发展理念推动发展，把注意力集中到解决各种不平衡不充分的问题上。要遵循经济社会发展规律，重大政策出台和调整要进行综合影响评估，切实抓好政策落实，坚决杜绝形形色色的形式主义、官僚主义。要把坚持贯彻新发展理念作为检验各级领导干部的一个重要尺度。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;二是坚决打好三大攻坚战。要确保脱贫攻坚任务如期全面完成，集中兵力打好深度贫困歼灭战，严把贫困人口退出关，巩固脱贫成果。要打好污染防治攻坚战，坚持方向不变、力度不减，突出精准治污、科学治污、依法治污。要保持宏观杠杆率基本稳定，压实各方责任。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;三是确保民生特别是困难群众基本生活得到有效保障和改善。要发挥政府作用保基本，注重普惠性、基础性、兜底性。要稳定就业总量，改善就业结构，提升就业质量，突出抓好重点群体就业工作。要深化医疗养老等民生服务领域市场化改革和对内对外开放，增强多层次多样化供给能力。要加大城市困难群众住房保障工作，加强城市更新和存量住房改造提升，大力发展租赁住房。要坚持房子是用来住的、不是用来炒的定位，促进房地产市场平稳健康发展。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;四是继续实施积极的财政政策和稳健的货币政策。积极的财政政策要大力提质增效，更加注重结构调整。稳健的货币政策要灵活适度，保持流动性合理充裕，降低社会融资成本。财政政策、货币政策要协同精准发力，引导资金投向供需共同受益、具有乘数效应的领域。要充分挖掘超大规模市场优势，发挥消费的基础作用和投资的关键作用。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;五是着力推动高质量发展。要坚持巩固、增强、提升、畅通的方针，以创新驱动和改革开放为两个轮子，全面提高经济整体竞争力，加快现代化经济体系建设。要狠抓农业生产保障供给，加快农业供给侧结构性改革，带动农民增收和乡村振兴。要深化科技体制改革，加快科技成果转化应用，提升企业技术创新能力，健全鼓励支持基础研究、原始创新的体制机制。要更多依靠市场机制和现代科技创新推动生产性服务业向专业化和价值链高端延伸，推动生活性服务业向高品质和多样化升级。要着眼国家长远发展，加强战略性、网络型基础设施建设。要加快落实区域发展战略，完善区域政策和空间布局，发挥各地比较优势，构建全国高质量发展的新动力源。要提高中心城市和城市群综合承载能力。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;六是深化经济体制改革。要坚持和完善社会主义基本经济制度，加快建设高标准市场体系。要加快国资国企改革，推动国有资本布局优化调整。要完善产权制度和要素市场化配置，健全支持民营经济发展的法治环境，完善中小企业发展的政策体系。要改革土地计划管理方式，深化财税体制改革，加快金融体制改革。对外开放要继续往更大范围、更宽领域、更深层次的方向走，加强外商投资促进和保护，推动对外贸易稳中提质。要积极参与世贸组织改革，加快多双边自贸协议谈判。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议强调，要完善和强化“六稳”举措，健全财政、货币、就业等政策协同和传导落实机制，确保经济运行在合理区间。要巩固和拓展减税降费成效，大力优化财政支出结构，进一步缓解企业融资难融资贵问题，多措并举保持就业形势稳定。要依靠改革优化营商环境，深化简政放权、放管结合、优化服务。要制定实施国有企业改革三年行动方案，提升国资国企改革综合成效，优化民营经济发展环境。要推动实体经济发展，提升制造业水平，发展新兴产业，促进大众创业万众创新。要强化民生导向，推动消费稳定增长，切实增加有效投资，释放国内市场需求潜力。要确保实现脱贫攻坚目标、巩固脱贫成果，毫不放松抓好农业生产，扎实推进乡村振兴。要推进更高水平对外开放，保持对外贸易稳定增长，稳定和扩大利用外资，扎实推进共建“一带一路”。要加强污染防治和生态建设。要扎实做好民生保障工作。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议要求，各地区各部门要全面贯彻党的十九届四中全会精神，在推进国家治理体系和治理能力现代化上多下功夫，切实把党领导经济工作的制度优势转化为治理效能。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议号召，全党全国要更加紧密地团结在以习近平同志为核心的党中央周围，勠力同心，锐意进取，坚决夺取全面建成小康社会伟大胜利！\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;中共中央政治局委员、中央书记处书记，全国人大常委会有关领导同志，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协有关领导同志以及中央军委委员等出席会议。\n</p>', 'e7adb7ae-4a9a-4020-aebf-90b1bedf9745.jpg', '2', '8', '156', '0', '0', '1', '0', '2019-12-13 10:07:51', '2019-12-13 10:07:51', null, '0', null, null);
INSERT INTO `cms_article` VALUES ('14', '中央经济工作会议在北京举行', '<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	<strong>央视网消息</strong>（新闻联播）：中央经济工作会议12月10日至12日在北京举行。中共中央总书记、国家主席、中央军委主席习近平，中共中央政治局常委、国务院总理李克强，中共中央政治局常委栗战书、汪洋、王沪宁、赵乐际、韩正出席会议。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;习近平在会上发表重要讲话，总结2019年经济工作，分析当前经济形势，部署2020年经济工作。李克强在讲话中对明年经济工作作出具体部署，并作了总结讲话。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议认为，今年以来，面对国内外风险挑战明显上升的复杂局面，在以习近平同志为核心的党中央坚强领导下，全党全国贯彻党中央决策部署，坚持稳中求进工作总基调，坚持以供给侧结构性改革为主线，推动高质量发展，扎实做好“六稳”工作，保持经济社会持续健康发展，三大攻坚战取得关键进展，精准脱贫成效显著，金融风险有效防控，生态环境质量总体改善，改革开放迈出重要步伐，供给侧结构性改革继续深化，科技创新取得新突破，人民群众获得感、幸福感、安全感提升，“十三五”规划主要指标进度符合预期，全面建成小康社会取得新的重大进展。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议指出，当前世界经济增长持续放缓，国内经济下行压力加大，但我国经济稳中向好、长期向好的基本趋势没有改变，全党全国坚定信心、同心同德，一定能战胜各种风险挑战。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议强调，明年是全面建成小康社会和“十三五”规划收官之年，要实现第一个百年奋斗目标，为“十四五”发展和实现第二个百年奋斗目标打好基础，做好经济工作十分重要。要以习近平新时代中国特色社会主义思想为指导，全面贯彻党的十九大和十九届二中、三中、四中全会精神，坚决贯彻党的基本理论、基本路线、基本方略，增强“四个意识”、坚定“四个自信”、做到“两个维护”，紧扣全面建成小康社会目标任务，坚持稳中求进工作总基调，坚持新发展理念，坚持以供给侧结构性改革为主线，坚持以改革开放为动力，推动高质量发展，坚决打赢三大攻坚战，全面做好“六稳”工作，统筹推进稳增长、促改革、调结构、惠民生、防风险、保稳定，保持经济运行在合理区间，确保全面建成小康社会和“十三五”规划圆满收官，得到人民认可、经得起历史检验。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议指出，实现明年预期目标，要坚持稳字当头，坚持宏观政策要稳、微观政策要活、社会政策要托底的政策框架，提高宏观调控的前瞻性、针对性、有效性。坚持问题导向、目标导向、结果导向，在深化供给侧结构性改革上持续用力，确保经济实现量的合理增长和质的稳步提升。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议确定，明年要抓好以下重点工作：\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;一是坚定不移贯彻新发展理念。新时代抓发展，必须更加突出发展理念，坚定不移贯彻创新、协调、绿色、开放、共享的新发展理念，推动高质量发展。各级党委和政府必须适应我国发展进入新阶段、社会主要矛盾发生变化的必然要求，紧紧扭住新发展理念推动发展，把注意力集中到解决各种不平衡不充分的问题上。要遵循经济社会发展规律，重大政策出台和调整要进行综合影响评估，切实抓好政策落实，坚决杜绝形形色色的形式主义、官僚主义。要把坚持贯彻新发展理念作为检验各级领导干部的一个重要尺度。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;二是坚决打好三大攻坚战。要确保脱贫攻坚任务如期全面完成，集中兵力打好深度贫困歼灭战，严把贫困人口退出关，巩固脱贫成果。要打好污染防治攻坚战，坚持方向不变、力度不减，突出精准治污、科学治污、依法治污。要保持宏观杠杆率基本稳定，压实各方责任。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;三是确保民生特别是困难群众基本生活得到有效保障和改善。要发挥政府作用保基本，注重普惠性、基础性、兜底性。要稳定就业总量，改善就业结构，提升就业质量，突出抓好重点群体就业工作。要深化医疗养老等民生服务领域市场化改革和对内对外开放，增强多层次多样化供给能力。要加大城市困难群众住房保障工作，加强城市更新和存量住房改造提升，大力发展租赁住房。要坚持房子是用来住的、不是用来炒的定位，促进房地产市场平稳健康发展。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;四是继续实施积极的财政政策和稳健的货币政策。积极的财政政策要大力提质增效，更加注重结构调整。稳健的货币政策要灵活适度，保持流动性合理充裕，降低社会融资成本。财政政策、货币政策要协同精准发力，引导资金投向供需共同受益、具有乘数效应的领域。要充分挖掘超大规模市场优势，发挥消费的基础作用和投资的关键作用。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;五是着力推动高质量发展。要坚持巩固、增强、提升、畅通的方针，以创新驱动和改革开放为两个轮子，全面提高经济整体竞争力，加快现代化经济体系建设。要狠抓农业生产保障供给，加快农业供给侧结构性改革，带动农民增收和乡村振兴。要深化科技体制改革，加快科技成果转化应用，提升企业技术创新能力，健全鼓励支持基础研究、原始创新的体制机制。要更多依靠市场机制和现代科技创新推动生产性服务业向专业化和价值链高端延伸，推动生活性服务业向高品质和多样化升级。要着眼国家长远发展，加强战略性、网络型基础设施建设。要加快落实区域发展战略，完善区域政策和空间布局，发挥各地比较优势，构建全国高质量发展的新动力源。要提高中心城市和城市群综合承载能力。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;六是深化经济体制改革。要坚持和完善社会主义基本经济制度，加快建设高标准市场体系。要加快国资国企改革，推动国有资本布局优化调整。要完善产权制度和要素市场化配置，健全支持民营经济发展的法治环境，完善中小企业发展的政策体系。要改革土地计划管理方式，深化财税体制改革，加快金融体制改革。对外开放要继续往更大范围、更宽领域、更深层次的方向走，加强外商投资促进和保护，推动对外贸易稳中提质。要积极参与世贸组织改革，加快多双边自贸协议谈判。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议强调，要完善和强化“六稳”举措，健全财政、货币、就业等政策协同和传导落实机制，确保经济运行在合理区间。要巩固和拓展减税降费成效，大力优化财政支出结构，进一步缓解企业融资难融资贵问题，多措并举保持就业形势稳定。要依靠改革优化营商环境，深化简政放权、放管结合、优化服务。要制定实施国有企业改革三年行动方案，提升国资国企改革综合成效，优化民营经济发展环境。要推动实体经济发展，提升制造业水平，发展新兴产业，促进大众创业万众创新。要强化民生导向，推动消费稳定增长，切实增加有效投资，释放国内市场需求潜力。要确保实现脱贫攻坚目标、巩固脱贫成果，毫不放松抓好农业生产，扎实推进乡村振兴。要推进更高水平对外开放，保持对外贸易稳定增长，稳定和扩大利用外资，扎实推进共建“一带一路”。要加强污染防治和生态建设。要扎实做好民生保障工作。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议要求，各地区各部门要全面贯彻党的十九届四中全会精神，在推进国家治理体系和治理能力现代化上多下功夫，切实把党领导经济工作的制度优势转化为治理效能。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议号召，全党全国要更加紧密地团结在以习近平同志为核心的党中央周围，勠力同心，锐意进取，坚决夺取全面建成小康社会伟大胜利！\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;中共中央政治局委员、中央书记处书记，全国人大常委会有关领导同志，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协有关领导同志以及中央军委委员等出席会议。\n</p>', '00bfc9c3-77b2-47e5-b95a-77fff315b039.jpg', '2', '8', '156', '0', '1', '1', '0', '2019-12-13 10:09:58', '2019-12-13 10:09:58', null, '0', null, null);
INSERT INTO `cms_article` VALUES ('15', '中央经济工作会议在北京举行', '<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	<strong>央视网消息</strong>（新闻联播）：中央经济工作会议12月10日至12日在北京举行。中共中央总书记、国家主席、中央军委主席习近平，中共中央政治局常委、国务院总理李克强，中共中央政治局常委栗战书、汪洋、王沪宁、赵乐际、韩正出席会议。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;习近平在会上发表重要讲话，总结2019年经济工作，分析当前经济形势，部署2020年经济工作。李克强在讲话中对明年经济工作作出具体部署，并作了总结讲话。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议认为，今年以来，面对国内外风险挑战明显上升的复杂局面，在以习近平同志为核心的党中央坚强领导下，全党全国贯彻党中央决策部署，坚持稳中求进工作总基调，坚持以供给侧结构性改革为主线，推动高质量发展，扎实做好“六稳”工作，保持经济社会持续健康发展，三大攻坚战取得关键进展，精准脱贫成效显著，金融风险有效防控，生态环境质量总体改善，改革开放迈出重要步伐，供给侧结构性改革继续深化，科技创新取得新突破，人民群众获得感、幸福感、安全感提升，“十三五”规划主要指标进度符合预期，全面建成小康社会取得新的重大进展。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议指出，当前世界经济增长持续放缓，国内经济下行压力加大，但我国经济稳中向好、长期向好的基本趋势没有改变，全党全国坚定信心、同心同德，一定能战胜各种风险挑战。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议强调，明年是全面建成小康社会和“十三五”规划收官之年，要实现第一个百年奋斗目标，为“十四五”发展和实现第二个百年奋斗目标打好基础，做好经济工作十分重要。要以习近平新时代中国特色社会主义思想为指导，全面贯彻党的十九大和十九届二中、三中、四中全会精神，坚决贯彻党的基本理论、基本路线、基本方略，增强“四个意识”、坚定“四个自信”、做到“两个维护”，紧扣全面建成小康社会目标任务，坚持稳中求进工作总基调，坚持新发展理念，坚持以供给侧结构性改革为主线，坚持以改革开放为动力，推动高质量发展，坚决打赢三大攻坚战，全面做好“六稳”工作，统筹推进稳增长、促改革、调结构、惠民生、防风险、保稳定，保持经济运行在合理区间，确保全面建成小康社会和“十三五”规划圆满收官，得到人民认可、经得起历史检验。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议指出，实现明年预期目标，要坚持稳字当头，坚持宏观政策要稳、微观政策要活、社会政策要托底的政策框架，提高宏观调控的前瞻性、针对性、有效性。坚持问题导向、目标导向、结果导向，在深化供给侧结构性改革上持续用力，确保经济实现量的合理增长和质的稳步提升。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议确定，明年要抓好以下重点工作：\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;一是坚定不移贯彻新发展理念。新时代抓发展，必须更加突出发展理念，坚定不移贯彻创新、协调、绿色、开放、共享的新发展理念，推动高质量发展。各级党委和政府必须适应我国发展进入新阶段、社会主要矛盾发生变化的必然要求，紧紧扭住新发展理念推动发展，把注意力集中到解决各种不平衡不充分的问题上。要遵循经济社会发展规律，重大政策出台和调整要进行综合影响评估，切实抓好政策落实，坚决杜绝形形色色的形式主义、官僚主义。要把坚持贯彻新发展理念作为检验各级领导干部的一个重要尺度。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;二是坚决打好三大攻坚战。要确保脱贫攻坚任务如期全面完成，集中兵力打好深度贫困歼灭战，严把贫困人口退出关，巩固脱贫成果。要打好污染防治攻坚战，坚持方向不变、力度不减，突出精准治污、科学治污、依法治污。要保持宏观杠杆率基本稳定，压实各方责任。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;三是确保民生特别是困难群众基本生活得到有效保障和改善。要发挥政府作用保基本，注重普惠性、基础性、兜底性。要稳定就业总量，改善就业结构，提升就业质量，突出抓好重点群体就业工作。要深化医疗养老等民生服务领域市场化改革和对内对外开放，增强多层次多样化供给能力。要加大城市困难群众住房保障工作，加强城市更新和存量住房改造提升，大力发展租赁住房。要坚持房子是用来住的、不是用来炒的定位，促进房地产市场平稳健康发展。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;四是继续实施积极的财政政策和稳健的货币政策。积极的财政政策要大力提质增效，更加注重结构调整。稳健的货币政策要灵活适度，保持流动性合理充裕，降低社会融资成本。财政政策、货币政策要协同精准发力，引导资金投向供需共同受益、具有乘数效应的领域。要充分挖掘超大规模市场优势，发挥消费的基础作用和投资的关键作用。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;五是着力推动高质量发展。要坚持巩固、增强、提升、畅通的方针，以创新驱动和改革开放为两个轮子，全面提高经济整体竞争力，加快现代化经济体系建设。要狠抓农业生产保障供给，加快农业供给侧结构性改革，带动农民增收和乡村振兴。要深化科技体制改革，加快科技成果转化应用，提升企业技术创新能力，健全鼓励支持基础研究、原始创新的体制机制。要更多依靠市场机制和现代科技创新推动生产性服务业向专业化和价值链高端延伸，推动生活性服务业向高品质和多样化升级。要着眼国家长远发展，加强战略性、网络型基础设施建设。要加快落实区域发展战略，完善区域政策和空间布局，发挥各地比较优势，构建全国高质量发展的新动力源。要提高中心城市和城市群综合承载能力。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;六是深化经济体制改革。要坚持和完善社会主义基本经济制度，加快建设高标准市场体系。要加快国资国企改革，推动国有资本布局优化调整。要完善产权制度和要素市场化配置，健全支持民营经济发展的法治环境，完善中小企业发展的政策体系。要改革土地计划管理方式，深化财税体制改革，加快金融体制改革。对外开放要继续往更大范围、更宽领域、更深层次的方向走，加强外商投资促进和保护，推动对外贸易稳中提质。要积极参与世贸组织改革，加快多双边自贸协议谈判。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议强调，要完善和强化“六稳”举措，健全财政、货币、就业等政策协同和传导落实机制，确保经济运行在合理区间。要巩固和拓展减税降费成效，大力优化财政支出结构，进一步缓解企业融资难融资贵问题，多措并举保持就业形势稳定。要依靠改革优化营商环境，深化简政放权、放管结合、优化服务。要制定实施国有企业改革三年行动方案，提升国资国企改革综合成效，优化民营经济发展环境。要推动实体经济发展，提升制造业水平，发展新兴产业，促进大众创业万众创新。要强化民生导向，推动消费稳定增长，切实增加有效投资，释放国内市场需求潜力。要确保实现脱贫攻坚目标、巩固脱贫成果，毫不放松抓好农业生产，扎实推进乡村振兴。要推进更高水平对外开放，保持对外贸易稳定增长，稳定和扩大利用外资，扎实推进共建“一带一路”。要加强污染防治和生态建设。要扎实做好民生保障工作。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议要求，各地区各部门要全面贯彻党的十九届四中全会精神，在推进国家治理体系和治理能力现代化上多下功夫，切实把党领导经济工作的制度优势转化为治理效能。\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;会议号召，全党全国要更加紧密地团结在以习近平同志为核心的党中央周围，勠力同心，锐意进取，坚决夺取全面建成小康社会伟大胜利！\n</p>\n<p style=\"font-size:16px;font-family:Arial, &quot;color:#333333;background-color:#FFFFFF;\">\n	&emsp;&emsp;中共中央政治局委员、中央书记处书记，全国人大常委会有关领导同志，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协有关领导同志以及中央军委委员等出席会议。\n</p>', 'e20fd84a-f5ee-4174-a094-02ccafc55ec2.jpg', '2', '8', '156', '0', '1', '1', '1', '2019-12-13 10:10:00', '2019-12-13 10:10:00', null, '0', null, null);
INSERT INTO `cms_article` VALUES ('17', '20年前，小伙花25万买一张无限次机票，如今航空公司求着他退票', '<p style=\"text-align:center;color:#505050;font-family:helvetica;font-size:18px;background-color:#FFFFFF;\">\n	大家通常都以为，有钱人最爱的奢侈品应该就是各种名牌。但有一位小伙子用切身经历高速我们，不是所有的有钱人都喜欢名牌，因为这个小伙花25万美元，只为了买一张“终身无限次”飞机票，这名男子是个叫史蒂夫·罗斯坦的银行家。\n</p>\n<p style=\"text-align:center;color:#505050;font-family:helvetica;font-size:18px;background-color:#FFFFFF;\">\n	<img src=\"https://imgm.gmw.cn/attachement/jpg/site215/20191213/728388957267971593.jpg\" title=\"20年前，小伙花25万买一张无限次机票，如今航空公司求着他退票\" alt=\"20年前，小伙花25万买一张无限次机票，如今航空公司求着他退票\" />\n</p>\n<p style=\"text-align:center;color:#505050;font-family:helvetica;font-size:18px;background-color:#FFFFFF;\">\n	在1987年，美国的一家航空公司曾经以25万美元的价格，售出过一张无限次机票，而买主正是这位银行家史蒂夫·罗斯坦。这位银行家买下的时候，美国航空公司还在窃窃自喜，暗地里嘲笑这个笨蛋，居然真的有人会愿意花大价钱买一张机票。\n</p>\n<p style=\"text-align:center;color:#505050;font-family:helvetica;font-size:18px;background-color:#FFFFFF;\">\n	<img src=\"https://imgm.gmw.cn/attachement/jpg/site215/20191213/552379579027771353.jpg\" title=\"20年前，小伙花25万买一张无限次机票，如今航空公司求着他退票\" alt=\"20年前，小伙花25万买一张无限次机票，如今航空公司求着他退票\" />\n</p>\n<p style=\"text-align:center;color:#505050;font-family:helvetica;font-size:18px;background-color:#FFFFFF;\">\n	一开始的时候，航空公司看他这么个花钱法，还以为碰上了人傻钱多的典型。可20年后事情出现反转，他们就笑不出来了，在这20年的时间里，只要没碰上台风、暴雨之类的恶劣天气，史蒂夫每个周末会准时出现在机场。\n</p>\n<p style=\"text-align:center;color:#505050;font-family:helvetica;font-size:18px;background-color:#FFFFFF;\">\n	<img src=\"https://imgm.gmw.cn/attachement/jpg/site215/20191213/4250648263399161521.jpg\" title=\"20年前，小伙花25万买一张无限次机票，如今航空公司求着他退票\" alt=\"20年前，小伙花25万买一张无限次机票，如今航空公司求着他退票\" />\n</p>\n<p style=\"text-align:center;color:#505050;font-family:helvetica;font-size:18px;background-color:#FFFFFF;\">\n	他坐着当天的航班飞去加拿大，然后在风景优美的湖边欣赏景色，跟当地人聊聊天，还带点土特产，晚上拎着他们飞回家和妻子吃。因为史蒂夫坐飞机的频率太高，他实际上给航空公司带来的成本损耗，比他当初买那张机票的钱多多了。\n</p>\n<p style=\"text-align:center;color:#505050;font-family:helvetica;font-size:18px;background-color:#FFFFFF;\">\n	<img src=\"https://imgm.gmw.cn/attachement/jpg/site215/20191213/4014012727063890511.jpg\" title=\"20年前，小伙花25万买一张无限次机票，如今航空公司求着他退票\" alt=\"20年前，小伙花25万买一张无限次机票，如今航空公司求着他退票\" />\n</p>\n<p style=\"text-align:center;color:#505050;font-family:helvetica;font-size:18px;background-color:#FFFFFF;\">\n	航空公司给他的行程算了一笔账，20多年时间里，史蒂夫坐飞机所用的费用已经远远超了25万美元，竟然达到了2000万。所以真正亏得并不是史蒂夫，而是他们自己。\n</p>\n<p style=\"text-align:center;color:#505050;font-family:helvetica;font-size:18px;background-color:#FFFFFF;\">\n	后来，航空公司曾多次试图，想要回购他手中的无限次的机票，但是都被他拒绝了，相信任何一个人都不会愿意的。这个人还是非常的精明，没想到花了那么少的钱，竟然能够得到那么大的回报。\n</p>\n<p style=\"text-align:center;color:#505050;font-family:helvetica;font-size:18px;background-color:#FFFFFF;\">\n	声明：转载此文是出于传递更多信息之目的。若有来源标注错误或侵犯了您的合法权益，请作者持权属证明与本网联系，我们将及时更正、删除，谢谢。\n</p>', '1e4e7c2e-22c6-426b-a649-72c2f70be67a.jpg', '3', '9', '156', '0', '1', '1', '0', '2019-12-13 10:55:34', '2019-12-13 10:55:34', null, '0', null, null);
INSERT INTO `cms_article` VALUES ('18', '如何破解朋友圈“仅三天可见”', '<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\">腾讯高级执行副总裁、微信创始人张小龙曾透露一个惊人的数据:朋友圈状态「设置三天可见」的人数超过一亿人，这个看似不起眼的设置开关，在微信里的使用率却最高。</span>\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/4e06131671be4ae38cdffdc2b3c9aeeb\" alt=\"如何破解朋友圈“仅三天可见”\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	有人打趣，这些剩下没有设置仅三天可见的，要么是不会设置，要么就是微商了。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	「仅三天可见」目前虽然没有完美的“破解办法”，爆哥在这里给大家提出两个最有效的解决方案，让你查看你「在意」的人，三天之前发送的朋友圈。不妨收藏本文，在关键时刻说不定能派上用场呢。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\">那么如何破解呢？</span>\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\"><br />\n</span>\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	目前，微信进入他人朋友圈的方法只有两种：\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\"><br />\n</span>\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\">1.通过对方的主页，进入朋友圈查看<br />\n</span>\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\"><br />\n</span>\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\">2.在微信发现界面查看大家的朋友圈</span>\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	实际上，我们所设置的「仅三天可见」，<span style=\"font-weight:700;\">仅对第一种生效。</span>\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	言外之意，即你如果有时间，可以在发现页中的朋友圈一直往下翻，可以查看很久之前的朋友圈，即使这个人已经设置朋友圈「仅三天可见」\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	我们大可屏蔽掉其他好友，这样你的发现页朋友圈中剩下的，就是ta的朋友圈动态，包括那些已经隐藏了的。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	屏蔽的方法有两种，\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\">1.微信-&gt;设置-&gt;隐私 找到不看他（她），无论你有多少好友，批量勾选不用多久就可以屏蔽完成</span>\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\"><br />\n</span>\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\">2.如果你的好友中有些基本不发朋友圈，真正活跃的总是那几个十几个，你不妨使用这种方法。进入你的发现页朋友圈，选择那些比较活跃的好友，长按ta的头像，点击设置权限-&gt;不看他。爆哥个人更倾向于这种方法。<br />\n</span>\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	“为了一个人放弃世界”的感觉，是不是油然而生？\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\">还有一种方法。</span>\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	如果你在某条朋友圈与其发布者进行了互动，在通讯录中找到自己（或者在对话框内点开自己头像），打开朋友圈，点击右上角三个点-&gt;消息列表。只要对方没有删除，即使设置了「仅三天可见」，也可以显示。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	前提是你们在这条朋友圈下进行了互动。爆哥想，微信是不是故意留下这个后门，努力让我们之间的距离更近一些呢。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\">今后再看到朋友圈，请积极互动或者点个赞吧。毕竟很多关系，不联系也就淡了。</span>\n</p>', '8ef7ab29-553f-4c96-bd49-30c7b985eef2.jpg', '1', '1', '156', '0', '0', '1', '0', '2019-12-16 16:00:12', '2019-12-16 16:00:12', null, '0', null, null);
INSERT INTO `cms_article` VALUES ('19', 'jaack测试', 'jaack测试jaack测试jaack测试jaack测试jaack测试', 'adcf4ad9-470e-4572-ae50-2742444cc67e.jpg', '1', '1', '177', '0', '0', '1', '0', '2019-12-18 09:58:28', '2019-12-18 09:58:28', null, '0', null, null);
INSERT INTO `cms_article` VALUES ('20', 'test', '<p style=\"font-size:16px;color:#191919;font-family:&quot;background-color:#F9F9F9;\">\n	【环球网报道 记者 侯佳欣】“永远不要威胁伊朗民族。”伊朗总统鲁哈尼当地时间6日晚在推特上发文，回应此前美国的重重威胁。\n</p>\n<img src=\"https://himg2.huanqiucdn.cn/attachment2010/2020/0107/08/06/20200107080656213.jpg\" alt=\"鲁哈尼。图源：IRNA\" style=\"height:auto;\" />\n<p style=\"font-size:16px;color:#191919;font-family:&quot;background-color:#F9F9F9;text-align:center;\">\n	鲁哈尼。图源：IRNA\n</p>\n<p style=\"font-size:16px;color:#191919;font-family:&quot;background-color:#F9F9F9;\">\n	鲁哈尼在推文中称，“提到数字52的人也应该记住数字290。#IR655航班。”鲁哈尼在推特最后写道，“永远不要威胁伊朗民族。”\n</p>\n<img src=\"https://himg2.huanqiucdn.cn/attachment2010/2020/0107/08/07/20200107080707164.jpg\" alt=\"鲁哈尼推特截图\" style=\"height:auto;\" />\n<p style=\"font-size:16px;color:#191919;font-family:&quot;background-color:#F9F9F9;text-align:center;\">\n	鲁哈尼推特截图\n</p>\n<p style=\"font-size:16px;color:#191919;font-family:&quot;background-color:#F9F9F9;\">\n	伊朗伊斯兰共和国通讯社(IRNA)解释了推特中提到的数字。290指代的是“伊朗航空655次航班失事事件”中的死亡人数。\n</p>\n<img src=\"https://himg2.huanqiucdn.cn/attachment2010/2020/0107/08/07/20200107080720446.jpg\" alt=\"IRNA报道截图\" style=\"height:auto;\" />\n<p style=\"font-size:16px;color:#191919;font-family:&quot;background-color:#F9F9F9;text-align:center;\">\n	IRNA报道截图\n</p>\n<p style=\"font-size:16px;color:#191919;font-family:&quot;background-color:#F9F9F9;\">\n	报道称，1988年7月3日，这架伊朗客机在霍尔木兹海峡上空被美国海军导弹巡洋舰“文森斯”号击落，机上290人全部遇难。报道特别提到，事发时，这架客机处于伊朗领空。\n</p>\n<p style=\"font-size:16px;color:#191919;font-family:&quot;background-color:#F9F9F9;\">\n	“今日俄罗斯”(RT)将鲁哈尼的推特解读为对特朗普此前推文提到的攻击伊朗52处设施这一威胁的“断然拒绝”(rebuff)。\n</p>\n<p style=\"font-size:16px;color:#191919;font-family:&quot;background-color:#F9F9F9;\">\n	在苏莱曼尼将军被暗杀后，特朗普曾于4日发推称，“如果伊朗人敢袭击美国人或美国资产，我们已经锁定了52处伊朗目标(对，数字就是对应当年52名美国人质被伊朗劫持)，其中一些目标对伊朗及其文化极为重要，它们将遭受又快又狠的打击！美国不想再看到任何威胁！”\n</p>\n<p style=\"font-size:16px;color:#191919;font-family:&quot;background-color:#F9F9F9;\">\n	本月3日，伊朗伊斯兰革命卫队下属“圣城旅”指挥官卡西姆·苏莱曼尼在伊拉克巴格达国际机场外遭美军空袭身亡。伊朗最高领袖哈梅内伊随后发表声明说，伊朗方面将对这起事件进行“强硬复仇”。\n</p>\n<div class=\"a-edit\" style=\"color:#999999;font-family:&quot;background-color:#F9F9F9;\">\n	<span class=\"a\">责编：刘艳君</span>\n</div>\n<div class=\"a-sign\" style=\"color:#999999;font-family:&quot;background-color:#F9F9F9;\">\n	<p style=\"font-size:16px;\">\n		版权作品，未经环球网 huanqiu.com 书面授权，严禁转载，违者将被追究法律责任。\n	</p>\n</div>\n<a id=\"more\">阅读全文</a>', 'b76a9e93-e38d-4a7b-9534-b8c42b42447d.jpg', '1', '1', '177', '0', '0', '2', '1', '2020-01-07 09:05:33', '2020-01-07 09:05:33', null, '0', null, null);

-- ----------------------------
-- Table structure for `cms_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CMS_CATE_REFERENCE_CMS_CHAN` (`channel_id`),
  CONSTRAINT `cms_category_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `cms_channel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES ('1', '互联网', '1');
INSERT INTO `cms_category` VALUES ('2', '软件', '1');
INSERT INTO `cms_category` VALUES ('3', '智能家居', '1');
INSERT INTO `cms_category` VALUES ('4', '虚拟货币', '2');
INSERT INTO `cms_category` VALUES ('5', '股票', '2');
INSERT INTO `cms_category` VALUES ('6', '外汇', '2');
INSERT INTO `cms_category` VALUES ('7', '黄金', '2');
INSERT INTO `cms_category` VALUES ('8', '宏观经济', '2');
INSERT INTO `cms_category` VALUES ('9', '美国', '3');
INSERT INTO `cms_category` VALUES ('10', '亚洲', '3');
INSERT INTO `cms_category` VALUES ('11', '欧洲', '3');
INSERT INTO `cms_category` VALUES ('12', '非洲', '3');
INSERT INTO `cms_category` VALUES ('13', '新车', '4');
INSERT INTO `cms_category` VALUES ('14', 'SUV', '4');
INSERT INTO `cms_category` VALUES ('15', '汽车导购', '4');
INSERT INTO `cms_category` VALUES ('16', '用车', '4');
INSERT INTO `cms_category` VALUES ('17', 'NBA', '5');
INSERT INTO `cms_category` VALUES ('18', 'CBA', '5');
INSERT INTO `cms_category` VALUES ('19', '中超', '5');
INSERT INTO `cms_category` VALUES ('20', '意甲', '5');
INSERT INTO `cms_category` VALUES ('21', '电影', '6');
INSERT INTO `cms_category` VALUES ('22', '电视剧', '6');
INSERT INTO `cms_category` VALUES ('23', '综艺', '6');
INSERT INTO `cms_category` VALUES ('24', '明星八卦', '6');
INSERT INTO `cms_category` VALUES ('25', '段子', '7');
INSERT INTO `cms_category` VALUES ('26', '爆笑节目', '7');
INSERT INTO `cms_category` VALUES ('27', '童趣萌宠', '7');
INSERT INTO `cms_category` VALUES ('28', '雷人囧事', '7');
INSERT INTO `cms_category` VALUES ('29', '老图片', '9');
INSERT INTO `cms_category` VALUES ('30', '图片故事', '9');
INSERT INTO `cms_category` VALUES ('31', '摄影集', '9');
INSERT INTO `cms_category` VALUES ('32', '王者荣耀', '8');

-- ----------------------------
-- Table structure for `cms_channel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_channel`;
CREATE TABLE `cms_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `sorted` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_channel
-- ----------------------------
INSERT INTO `cms_channel` VALUES ('1', '科技', null, null, null);
INSERT INTO `cms_channel` VALUES ('2', '财经', null, null, null);
INSERT INTO `cms_channel` VALUES ('3', '国际', null, null, null);
INSERT INTO `cms_channel` VALUES ('4', '汽车', null, null, null);
INSERT INTO `cms_channel` VALUES ('5', '体育', null, null, null);
INSERT INTO `cms_channel` VALUES ('6', '娱乐', null, null, null);
INSERT INTO `cms_channel` VALUES ('7', '搞笑', null, null, null);
INSERT INTO `cms_channel` VALUES ('8', '游戏', '游戏游戏游戏游戏', null, null);
INSERT INTO `cms_channel` VALUES ('9', '图片', null, null, null);

-- ----------------------------
-- Table structure for `cms_settings`
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_domain` varchar(50) DEFAULT NULL,
  `site_name` varchar(50) DEFAULT NULL,
  `article_list_size` int(11) DEFAULT NULL,
  `slide_size` int(11) DEFAULT NULL,
  `admin_username` varchar(16) DEFAULT NULL,
  `admin_password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_slide`
-- ----------------------------
DROP TABLE IF EXISTS `cms_slide`;
CREATE TABLE `cms_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_slide
-- ----------------------------
INSERT INTO `cms_slide` VALUES ('1', '风景一', '', '1.jpg');
INSERT INTO `cms_slide` VALUES ('2', '风景二', null, '2.jpg');
INSERT INTO `cms_slide` VALUES ('3', '风景三', null, '3.jpg');

-- ----------------------------
-- Table structure for `cms_user`
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `locked` int(11) DEFAULT '0' COMMENT '0:正常,1:禁用',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `role` varchar(1) DEFAULT '0' COMMENT '0:普通用户,1:管理员',
  `url` varchar(200) DEFAULT NULL COMMENT '个人博客网址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_user
-- ----------------------------
INSERT INTO `cms_user` VALUES ('137', 'nb', '8d1c9457e01d9803f1caaeab87c8c07a', '牛百', '2019-10-10', '1', '1', '2019-10-03 09:58:41', '2019-10-03 09:58:41', '0', null);
INSERT INTO `cms_user` VALUES ('138', '王三', '8d1c9457e01d9803f1caaeab87c8c07a', 'wangsan', '2019-10-10', '0', '0', '2019-10-03 09:58:41', '2019-10-23 09:58:44', '0', null);
INSERT INTO `cms_user` VALUES ('152', 'zl', '8d1c9457e01d9803f1caaeab87c8c07a', '赵六', null, '1', '0', '2019-10-22 11:12:02', '2019-10-22 11:12:02', '0', null);
INSERT INTO `cms_user` VALUES ('153', 'admin', '8d1c9457e01d9803f1caaeab87c8c07a', '管理员', null, '1', '0', '2019-10-22 11:12:02', '2019-10-22 11:12:02', '1', null);
INSERT INTO `cms_user` VALUES ('155', '今天头条', '8d1c9457e01d9803f1caaeab87c8c07a', '今天头条', null, '1', '0', '2019-10-22 11:12:02', '2019-10-22 11:12:02', '0', 'https://www.jd.com/');
INSERT INTO `cms_user` VALUES ('156', '田七', '8d1c9457e01d9803f1caaeab87c8c07a', '田七', null, '1', '0', '2019-11-07 16:06:45', '2019-11-07 16:06:45', '0', null);
INSERT INTO `cms_user` VALUES ('157', '李四', '8d1c9457e01d9803f1caaeab87c8c07a', '李四', null, '1', '0', '2019-11-07 16:08:57', '2019-11-07 16:08:57', '0', null);
INSERT INTO `cms_user` VALUES ('159', 'bawei', '8d1c9457e01d9803f1caaeab87c8c07a', 'bawei', null, '1', '1', '2019-11-08 13:12:23', '2019-11-08 13:12:23', '0', null);
INSERT INTO `cms_user` VALUES ('160', '1707E', '8d1c9457e01d9803f1caaeab87c8c07a', '1707E', null, '1', '0', '2019-11-12 14:17:22', '2019-11-12 14:17:22', '0', null);
INSERT INTO `cms_user` VALUES ('161', 'yangchunpo', '111111', null, null, '1', '0', null, null, '0', null);
INSERT INTO `cms_user` VALUES ('162', 'yangchunpo222', '111111', null, null, '1', '0', null, null, '0', null);
INSERT INTO `cms_user` VALUES ('168', '1707', '8d1c9457e01d9803f1caaeab87c8c07a', null, null, '1', '0', null, null, '0', null);
INSERT INTO `cms_user` VALUES ('169', '17077', '8d1c9457e01d9803f1caaeab87c8c07a', null, null, '1', '0', '2019-11-20 10:50:06', null, '0', null);
INSERT INTO `cms_user` VALUES ('177', 'jack', '8d1c9457e01d9803f1caaeab87c8c07a', 'jack', null, '0', '0', '2019-12-17 15:14:22', null, '0', null);
