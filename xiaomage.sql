CREATE DATABASE  IF NOT EXISTS `xiaomage` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `xiaomage`;
-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: xiaomage
-- ------------------------------------------------------
-- Server version	5.5.35-0ubuntu0.12.10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hao`
--

DROP TABLE IF EXISTS `hao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `abstract` text NOT NULL,
  `detail` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='毫稍来看';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hao`
--

LOCK TABLES `hao` WRITE;
/*!40000 ALTER TABLE `hao` DISABLE KEYS */;
INSERT INTO `hao` VALUES (1,'测试毫稍来看','/upload/e928f443902cda7c3c2211199420a8bb.jpg','2014-06-06 10:24:42','测试发爱上地方阿斯顿发生地方阿斯顿发生地方阿斯顿发生地方','<p>阿斯顿积分卡时间地方的离开积分是肯德基是看到积分老师就是肯德基是看到<br/></p><p><br/></p><p><br/></p><p>阿斯顿发生地方</p>',''),(2,'测试的撒发生','/upload/c9812c3596c8e32538065d5358baeab5.jpg','2014-06-07 09:47:17','测试好少撒看到积分是的','<p>阿斯顿了疯狂静安寺打<br/></p><p>爱上了的空间发</p><p>爱上地方静安寺了看到爱上</p>','');
/*!40000 ALTER TABLE `hao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `superuser` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',1),(2,'jack','e10adc3949ba59abbe56e057f20f883e',0),(3,'tom','e10adc3949ba59abbe56e057f20f883e',0);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dao`
--

DROP TABLE IF EXISTS `dao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `abstract` text NOT NULL,
  `detail` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='捣江湖';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dao`
--

LOCK TABLES `dao` WRITE;
/*!40000 ALTER TABLE `dao` DISABLE KEYS */;
INSERT INTO `dao` VALUES (1,'捣江湖测试','/upload/ff1fa169a6d6e43c3c764cf88748ded7.jpg','2014-06-06 10:24:04','测试dao','<p>奥斯卡大家法律卡时间看就是的离开是了的开发是了空间sasdfasdfasdf<br/></p><p>asdfasdf</p>',''),(2,'捣江湖测试','/upload/324b5d03dd3327c553a60bf4c6ea5715.jpg','2014-06-07 09:36:04','是的发生的是的发生','<p>阿斯顿发生的了开发就<br/></p><p>sdfasdfdfsfasdfdsdfs</p><p>asd</p>','');
/*!40000 ALTER TABLE `dao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhao`
--

DROP TABLE IF EXISTS `zhao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `abstract` text NOT NULL,
  `detail` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='招兵买马';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhao`
--

LOCK TABLES `zhao` WRITE;
/*!40000 ALTER TABLE `zhao` DISABLE KEYS */;
INSERT INTO `zhao` VALUES (1,'测试招兵买马','/upload/4b4d94b19802ef21e6e4405b8cceeb31.jpg','2014-06-05 15:44:34','asdfasdfasdf','<p>asdfasdffd<br/></p>',''),(2,'测试爱上地方','/upload/08fb9a4d2cb5cdf2b7dc5b785744820b.jpg','2014-06-07 09:59:17','是的发生离开大家开始就看','<p>声卡的积分阿隆索的空间离开<br/></p><p>撒地方空间阿隆索看到</p><p>撒地方健康</p>','');
/*!40000 ALTER TABLE `zhao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `adr` varchar(255) NOT NULL,
  `startAt` datetime NOT NULL,
  `detail` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'测试','/upload/8335d6782cc892f6d1c3327d80658ea2.jpg','撒的空间法律卡时间的奥克斯地方的浪费就撒了地方就','2014-06-06 22:51:00','<p>息）。几分钟之后，实验参与者们说比起肉体身体，他们感觉视觉的身体图像更让他们有认同感,并认为实际上他们的身体栖于那些图片替身里——即使他们与图片的距离有两米之远。<br/></p><p>看见另一个自己并不只是疾病的症状，还可能是健康人的某种心理状态（虽然是一种极端的心理状态）。极地探险家欧内斯特·沙克尔顿（Ernest Shackleton）曾说在南太平洋的南乔治亚岛上，在一次时长36小时的穿越高山和冰川的跋涉中，他看见了自己的二重身，并将其称为帮助自己克服旅途险恶的“神圣的同伴”。当探险家安·班克罗芙特（Ann Bancroft）在她穿越南极洲的1900英里旅途中受伤时，她发现一个比她更为坚强的、毫发无伤的二重身轻松地走在她身边，这给了她安慰。后来她写道：“那正是我需要的一剂良药。”</p><p>已故心理学家朱利安·杰尼斯（Julian Jaynes）赞成二重身是一种困难应对机制的观点，他说 “一些遭遇船难的水手在得救之前能听到上帝的声音并与其进行几小时的交谈”，二重身的安慰作用可见一斑。海德里希说：“从医学上来讲这是有道理的。一直以来，人格分裂和人格解体3都是一种应对机制。”</p><p>二重身这一应对特性可以被用于治疗。例如，布兰科用一个机器人装置拍击三十位志愿者的背部，他解释道：“当机器人拍击时，志愿者们会看到一个背部以同样节奏被拍击的虚拟人像。他们越与那个替身有认同感，他们报告的痛感就越弱。”这一技术可以被运用于慢性疼痛病患者的身上。</p><p>海德里希说：“你可以这样想：由于你对虚拟影像产生了认同感并在一定程度上脱离了自己的肉身，所以对疼痛的感觉和神经表现就得以减轻。我肯定有朝一日人类可以激发‘积极的幻觉’从而减轻痛感或者其他的不适感觉……这一方式与人们通过学习冥想或其他认知行为技能来克服恐惧相类似。”</p><p>在《搏击俱乐部》的结尾，德登和他的二重身展开了一场殊死搏斗，这意味着他们之中只有一个可以活下来。但是二重身的现实情况更加复杂。布兰科决定将他的那位十五岁病人的手术延后，直到她的大脑发育成熟。与此同时，那位病人说，知道她的症状是有医学解释的让她放下了悬着的心。而且，她已经与自己的二重身产生了强烈的亲密感。布兰科说：“那对她来说是有特殊意义的——那将她与她体内那令人熟悉又安心的一部分联系了起来。”<br/></p><p>译注：</p><p>1.&nbsp; &nbsp;doppelganger：在德语中的意思是“两人同行”，在这里是指隐藏在每个人心灵中的另一个看不见的自我，往往是人类内心希望自己所应该变成的样子或者是人类内心最真实的欲望表现。从理论上讲，只有自己才能看见自己的二重身。</p><p><br/>2.&nbsp; &nbsp;埃德加•爱伦•坡：十九世纪美国诗人、小说家和文学评论家，美国浪漫主义思潮时期的重要成员，以神秘故事和恐怖小说闻名于世，他是美国短篇故事的最早先驱者之一，又被尊为推理小说的开山鼻祖，进而也被誉为后世科幻小说的始祖。</p><p><br/></p><p></p><p style=\"float:\" null=\"\"><iframe style=\"position:relative; z-index:1;\" height=\"200\" width=\"300\" frameborder=\"0\" src=\"http://v.qq.com/iframe/player.html?vid=l0012b8yfb1&width=300&height=200&auto=0\" allowfullscreen=\"\"></iframe><br/></p><p></p>',''),(2,'测试2','/upload/96bd823bb07bac55c0fb49da5ec765a7.jpg','张家港友通数码广场','2014-06-09 20:00:00','<p>IE6下，层级的表现有时候不是看子标签的z-index多高，而要看整个DOM tree（节点树）的第一个relative属性的父标签的层级。</p><p>eg:IE7与IE6有着同样的bug，原因很简单，虽然图片所在div当前的老爸层级很高(1000)，但是由于老爸的老爸不顶用，可怜了9999如此强势的孩子没有出头之日啊！，代码如下:</p><p>1 &nbsp; &nbsp;&lt;&lt;/code&gt;DIV&nbsp;style=&quot;POSITION: relative&quot;&gt;&nbsp; &nbsp; &nbsp;</p><p>2 &nbsp; &nbsp;&lt;&lt;/code&gt;DIV&nbsp;style=&quot;POSITION: relative; Z-INDEX: 1000&quot;&gt;&nbsp; &nbsp; &nbsp;</p><p>3 &nbsp; &nbsp;&lt;&lt;/code&gt;DIV&nbsp;style=&quot;POSITION: absolute; Z-INDEX: 9999&quot;&gt; &lt;&lt;/code&gt;IMGsrc=&quot;http://www.yuanchuang.net/uploads/allimg/131101/1A3194V7-1.jpg&quot;&gt; &lt;/&lt;/code&gt;DIV&gt;&nbsp; &nbsp; &nbsp;</p><p>4 &nbsp; &nbsp;&lt;/&lt;/code&gt;DIV&gt;&nbsp; &nbsp; &nbsp;</p><p>5 &nbsp; &nbsp;&lt;/&lt;/code&gt;DIV&gt; &nbsp; &nbsp;</p><p>解决办法： 在第一个relative属性加上一个更高的层级（z-index:1），代码如下:</p><p>1 &nbsp; &nbsp;&lt;&lt;/code&gt;DIV&nbsp;style=&quot;POSITION: relative; Z-INDEX: 1&quot;&gt;&nbsp; &nbsp; &nbsp;</p><p>2 &nbsp; &nbsp;&lt;&lt;/code&gt;DIV&nbsp;style=&quot;POSITION: relative; Z-INDEX: 1000&quot;&gt;&nbsp; &nbsp; &nbsp;</p><p>3 &nbsp; &nbsp;&lt;&lt;/code&gt;DIV&nbsp;style=&quot;POSITION: absolute; Z-INDEX: 9999&quot;&gt; &lt;&lt;/code&gt;IMGsrc=&quot;http://www.yuanchuang.net/uploads/allimg/131101/1A3194V7-1.jpg&quot;&gt; &lt;/&lt;/code&gt;DIV&gt;&nbsp; &nbsp; &nbsp;</p><p>4 &nbsp; &nbsp;&lt;/&lt;/code&gt;DIV&gt;&nbsp; &nbsp; &nbsp;</p><p>5 &nbsp; &nbsp;&lt;/&lt;/code&gt;DIV&gt; &nbsp; &nbsp;</p><p><br/></p>',''),(3,'sdfasd','/upload/53229f55d6ee1400cbd387317ac5f3bf.jpg','sadfasdf','2014-06-05 20:00:00','<p>asdfasdfsadfsadfsad<br/></p>',''),(4,'dafsdfasdf','/upload/1451cb57b0824386a7f020c5f7620f93.jpg','jasdlkjf','2014-06-05 20:00:00','<p>asdfasdfasdfasdf<br/></p>',''),(5,'sdfasdf','/upload/84eb9870368ef93ac25247c79d380372.jpg','asdfasdf','2014-06-05 04:00:00','<p>sadfasdfasdfasdfsad<br/></p>','');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiu`
--

DROP TABLE IF EXISTS `qiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `abstract` text NOT NULL,
  `detail` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='求文若渴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiu`
--

LOCK TABLES `qiu` WRITE;
/*!40000 ALTER TABLE `qiu` DISABLE KEYS */;
INSERT INTO `qiu` VALUES (1,'求之若渴测试','/upload/c80d0ad70f3e6d9735e2b66b471314c8.jpg','2014-06-06 10:26:03','司法鉴定了空间咖啡就离开时间是的了吉林省就','<p>空间发生离开大家是开发就打开是了的空间是<br/></p>',''),(2,'求啊是否','/upload/f975e6677431617d5fb19ed9d499bed8.jpg','2014-06-07 09:56:02','测试的附近爱上了的','<p>kjas dkjs ks 阿斯顿开发建设dasdf<br/></p><p>离开撒的附近s</p><p>阿斯顿开发就</p>','');
/*!40000 ALTER TABLE `qiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `abstract` text NOT NULL,
  `detail` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='趣文';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'测试趣文','/upload/811beaba2764598a93ab700f89d5fd72.jpg','2014-06-05 14:34:43','女性作家，是文坛上一抹引人注目的亮色，是一群遗世独立的精神贵族。也许某天当你蓦然回首之时，她们正遗世独立般走来。','<p><br/></p><p>要选出历史上那些最具影响力的女性作家着实不易。想想那些熠熠生辉的文学瑰宝，它们历经岁月的淘洗，对现世仍有影响。要从优中选优委实关系重大，不能轻易下定论。从古至今，女性作家们重塑文学体裁，开创文学之先河—这些仍继续产生着深远的影响。</p><p>我们十分感激这些女性，这不是什么秘密。要知道一直坚持下去并不总是那么容易的事—特别是在12世纪的英格兰，中世纪诗人玛丽•德•法兰西1深知这一点。她表达了自己的观点—女人应当有权选择自己的爱人，而这却与当时的宗教观背道而驰。但幸好，德•法兰西并没有轻易放弃。尽管与当时的宗教观背道而驰，她仍坚持申明自己的观点。就像她大胆而充满勇气的作品一样，这份清单所列的这些女性作家们的文学作品对社会产生了广泛的影响，它们塑造着公众的思想与观点，并且时至今日依旧影响着现实世界。这些伟大的文学女性有着超凡的能力，她们通过自己的文字和思想影响着读者。她们的作品讲述了逆境中的生存与胜利，她们以讽刺的笔调评论社会风气，控告父权制度，成功地吸引了全世界的读者，使他们完全沉浸其中。</p><p>这份清单列出了史上12位最具代表性的女性作家—从当时不被赏识的女性主义先锋到如今逐渐为我们所爱的著名小说家都位列其中。这份清单还列出了每位作家的一部必读作品。</p><p><img src=\"/upload/42986249ebde32d156fd1db65dd9810b.jpg\" title=\"14014631662.jpg\"/></p><p><iframe style=\"position:relative; z-index:1;\" height=\"200\" width=\"300\" frameborder=\"0\" src=\"http://v.qq.com/iframe/player.html?vid=v0130k7b2ux&width=300&height=200&auto=0\" allowfullscreen=\"\"></iframe><br/></p>',''),(2,'6.6测试','/upload/c0c39619078fe0f133a1ac9806cc1726.jpg','2014-06-06 10:36:37','擦了开始觉得罚款就是的发生大家看圣诞节发牢骚肯德基发撒肯德基富士康大家撒肯德基开始就离开时间速度快就是看就','<p>asdkjfasdasdfsd<br/></p><p>2011年秋，一个饱受癫痫折磨的十五岁女孩来到了日内瓦大学的神经科。她告诉该大学的神经教授奥拉夫·布兰科（Olaf Blanke）说，在癫痫发作时她看见了自己的二重身。她是在癫痫的先兆期看见的。在这一癫痫的初始阶段里，病人仍有意识，但是他们的视觉和其他感觉会开始模糊。最开始她会觉得恶心，同时又感觉特别温暖，然后她就看见有一个透明的身体从腹部升起。那个身体会变得和她一模一样，然后望着她，让她感觉那是她的“灵魂”在离开她的身体。当她的癫痫逐渐结束，那个“灵魂”就会重新回到她的体内。</p><p>那个女孩被诊断为岛叶皮质（insular cortex）损伤，那个大脑部分负责感知、自我意识和调节体内平衡。大脑将从眼睛、耳朵、皮肤等外部信息源处获得的身体信息与从心脏、胃等内部信息源处获得的身体信息相融合从而产生自我感知。布兰科和同事卢卡斯·海德里希（他给那个女孩做过检查）说，这种导叶皮质损伤会让大脑无法将身体的外部和内部感知相结合，导致一种错误的自我感知。海德里希解释道：“我们发现代表外部和内部身体状态的系统不再协调，而为了解决这一冲突，大脑会想出看似最为有道理的解释：二重身形式的第二个自己。”</p><p>海德里希和布兰科在他们发表于《大脑》上的一篇研究报告中写道，他们遇见的报告看见二重身的癫痫患者都有导叶皮质损伤。他们的研究表明，当手术将损伤修复，病人也就不再看见二重身。然而，人类对二重身出现的其他原因则知之甚少。例如，精神病患者也报告说会看见二重身，但是部分由于缺乏相关研究，其中的缘由仍有待确定。通常医生会用药物治疗这些症状。</p><p>布兰科和他的同事还发现二重身是可以被人为引发的。通过刺激病人的颞顶连接区域（这一区域负责对外部环境和体内的信息进行融合处理），布兰科让病人看见了二重身。布兰科说：“在某种程度上我们诱发了与二重身相似的东西，比如一个完整的人体幻像。”不过这给人的感觉并不如自然成熟的幻觉那样强烈。</p><p>布兰科的同事简·阿斯佩尔和海德里希能够让实验参与者感觉视觉图像就是自己。研究人员在他们眼前闪过他们自己身体的图像（这代表外界信息），图像闪出的频率与其心跳节奏一致（这代表体内信息）。几分钟之后，实验参与者们说比起肉体身体，他们感觉视觉的身体图像更让他们有认同感,并认为实际上他们的身体栖于那些图片替身里——即使他们与图片的距离有两米之远。</p><p>看见另一个自己并不只是疾病的症状，还可能是健康人的某种心理状态（虽然是一种极端的心理状态）。极地探险家欧内斯特·沙克尔顿（Ernest Shackleton）曾说在南太平洋的南乔治亚岛上，在一次时长36小时的穿越高山和冰川的跋涉中，他看见了自己的二重身，并将其称为帮助自己克服旅途险恶的“神圣的同伴”。当探险家安·班克罗芙特（Ann Bancroft）在她穿越南极洲的1900英里旅途中受伤时，她发现一个比她更为坚强的、毫发无伤的二重身轻松地走在她身边，这给了她安慰。后来她写道：“那正是我需要的一剂良药。”</p><p><br/></p>',''),(3,'6.6.1','/upload/8cb9c73462e18f286fb43b6bb0a021d3.jpg','2014-06-06 10:44:44','长久以来我们都幻想着另一个自我的存在','<p>息）。几分钟之后，实验参与者们说比起肉体身体，他们感觉视觉的身体图像更让他们有认同感,并认为实际上他们的身体栖于那些图片替身里——即使他们与图片的距离有两米之远。</p><p>看见另一个自己并不只是疾病的症状，还可能是健康人的某种心理状态（虽然是一种极端的心理状态）。极地探险家欧内斯特·沙克尔顿（Ernest Shackleton）曾说在南太平洋的南乔治亚岛上，在一次时长36小时的穿越高山和冰川的跋涉中，他看见了自己的二重身，并将其称为帮助自己克服旅途险恶的“神圣的同伴”。当探险家安·班克罗芙特（Ann Bancroft）在她穿越南极洲的1900英里旅途中受伤时，她发现一个比她更为坚强的、毫发无伤的二重身轻松地走在她身边，这给了她安慰。后来她写道：“那正是我需要的一剂良药。”</p><p>已故心理学家朱利安·杰尼斯（Julian Jaynes）赞成二重身是一种困难应对机制的观点，他说 “一些遭遇船难的水手在得救之前能听到上帝的声音并与其进行几小时的交谈”，二重身的安慰作用可见一斑。海德里希说：“从医学上来讲这是有道理的。一直以来，人格分裂和人格解体3都是一种应对机制。”</p><p>二重身这一应对特性可以被用于治疗。例如，布兰科用一个机器人装置拍击三十位志愿者的背部，他解释道：“当机器人拍击时，志愿者们会看到一个背部以同样节奏被拍击的虚拟人像。他们越与那个替身有认同感，他们报告的痛感就越弱。”这一技术可以被运用于慢性疼痛病患者的身上。</p><p>海德里希说：“你可以这样想：由于你对虚拟影像产生了认同感并在一定程度上脱离了自己的肉身，所以对疼痛的感觉和神经表现就得以减轻。我肯定有朝一日人类可以激发‘积极的幻觉’从而减轻痛感或者其他的不适感觉……这一方式与人们通过学习冥想或其他认知行为技能来克服恐惧相类似。”</p><p>在《搏击俱乐部》的结尾，德登和他的二重身展开了一场殊死搏斗，这意味着他们之中只有一个可以活下来。但是二重身的现实情况更加复杂。布兰科决定将他的那位十五岁病人的手术延后，直到她的大脑发育成熟。与此同时，那位病人说，知道她的症状是有医学解释的让她放下了悬着的心。而且，她已经与自己的二重身产生了强烈的亲密感。布兰科说：“那对她来说是有特殊意义的——那将她与她体内那令人熟悉又安心的一部分联系了起来。”<br/></p><p>译注：</p><p>1.&nbsp; &nbsp;doppelganger：在德语中的意思是“两人同行”，在这里是指隐藏在每个人心灵中的另一个看不见的自我，往往是人类内心希望自己所应该变成的样子或者是人类内心最真实的欲望表现。从理论上讲，只有自己才能看见自己的二重身。</p><p><br/>2.&nbsp; &nbsp;埃德加•爱伦•坡：十九世纪美国诗人、小说家和文学评论家，美国浪漫主义思潮时期的重要成员，以神秘故事和恐怖小说闻名于世，他是美国短篇故事的最早先驱者之一，又被尊为推理小说的开山鼻祖，进而也被誉为后世科幻小说的始祖。</p><p><br/>3.&nbsp; &nbsp;人格解体：是个人自我认知机制的一种异常状况。它使人觉得在观察自己的行为（虽然他并不能控制局面）。出现人格解体者的痛苦感也发生改变，感到世界变得不那么真切、变得模糊、如同在梦中一般、缺少意义。这会干扰感观，因此许多患者感到他们事实上生活在梦中。</p><p><br/></p>','<p><br/></p><p><br/></p><p><img src=\"/upload/001903459feb0c9650d34a931651d44e.jpg\" title=\"feilei4.jpg\" style=\"width: 480px; height: 309px;\"/></p><p><img src=\"/upload/df4154ba5be04b0608d05175c8fdd737.jpg\" title=\"fenlei5.jpg\" style=\"width: 386px; height: 227px;\"/></p>');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day`
--

DROP TABLE IF EXISTS `day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `abstract` text NOT NULL,
  `detail` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='daydayup';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day`
--

LOCK TABLES `day` WRITE;
/*!40000 ALTER TABLE `day` DISABLE KEYS */;
INSERT INTO `day` VALUES (1,'DayDay Up测试','/upload/431ed31fa0ee113637474782e832fad5.jpg','2014-06-06 10:25:14','测试撒附近爱上地方','<p>奥斯卡的积分啦是看到sa阿斯顿发生的<br/></p><p>阿斯顿发生的asdf&nbsp;</p><p><br/></p><p>爱上地方空间爱上</p>',''),(2,'测试Day','/upload/c1c592bcdca41f1e8144aa29b86b2edb.jpg','2014-06-07 09:43:34','测试撒的发生地方','<p class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: normal; font-size: medium; line-height: 1.54;\">任务管理系统毕业设计论文 - 下载频道 - CSDN.NET</p><p>标签:&nbsp;任务管理系统&nbsp;毕业设计&nbsp;论文 分享到: 收藏 评论(1) 举报 我的待评论资源 资源简介自己做的一个毕业设计系统写的论文,供广大的朋友们分享成果!! 目录如下...</p><p>download.csdn.net/dow...&nbsp;2011-03-31&nbsp;</p><p></p><p>&nbsp;-&nbsp;百度快照&nbsp;-&nbsp;76%好评</p><p class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: normal; font-size: medium; line-height: 1.54;\">任务管理系统的设计与实现_百度文库</p><p>LOGO&nbsp;任务分配管理系统的&nbsp;设计与实现 Analysis and Realization of the Management System of Teaching Task 姓名:XXX 指导老师:XXX 专业:电子信息工程 内容提纲 1...</p><p>wenku.baidu.com/link?...&nbsp;2013-08-04&nbsp;</p><p></p><p>&nbsp;-&nbsp;百度快照&nbsp;-&nbsp;88%好评</p><p class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: normal; font-size: medium; line-height: 1.54;\">C#入门学习---任务管理系统的设计与实现(Windows Forms和LING To ...</p><p></p><p>在设计器上右击,选择“从数据库更新模型”选项,VS将弹出选择实体模型窗口,选择要更新的实体模型后单击“完成”。 4、&nbsp;任务管理功能的实现 4、1 主窗口设计&nbsp;在...</p><p>blog.csdn.net/chenyuj...&nbsp;2012-06-25&nbsp;</p><p></p><p>&nbsp;-&nbsp;百度快照</p><p class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: normal; font-size: medium; line-height: 1.54;\">基于web的任务管理系统的设计与实现论文_百度文库</p><p>&nbsp;评分:3.5/5&nbsp;23页</p><p>现代软件开发管理的关键是进行有效的任务管理, 用任务管理系统来维护开 发过程中越来越多的中间产品。这些中间产品包括传统的软件需求、设计、实现 代码等文档外,第...</p><p>wenku.baidu.com/link?...&nbsp;2012-04-07&nbsp;</p><p></p><p>&nbsp;-&nbsp;百度快照&nbsp;-&nbsp;88%好评</p><p>推广链接 &nbsp; &nbsp;</p><p>中国式的任务管理软件,捷为iMIS-PM任务管理软件www.jawave.com</p><p></p><p>&nbsp; &nbsp;</p><p></p><p>找任务管理软件,选捷为iMIS-PM任务管理软件!管理项目启动,计划,执行,监控和收尾,覆盖 &nbsp; &nbsp;</p><p></p><p></p><p>新一代免费任务管理--泛微eteamswww.weaver.com.cn</p><p></p><p>&nbsp; &nbsp;</p><p></p><p>免费的基于团队目标管理的任务管理. &nbsp; &nbsp;</p><p></p><p></p><p>人人都能开发任务管理系统!www.foxtable.com</p><p></p><p>&nbsp; &nbsp;</p><p></p><p>通用任务管理系统不合适,请人开发太昂贵,自己编程又太难,何不试试FoxTable? &nbsp; &nbsp;</p><p></p><p><br/></p>','');
/*!40000 ALTER TABLE `day` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-18 10:30:37
