-- MySQL dump 10.13  Distrib 5.6.16, for Win32 (x86)
--
-- Host: localhost    Database: porciweb
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda` (
  `codagenda` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` time NOT NULL,
  `mascota` text COLLATE utf8_spanish_ci NOT NULL,
  `servicio` text COLLATE utf8_spanish_ci NOT NULL,
  `dueno` text COLLATE utf8_spanish_ci NOT NULL,
  `agendado` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codagenda`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` VALUES (1,'2017-05-10','12:00:00','berlin','BaÃƒÂ±o y Peluqueria','caspujori@gmail.com','1'),(2,'2017-05-17','10:00:00','Lucas','BaÃ±o y Peluqueria','eknalj@hotmail.com','1'),(3,'2017-05-23','10:00:00','Lucas','BaÃ±o y Peluqueria','eknalj@hotmail.com','1'),(4,'2017-05-23','13:00:00','Lucas','BaÃ±o y Peluqueria','eknalj@hotmail.com','1');
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mascotas` (
  `codmascota` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text CHARACTER SET latin1 NOT NULL,
  `tipo` text CHARACTER SET latin1 NOT NULL,
  `sexo` text CHARACTER SET latin1 NOT NULL,
  `raza` text CHARACTER SET latin1 NOT NULL,
  `fnacimiento` date NOT NULL,
  `peso` int(11) NOT NULL,
  `dueno` text CHARACTER SET latin1 NOT NULL,
  `foto` blob,
  PRIMARY KEY (`codmascota`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (1,'Lucas','Perro','Macho','Golden Retriever','2015-05-09',30,'eknalj@hotmail.com','ÿØÿà\0JFIF\0,,\0\0ÿÛ\0„\0				\r\r\n\Z!\'\"#%%%),($+!$%$				$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ÿÂ\0ÞX\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0|Rìœ#P,]jË\'¡.n]\\bn¥š¥Ö*Æ‹IçP™¬u›x œþ‡J‡÷™Šh“#žu‡)Ñ…Qzæ^Ë¬SÐRMPäR–ŸI•¡dÂ1VH¥@¥@†¿KZÆV³ÐÅîç’©ƒfÊ¯oDÖŠ,³ÅîXìx¶¥=j\n,Ö|]*{,EÖ óÖÝx¡ÊÅ%£\\	SÕ½á/ Œ)¨{Móe©TQ¢›„ k[f ,5 $ŠAHÃ6U‚j™‹*=	Ÿ$¼Ùa>ÜMFkçI·!pÌÉÉ‹–á«ã*/\rûÖ;®®œZ„$PÔÄbâ\rY*Š¿jÕp%GŽ:ô±\nŠl7üƒÆQaÚçg?ŸBæb§§šàšD¹Œ ¤ðúÒ*z”“ÙUèÏ€Ê:À\0#’¶ØhƒçŽ‘¼¨D#<|l%ÙµÃVÊ[¤“t]`ñ“÷h¾^zøè–ŠÑqø«-gÖ%B½oïj·jJ™æ\rGQ,BBCÓ¡4B±GEí§©¿Ñ\Z­éj¶—.gN†/!JÜ0H^£¤œ…Ó­Íç¡5ZjSX‚šç\r4Ä/7tvÅ\ZéôvŠ,_iu~rËk:èÜØ9é/fH°„\0	³Jõ”Ö0˜\\ =ê¸žðÈŽnnxÉo9¥¦|Ü->úÑ“©•Ë÷½KsV3˜õ‡”¦z[µÈ	|’k²cyh©ýáí,¨˜dƒ\rÝ$Uupq¨ô“AM³õ;Nfì>à»YÆGòtqXÒ_’Æ§eFhÅƒ%˜(Çé’ÕÂ©C4&ˆvõ]Wk‡Œ½Ð †{×_ ãz.Gé†äxŽû¤K?…?od8¤ºì<±v	äR\"’f\r­Y`#ºlifâQ˜–f‰ûV˜™*¯¥¢AEÆÎŽž5¶›æ{Ž7å‘ô±ty|7Å3{_£¹Âc÷ü×4ÿ\0Z$½âøRÄØU+R\nÊN?ž…[¸ƒrÊäŒ˜mûZdŽ@Ïè°´:m/œóÿ\0aúˆ2°>Ãê}sçiô$ê_-BÙH?¦DF*S¤ºá¡Y`\nJjÃ5wdÖ®fw±úžg¤ìÌçSÐê©\nr¿0ÓÐO‡ÂŒþ“¼•7½PPÅ±\0c&¿Œ§µ¨Pì¶A@—^Cæ‹CJ¸héóçØìº-¾¿A\\T´4¯Ëpµgå(÷6‡–T¶ð}%Å™U(U¡JE(‚0{Ô#±oZ-žÁÃŒ=Ùéz†ôˆ÷ðfQú÷ÕC™„²Ÿšþ¯³6ð.P\n†­dU=ýä×*s¬\n4`÷ˆ˜‘óD„µBf§Kèæ;šùwæ‘‡ëß¡}\\Xæ69†°‰aÀ(´ÂÄ<á\nùLovEW€³Sií§¬b§\ZR\Zì÷ùƒÜÓ[çŸŸ°º?ºw:H ƒÛçÑÊ*ÛÇ¢‹XI”ÞCEœÄ2Þ¢[Íù\"ÔRÍ\\—¨hê+<dÁ=ŸuÄs	õœ®Ï3úŸ v:*ìg¨Kç1¢nH)åÒ`âÏÑÓÃO­Ð­£jÙ<%Fã!©KR¦Ìš¥ú/oÆü¼¼sñ\0MNË¦×(>Ž‡ÈjÛ#±k-4P.Fm´Šîm©šÑ*ÛÚ\n«ŽŽ!Õ§OIµD1î}jœr_8Î·4¸ô×íç¥Òé:«|k³«VkèX@·´kŒV ¹yÎé¬¼ØŽ@\0TV³UÏ­‹¡q}C®Âár3ÇôÞ×#æ<¿Ð¸ðT8ý/G­±Óêíðÿ\0$Lô£ËˆyÙÈƒ•ÔÔ9áˆ–†7¼K±åk¶1ý#ëÇº‰A,Ï™üÿ\0ì9©1ÎpÇZöþëû§ø§CVÖ\n(ÞO1\0#¬–È­¨R[?ÄSÉT¬VEãPþ/­u:‰Œ¬lÞY\'ÔTÞÃŽ×745[ÉøO=OBèç*Ó5¤¦Óndm,ÖËåj5I›G¯¯bV‹V}{©tî;7-Tø^Œ9nÌêhèiß)ùŽ`À\0®‰ž¢§`ŽjÙÒ¥=HÝÄ^3‹¥ä­G„ªõ]Î÷ë»ž]òÔKŽø·Iôò-°ËO:æg‹øFMh|µïè%t^Ð¦ƒ\0£EVÇ˜­œ£Á-@k¬’ÉÏAú/rë$²è¢¢Þ¶½mû<õÇÏ~|ËUÍKc«aÈQHï­¨{ÉkÞãoAO\"mE*)¨Ú©­žmÏ¹öc\nëgç(j§Ÿ³l˜znÚ˜ŸÈ÷Q»®\'i’¶õM­ì¢§KKÇ…pu´)eŸq”+E/£ú/`TPjg!*EeCêEÙhÃç¾’QÚê(ËÚÌsn°·˜é+}™áUxKJås5fÇE“]í’¨!1Hý½Z¨…Í8­J´7a†®çô}x\"ù`kyìuLûM|jóÙÎ6–ô™P*T¾$—¦’·ûóTM lç” 	£VfåµéÎüA	½<*Òdc2Ïgäþ„ºñáT£ü7_xC¡-é÷ªv¯×Þº9Ê\rVˆåaKS@Ó§+ó\nÕ{j,ð¤k}¢á˜ïé°Ô&KX½ƒOòÝ\0Ç}³dPWÕ%h$¡áI[b“àr¼‚Ô^·š;5öZ¥¢£úu*ZD–}é FÍƒ½Cy¼Ü¡‹ui@²ÖêÊÈ¬{ÍÎPØÉó¢ôXöÕ€­CQPt4ñ}/‡BÄÖ÷÷¯z^ƒ½¦*J·ÜP‚ë¹¢Œæ©¦|ý+¯{+Ç‡×Xb$°:VÓ#ŒZP,Mi5,Z	Z·\rbÓêßÅëº°f#ˆÔÆÒÇÈ4aÕ/Ü¬¾Gf¦-PÌ1ÅE¶(Z‚jÐ;2µÜ%±IëÚ}žíÅLe\'·ÎÅ®¡M¢DÅ™ÎWÑ\\³I¼r¡Úò3Lø!\\åXe\"Õ)Åíûª2Ù‹—ñy‰Õ¼ôªáá¨?*i ï¯0Cxö¬;@˜~‡]vÏœ^‡½V#tízÑ¸Ìâ¨¶eßæQÍOÚ:{N°ÇÌW’„£ ØNÃ)|ÅHí+3{A*¹ýY¬’F¿ŒÐG¤ÿ\0xH>‹(&6­Ç„‚mõŒ×#Cêp²¹Æ_Ã¶§ª+^µõh{\0õ½Ö0G4¨ˆµž;Ý…=¨åWOœæ]tëØt–J_K•ÅK5tT‰ARú)=PQÊxÅ¼Ì\ZáÓ×´·»6Û6åÁ¡£e‡›Êbâ^^î6ÖtsY§UüçPñèÐ‡[‘ö¶vœ+U“Ø,Mi¦½h\Z÷¾yÌ¡ýn‹U‘UÇ­|Ü~C»ú}[B_(XZ¸šª%dŽ,3PI^þ‰%aº¶	º·‚2¹—\rÅ.¯™´ÒL€$í7’É=-!ó¿=JÚ}vÈš¶²œÎîYM|ý<ñ?Ei1s,J”ÌTT\\M¬ã$Ç­&ž¢õNÛI4··¦73Í— é\\O=f¢«k4 \r¯—ëçÕ¤,±’ÍÁR0I¢·˜]Õ¦”¿†RÒ{D±µ¯µxº=I|†G~ÉöÓÈÍÏ2é8½Õ¶a0½RÝÎ®{~¾\0,˜`w×\r%V,2Œ¤aÎ“jqƒƒÜjÝ4ø=NŠÍfåàpË`˜I“/^«ƒÖ°ØÆÝ\nÙ¤dL‹.))¤J¸\0²«æ.@´ƒýí‘§ÄµÖl	ožôíC©rÁ^€`«½`cP§½[UK19×!2\r­šZÜBÐY¬W†¡hf2•t«£µ¹³Èx*ûBËà;¼\"¾§*bÑÑmU©¡A\Z¨>îj[ÕGjƒ©+äžÏ^wWUµ-Ÿ…Ô\r¹¬.þmÕ–R<çÂè^PŸ qY\rçe£2—™!\r•¢{lý$ƒÒ]l}&Ä½ei5+™Õäz¼­Q²°uyž’‰¹ž«Y[Y«4|ÛëòÜçYÊ©·Cõj8‹jhµ5Zˆ›Yv´ófÔ\\¥ª<½ó­”ä:˜^L:QRgÒ«‚íB!DP;SJk%§œS¶¨‚îsŒ¯‚æã™ûÌ½ÙÍ45TÛÌ¹4i`_3BBÈ\\ÍàšMuÖZch£Iƒ+aŒi27Öªzá<g¼rÌ6¬=W¨ Øu;”uXŽù{f2ail‚ªšùfº..ñŸ¡;È˜ :Ž®T¬Þ=Dt–¼è \'	ª.îˆ§Æ½ßºøÚ\ZKA\0Æt&Nª7-FðQ×*iÑªdKžíñt.½³ßÌh4ÑÔÊÏÕC~Š(Õžœ¶(HóXub é*#¬F$7²lR!„Þ5ÎqÜü|•ô5sn£Í¥Ÿ²ªÍÐëæôx—bôðU,ƒÒkâ°Œ!AÊ¡àd8N]Êšwm6%\\\reDô¬®{Ž*†ý7IqøìÓÇn‚<!ÔE$‚(+ùeYçGt$L¥¼«Ž\"³cW×a‚S2Ô[V¸¾c	ú8æÊBó±šðbŒ´Š‚†l*«¤iK0Œ‰†R•54EÍ½x„™%+]&Pª¦k¤Ï¡”{ÕÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0ù¸=\",^k\'e`¼Ë¦Í“Íx*ºQàL˜\'YB¶c^MÚZtçR\"Z­:*‹Eë ’iyDÙ”QhÓ˜˜fºFÏ>†m´†}–‰­d^¶ô3dQ5›Ñ€£Í#jB’­U‡¡r×sgäÌ-Ë?\Z÷**^¢À#³D]¹d£®IÜ•~êBÙjëzÀ÷ˆß§±ïÇŽ‚ƒ%`ôîfFƒ¿(#ì“ÝéUrùK¢yQ\\w#°IMú©FFæÑéÕÖ~nM^\"„BÖ`¥jÀ²…Çlë¤a->5$ƒ‘EMŸ(3qÄ¥x)úOe\'–7ßàty‚r˜›H4®±¡›7ÒÖÕŠ¬2KÐÙƒÇáBV3**²¨“hÙïQ§™jqö½\'çåÖ`%ç)\"Ž²gmßBÉžJŒújÞFdê‚r·•F…DkPÃºõúGXI½Éó°ñ\"‡yôºN}S=™kõ\r9Ìsµ8ù¸¹©Åþl-•æ,­\Z»¯×R‚QŸ»ÄÄÕ\nYŸÁînt\Z\"9ßè}5@Óæp¿!\Zp[pè²÷N³Q[¤Uý¿¢Y«‰»ÆWæåkBê©Ý›Dh+*{LVkÑãi|ž|É¢ŽÁ»­$²ÆhoO¤õOvi£Ü/ÄDæµ\nÏXõP§ô¢©õýî&RZè—ƒâ±‰¶kyïµœ‡“Ó>üõ<Â~´Æ¨­Q“ææQåtHºP”Ö)VUmÿ\0Eª-Èï?™Àå.ýn›t*sÙâÊó½gííJÑ*Þ‰šhÍÚ¡i®wê*Jó«ÖHÝèÞ¦˜ðÉ`DµGX­—G3#É9n]ôa	›`B©¦“ÂÝž•Í]¢u),—¬¼™´Ê™]†¨oóœˆ«ÞF,bÂÇ-&Ú=/1PÎýIsÈ ª­3›¢kÍ+èÁ[Ï2šnLz½\"ÝoÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0êÁ¶Lye~…U£ªP\nE–±Ìå‘¤hÃne/£wPYKe.²£…\nJ°“Ö>}\ZV®«HU²’Ë‘Ê\n*¢T´£Õue½ˆpöus	¨UÍ@”ÜtÃN¯ËÊw_\\w£ÑÑ!Ð\Zã†S:R{§.Õ¸Ýz½*îp]¨\'\'Õl#¶vå`ò§X5éßÑ>Y®õÃÉœÑRœõ\'AE‘!«>îåçâ›tvåàåÔzÊ¼½\\Ö:¸½R\\Í^Ž¿=A=×ââ¦dQ\nR6æëA¥b,Ò^ZË¯·œ¡g¯¬R‘—36é¦Z°\nËfŽ—Gkõò—‚ó‹HE‹Í=<À¬®Qß«Ò¢qñÍ@5P\\\Z (Fì`´ô}cár\"îi«Ï`†$åÄb‹^ÒÛ£‡OIÖxŒÀ²ÏSNŠµBýg32á¸d¦»MÑJ«æ—f,Ø°æ™a©§ºÀË¶Û&,•.Ã2m—QËO-:0Û*Øg,ArË«b§l#6£S&*¹P‘Žå`\n´Ø%Z¦›+\r1&€ØPlFÄ(9¨i†;$×e#6ZQ¶ÀãIbÍB˜€\'5ufÛ8	ZE¨„š¤ç²H`q*ÅHØŒ‚±”Z¶‰SŒé¦Áq	PÒ‰kt£µ9\0ç2•ÖÊÚ{:óô6VÍ=­wæY+RnJå\ZŠêŒQ°rŽ•Ê\'‰bŠÀQ)™P²Æ‡c¦ÇVÚdÑ%0ZtMqÊÅCb¯7	I·_)ÁèbÈäa\Z’åÎÃgJE¶ÎPåeßÿÄ\0\"\0\0\0\0\0\0 ÿÚ\0\00«\rÓ,A\nŠÖ²–Vh*¯áT‹;½ÙUGáVT‚Ë¡¾k:rÆÕ5T¸Í/¥qšœ¤EÆ]+ù-ˆ\ndSÂÎH*Õ²EYVYTM\ZN£NAŽ¼Ñ‚mŠž”íŠ™«H‹T¨©©j±Y‚Œ2+Zé]h~ia‹ÝGç\\2²j¢¬®4 \rM´pÕµUÖ?5¦~01Ž•g]Å\n¬4¡“žXsÉ×X¦Î¶ìðWZ€A*Dè\rêp¡ÆŒÛF›Ë`Ò…^JÃ9äUòµTÂîöæ*•šÒª\"£®–¨T “A  85üÕUJØª¡£C\Z!RBôYŒÄirÄP¦1ÜÖ‘Xä¸u°ÛôÜp‘±	XØb˜`œ”\nMø ¤Å†YH`„˜Ñà‰6YAy¢¥D&WXŽÌÛè^×6Ã«õôKKN\nôlVAÊ×ÈŒ`_6aˆAlÎ\0Æ%¹m¡Ù3’\r|€f–?!+*„0˜–›,†²Ï’Ö2Á_<”¬	®™¬;F®Å8j)o>Ï5üTðñ|eòoÅÉ5›ª\"ºø†lÆ…ÓÍí?€rÁ€?¨DI/ùZ¨hÄ31hÅ¢º\\r.¶ÇFRMpTÕM´Û¥<º¼Ü|\Zí¯%k¢ªŠœ›/|\\{Yé_Ò Íþ0É\re4ÂLi¸¿‹	¦šÒM–x!R`À“gÐØÌ v˜æ˜ér†Ý8xþ*yõ‘eÏžïP®°ÿ\0kÜ×]-X½wX],Â|}U*ß„–b ‚NÌ¨`Qãž‰Vï¶pËUJØ®¶Ç‚*•Ú-(Žm¼÷TÄ—fOý\n²3Ï™f2ÖÅnw¦Ñ–¥¹ÚÈrrsit±î³@cf†,Øøá†û`Û0³¶bTVÄôÎYÆ@wFW.¡\'Ñ¯¯!™–…¶ã”·)ÅÂÎžz-m.Ì¯9lCŒ–XùµZ¶\\ùu\Z|»-ßÚ–²4±Ël“ÚÃ9#D¬ÑN»ú#™dwwÚ•›íí¤¶d†¯R\"l°‹ÄÅ™WÇQWÙ]¹ùþæwú/3*—UUÉ»ÐÏÀô©½ÎJŸ7#\"Û×2¬ºî½ÉÙ?‚,Xñ¥\Zi½¹¬ËãÀ•P­²X Il¸±cª•TŽB•å+©Xå-YT%ïþxdääYézóþgŸb¼ôÜõzñ}ÌlïèôŸÊÆÌeªØ8¶\\Ü„ÐNHP?7½¬’ÛŒk%¬Œª¡9+\0çæ@{\Z÷ió®‘XœµŠ–•F„‘Žÿ\0_c+Ä¾²1}OÅòü¬\\[ÕéËÇÿ\0Gçœo;ÌÄ§¯ô©þjë3¯Ï¤àÅVüÖ„1 ‚ˆY¢IS·5?VBAVÙ&)+”³áòT?‹X¥kæwnGõZqn9›yøëôâQâãaéªþ{kËÂÊð0°-ŒŸèG”ÙWOž9³ðBZ?ãD]<%&Þ$XÑ”€z-etCMi‚…%¾Šå¬6Å±Ç²Ú¨ÂÁLO* \r·Ùêv¯asú}´Õ>†7ôQGd¿àü&k!%„XK+Dc¡Í9\"¾•ƒë¢`‚sÇ.SÑ7J‚OKËÆO)j®t¢{Ùì¿íÿ\0õç}ÑqÈ¾—Ãë\"¿F¿ó^c4A\nœ0?€½–Nº&Â›\Z–ÙX13–šQù¹®au³¸TÑ¦³¯šÐ¢aÖYV«;ª]oúvÉó¾´yÿ\0âk¦×–=×[)[?Îz2•0Å%¡R†1e!‹—\rbÇ²Ëq¬F´«‡vB%‘H;OA·\nüçÑZYR°‡ó~PÈ¹	—]·]ìåç×Ö/µÚÖ&FaKBÐ=ìQVé›¨¶4‚#Bõ9;Xhd{¤„\0«5§†#ƒÒ˜c*~\\ë+9ÞüÎLÆÆÉóò²¿Ð/úÏWÕ,_—™O§G¡‘eíã#Í_uË‡\r²GãX“ùdÚŒ¦mMæ4IlÝl_°êJ˜&Ùâ³`³|ËUQt\"ªü„#ÒÀÍzkô¬\\š™9I?«ï•—…ªqjÇ«Û¯!Pˆ!Šz1cÍï«Š;Öv¢ÈÂ…Yic[—R±Ÿñ›¢eq™¬ë´±L!WE‹j`dUmÃ#Ë»ØÂó“/Ì?åþL<:¨¬„ª*yø¢eUêSÊ?Lë`°°frïoØ8)-ƒlËa\0X5jšJÂ!Rð–;1bGñB’Áüÿ\0=“þG+üóùÏ]Oâ¥µÛ]õúöâYn6N-X·âdJrq®JÑ(ª²”ö¼Œ¶WúlEnË;—wX\ZÞË,e`À´d5Ô>kH©âM“Å›i`X\0\"<Qþ_1,—Â·ÇO\Z¼\\‰j2ûøø\nÕßE\r‹›þzÜ_3S]Xì¢±Dº¯kÄ¾¥›‚vÖÙq·éÚÛõûýûR±A;šyZ¥|!Õ¡&<&‰ŒñÂÂf6géU,ë¥Žn†¾?›¶SYUžç›åa¢\"Ö‰+•}<oKÂÝ3›ç¿êý{D‰ë@må@$€X¨+a\0üä¨]3®Ù°óð3i¢,ita``²ÿ\0gS@]\nÖº‚Šâ@Lÿ\0D®Ìæö¸±F©•J±=,\Zâ) s6FFÙ‚iQÔÔ´¥L†of4‰z=\'ÞÃ`Lbñ£«Fè|¸êRóbÔ«¤\n«7þ„d_h©P¦ÄtàFP‚­UA,†k”7}t¥E“™S<qøÌ]ua$¼ûQÚa–Ã,qÍHiP¡MFcì¦Eo_Ê´¬9µ€5šø2ÇªÊc‘`•‰Îã+Ÿª¿}ÔÝ³wmø÷ýÓ5–«Ô%‡VUsù*#ÂZ­jÅIX®AÃ‹£œéŽ@üWgh R†·¤Ó^-iÀ­k”E®‹(.ÕdIµT›ÕÌí—îËéj¡6EŽ¥yÀdè’^30²<®lPª*H&éL©ÖÚ)1á²«¾”‹+t¬g)”ªŠç:Úrþ†m\",­~wÔ¸‹Žke²:ši¢ºÙ¨õÒ|E?ŒK›,°.UÂ\"ô²˜ F¨2Å€ƒ½ú1íwÁù`e–ãå[•k¦GÚÒö¦RÖkêÁ•Š0SãµãŠÍuÖÔ•²(Õ|?)Tud²ªéZlL\np›{²Ë\nŽ®¶š¬–Zƒ¬p‘Gm³}uëYmE9Œ:f`´\n^TY]+²^†¸C~Ê*ù\Zþ\"“QPA$Cãçóà\r™Á¨Rkzë§¦–3?r•!(±š#ƒc¡b°:öšÚM&·N8jÖºhzlÆLV­«4¬u5M™ÉüX`\Zy~k7ç!tU¿*˜vêZY?È 4QÒÝ±bÀ^}O§>MSP1ÿ\0ø†\ZÐÔÿ\0+QmGòœ3Ži„h~’Š•Š¥u ºaÇó¡6`ôa1Ñ	YÃÂšZºÔê„\\t)ó)òZ|ãæÕš?ŸâÔ>7òƒ±4a››0ûÜkBnLðˆMVbä$°ôìùŸco[´Ð¹EM,‘¢»»šÆØx›fÅù×²À«l’v÷5ÄØ/ôNúë¾‰mg—øé._<£TöœièJ¥g«ÂØŽc™¥üÓBb€º€7è ™®!Ó+üh\nþTŠÆ4FÙ,áÞöÌ¦ƒ:eUz­­’ÕG¦Ã1æD¿#Ñcº€ìºë=ºëèm5‚YôïéôOJÄ˜A¥c+¥q‡%æØÇü«ä”f„AvW2¸[ËÈ„Ö]S­ŠõšÜÔ¹Õ¡Zÿ\0é£.«ÚÃ9ô1‰Ü+ø&úß]õµ›Ðü5¤ìÁ!T¦Œ\0þ0–/5«Mº×ÐüCmiø°O+Ûi´B]¥Þ»3Mí/¼:U@R±Vó”‚Îy*bÃ	Ô_ÀD0@aE†t\ZtHqRÎJï|¨äBjfn4ƒÎÆ®È\nYQ1ÕëqèA+¿*Ëû\r˜4ÓSSOårö½~|ÀÄÁè~\0ÂwV1en‹†.°gW?ŠÏã77áª……\"»ñÙ˜šÚ›e«Ÿ[ÜÇú4Z¼üqG,¨ÕÛŸøíÛ@Ed4H`W‹n1%‘lŽ¶	\"s:hþ-:Ô(¥€\Z MkW<UÑ>Ž:;M‚Å$¹¶da:“µJ©Á­¦˜<)C[1ŽEU~§ÇH¬œ”EtÔØ²¨e+Á1‡%Í“QC•üsÚ¾ålHj¬¯-VÈ¶%©kr1//“+jÒªèW‚ZÖOµñfèl›êWqa+z•²B;Cªô\'@V¦¥CSV±¬-Z÷ÔÛ8m­îÊh¡‚2Ç,ôcc•Ë»ú¤ÂsªÏ­ÑkÇ´pÅšÖÖZæ¼Zž§¬#¯ãbãÎž+U/€\0ÉÎžP¿–X_jÁU7ô²ík\0ÖŠÐÄ±ž[obS1kbfLëª‰Ê¡–à‰ƒEpÆ—3Fü¾-”K 6d¨­8ÈEŒÎhLƒÕF¸È±Çò–&£4Ò¡´c[u`gå ‹ì:K¬ÚžÕ”L[êôÕ‰ºe/’ý“Õ©›MõÖqÔ>ì/f]ë’OÎÊ.¬T)f!]éK¥q[\"Â¸ÍM²¹Z+­†Àí(g^Õ‘¨½Õ‹«ÙgÓ«!›k@©•ñæ ëcf×å=7ËLªòW)JÝfï4Ëm§$Zé¦KQe´¹/Ó…Z†@\nÑl@ÔÛ1ò-`š¤ZÙ/€ÞZ1ÛzroekVÔÔJ^®‹fìL{¼â™ŠIf½1¯þ•g{®lªªkªÈú[{ÙnHºÉ+rÂY`È²b8nMõ‹e—µµYef#½A,ZÐb[QWV5ÒÈ ÑÂ\n©I‘UíDªðµÙR\0ÙC\Z±(ÊÊ¥Õ©Ç½mÂÍõ}|Oqsò*óò+Èôm7ýíôÐ_RÏKúFU/H­*¸ÉSj¶3œÇ¥ÌÆ‰zäL;]ë¹Ø¡¬E‚)ù¥W\ZjÈZ‘b”µÉ|³$dJ\\bÎ…ÄXç\"úÖÓ’ðÝ=|‘™|>u+…èzÛé¯£‘F\\•ÏFYÎ¿?é^KÌµ¢þÛò£@h U]j½ÖÜAg5²ñTk)³Ì×ÔØ%A.-[ÏJ©æ4¦°}.Ç¨U…]9	{]VX1jù..ecÑôÔ£$ù89œ[0þM}f»,ÃÕU¤¸jK@ýŠÝ·\r)V¥‰òËg\"z1ÅQŠVÕ)\nªÃÅU·HÆµXYU¡°ê+E7|ï[)Æ[+yew½v=XÆ:°21†2²á1kÇJ’ÜU¢³l®=<Ù1åFÉúcf³Ù?£ß¯,(k«º³5©m”DK8ëcØFË›±,zl§`ò9mu˜Ô‹1®£\"âŽ¸ÃUÇ®É]È‹v/Åf	´-L®ª+J#ÎØðÃê˜Z,ºÆ•0¸¹®}Vø…î8ù¸°‹/K)t\02×sÑJ)Ã©­Wz®l	+—G¥°ï¶»VËjóæÚò÷­\0L,uw±ÑVË¬°«µ”)bÙXm³Ìˆ‹QyªÄ¸dÊH¶ÆÈU^–s[Ù7/â\Z˜KÀ¯Ùªz®wxô¿ç¾À˜²äéÙer±dª¦	ÓIi TßK•½ ÜÝaÒ¾*d‹W\'€\Zêl(×\"ã#å¢­o—‰mz+bˆâ°ehÁ×ØK;ÔÀ¤µªC\rekS_62·V,\0ÅZŸ-£?à±ÊÙi®Ò…-•äfŒul~1!_…ÙN~uÝ}¬«@™öÊ«U¾S(v&\"­A®B²°tDhÓãXT\n5a\0’Ä/¡r­°BglŠí…Ì\'Ý.ªëlºê+è=ö¶/ÉÊ×~ •ØoþXe [Ò T®Ú”¼EØ›­‘Ë7]Õ,›Q¸WLDfi¤‚d¡uÈžz±ÕÔ=«yrM‹ðFk¾2TlXÌÂV›PSò*•XÎE\rJ´ºÖBÁÕ¿ŠÊòÈ\n7a`üwè†ˆ¬Šªõ×H›2ÒY\n–+YùQXnÑINX,XONp›¼‡®Zÿ\0Mt2K%1IJgÕìÿÄ\0>\0\0\0\0!1\"AQ a#2q0B‘R¡±Áb$3@r‚ÑáðCñ4SÿÚ\0\0?ôÆ’=2½”r•\n=¬ç\\,¬i%cAºÊ„„#L,B%eCÀBÕqAaVV4ÊÆ™^Ú\0PAJ±ò¥J\0z!N3¬ë(²§L¨Ò}¦õI×*4Æ’°½”9(BL+”3éHï *\\£L.­$)ÝBÊ\nT,~Dê@Ó>¹ÓaJ•HXÒtÏ£\0‹¶Nk‘ï®é\ZAôG¢43§_ .Ó\nP!G¦z.(B´,ër‚…*}R°¡eG«\níÐì‚É1ù¯W¢T;X*u#Ö™ôO¢tÆ²£ò§\\(:Î£Ó:cÖ}ÖGªFV=R¤éu(£¬)j’ºµBdh\\p%n!S«ˆ^Û§Ð\0¿¬i*t^?à1è\'^¥5ì“šT•™[!®wXAeôÃ½Æê•fCÀ#ÝRs cÂ£ò’nòª:9D8y\\\\Á§Ý5´…:›è©p•MC˜Ù~&­Õ€¸Z;S¾=Õ(i	ËÙ‘	õH”GcV?$þLz±èÆ™P±ùÒNèN™XÒJ‹rº”£«êìbâì-úªƒ%ÙrÛ.³•ø§t}23’šßº-Ç„	>S`Ê.&\'÷My%ílxLaµ‚>‰Î˜uÀþ—.ÿ\0«Ž{ÃÑÒ¦Ø	®mß(öQ¨ôÉÖ=Ö}XYôg\\iŸIP(;©9W,£²!JÂ•aÒåR¹èi(DÕÿ\0I•N—fŸî©±¸hoÝ	ßî…6“Í6°‹Ýð1oT“ÚaT%·€)”ÙòƒõPL6d•€ö›\\0¹”ÏcÞ{&ÄbW-“§ŸyUÛDâmè€6ùú*e¹ƒÿ\06U*Ä€-ú\"I.û\'³&\0úú j4”gÓ3¤(ÒV5Ï§*uÆ™Q¤¬¨Òñ•bµ@®µq	d5ñÜìTÚËŒ.\0\\šXhýÓª¾Òùÿ\0K|vj5pqyÅÜëmh1wý¸Ri’r™DÜD’‡Î3;å€N;}#Ùs)åoOr¼»(´Z\npOº%¤´\\>©–Üá1û„Úp$vŽêƒîa?ô£»Ÿt]‡¼ÿ\0Ò‡T=½ù9ôgI×(ë#HA\\ z”>ë\n4œ)]HHÜ¡Ãð–µ²çxì¡¢L{çŸŠ›áWªâÊLm&ŽÍÝSc¹Žê¾]°LåÅgGéÿ\0Â<Tô1»\"Ü	)Ñ˜\\ƒ´ù‚ƒÞ Î7W6<«h¸¦º«Ÿ_Ùrßiû+÷v|+@ˆ\'ýH8wû\'†ô@Ù=Ò/¹Ýä*®¯mG–ŽÉÁ»‡uÕ³°ªÒÀ´/Ä˜ÅÞš`ˆQëÎ˜ôG«:ÂÊÎ¹ô’QFÐ„Q*>¨„T•Ð’ˆpð¹T\r£©Û”àâú$‡”ãNêŽðŠ4úG`‹GF“¹Cˆã[FëÜL”Î\Zˆú&QGì…<Éÿ\0)¥’ÂfsÞ*¹…§¥ùj½Ö£i\nÇ(VT®l…J°ç\0<”×òœ7\0·ÙÛÆÇ¸FwÓmBÙÎì}Ó¸ŽmBÎ[™RÊŒÅ5°+OÁìUFü2áP;äwøL¨×S{N£qpª²¤Ÿéý×6œ¨S©SùT!Œ¬¬,z¤Êêô\r	+\Z5”ï‡*Ìý“LqeÂÂ`ÜyF ŸÙ\n,™î2Je*o}Gô°OÕ\ZÕª­úÝ\n$Éû*õ]q6Óã©ßEÄñUD°Ò¤6osõ+øséòÿ\0Äs{¼?:…70U“s\ZL¹‰Ïµï\0v)´©Þ°ŸdæS‘õUßBŸL	y÷ð¸þ„oçÓ4ñÓÌÊæ³¢¡s‡ÏLºÑ÷Ýs›sý; Ï˜Èî›Ãñ#˜Ao!;þ4î]Bþ³N„×‚Ç¶æœ8”H™‘«RïþP`ÿ\0¨\'²ƒj°—GÌPl÷ŽêTú\0üÌéÔ²±®uM‡LhâœQPœŠ;!\nP@(Wg	µœCÇÂ`€ƒ2#&\Z¬`Ì¸§7ø}YÜˆLáøsKAìª8‘ØšÂÒ´l²÷Ò·É’¸š¼@öSM„ÿ\04#F•¤}‘p¸NvvC{/÷q\\[8’þK]Nfæ±4:ó\röO¯Ä¶¥9ù†?dïá×T—\0ïžþBeQ0ì‚!9¼=\nÒLKSêº£¤ŒêumÞF!¤´ŽËñO#ÚBs¸fÞ …cmü¹Ò5FWWägÑ(ì¡\0€ÒN™•\ZZ‚\0®¤âgÝ5ÜKZ)ƒºh¥Ì?dî Q¢ÐeÝED‹ˆ²\rùÎ#tznœì;¯Å»¯ì¢aª¥3ÔáÊqMñ)£ÿ\0Ž~Ê•l†Áö\\++UÍq™T87K@ŽÄ\"vkj\r¼ ß”B«Kƒ-{E¯\"\nü7~Îy»ì¤Llp™Ê5GÌñ?Õ\ZÔÝPâýnagL(ü‰:çÑ•ŸDgò\'P†žËÙB•Ý¦4ÊŒxJ¯?Í²}G¶ƒ3¢ç—žÂªïÓ(þ =¤¦]U¸TéôÑc[î£rƒðšÁÔUóT\0ª/ýaxB ê`!2µ>’eT§s\\\"<)Ø‘÷OráÜ…<+è˜ ‹€#b…:Miì ª¼]VÐ¦.œ«Øý,7ƒáÃßÑ•\ZTzs>œë?›:\n\n….E«*7RDy¦ÆÆU\nNƒNâRšÀ	´å5€\r‡²“Œ€Œc2Ÿÿ\0ôD7ºü-àb¿DÔÚ¥§ D¦Š¡\'q£–çäyîƒ[ò¹ßÕPâ¾f€ï)­í–aßÝ\nô\\ÓßgxUiñÏ¢á–”Þƒç½³QýÏ…#Sùò%G¢\\±¬\'Y?‘\nCI]Ôn²§¹yVl‹\'tÚ•Ú`!H5‚S~bâè?o\Zdä”Ð2SO	P¾mÚi!ôkKOgà„i‘N{*Õ]-kFoqÂ‡U{Ýò˜•,Á ïª}\'É4÷—Hú÷G7´ ï|l›_ø¨¬sLŒJ£BŸ!•Li+\ZJÈT©Vé•Ô°² ë•3ù7/…\nírÈB©Íñá\0r;+3¿öNuJ¦îÍ€RÁ’Ÿdw%7uÌ¤öTù=²~‰ôëT²,œçdKÕn ‚áðZeÁPkË1³‘¤@œvW‰nþ*’;…cgÉW<	Ml²ÿ\0zÑ>VTz<i•:Ê3®V’§N¥Ö5ÊŸD¨ôaF˜Ò}J4ŸL _¹\'ùBŽZ>è5†Ly\n¥+¨ÚÒ2Z¼u*M6ŠujÇÛ²§Ã·¡ÀÕìß2µz[M³\'ºeJROøMts*:ÒroÊ@Ó)–»ÿ\0¥J›pñˆ*“Í—‚Ó·š×oƒ¡\\ž Õi€H\\ê`´Êü4cç™J˜#xQü\'Óe’Odg¨\0}Ò}9ôIP°±§R—(]K«Ó+\n4F…\ZJ•áaJ*Æ¡Ç&¡C-s½Ï”+RöB©.Þ6_‚ªÖÆø_…¤úÔÀ¼ˆF…ÄCˆ\'ú\"8ÇAé{\'êU]U¶nJ|l´á‘!TâøƒgËðJcè6žîýÕ´\'¸jmJÌÚ¹®µ¤«\0ò›Sƒ—9Í·õ7tÆ™¦ûÇ“¾¸Ò4ÊÎ“¬ë•%B…:ŠÌ¬hQ3¬…¸\ZŸ@#HÖU¨s›uÎ$î{&\n#«9ªŸT½ãdÖ0‚$ àøM«knË$/d¬l Ì\'mBm`	õ\\d®[mn0œKB²…ƒæsF­F˜˜B•G»ùŒè]B[uÄÔâL2Z;ú3Húú3è1¤…•*Î³ß\\ë*T•ŸÊíèÎ˜Ó*F\\À¸Gþ…L’êN‰ì¸Ê‹‚â©ïHªù˜BªÇÝÊ¯y’¡¾É½‘-Ä!EÄC‚ë¹­2šæÝì­qÂŒ(2¹-\Zî‹AwÕU$gÝ\nÕ\0¦ý—TÂ÷[ úpPh5)†y!q\"ßm”hJÏ é#N!JÏ¦u…>˜YXÓ:åAR‡¨®KùnØìØè¸T^d´.·ÍL.ŸËI©”‡K@S„47›ÉO)Së.1‚p®ì¯+G-Ã-îšþÐª×oÀ¬ß$;º«Àñ<Ž%¦›ûNÅ\0ã (r\"av*@Ò\ZkS,pÝqë[Bœ‡nQ¢ëd€†¸P±¤)YRu“¤¹G¯+:uj4ÊÎ“¦z\rP96½0ZP=ÐÖu*q­šëiŸœ÷*Ÿ¶ŸThrÊÌŽË\Z3øƒ)]‡6aWá(òêe½ö(ÒBêÊ1§âxr\"~ð	P°“Q»‰Üi\Z{ú2¥cY×:çN­cYôÉÓ«Ñ%vQêí¥Nà°¦ñÚë²€Ü©ùSÎêÑèÊ…êŸüMü/ÐÃ±Aí½„9§¸P Âqv¨ðÏå@ˆî§7uåmèž\ZA\rŽØV¬¨R‰DèAÒT,é\ZJÆTz2¥B#Õ:aK´Â€£Õ3¤*Ü;¥®*·TSp’‰l‘éÂ•ÙZeRþ3Bö;—Ä´t»ÏÕùðz…”ÏÐ<e¥sƒ+ÿ\0üG¸m¥\Z¬kÝIÔâfŸ!˜÷D9`(Üi§rnhdÊ(•*Bò€R¡§HRèR­XÒF±é£1 j)©gLk#XYÒ£x¦òÀ?TÖÑ¿•~ß“wmÔYVÔMp÷V`ì§v*Î²¡\nÜÃ¦#·ekˆºáåNžTi%t!eMQ¦È§(ÒVVTé\Z\r2²¡gHS¤#BTeeAB2ƒ\'oîM® ´xA¢£Æ d«Þ³nTº6ýÑ\09I±YY¡²£Ñ…wñ$}éUq9¾eB•••+Îx\nWT¨R§S¤Œî€\n× T£*„¹F¶\"÷(\n4Æ’¥	:wRtŽ!’$NÈ~¾‰(7¥^€0tÕd¨k”4)]ML·Â Ã”)XX×¤©àªÿ\0…Zãq$(0‚:Â¤áM-AµA¦¡¬ €bå.R²³¬.Ò;\"QDea\\u,¨Ò7U?\nPë‰;(„ï•\rWd¦°ÚÜ¹ZÉ;Âµ²®0¦ÿ\0eÒOº6aKšïx+ºÍ§XPV4ž°Âsj8‚FUÎ“¿ •*A¸)¤CTºT)\nB{J3ºÂÎ¤+Ô\"FQGmE¨=Ó:¤èBÆ<CKÉSØôw„Æe\\d \rÐ}{dË°Ú¤žÊ(ªé”6@ˆY#ºî¤1¼O¦ê«œIÈò³\n5„\n•*Õ°v†\n\'B±¨( ®¤!és¬,«´’‚€¥uoÑì»,,©:aGT#T ~ˆ0CQÙZÐÑ’T\0†|+‘¸ë©eBî}	áíI=Ó§-éè=´2‰:aIV…\nvÐ…*tÇ£?ðSé\Z€ð®\0i…÷N&J;B²ž‹p¬ÇîºîîŽ}²®ýJÇBºgv•åbtƒõXX*úa½ÁDî³§¶’‡…B \"‰GÆ‘Ù{,~\\¡¬¡éÆ³èÇ¢Öå\\ÙR³*Ñ„÷ž£@†„’„ 2ºeZ%L•hŽå\0cÙK•Â}Ðç{£‡vœ»±ôÂÂ•‚ƒž}#@†™ÖPñ Ði:Æ™õJ!O¦*p¯\0\r; ][ìÙR%l­cgr¥¡N<)¹e\\ðºÜ<)Ê-ªåp¹u‚·Ô·ß¾Ÿ•Ôs¦}ÖtÇ¦P:Æƒ\\údi\ZÆ°§H\n\"VWVÊ6@	r%Ý!=ÝÉ)×Ê=óì­0¥òIŸu!ÝDŸ*k\nÖÜ€$Ï²ÛÜ«œJk–G²êc;ÿ\0u\'\nÚQågþ>ˆD:…#HôÎ§Ñ(é\nB…ŸÈvV~X]PÝ1°XÙ9¯°Œá\\î[„9\0Óþœ.™ò¾(=÷”,:ß+™\0ö$©·þemh;8)!\\ƒ„,w\ZÁàêçgP¥¥BÂ\n*B^T¬(P¥cHGHS …aÂ/à.è“`ÊWL¨ÊkÛ«±DäÄ¢\\\Z6|…ðÜ;‡\"D7r¹OSD<”Ê¬ê=ATu\"z›•N«q¿p£Ô™]Iõ8qiÛ²…*Q„ePt(Æ³ë+Ê\ZeR!aeB%Ô¬¬)Ð©Ó*4¡I„CPyƒ„qŒyV¬J\nTµb\ný´¶°gì€6ÏÕX;\'S®ï+–a¿1Y’¥¢$ÚQ¸ù)Î7\rÀ‰DîaÃº$áFë2‡)Xó\ZgLép²¥gÓI“èÂÌzé*—\ZcHô¥ZåÌÙT/›Aë–À4i€¥ð§>êB²Š*Ú´Þ¾ýÊµ‚{9s*ácÜà ›;&²œ4fÛ+]±#ukH; å	¼³\'8˜të\ZcL¨Æ˜SêÂ\0!¦VtJ2ˆXôÈÔ+Š´)Ó*B-FVÅZìÊ³?Ë‰­Ûä¡ƒ%X!CÁPÉD³ÝHÎêpr£î¾¼øRØìue9ÅK‹då\\P+såa1\ZD©r~t	S¤éÙBÎ±¤)Q¤¨D7Bæ¢Å”KA]¤	R¥e@S§e%ZQ:a•ÙJÆWe…Õ”)€ÖÓ\n½n‘¢†‰(B‰BÖ®ŸusJ#÷RØp˜[ßB»µÌþÈ²[Ø¨ynÄ\"pQPB†Œi+	­2¿J¶¡Fäl\\ÇÁPÄAP\'L\"…e@Ó\Z|5……t®èLhe@‘¦2Œ©Q²;!Bê”ËÊÊB”\0Mî„.œ#)Û+Q‘;.{¡sÿ\0Ý*L¨*Ó\nç…i…s¤l¼l¿[öV±u{)$„þèZÕsð=–eŸb¤ ÆÁßÙ•Ü¦º’å×…Ò‹ÅÊ0€+º=ZR¤(R0‹š‰d£Ù8.Ê!d çB·¬Î‚ÙPzJÇºØ¡7+Ênúu9D…åÂ—gdú•¥» >t- +NWu™Eâ5L?TÆ00l?ª†ŽÊ@C‘‘;£p„WL¡¹Ù3pbUJu›MÍçÎŸ|+á@Ê€–ç·uúwg=»¢÷l…®R\n·ˆ”j¸4&Ñ ¯yN¼ÐaF%*r±…r°,JÊ’‹P•C™iRpº¥E•VeKnRÔ]…™@¢ó¾ÊCá6ßt\\U¢SÞœBŒ!¬*ã\ZJ[•hÂ”Z vWi	íp aCÜ-d7Wý\r—.ß;®`¸þ¢¡CPï²cš]‚¯£Ê~N×d6ýžå²w*•Óí¥´Ý3\nS\02à}É…\"Bì‹	=—\\¦ÓmÈÕl+rS\\àîÉ® vM/…h„\0N#ÙHÊêSUJ™%\\äÒSŒBt¢î¯S²€¶4ï•%r®c€NùVI\nÍÐ-ˆ$&NK“z!	$.™Pò QÔšèV…Ýe\"6L\"_ÙQt…{g²\0B³ì„NGôQJ×LöB0ºAE:d+©ôô•`ùšas@V°ƒV2±ùŠå3æÁ)µ[#è€d\"Y+\n)‚S…u8+–®uˆÓ¥\0(d•ky“(%BèÇe[Â\0&†·ÝZÑî¬mËºc\\ý—\\öOuÅ¹ji|öÙ4ŸðšÎ¡²mBA (M!rœG”bG}Ñå™Ê&æ¢Ò\'CyVA_)ì Ìn Îá6¡h+†;\'>¤BiÜC“”‘;lœót\"$ÑhÝÏU3S^ïš™ùZÛ(Â{«\0Ñ)ÖÐ¹<Hn×vAîßeá™ò¾á&ŸÍà÷W:Z0q\n§k\\ÉÁy@T”w”FJ/Í„kÖ-Ý£Âm:a \'\r·Uj´ÝÙC2”\Zðuh”\r0{®]K—:˜!Üè°ZrPú®€¡¿U\"ôá2*Õ†Ù]öDôöW˜§9ís|åE6ÇdòÙÝra îS˜÷ùŽ,fw_@•Õ™WÖ²è)´ÛåM‡rw…cûQc#öF˜têi$Âcæñ÷V8Óp‹Ä7ê&\0ën€¨A_¤©eÍ\'!C¾X\0 Ã0`es*‰NsD0P}K\0ÈB›:³ì¢`e	ŽåUáM„n0¬ú•Ãè¹ ŠŽ´¨¾€4Ýr®êTÛ-kA•Ì[*wÚÐ†@Êu8<ˆhéÜ=auÇ˜w)Ð-ó(UrÌ‚yiý(Tæ2z‘³‡•±¼&³º3åuÐìÿ\0á1„º¥Rÿ\0\rjøD5ka1¦ž:„×U$ôVÑ2¯ƒ=ÔÕÊ2#do\rWÓ2‘i9•p.FÞ¯\n`€‹X\nïÙ¦8a1•,£dkÕ>°ƒgÝu@(i›dàyŽ®È—‰Àžë–*½¢$esi½Ù\'úæÞâë³7ÎSª¥4„´ƒtJßóLìšZk;íì¾!cLå\ne´ÁÄ)wAìœ—v	õ.m²ºÃOI\nç]6ö@ƒp\rë(¹ÄÎ6Â/ü@”ÚõÝL45Ø3å^[Œ…Ñ‚îƒxfÎHÂ½£§d&£KˆÀWWWOÝ\nuL÷B¥Gòã£9=–ò€ÁTâö» í6‹B‡òüårê\n4÷#öF‡9…¬o,d÷Må	7c&WÃ?ýˆ2£|—Qí§/˜î¯˜\'Öª×ºœG¸)¼_ðŒ?výQŠlªzÉ#(Râ!ÅþïæpO²òè¨<÷Cø_ñ3Eÿ\0þ¿×J?K»…Ì ×CHTÝW×í’˜Ì0€§œøTª4“=;’ƒj¾µWCÉµ)º3p„Ê—™Àé_‡y\'í)Ü©Gr‹D©iò­­vëšˆÂê´üÉÎ‚ã]L¹Ø„Æ¶<à$?vD+©÷€º›LÛ…Ë¸dcì0òžé·7¹&¥¤xC”šõ{é”ßT<H)‚ç2Hi¹tÜ:\n/hŒâPª^`d´™Û!œÖˆ D±Ì\'²<‹3¾1Žo˜BeùÉ-û¢ö2f!sÊ„D4’Q\reF‰;Ù\\yŽ;ÔÜ†™pBØû«ˆrmºï”î¬¬@ÙÂà®»#ÐË-©œŸ	´ßÎº^šîµO×Ýu=¢Ò\0•4é²q=×/\'#*ò÷5Å¶t©‡Ôy€a	¼b?tâÙcêN¨àÃýwA –Ža‚B©Fÿ\0…6˜.˜)}®ùN2¾|t´ÈÆéŸŠk\\Ðg¿…Ô\0?)™=Óë¹\rÃE°A¬´îau<=°;÷B³¹cbèðôž-hUEºãw3‹x¾½!=Yƒå\ZõÕú G¨š´ÛW	ú\"ê•HÜÈùGtÚ­¡™4ªÀžÊÊ•¸f¿s1å7‚à)½%õ^\\ï¢w]ŒiÃŒHÊ}Ó¤×†‘$É_ˆ®ÁÆ.GŽ«t†Ó¥°÷]%¶æUY/\"Ö˜(Ñ©LI9wÖVÑ:É	Ö–8‹·2¥wFa±¶}ÔÒ.ØŸýÿ\0	®!ÂeØÉpe;•?ÌÒ‰±½9tŸ¢¹€ì\"W*£`DÆêÍ-‘‘2ƒ#2Ê›Â2Ã3OÀB¥3\r&þQi8ìœËêS\"bà‰ÈoSšRúÜ­ø`œÿ\0Oìºz[—™¸NgðL¾<B4éÙ¼4eQ²]œt¯Ã†Ôws$Ÿ¢±ïqíòýw)¥îcwÚ<¡J‹\\NÃ¿”Êƒ3{vÝ8Ôu7ü§0Zî>¨5­\r3„êÉÚé\\ËCD@WÓƒÝ?â=àNè×Á€åk^jôìU:†gýD*7‰½Ä G’Ö\0%©¦£œM±—~û\'º“ˆnÁ*çR\r0Òè(²…Cä¦ž“ú{+xš‘%‡hîáÝ-Ûßãµîa1G”)–KJDµãÚáÙT£Ä>£›-“±O	k§Èïì¢³Kšoî‹j‰®”Ú¹iß*óq§Ì\r9|¨¾ÒÐm#(‡šDÜ÷§ÚZfbí2ŒCœ‰Ý9ìæ]Ø\"<ÖŠ¤—6U^&‹ƒ-½¥¶¹®*·ðÊ.üK]lØõú*®ã\ZÊnÎhþÊ*EµFùÝSaë¨1‡þ¢Âÿ\0äU\ruFþâ~#y´_gÛÊ¥JŸ2/kAûžÈž­¢%Îê7nžÊ€ƒi9*þ!ìy†±Áß`¿V­.Æúª4Á«&f=Ó«¹ùnÃm`]qkS¸zÄÔ\"C­w…uhÜºåTk[€¼v•Ì£‘ c¢›;–ªl›MÎhÝ9íp’ €OÓ²nwŒ5y>ÈíkÛè¢ HÇ²\\æ°Z.’<&Ã˜VºÓ¸ÿ\0²å†´ùB•êpÂº7Æ?m•õƒ6…7¹)ÂMÂ#d×@0>«á™J!­¨ÝÌ&;Šm®Þ[ûôE¼;_ï‰ú¦P ú¯C@˜LhcÞ:Ÿ¢cÉ&RZcá™þð¥—;aÙrêË‡m¾ÊÎ¸€{&’\"`î‹_Œ\"êOæƒ»Ø§;šæ?\rŒFé×»˜Aê”)ð÷ÚJ,å9­æºç4±à6ÑÒ¹Å¹aÁKK-?²qcG$8;«\rŸèšàZñk]¿b›XE\'Ú;\'´@\'\rés{ã`{‰4ÚA>e6—wÎp˜Yl‡ýÍF±£\0Ü©q\r—tÕp#p€¥·=£Sk±®}8wyeR¢^æËWÿ\0á\Zõ%ä[ò•ñ™TC{\rÐüaàoîP¡UÂ£šL`x•ø“Êù`IÂº¥G†¸šm¶«@¢r\\z…S‰àæó[6cqî˜H¾a°\'Ø&Ôujëæº×;™V¼½¦Âø$c²¢8ÁÄ¸Õ-Áÿ\0Ñ µÁì5êl¢²œZð\né©O˜$–Û»X;#ÄWclq`9r}Î¬ü^éÏ`¹õFÃ çýP®áŸM¸¦çxÿ\0ÜªTh‘Mæ´I&gÝ³4à»´ªuà~s˜ì‰}À,Ûè‹ªÃC¾¤a7­—ŒÊ¤Œµ±˜M«MÐa·¨c*2miœ¯÷h‚{vOŠ`4ççqq’F=ÓAhtA.=×é¸Ü ÿ\0Ì¸—Òk¥¶Ö’á¹n0¿Ä)îöUŒ©PL5°ß©_\0¾Ä•aÛßcýk.©ŸÊç\n âq(»ˆvÐÓ\n\\ÖìI3î…w½•5Ñ\nÛGÙ#¨™ú&Ôó.`’¹¢Ûg#ïÙu5Ì-k—Ê{9LfÀÝ;­ùÌ@EÜAiÃ»ÇÑ8aÀ÷Ù2•’1M¦ÚŒi’ìýQ¤×bSC~i?Dêœ0\r\'+\rnA2p¤\"˜ræ0¸ËHìªQg¤)õ‰>6Â-iÈSoéì¹$cè€Á9)¦–ãdö±lSÎä/Ã=³S©Î±³ÝMW1Û·tê `Ç€áo‰9+›P\0ø=“èUè&n¡D†µ——;*8Æ¸4íŸªw÷?¬ 3eJ1–øÉAîíJÚä‰hF•{ÃL<Ë§²sømàÊd‰öÊu8æ>/8\nŸKØ|îíh’K6•Ë\"Ð\\á¸L5Y&$#{œGT\'T²›hÅ6üÅ\n—Ä]ú}þ‰Î p>BeK·#d0`1³[Ìy†O…N!î\r;„ðÑ˜h›œ¹•ðïôÏ²“Ý1ˆj¬¦Ow+èUipöžËóÒç8Ü×lÁÂ{H¦`äçod>)´—4‚#˜Ü”+±®›ymÄwð…\n# Ÿ˜	–0fns~ÈÖkØ÷aÎ€}¼ÿ\0U<cš†‹Iûÿ\0öc[Ûº¥“¼ìqéþ‰ÔÅCúf!:]vdî|!wÍ>¡©û\'Õm\"\r€¿²“xÆV»\"æt2¡%Iä×8ÙƒþSšYm®±™ ^$¦<“9F-&4ý»©–*­›Ne8¸xˆPåxñ„)7x\0wî™L‚ÖæwDCZS­uß)É(9Œ\0Ä©£êà#‘…L´¹ÛÌ´x*k‰’2<¢Þ5¾†ý;¢÷“lx(?|÷QÄ‡¼0	L0w)¡hÁÝ0¶•N™ð¿ÚæÎnûžÈ˜aqÌgº{\0h¨v•FÍ3ŒDÆÈU¨\\+q,È/v%s;ÿ\0å<ÔÁØÁ‹L„Þ£›Ýå¶2Ð0`&¸Äî\"Pm6Rþ_P²^á©¸s\ZñÔØ€UÍ-ƒ\\Ð\"mJo6Ë¥iÒm‰©Å¡±•{v-\n°ù‡c\núb—T‡Oº©i;„XÒZÝÅ>ØŽ»¡9°íÁU¨^ÝÀîNrÕñ\rhÎÞ¬àé1¼ì®=,–·2>‹”çÕ{mnàžä¨:°cX@ó)´Y`3Ñh æJ3ìQÀ¨`ªÙt„)ªµ°;«\\èÙHöOñ…#dp®i±TwV¾\nÂÉuM¹ô‹§º\rÃFÝÓ¤fANìp€ââšò-Ø Kr¹B<Ê?†`aÀa:ÌÌ©¤;+ÀöRÐZcÊ½™Ni#ùNÃ’³\nót”ŽÊ\\\n2X\0ÝÃ»«ªÉ@Öý¶@Ô¼‚.“Ø¡Éu80*Øù6Aœy\0áÁõ60Ÿs_ObŸJ¹)Ïk°0ŸB¬ËÜ®$v!To\ZØi±£>\npeÌl„ÖÔƒÖäRàÛZ¼;0™ËNesx6¿Æê›iˆÓóÿ\0ÍÝ\Z•º	µ£\'Ý4På‡KÚd”QÒ	–Ü©ÖoÄ¹Žlá9”ÍÐ\'!Xw²^ÖÁNü0¹¿EbñºâøŠmˆ`ÉR\0Òý·D¦+\0P¯\'1Î»:XÂ{¢ð.V<\0¡C†Vne<ì¯eÅZô2ñ¹ì®lkbSKU´Å¡\\É8(Ûœ¦Àp¤¬•¢²a02!w•Õr(FÙOæa´Jø¹@Ÿ¢k@„`²¸\'9Ä´a4Øç66°“„ÚQulv_ÈÉU©¹ÁÆæ’žÂÆÎÝÑÌ„O›|/ŽïåT©¾Öˆ\'uÌ|æhluFá!Œûè°xË±ÐB-µì\\:‚§qs„w_¤.i¦èùpT“L‚/àÎv+y8!Öç@î©\nmî\":wR~`©2Qs„ !éÐ ±+˜¹MWåNtYºÍÅ\\äP„J“$Ò¥©´ÝfVd(Ó\n\\…0Eõmìº~è|ÇtUÊÒ¦	PÈV‚ìŠ5©rÈ\\š²	@UÈAÌÂø¥¨=ÁÀÂm6Èîºp®}äàŒ¦Õ`pÝª£_¿do\0Ê#÷NxpÝõ<›šphë‚¡„¸¦Ì¹–•/¸å8S0ÜMçp¡ÑB‰Ÿ|&´ß&Jò¥BÊÆ¤é!Z¥Z*r+²*P0¥\0«\"VˆW<B±°¤Â•-\nå\"TE«*B±HEÇ\n\nöÊåµg§dÙV;\nèr-Â¾[ge&\"aCí»tæCö(ÔwFoÌº±„ë¡Kz‘ùpfÒyî‹aM(˜Âêž©•#	Ï2ã€‰§åJî¡IXÖ˜XYX]jÖ«”é•%F›et(Ò\\€\ZBÆÔ©z+¥u•s•­ÙS2Ž(8l‚¸åCp¥A…wD¶T»9S^L+VTe_Ô¡ˆ¶·Ý\n”¶@RRÆT>!ZWÿÄ\0&\0\0\0\0\0\0\0!1AQaq‘¡±ÁÑðáñÿÚ\0\0?\n>¥VJz—¼%¨ˆZfY%ƒæ©•AÒ\\ðÇA¿Â{ÎBB>¢Ð€3•ä•sMUÀ¤%ŽQ}ÊM>çÙ\0Çs‘v\Z¡þ08‚·±Õ–Z˜ô—#¨¨j\n`%õ\0pˆ!Ô`îŠB‰PA‘Lœ÷ÝÆ78Uõ,]Áp0Râ£‰Æ%*\"Z¨µ§pS;™‡u	ž 75Ž—Rî“ s>aDÉadM‰Ç)Á©µþ@‡HKÌ!²!6¡¥T´5\n‹‘œl;\Zâ)pÉjs7ÜdnvRäí5æuÍK»†4„#äK<¡i,á\\h‚ê\nà›@È:!9ÜG‰DÎšþ¨5ä%„Œ B2PäíÀW˜k\ZÈŒ+!õ.—S¢R©æ•\"zYÅŽ\"¯Rè+÷*	eLu8…ß‰b¶YÉ2É°˜‰cH\\ñ\n“\"x˜ÉeÀYšÇD\r‰WçøE½â8q(2UJŽöq‰DOHŠ›µ<Â¡}¡—\0P±×2 ZZîãÆP‰|@»©C	?Ç ÑÄµÖlvKH‰p$Hå°\0Êi\Z…D>é!%7ÜÑ9Äº€5¢Š“©kœsßøWÃX,Ø…â7‚6dª¥d$A`áÄ\0\"ÇL•Fó…â	fE9ÿ\0\0;sž³DpâZâ\0AÈ¬T*¾¥\\• ^çjQÄ=‰¨R…ÖU\ZŠõ-Ô”c6É{ÄåMˆ_ÁÂ§8(ŠSwµÇð*¦l˜üÜ¼ç™Æ™WY\0±`	3!ˆ©døŒâ§ð1¶¥k%M¤1âÓ+‘ÈrˆÀÅ	Û(qˆc\0Ë^C˜’¯ˆ°Š\Zà…Ü JB\\¢U²×¤>¥â®§¦l\"à<•¹ÈþNn ‡3œ¡°\ZJŽ-Kh©â*mÌ‚Ã¼³Û.ºL+˜ÿ\0qT1’Z{˜ÆvK.:}KFbÔ3S%O2Ï¤AÏ2„¤.\0ã!4/¨]Y<¦2ë…1*¥ö™ÄQÜƒuŠ1Oé1æîql¡†¾e×`CR[É.i‰Ôu±þ®¯‰f/\nîn\0]x|CE¦tù–+Â\0î<pxúŽ¡ÈÈgŸâU•¨¼…_™Â\\Ñî<Mî¦×VÆìª½NB0Æ·pÙ¾H™d»æQ\nñés9Ó2‡G¢ÉI.mŒ8-–îkÏqà0\\²ËÉÊTjÖ¡%ìª+’ã¬ÙI¶˜*Pƒî™P«\"ÎeâÅ!J¼SPÀ:ôaÌÍÃÈÉ¦«ºÿ\0¼Ki<º×øƒ&Í¯¤‚)pS`ýÍP°¼¿K‚òKTËH€¢‹’Ž²~¯ˆ¥Â¶þ]D%¨ó×ÜCr\"œ§D­±qŒ×É©¼hDƒsN%Ž¢×ñºï¨4Ä=@º…¯àÆV@¢à¦ói.ÒmQ\\;q¨^G~£Š®w\\[«*Ë»‰Œ£áµx€…&`Îï0f\'TNäÔ9ˆP2[Ìâ5áSŒ–yæ?CÌ{\'ª‰\nü9,=2áÚ-ÿ\0©Iyå†|w8¹øYRêTr«>æfÚÝ~çéË²ñ·Ñ]øgKF4¡…œ?ÒTÈåû›•™Rõ%?1ðJÑ~¥R³¾ß¿õ*l74²Ï$qÜb£™àŒóÍFc`¬c¤Ã˜6ËªJrö1ŠÎF”Ó`¾bÜ1)&|cOà„‹q)¨y–B)šŽÈƒ\nç3>%ÊgÍG9¥’¥ªÖ:—Ô@RÆ¯qƒk–\nõ…ÉÔ.ÛxEß«_tTvÚÏ¯ÔUÛL˜5=+eYüÛ_£cÊ\\“ÅïÄàŽ/ö=C+ÿ\0ˆ!lõaj\"k«Á\"Ü¾<1€”ŸB\"ÆÍ.!U]{Œ@#odÌSÛ—ÿ\0%8ƒ¢×é–jàµ?ÌÊ¾þÓ¾û‰PøŽ¹^=+³,äg˜9 =EÙÆ¹¦oñ§æpœæRÖ4€UË-\n¼G`æ(ä\'s@/aŸå\nªœv<Ü•‰C\nÄ»µJr¨9n3rêŸ˜ÎÆ\\jí‰NšZ»ˆ°Ü±øƒ|C\\‹yx•nÿ\0ç%á6üþÆå”Å¿7³!#Îü±Wi¬T¿ÄL´².Ü¦­(ið»~XD¡	=¯ø¨BÈ¦í¯‰/À+}—mº Thø–é¤)öÍÂ‘«ñø;?ê6=÷ÌL+Gáø%€Sº~#(umþÏ$8Z}¢¢œª‚Á,ítà}CqÀ\n€Ò>l>âH{±p®<w60:€\Z©{,Â[1õ+ÉA—S³_•\Z\'0‚›.bä÷\n\\¡^ã/)îyÑ‰cw‘\Z”¹„ªá¢E¥¸õÎD¿²ÆB6ìTåÄ 4”­1m¬‹u€ÞùcÉÀCJWD;šªÿ\0|¢ÇÀå;‰òª>5–Ü—OÜà˜r}ÜHÜ0Õ¬ªvù€ªzl}@x~êÿ\0PÙ­ò}ÍGKæd‰B\\!­×2‘®±_¹ ‚ò»š×Ï˜J¼y\\ÇcEåJ£BÛëÕqP0ÁÒ·ÒìŒ\Z@ÓéÜ¹^âê÷6Ï¸¸¦\nKãïn=¢òíEžNŸ¦XÅ&WjYÄ,ÎÉv¦U-Â%`¸á5ñŒ¡ì½UKvà‰ÆPç9Èo˜K@!|ª‰¬G¨Õ‹;•“ÎÉf\"†¢jÇ¹ó$kjUÁ”nãRá¾¢ÝÉDC–ßpqhÐ&«	Ê}½5ê_ÃüFaº£Èøøå\Z30ö×D/ªB¨>aæØ\'ûN/K`ù„¯Áa£‚ª”uõK]7KÙâ8°Ï›ÄhÕÑî%\n×‚\nä²ÇbP¡Î·Þu+—Øß3þ_ù	[ÛOuÔ¾E<œüÿ\0¸|ß­\"9*ãáoH\ZêÕŸ‰ëâ_:*ôg‘Ž•z)þIjD½%cµîå*;—¹Röaq)pS±9Ä!ÈrP\nÉh¢r%.!x8ÁØÖœŽ•D«k¸ä÷\"\rÊbÖe‘Öê1‚\n\0š-Ë×fÁÜ`×Ë\rVÛ²\rüB­ƒxlA\ngwÄÁïÞA.G–/ÏÛÐG6o,Ce”(@UË8/À­Bƒñrø× qöÔÍû[òpQ(Y\'‡x~&Î\rzBX¸Q‰Ýa…=QcÙ¿ù÷)åùÐ?ê6K-»zî\n›‡²€øØFœÚþÜ@‡n¬{5ÓJ×Ê}Tn4žŒ%ü0p×uÀöyŒ	ÊOgOÌ+EêŸš¾nžÏ>Èƒ\"‹f˜†È¥(tòG©(m\n€$©.Ý”¥¾¢Ö¥y¨A/áâWÒ;{*0Ñ-¤bÔ;þQ[:ÄqŒ·.ã—PmB Þ9-š,­–Z ƒ\"’Ì•Lâs<M¼¬·fB°F’ãN#2D±EÑuÃò‡SW½ðE±°‚ÉHC•X¢Œ+äõ]FÅà,¥˜t\Z~j¢\Zzv6rHö¨~üN;¯Ú¬0‹ ŽDÐúŠ7\n”¼MÊÔÊÑ](ÃçŸÜ?dê¨‹66ºR”Á§ƒ.÷ U|0U¬½ùóî#3ÍWþÂžm;u‰ýJ\Z;¿‘é–cihóYû¨ÄÙ÷1ÃŽz ÍŠ^M—*$\'Ä­qµ0Çæ/˜°ß+øjæhÙî–ÓÍÎðP#ƒpÚ$AÞ%-T¢¼DUÃª—áÄìÈ¸¹a)­Eç–â‹‰³D:!. e§ˆm›§æ!†Pv¢ÆÜ²­õÚrRà{2áõ^’Ï+ª@éŸ<Ç{bµŒ¿ó.P)gÈøº	CA/>c†Ž¬H	@8ÄjçcVõ<Mm³ß5¢º Ë„¹Oê-r‰ó|Ô»ÿ\0ö—/ý:Sƒð’âþÏþÀÙT¯ý†®Ž£Ãây”ŸŒpóirƒ\'È‡¨Nº\': _(Ílçcæ\'¨L÷œBeF”ˆ¿ED­$£«î;†ó%UH´\\jOtß¨ªB ˜Tì¨™êT‰x/ê,9\\~-9ôÌÊd@Û\0]Ü°ØÂ˜-X«­ˆš‡T¢û‚\nU¯2Úr«Ì\0«£‘nòA|8Qù•\0=µÔõƒb‹ƒí§ˆê±<O\0´±t.¢-ÅÅ˜ñ(ã-·D0…èàLýB*ÒmæZ€ì÷r)o^	d‰Qðñ§åÅ_ÝB8´•FÜÓXñØ)þ%õLyœýMR’¤ü+V<\'‡¨ÊÅÌ/™p{ˆ§Ô¥ù„“‰—?Åd!æ|K;æpJ¨0â+¦9Q¹rŸqMy€¹ø\'…±»éS`ÈZ-\'9iÚþ¡¶–<Ä¦\ZW+	á¥o˜ùùÒìò6À†œ\n¥Gß–óØWüJ‹eÑx÷ò-ºaqV{Ä¨že¾ÙÍ›Wu‘¨P¬¿Ô]Ù‹z‚–±JáþáÑj98—ðLß\0¦qAtôÄ‘w¡\Z“ÜŠâÁAÏ¸®«®\nèp9é¹²^ìâPæ=Sl¶ 8”]T©fµ„Ñ’¤½ç\"¶ÖW#OP$¤ìÀ±¥\\å‚VÎÂ1´©¨Å½ÎYbœ&]%ýž`Zê]÷P¿;\0];Ùîc*ÓSds.	“\'¤Yo¦Ä6#¹hE^c‡°à»õ]j¯ñ—ÄÎu ñ\0—ìâ/a©ëñ)oGPæLW\"0\0º†¥\nŒß-TþÀqi£÷sŸl¤Ò”ç–à5 8?´äéZZ­%ÙäeK.-¡èöB\0j­\0š¼Ï*Z’2Ax‚›(´ó0{ek.ÉSÜ½ÙŒ0-bß2±Dm?‰t\"³‡vÎRó;ŒÕ1x#;³7¨s#”†ÇYq—Ô@µ™yÈIaZæy?3Ü‚å¼G¨iæ\nªsÐÜ2RnÌŠñ¬ÕÑBVéLêœLÃE,PË´ãÄ}±|5.º®Yt+†lô÷\'‡Ü,/x‰-²8\r‡’¸|Ê‚9º…­^mÌ\\§Û\0Ñ@¦ñ›6Ür\'õá<ÄªFÑjUºöG‚qT¢%-ÞK-Â¼«)‹#ñXÃ8†êj:ã³c¥±Ê\\$%Hèø–YÜ±Â<¨âTžcœÀv.ÞÂ*+,e·)±<#{Dáb\"™b¡‹™pø˜ç1U8–ŽÙqs²\n\rl`ÉYCóÛ\n¥Á3NÛ8ê¨+Çsf•hm¼LûwaÆJüŽ¶×šN•òEØZÓ‘ÚÊºT«†~X5v\nµÛ€…Uv?û) Ò]ÂF`+Ó¢,¥,¯S¡BÕZõ`Pç“ÿ\0&²ƒ›îZ–ÏaÄB&•¯SÕ€>ã<”ÑRÇ\'šÈŽåx;z°F_ÅÊQeExœ6$U*6(2;\0Â*Qorö­›OŠå@–XæóP*ìØØya¼ µ‘~b9L¸Èn/ñ,äbÖaÑ¸\\ÅÄ]ò–±I¯¨\n”90{”©…Ü¬	C‹sà÷§Qî(Æë˜Nµ*Sÿ\0ØéÚu:ïõ.ðº›1èlm?âp78—y%¼[e9gky¬YCœà:2õ^{<Æ\nâ\r¸·0œ¶áÒâóæ0bexÙb ©§rïÁcëÄmçÂ[Œ<EP·˜(ÝŒ‹Ò \"`©µsÚä¸!­ËÂã‚ÿ\0O0qÚø–Jº.Ø6Xfåáq“¸¯8ÞãY\Z3\n!œÊÈã[ŠÝFï%«ø\n”¹£˜ŒV­Ùi¢\\~&œ$ë”s.¯ñ/@—O‰žÚõ¡žûƒèTUC 6”tF\Zõ–jWõB(UµÄ·rÖ1Þ1;B(!Å2TF…¯¸BD²>£.\nëé•¸(£ÖF•™‚idñŠ+è¿¨M[ÄMbGbšK–{‰Ì¡BŸÌ13;ƒ˜Üø•%NFoD®¥½Í##D\n©‘5[˜{„·™©ãhFþõU(„d´¶!YŽqÏ0ÕDVAmEZƒ6\r¹fÚl5I\0\Z‰ÈG…f•ÔEhrâ=\08“—¿e:J‚zŒ_¸\"áwú”P€U#\rzrå¥‡6Ü%˜šn”ÿ\02Î	ø—ž	Ì`Ý²êŠ;®¦o§È9„•;\'˜ñÕò§êõ²Á§Ú)²±!Uð¹ôêh46òE4…ÜP<Íã¢$Ô¡”q9ê/&·dâœ®ò&»›P_Pxl®+Äg;Œ\n”Ü@r{„ú¹@ùÌ\".’Ž¡àB‹!YÙØº#ŽÕ…%Âô‡B Á’a5+G‰m¨\rb»ö((áâª\" f€¡tßu ?Q	ðKÏP-Ì—ãÓ\0óÑÀì-<ÊÚP\nqpPKxÍ!¸:döaVJp_KŽÚyð}<0êÓ×Ä CcËƒ²´Á¾(2X\'â<P0 ­ê#ì0ûŠî¬ógfIgÜÄC¸nƒ²÷˜—**á\Z‰vàûGµ–ÊzDk?„@T8!@Tu±–Þà:„3©\\ºÓ½\0§\nV£¦V÷õ#¸NvŠ¨À²å‚³©Îàt…–û.Sðc{š9¼Òæ@©qz†> n0,9_Ï˜œeš<Âz7*%„@O»wgqM4\nXñ]§û\"¸»ÅÔB›323¶;r‚JEµT…‰óˆ\Z8üÀµP²óÉ<¦|Á2åíE<¢òeÝ–PQ\Zåñêê{¥ªÖ5”Å\r†‘lJ±}Â¨h°ë˜Û1.>!.Ê–dóê‰W§Åªd¸†DµÀ‚\0Ý@0£¢4æm¾%ZZHH64¾áåM×’ŠFZ¢¼…N@ÕBÜø \'‚ÎŸ?¤Y°Æß7fé,#?]®œû–¶pEÁ_ç–RúÄìÊÝCžÉÒÍ‡Ÿ‹hÓó\07WK\0s:#&ç1Ãe\n£QSªÂ×x–b¤v.ôBy0§$ VRÐ±)Aˆ–Ë¹Zn1âv¸ôwxÉBêl\'2Ô*\rrm„¾bû‰hLÁLmY‚â¨6]+’1:¹h¾#¦•ê,ÙÏ8«	¶®^Ö\r§.¯âT¥qâBpY:o…_éˆïp½\Zš%wM~ ‹¿˜Â}_ˆ,X=‘¹®ã¡?0g;•8½ËFâ<Ã^œo~§~r\Zê^æ0Ù—W:xK²e”±QÃ‹rž8º>aô€´ÑòË¢7fÙÌÆ)ÔxëbîyœÛqW	Þá\\w\0-Áæ5•hc…˜—T²¾ST¹wqP fVPŠùL!Ë®\0–Hi£‰BøEEG,hŽ´Êa“MßS©~þ¢¦ñÂ7\0?3Ã‹ñ}5,ACb¤íwgÊ\n©÷>\0gÜ¸…Y82³4¸¢òðenáÜ+õ2Ê0CAqÐ¥‘„\râœ¢òª+D6ZØ\\L*‘E[°Ø<Æ†\0C,ÙÄ:¬uìå*ªf€ÖÌ×1õsg0ØÇµË‘‡ø„Ú|B¦ÓÂœAÌî¾%;B˜r¼J¸ À&Õ~<Âç‚4Ý%V³[y.:\"ÑY[ê\0z;Ž”h\\Fóý Ù.¤Øñ.+j|·rÓÈÒ\\\rÝ¼ÆÔ²Çb†öNOd£6\n¾DµYZüÊµÓÔÒ˜Ñ†PæTkø‘Cøòæ/C8KîJÅ*˜Õš_ˆj[Ë(s¨\'â5AZŠ:<C¡âÌ Óµh.¾`ž9Ž¡]Âï1O\\Ä¶Ê9u\nC\0s2Ì–*Œª ‰I9€6~¦q2qL5W[å 4\"	ß%êa\0ä•¶pƒkzõ9k–cz%#Õ\\²\ZÀ¢YÌ\Z¿Òb¬c~‡©L?˜*“MtÆKÙŒ­+Óî\"’ôkžG¹ÙŠ¬lb¬d°·˜¹T‡#¤´EÞ +ncøVQÄ@uqõuY„îÆ[Ùx‚æ<\nX¸\\d¥—ÙÒ(E°XÝ‚‘l3Ê²n*Y¼Ê¾*}LQ,‰1¯3ä\\ÙÆ•6ÀÙ)â¡\Z\r‹œ„ãŠŠ—¸·Ì¡` °\rXW1(2*üd¹€CÆ¼,rì1øíóGÒ7\'¸\r46~¢»/BH©Kî¥Ëéçæ51º|Ë8Dêºaö×Dfçz–óË’ƒ› —eÇ¸\"O6M –’*ô„Át•-ŽôíFBµ!zEé(n\rE¨•é Œ* @—ù\rF\"‡‰¡TyŽA5PÁ¢ ÚÔâ]zˆS i¨(T¡ZŒð”[´€Þ£—F@ÜWp\0ñ\"#q–5j@ôØÒö¶Þæìˆ«¡Ákþq¨€­§€\'½:½KÒŸq/òÚƒ†¦ÌöŸÄƒ	dIZÒàùé¦pÁYóÂj\n£ÃS~¥Ð\r$¥¾P$fã%Ýƒ7 uk¸†ã-=Ë8ACuXËK¹gaŸˆœA¶Ém•8*\r@<…¯0Tém–‹ ‹jª%Ô!„¸@â\ZÀ.\"Ê‚/¸…âQ´	µK	TøÁ)¨>ù«#”fÎ^ü£)iB¦Â¸é|G=z‹*Ç÷2\n9I]¬<Ä¹¥ËÛ—¢\\6µýKÅÐîÉ{æ€ZyØªXæ<¿00sÁ™ºêþ¢¦ærù‚Ìáp}@T‘ø²‚ë™WP*ª øE<ŒNL”„”Ò‘é™ðåD«Ä±c`\Z	<H9›wHm¹Š…¨ÊRçièvUä9%®î+•%\\åÄ\rq,¤TGå\ZŒ²…ÅqâQêTh\r{”kjè\"Ký¬©…ƒ(g2ô¦Þâm7.3øÂ­ÒSg¡è—(µ¬x~Œ©¾8–o ~&‰ÀÏdTByú…¹äÈ¼ à¹Æ.Ñê€ˆ¦C¼#±n%@IA‰+ñ\n…@=AÀbU}K9´jº—ª)æ\0-æ*v3ª–L³”*|Á,h¹Êa]6€8š`Qs‰ü!$(i\0Oâjx%%%°iîUöœ‹’8;¨6^ád¾$ó,T¿> ’aÔÚµP¶5ãâIèùe0ÚçÜ¹›±Ø›ûBkš‰Õßâu3ûÃ‚[CNàU|¥:çýÊãé¼Š©xâ\nÙxø”½ ¯àÈ¤ PÈ\Z¸kQ\0rÅN@N\"‡ƒXÛPlÁ(†*nT1,)­ˆ¨šbŒÁÌ¯i†D9þ5ùN98ÊÝJT«@Ââä°e&qETêG¬u\r\n·m½±º¾_Î\'’Q|wîÐãÜÌW\\·1•­ÆƒÉ±píû€-¿0wËãÔr[òÁ{(¿†\"AÞ%d¦{JS³ir©J3ˆB.pV.6–Û¯àÕJ¨PJˆŸ;\r>\'–\rÅ_SÊ’‹œ²˜¨“ˆR¢»—¡Ô°™Ât-Å¯ˆå Å@VT¤FÙ4D*r\rsr™TlèA`Û™ÆTáþ\ZþîåHž,%=ÊawÅ¼@Ù‰•}ÆæA~£©[àŸ¸ÒU@âä¶¡‹ðX‚úÂ`‡J£F Y|2Ð\ndå\rH¨{¨¢óö\Zû‰§jaBðšÃBqË=&#´n¿†r(ÊT©1š›-`Ñ¹Ä½¨0*ÔŽq+Ô7ÄÙó.¥Ä|GŠP2X¹²4ÌÆ˜éÆD,»„¦x³”Ž—Ôaî2üC¦Ê1{)UÊ-rý¸,Q¤ùÎ’70€ó¯§ÌP¤_¨ÅG¶\rø\\6\r#0YP­µþ¥².¿©t¹…öË\rs.]¬¨«ÛÜ®ð(Ïå9NÎ£»`;&ÔèrÔ6‰\'÷,ûðÄÑ^ãCãÛYsîWÄI>Ä¤±–åÁNeV®c\0`2»î|§\n¸•–¼ÃæçeÏ|T6+Ôc’ö‹qîT4Žå=d©Ð¨ŠêæÉWd\0ïFwìW®Â6ÐKò‡¸cqxª#UGí±Œmƒ\nÜpµ\\hJÞç)Ûp¿f?su8ó1]˜*wæ`ð2¥o\"û1a	¡_jö)wSK°ñSI[ø‹ÎïAÉI@œ{%IBß²!žö;xÉÉîe±Mù&A£±Ô6Øæ>qš9\\Æ¯QPœ£\ZB`\"Â	9.äQ\nâÉ¹­&h—’åùŒHŽJ#æll\nÌ4„¥BêT\0ª©³#ûJàŠ©Œ+ÄE²LW6h¬ca\r¸EZŽÛ`í\n,^å‚sÎ$Â•D}¥Fr] \n6<l\\èƒiimÞ¿^å}_—ˆ=wn`\0àZ;õÀMCð°Óå†ì:|°3G~P¸(³€ya¸\Zx 6kŽÔ\r¸CÄ²S‚ü1 þK{²%ˆ¶iu“L¹p2+á+ÌCÂ\0*Ujâ+\0¼ö#Ñ);šl#‘AY2Øn[Žz‹D%£b#¬,s×ÔiE•\0Å©êR„n9aÈª#µP0Wð¬¬©D.4Y\nK	V–VXŠ‡W½B[€!æPm–D½–ö(ãÌ¶ •£Ì?¤sî4k•«—å¾¡W môœÌJÝÓ‚@¯1GBWËÜÉEoTæ\r5u_3xW\n´+GÃ\n1Þåˆóêfú‰Uo`\"Eê;s/LÔ‡¨¸Æ¤\"NÌ$Ð¾ ²ƒ ¼Ê+©¤v’Óq[)¾àô›ô„Ù,1¥ 2—Ö9ƒX¦åo0Ø0°M…tþa,#.˜p™R–EÉ†Ï0‰ÌÓŠµø‰XÚ©Æ8ÆCàåç–1t€—Ê\0yH€í•Ê 1Xï¸bœ1~eìÑ …\0ÑQñ8D	[\rD·—ËSäJ¡C€jçà>å!:M ‡¨)|$©÷/V/ `—<À¡\'.ÉIuÌÙP*º•Ó’òXQßÀ [2Y“Ú\\³¨•Ìj²ZÐ´n‰@§c¶åiOÌoL¡ü ÍOðß%°ƒÌAçˆÑW1¥Ø6°›LD­b;)8û–…É€æ(CÕHåƒ\0AÍŒAÅ]ÜdzÍ\"ÏHŠEò÷+BÓ¹cò€\'µeö²Ì¦-¼ž¢Ö\Z]9#|€ñ.9Æ’Æàð/ ‹qb®t¨ª)¨¶\rè†œAEQSñ9¿Qt£ÍFE°ï1€]x»æ%‚Jªæ!¸2 »Ëp‰ê8µÖd,9Äz\Z˜Ïâ Jâ´®¢\n<°\0Â\rTb%*œ—±`ïqX]lP±%t2ÉN ªIDyX¬z`„q&Ç0«©EÞ@…Z™ž¥Gºœ*½eJ¶6«bå¸°ˆjÐ»RùB‘ÏúË£Ç™D¬©Zºâ(ª€/†ø—tãÔU_h+mÄ\rîŠé÷1„T¸€¥œÐØ¢qrÁB¤öi4¿$·›§/¸µ ¥e¿Ì@ˆ›‚”%¢ó2¬B£¤Ðû”e.[§œŠóHANx•¶ä ©mX¬G†f j¹™áÉlõ3õsÌµ©`¡M½Ê;<F4ÛŽh]Ä[„¤<FTèFNY•X°í¨•ÍkÇkŽâ ´l ÆÊA ÓÌn®‚¨¶Å_x½Ë…>”x1 -a«â\\.§\Zj »EÄ¹C,9Cpº„Wl[Kîu=½Û­bQ3ç¨§^a°-ÍÂ]&o«Ž4:|j©Ô§Q@¢¡6Âlìl%/?6£°|ÀšQ†¥©DªØÈ[Þå¯Vãù—)\r\rEð\"¶6 oràË™w¨K[\"AMçÄT±Û	Uy¨·GŠ\0rùLáîæ>ôF ·½\'jï5\0¹nP5‡nÅªÞE“ÙRÛ:Žâ=ª (–™*(˜ˆ)Â4GLe$r%ÖÄólpVÆ:j©\\G¹[ÚP\ZXa)KYkãQWs$[·Ü¤ÞËæjó\rV««‹w~MÈÊÏ\'Ç¨ûoy”‹ƒ ´ñâ=G‡ê• …/ñáâÎâ¤4Í€~’–³»Zz„nèy¸hm³@Ý¨„ø¼@ê3Ã0\0M\\V\rl³qBä+^b¡td0{”·Ä‡2”>“ÕÌÀœïCï‚9GYƒ‰F¥i—^‹‰Ï>%:P‹©^ÅS²î­R\"Ù¬«M|ÂÑ¥÷/®êÐä›\'†V…gÂØÞä\0ßP@òÀ…¾eàà\"¤—d\\#rÛœ\00‹RÂìd`¶]ÀÎž£6rç>¦åÂ›ˆ–tê7WŠD*8Ë!PõaÍID!ÖMó­%q@uK;Q£ûÊÂújáW·’]A\rn±=@æøõÔYkWQ¯–¯9âP\\ÀJy˜¢¯ñ6I}gr„ÐŠâTÆ‹³Ëî)²ÕrÀ˜›7-˜é²iáPa\rŽÇ$Ö\'\"å ôN \nq)å8³QÁ.xªPü-aVÊ@å»œùŽ°>PMÑ\Z>bNê3´ ¼[¸%²ž˜l¶<W0Å}Æõ[#q×™¢Y¡ñ\0;¸ôb–žÇ11ñ+\r\\[fóKÉ-°ë-R¨óqç<ÀX·¶ZÙ{ùbpq:7g#04±;_’(”«+FWp n4\\*‚+k‡Ì@‚ëˆüÅš¬à›_…UÚs}A¿ˆ:æÎ»•æÏ_™eZÏ²áWâ\\]ZÒ=@Ð o…~/Cä`B\0\'y-ú¯_¿>\"l·Õäv›±8R;\"D{³ÿ\0RÁ˜vq-&4Îª:pàÞ.-3îSËRÝ¼=@<²¶+\nC,Ñ±‚\\Š:Úÿ\0RÉ»€qÜahn¢Á/l`ñ4ß˜¨TnÇÂâ!X-ôB!ÊPVËÏãþ¨Ÿ i\"´‘’§ˆ°÷SÃF#anÔTLæ€jÔ°”Ü@Z_\"º\Z¯æyªDx9©9ÄA¤©Í\\Êµ·ˆ64D\\±*Î%·`¥Á² IMPù‡x`@>¡É`-ìñ)¶íË*5h\nvtÆë\n9–\')ækê\\*ñ|Â[)¼Ë”_\'cÒ¥/x—‘Ç0T®ƒÜ+tÇµ€5¯~	*WwUêj¯§Ö¸\0ærÍ öJuikº0¶\Z\ntÄªˆ[î‰š«€÷âùbÙ®^%³Ã€ÄJÀæ0UzFÚoß°U}B4ÕZüùŽµC@\0}@ã!Á”KÕT<Ü A»RÂÁq‚“B1Ÿ±\0G%W§‘%]‚ÏQnP‹Y7OÜ•ÊÅäB1]¡j5a$³¾±ñ×O}V*û–qy/©½Õíìe±«yæî©b›0ƒ°…(¯Ü Æ¤ïê8;®\r\nxãŸïñ\0ur]˜¤rqÎŸY,Æ‹gíp†›@ã˜U§>9¸¹è/ò„Øøj»÷8|ø—ÀÞ›La ·tçé&‰¹kq‹ŒV›½7÷ö,xII,\0‡|þÉQBÅÈ¤L„ñã»\r5Ø|ò\0Ê:¦%k‰N’éN2XêŠµË†>Ô\n„lÑV˜`]AìŽ~sî RèÖS‚¬ˆŒUS»‹—XJÃÎ…`óÏ2óehí…U+?MÊa])`úYÉÁÇ,u÷X rj`cwõ˜+=ýFx¬>ÈÀèî±ô½@x:=0”ÚQÅy˜Ñ¹ãº~:÷*ºP«î´+÷õš*^T; QqÏ÷º­ÙqÌQRL¸§p5ˆ(o¸XÆÄµvñ*ÆÔ1\0Ùºçpƒq\09•‚Ò6úÑŸ0uî-å†Å3còŒKˆò\0`ø–áz}ÿ\0Õ\nœ×upø¯Xh*Zàz&Y\0l*œë† \\wü6¿U÷á\Z%Î8‘<\'“ÐÔöx?gêÿ\0°Ê/â\'îláóýÆöª]Y¬¾Œ…š€IÌ±œEÙT|ËsËg),¯[1QMêÇKZ˜Ð,[ÃÏPÓàÝ¨\Zž,Oé”úî/‘¦þ“ñ.h•ØßvN`wïºeÌÉäh>ˆ\rj«†Z€Q¶Â˜m³£@AVc®ÿ\0rìr¢:-ì0¹„u_™N\r…;¨/ r\"Æà|x…Ç<Ô}\Z#YÁnÐa¤ªCC‘CÝÄ\"åYPZ\0ÞåŠŒqF¹„¨=J£(¹ErÃÄe¡¾’ñšXn†ù&ÉÐ?ögŽ\n™ÚÏ¨œ\n§²èúŠÆËËÃý¥Ðog‡â$Ö“»áIÆÝÝ,a²¦¡*\r\ntµ~`2dRç> Z«\Zh~®¥Á,\nòÊ/Ô(U«üÿ\0Þå]xžk3ÜY…,é¾®.p ôçê^Ô<-v¾¢-o$¸P*fæŽh¿ð%E9•È5$¿F\nJxÖ<ÊQh^J•|wQZ€*é‘I*×fŠE\ZŒo²Hêú¾Q\"•+\"€ ¦ó¯ôÎUÐy^	r4Žq,\Z,Tàÿ\0#®Qk‚ÒÞëö€\r¡ÐÑ;^¥s%ˆµ:´7²9>n\'ëˆ»Ï Ãñ¬Ô§-¯û?SƒË‡(ãõª‚\"õèæ²SÀjý4êq8PîÑyúu\rÓŸñ\r*’ãŸÜ CEì\r ^oe‡œ$É\0ÂRc‡Ô¹ß/ˆ(´P\rs\\öÌ r^ çórÞo%4ãíj]úà:JºˆiNÊWÛ‰¯•¸ƒ€ óË“ÐV½µîañ`¾–âŽà«UƒJòHðâ!lL-Õ¯B‡W’vjLœµô¼—à‚æ=Ìðn¬¾U¡uFÃv·Ê]¿ˆ‰ŒÝ½d04^ë®¦´çÐ¢/ýØ3”­ß›æU¡õ¹@]WþF=×bÃWÀwn.š¤Öþžn%&C.êžÛHí‘ŠlâÕf2«E-~¢5QK~gâ]ö¢Î£¥J®íèÁÎìV–øÖ{õÃø—Tòq×ÜÇ‚ªWýäW„\nAœÖBÕR¨<?ÔZŽŽ*8ÝB)¯¦à	Å=–[—&ÿ\0P‘.ò*ì0Š—Nœ‚\0>œ\\µð³kú&2Î}ÆÞ¦ˆzƒÐZ§·#ŠÁV>óñ4bDä¶¯\"ã‚­~Ô>âéîáN~ŸÄ…¡tì¹]8ÉQ½u­ß@%J4¾9[ÿ\0¸‰Ap¯%©_¦ˆ*å¥}1–ÐO“ñ\Zb%Âì¯êîÚ·\ZìxWõê\n½yˆê5¾xÿ\0råB\Zœûÿ\0ÇA5\"•I\n>åßä¢ÿ\0Û82ºíÏî¿¶\n¯	·’ÿ\0?æŠŠ´ïGêàÞ\nW¶µÇÏêÉBW«Q<½Âñ/Å*ùwR‘T]±¸hFî.ê¬êàï\\0HqU–&µÔ;GÉþ*>²+x‹¯Ïø‹ªÒü»HþŸ¸ÌL\"¤ÏóÌ\Zä¢_vy„F•g8—ô9¿Ô\\[A]Jú_ÉÃšù”êEæŠÓÌCM«sŽgmÕ¾×ÅœÃ6\n¿©fWénóïÜ«†±Sã­† À¦àÓæf¢)«o|žPR]ÂbZ+Šzb’‡=Dk¬\"—5p‘ t5õÔ¤ö±ÛÍùâo\"’æÝ@µ]Jáq?÷ÔYÀ¡å~`ptŠÜýýGô	Û€¹rÚV´V}fëmXxÕV¹‡L×;,ûŒ‘(_`wpæ%w%#¯|DùJ¥;òT-m7ÔxøŠrã@aý¾å+!lÆ*–ì8/P\nÞê¹Òþ¿3Öê×jºç‹â$8òìsÏl¬ºV¸«~9–ÅJ‚Ý•¿û`¢Òüs~ª(8;· 0¼4Òß¨;Š‚¯‡ÿ\0.P\0§çú•Jõ\0²¿!û„·Söïâ(C`µùR«õ.\"ÐÃõ]Dv•÷ŸöGjL\0¥Wà_Ô²‘²¡¡ý.2-«rôTž	/Œ@]Âõ¤˜¢«ñ\rºøEãõ-Ñ`]í­\Zù€õ¤/8óõ	à7½u_ˆér{y„Þwñî9ßHUjªÒÓçl] ¥“ÇõtQ}Y¾Øfô\nZWŠ‰_ï^Ý÷:—Go?©IAVáyÿ\00Î\nB¬Fí\0œŽFlšåêP‚ÅÚ²îâZ%¡þ «_H7dM“¹QÙGËÉ“…S®’h(ð«êTÉ,4³¸@‰|>HwYø9\0ÒñnëýK1\\—Ï[éÕÜ¸á)\\ów!õ%ÒËŽÀÑ^Ûñ•b;ÞüÊS\ro¶69ÚœÐ=¥ÿ\0ˆ‹ÐíbjÛE††¸Œ\'ÖÆS†Ôu(5‘¸!U\r7M×F:q/,ûæ5¹ZÑ£O¿\n¼²Ë®L–5¹F(]Ç*‘“Ê<|J¦†‡¦säà­©A¨œ8ˆ«€½„aFù>j Úr­êûâZåÉes²àm´N`?ï‰¼ô•ÕýÕÀ[TÜ¢ô%t-¢¨´}ÿ\0pÛ{^;‡SˆŒ««y¿2€Ê÷•O¶RÇfƒ°·ÇâQð\rN»¿Ô¬÷€\0\\Ûø%¹Uí>óê‘:Ùx§eºÅ¢€ÿ\0¢6NqÁt_W_b%œjTTPµ‡è¨8åû~c­¥w,óù‚o+É\nA’ˆå_’ÖBª­ â.ÛhPE¥¥q\nXN;€Ž[ÃÜãú´{3k×µsŠ²\råØD3àñ\Z¡N³dEEËŠŒ%™÷-ÔPë~-+Ã›K.ºe½›â&+¢òî_ÍÒ½y…›uE÷ómPIÔŽ(]Â†ÛëÄW=ä\\Ô\nÃg?Cà§Ägÿ\0˜ËÍtk†.H5yµ¿ˆkC÷) $\rçÔ@ ê(W> FU\r­5êS@,©Úûâ\\4Ë–]lTÐ)n¨F«Û–ä0ˆ·ÙÏÜ¸\rP\0‹÷›\n;VËÔŒ\r «“\"‹î ÓPÆ0q\\­#^`ºÒ%z·,;¡mÛãæªÞ]s˜nr‰b{þâ•CØx%áG•ó8ÈÈu\\ýÍ A<,¼§=Q]G­ÊV\ræü—©@4Y58¾ó‹—îJÞ¯œk¢Z]0%Û^Ÿm)=|Ã>«&/çêP£%8Ï‡Q„ó«lñ„±)dp¢ƒ:Œâm%^3ô~e%l)·æÂ`xË‡]#ËÍ>L€¸ŠÌ D‘j0œ¨@·Pm\"òõ/¡±ØZêÁCŠ‡m9‚–n¹…x.\\ò¤T•ÊÆw˜JW‹È\nÿ\0W¥8¸‚`äÇqè½ ¾·aq¡…ðÅ-”µˆ„ÐÝñ8ÛBÇ¸€»\0ÝpT«a<J|—ÌN`tæ&ƒÔA>#†û©Ì\n¦ñ”ØFÒøêYËC¼È	ÔœJ\n†1¶C,÷T’6 \ZW¹âÛ‡“î!VªKÙFa¾2ñY]Ý=£Ã/Ê@i|$7˜V1Áw=’˜•E~XŽáÍàK$ÑÅdªÅÝ‘…CaCQHÕ ½D9T¦¥#O7ÍØ\rC´\0!¶–KFvÜ\"ûy€dœ¾a5ë±Ž1²ö‚Çzé–ZÐ÷LÖØìXèßPŒQfâ©ÄE2›ø‰áë¸‰Io-À÷Ù(5øšÖî£©æ¡ÒC|õº]âhšâpYh\0yæ„¡x‹s”óÁó{3\rc¾0GƒG‡¸ü§ËŠ«.ˆ¾R“Ä¬Œ D‹±ˆÛN/R‚V[@Îª*u\0çpÏ™võRÅÇq\n¨óæR««L’Dáê-[îd˜ó4¸€Ð·¸E	Ûn æQ{Ãb¾ÔÁÄé¿Ã\"ž`Å+Šî\rwÂadfžÈà%¥‹SÄAT[L\r\Zm\n\\€áõ·PóîByŠ±†Qª óÆnƒŸÂ;FïÌ(\n‡ŸÜ±v^áPEÜ)Š5yD²áñ6±Î/L¾§)¥\nÚƒ¦^üH<×Âù\"ixˆR°¢ÆDCDt‡1í†À.&bzý…D(üÂíïH2}`«hTqDˆ…‡QU]!\Z%õ5RòúSˆ¯@ Ó%ª €ç†fF½ËˆÍuíuÄ¶r™MCŽb+{Ø™lÂ\0ôF…hu7Ž²-ÇQ¬=lðÙlDZ²¡¥`l«>FeÊŒ¦7.ì(ÔÚ‚–@ÇÌ~¼\ZadYÊ+­…;î&bÀ«Ã(¦	PHãzˆ;®KÀëeî6ÕÇhü‘÷jåB´–x2¤\\k˜ÀðË‹R†µÌ ¬)Î¥e@³\\³‘Ü!éî.¾!×Š™¨^eC’\0Ý.*	QÇˆÐö›ž`Ä]l+,ê_2Þ|EQ9aBìØX‹¨œ\ZÛDs^eÐ×1=%“eÌµkfÆ±œfÄ Ž¼Âà¸h²ÁlÛqTvp@#J@ð€ëQ—rf‡ÄÂ[/S’t‡$§ö”V(êy˜IŠ”bÅªYUÌ©X°í<Ê‹+P¢vþåZ²áa8¯1KKñóè|F`¶à´F÷Ü´jÜŽbú‚Ë‡Hþ` )dÜ :·¨*)Š\rÏS…Ìd»>\"iâ\\!„UPa|G¹ykÄ/Ì¸¯,ê¢EÖpH$&jîû™mâå†Ý7W\\O/ØDWŒÁe)øKwÙ*‹–p”lt¨—hæÌ0ÏHˆ‘|TP&TIjJ¨”Æ—”bF.Ø`Z¢*»aP”ûˆÔ ¿˜è÷i2Î¼\"e\"’Ëˆ†\"W˜\r_‰Qòr‚:P£ÔÿÄ\0\0\0\0\0\0\0ÿÚ\0\0õéjžTªª`º•a¾)¹º®Êâ¶ÕìëJÍÔ:_[ô^®‚•;ë×›”¶†‘h\'åì¸ilÑ¦„A}dæ«¡Ó\\Ø=«ö&ù‚g2>/ zO†3ïWÊ=¦?Émó×_ŒÂ´¶³Ï&¯Y2\"j1Çóþ“ãçÅóÔ®Ž8¥:{Â|&%FàŒÚóëêfO/[sŸ¯ìéíõÜsÏ/¢PýMý{=Ynm§Uð„Ð9uu¡=QœùmK1ÛM¡ÀM>ÁÂ7ÓÌè3œý4Squþ[ù¯}Ö0ŸÓ2oR^‰%IÏ33çKç=õLYJØ÷ˆtÎiÞ~Ï9Q¦wy÷Æšy_à§¿bu\\è¨‘\")#/zŸ_×2‰ïªo¶žÒ½ñëèåö‰BóA®RT“ªŽóóã)§õ*µþ·Ó7yÕÞpéÒ@‚ò§zU4ökcACøôÛ,èâµ­˜²XÒ}ç¼óù°ÌõqÕ~—ÅêNö[g¿,éø+þ_çüšN‘Ÿ›ÌÌ÷ìÁ<é–|ãü$)—ŽG¼ñèïÍú£ON®³)ï/¦s£ôÁ$È3C?¡_j\rÿ\0\\ªûß|R5ÏøõsOèþ¤I!þ~ài;ßg®=òœºóùO|3þhÉâ6zÏ>ò@ý¯x¥üù.Uý®Š f¯_é{ÉêæÁêÒw§xz?±Q½êŒûâV‡Ðå.NÉ²Ök%ç“Î;ÓŽ÷¿n¦ÆÆÕ±ú\r?¡fƒÁòÑ¢³Þ¬ÛÓ]ÿ\0?ôÿ\0‹ê$½ï]oú%ûtû”²¾ÿ\0¦gÚV‹åÒ«=eÓ›.oþf~1óþPRËßºÐ·CI¦¿¯ÔÛzÁœugsð4³*G:üDfÍÿ\0Q:¿ÏfÊß&ŽS¦ƒžYº¯¥_£¼s/:Ê¿è¨èÿ\0Og¾Þô¢Y Î`ë3Ø½:8Ššç<zù§‰¿ÆçWøt…EXs3Æ·þ–ÿ\0ÇóÏQñüï8ä:jú¶Mc)¿np×_ú{ë¬ÿ\0ÏìúÁö¨¯$]´Ó§ŽÞ°ÄƒX›³\'óÌy3Õ¥ÔèoTÕ^¿Q?š¿5µ­M)Ç\rWíý…Ñy~ŠÄ¢X˜*4wã<ó³¨¯Ï8ÜeØ~¿ý{n^úéûwºù]I 	¸ñ›Ðï”¼uÑò:sÌ™Ì‘œöºcöçúko½tÓ’óù¾Ï¾>ªÊÑƒ(·ãæs¼îsŸsá¢(˜¨ïÑ®3ðÔ¬Í~ZÓ;û§¯9½-/›ª1Ö®µa\råÒ\"ì™þ§3üÎzõýÌlië?¢&´™Ú%õ$#·Âfq:º!®Ë´Ú³{)	\r\'O}›¹ÑçSzšGOíÛZg:Œæ{ç<·ÊúWNÍöú³˜þŽ¤ÖîvÆý›<³EGç£åÊX»bç\\ëJÏ§£ðæk¤MGÿÄ\0+\0\0\0\0\0\0\0!1A \"Q#2Ba‘0qÑÿÚ\0?\0Ñ¼h¼¿CEŽ‹Þ5òÖwEm¢ÊXBoBHÙF‹Ç¬^lÑYÐ×Eöh²¾,Q²Æ[(¢ÐÐØñ¢ôkÃH|‡%•Ö/g¡43B¬ßÅ½â³oå¬;Î„9JÊXhwe”‹cBì¥›$5ÙZ{<qØ¢ê#{5ñxEð¬+ÆÄÕŠŠ/4^9:\"´8é—géKG-\nL¾Ö(¾ÏÂø“+et2ÙJ†QbbBe3Fñ}Øº]“Kc{8\"E¢ô8ªc£WñØ—Çf‰¢˜Ù¬*Åf„Ë•\rÈŒtÑzìã÷‘\n¢	èå*×´8«ÑxüÆ†þVS	lY¡¼<ª-4q•±·c{‘–!Å\\GtÊ’lå\'&.4…ò£bÍcÐÙFþVQ£G%ÊEÈK\rÙ­	ßèìoÇùŠ/5¡áPïCK±\"\ZÆóEüvJÎ3²¶n°—b9&ŠÓð»ÎðËXc¬!\Z7ŠÙe#E£ecÞ)ŠP¡ò´8Ê¤o\Zhv$¬N#Œ™£xÖl£C³b¡gf±³E#í‹GŽ~%hñOÕüY/ÛÖ=š}›ßÃ\\¢4ëã¬3XÖ-	|›(liãCñ:}•¯…•žRø&¨ã:CÂF¾K#fÊÂobLÑ¼kCh”d•è×Â‡øIè¯Ý<¶RÃe!]¾‡-\rC“,â3Ñ[Ç³ÑMì±a¢þ_ŠÞÑ,qvE½í	âŠw‹)XºØè¹$TVOlô‹/²ø~—ÑB{{\"Ä1‰,k*KbNèØÖì]—$\\\ZÙHüã_ü”!B/†–6RÂh¦?C½š7‹=RÃXEãÞ+5Îsl·x£’\Zc¡ŽôHýÒ\Zv~\Z¶&ÅÑCZ$—Ù%µ†z>ÊEæž>¦ë48ødËØ¢*91!!Q¢žn)‰tËÓ+EµŽ[%z5±öÑ\'HúØûfÉÿ\0&ºÊ¼èØÆX¼ž)EŽ2i–í–„´IŒu¼òv/B]á\"<m	2KlN%#Ò•+%³“¦8ÎšÑâö-üišÅŠŠ8øÛB”œ˜žÐëCìÕ¢¶E²•¡ô&†–ˆñ£“Ù}‘I^.f­èKCz¿DÐ¸Ó&ÖÑÂŽ¤y¿Ôj2ª5Å^9vSÆð‘%±4GøÚ}œPš¶FKF¬ûYQdNô\\_&$ˆÆ6Ÿdh|R8ÿ\0qþD¼°”ãèrjú?Ó¸é[)´…ÉJHOHSI¤xÿ\0†2½³„¹Y«,wF†º9mâ–8«e·+\"™èŒôºàäÄ›HŠ…4)JœøúB“Ù+Ðçd—þ†–ÎM¦7¦E.\"¾(t4©{=!©4IÈ”bš•¾Ää“}eõ%(Ü™Z8´ZE:-¦Q/$›_ÛÐœjK¢,Rlå\Z]UÅèñÅ×h‹’‹M\r¾„—$J†¼tröF,¶œ:DáãUì^EËØÕ¹{?\Zßh´ìoCì}¿eý‡Å#ë£ƒnK±RIQOôŒâŸûŽ…[„…ìâ©kcã´+¿Án´WÖ…(¤rn#´¿¼T=ÄªÝ\"Mi‘”t/«g\'Ë¯þ\n-$9ö8Ç‰p§×Ÿ²1Ü=”©³¤$ìz$ô4­û9%]’T:Q]“rázD•¦._gØ¯’ÕDOÉMê¬ŒÝ‹Ž±¾öqtÈÇRmÑQ¿G‰Ó}jÑÂ\Z#)·ßHv)Z‘ÇbÙ›RZ±ÂT½Š6EEr[Iƒs‘&×³‚åÚ´8í„[„O,aýNÆîL¥É³“Ð›TudpïÑæŒ$åÜtÆ¢š.\r²Þúý\'ÊÓ³›¡EhJ˜ã.>™]œ¢ŸhñÏÆš/ÙKì}Ÿ\"§Ê¨›×ŠïØ’ÙÆU3œZ®ÅÆ×£íÆH\\Ó!5¦]Å»B_òy$éú8ýQõâ&ŠþâJ’ôJ0Ø¡ØÔmœ»z%+Œž‰Jt•œ\\¼u²i/ä<|“àÎkêö85TÓMHá*D ¹Ãþ‹Ó9E;;T*¢•{+±S#)reiPþItÉ6¬©\\Æ¤èQm”íô6ì¦Û}ÆÆ¿ääE%Ë•ÁèçJFÖô8:BR[#ãNR<	©ø´Å?+ò{-éšn}ŽPß²>ñ‰\"ÛØ’â‹•3º[8´Ñ5ÙÉYZ8ô[T(*Dz•~­¢•žËTÎ1?¦¨šÐ”m”›=+²^O›c¢Ò³ÆØÝ§ÐÓq\ZVjÏò¡ùRœ¨Q•!]3ù<2›uCnÍ$ÄÕ²2¦ÿÄ\0\0\0\0\0\0\0\0\0\0 ÿÚ\0\0íd pÄ­Ü×žÌ¬Œ^ÎUÎÄ\'£ÀÊ;8Ÿâ–W<ƒ›4ÿ\0¹º³hƒ\\%A‘àŸ€bû‡-XÂîÝšè7ìk^zN%a€Îz\\èÒ`f»o¼k+#dlÚË%j˜W5êÑªµmšÏÏ^‡IŽ\n÷¥àŠÌóÏJïIÛ©G5I–êÕ¯Lê™ÙHi#%˜Û¢õqÅ¬Œ‘T¿F…N9ý;±’›]³‹LÕU4NMz¬Ü]Mç²òcn°‡TËŒ-“4dÌ:Ü3|é×îÎšî“m]ÐHˆÒ*° ¹î¨{Ê“<1\'¶´ìªÛ«ofãdÍ5³fï}1ÊuµR¥0ìÙØh¶S	Š•÷´mvÝŽ.«]´ÎP5²hÚÑ]¦ÐJkÜÞ5²‡­þ{§ÇódŸ0Õíc§½µ¾”R¹¯6l—ZïdtSS»Þ\"ä1°ÊÔê\"áÏtÍzõLÝÓœs½nm©6d7m´e£)²[¦uŽ†3ùV­”«”6S²n«Ü¶{†°lkp”ìl+“_“zN~½˜ür±y•€L²g9ÞP”Œ¬s[+ðÃ#ôWîëþ6JIG8é	åìª=s†V\0Áðzü1ÃrÞó™%C<ÆBçÍDÁ,k`€òÊOÃñßŽ9³8>”}®sÊs‰Ï<â\0\"OÃü\'ã–8“,ùBºúïzV8|CáðÀáñÃëˆæ<øçz|áŽÖ‡¾³¢8?G˜ü¬õÞŽwª8Ès;Š`ƒ`Î8`÷çxÏp<€çœ>uÇ;†ysŒç™øa‰ÞaŠågqO§ÃÎtsÀïŠ:?\\î/Z(p˜ëÞa†;’;\\ L&œ~sÈN²~8>ûÓÑ…ç×ž¦ÌåÏæ‘[>/®äÎyœ0¦ ©œç×žWÉ*aòüå¦¼sÖzë\"Üãž˜÷8»gÚ•ÙÊÎúŠ»7UT¡ÎrO!Îxþ`Á$™EJ’EÓ=Or²ešIa˜Ÿ&Ïª®];Â…GâTMNxûRgG¹¾§fÊ’6y;(þw.x†)ƒ*1‡ÎEØ£Ï<œ£«ëSGœuë\ZÈ\rf¿\"ª=V½w+‰Î¥òAòØ\Z^ Šï?ÿÄ\0\'\0\0\0\0\0\0\0\0!1 A0Q\"@a2RqÿÚ\0?\0üRi‹™àUé²‰Ò£dÂ6hÙ¯]âš&.aDÇÁGè®7¼h¸x¾Û5‰ï²˜¢Pc{Ùº†j¤+\Zeü?}÷ÓDâÄÐ›§/‡Ñ“Ñü‰í¶.[8M!žKûõ„Úcžl…üKÅCí–†û\ZÂ!ÿ\0#Ø¸‰öpK²l|Q1N/¡¬!\ZÆ½v!A	\nš#†âž:ÅÌ?gô$y1š¢äê6%¼ÔlÖ\\&)¡·¼B‘ÓFÏÙ)¢3DãHŽOh›èòåþ„ŽO•§\'Ù»uˆOMš)¡¦k4B¸o	¡Ý!xE„´Ž\\´Æ†.Nr?F ¸q‡èmŽå¡²šÑ³Cò„T¦È_D„&$oG.]‘\r¿OØÖ¾	‰^±¢Ì(&È‹Î‹Ç<Ó ™ú#4VE‰¢ñƒcôñez7í\r¾š6hÜÄ5rÙ.EP†³­•ÔT:4x£PñEÂ†ý.!¬hÙM”Ù¬\\k\r<&…‰÷Œ|¢+\ZÚ?õéÐðÿ\0&ýq1Ÿ¤tœç\"ía?äizR<6O[ë3p±1r×·òpéœß]ú×ø^fY0ï®ñ\r~HoÑ2t?FŠ†1›ª¸t‹ð_Jóq1¯ðõù6QçCXÞoø¿?õBFÅìÉø/®ÍŸ}VWª¹~®—3xÞuí¬kó}Â&Q½e¦6±=\'âxÖtTA§™cõëFLRk4Ÿ‚‘a|Æ„Bºkf‹Ÿ¯ÑÅqÄÛÐùlI(Bú\'Ùã¥ê‘DSéã³t˜¤5K£ýåt%¦Rr‹MŸ\r‰2æ›Dc]y,/˜Ý‚)âÆ!cæÓŒÞ†ÐÑÜocnIß¢m6ÎÐ×XckbšhK¢´ˆy*ñâ¡qÙºD&T}* ÞÏí¤qâ&ÅE|‰¡>Íìæù&˜þ‘éJ=C”-91÷FB°^\"7\rÂ-ŸQä¢#P¯f…Ñú>š7Qô©Ò¸Ai³à»…cGbùÂ#ö$©VÓ¬rã\\\ZZF«ìÕ#ˆòØ¼†¹¦GDž±Éô!	/êjˆÚ¥ì¬MoÁ·œ>3¬.Ê´MÈd-3Bu¾ŽðÒ$Ú9qæ>n¡Õ½Oÿ\0„el»òHHv¡È6¨}âÞ7q²b(~‹§‡H^Ž	WÙÇÉòãômv1ßê>ö)ÆÃŠÚ#Ö*\'GÜSC¸Ø‘¬}ÆÍë?0ûF¡¡	òˆxDòBåÙ\\CzU‘išÇÿÙ'),(2,'berlin','Perro','Macho','Golden Retriever','2007-02-03',29,'caspujori@gmail.com','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0\0¬\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0@\0\0\0\0\0!1A\"Qa2q‘B¡±Áð#3rÑáRbs‚²ñ45’CSƒÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0 \0\0\0\0\0\0\0\0\0\0\01!AQaÿÚ\0\0\0?\0Ûv´wœNÀ½ê»º¿w”@¨X±Ü1æwåŠc²Ýªºâ×S¤ñ)„G­;µÒ@Èç“ëYîÅ»?dñÜÚÞK2ëX­ä]8!ºù}ß:[±WÐðÛÒ÷2$HÐÔù9@Ô²¤•…#Ðø§·áñžú9ðJk KœlÒ—µíE‡µŽæÉå)”fý‹ì$ƒ·<~U„í7j¤¾’öÅøMÜÖ¹1Çskv¾%çŒ¸æzï¶Õ»ã×‘E±³6öêß¼gC’ã`2|þ4Ù£$ÏKíÐðû™.¯¥G–x”¹ŽÛCg-€vÉÛryzÒ‘qÛ	V9/.!ƒZ‡pü¹×šÝßñ{ùÀ¹\0$&²ï[ãåŠ=Ÿâ¤Ù¬LYîˆÒ±“˜Çøºni£7‚8;ìÔIÆ¬ÍØh‘rpò>…õÁ­í¼Q¬óßÙh”x1·=Éñ}WÂ¸Š¯h–7Q¦+±`ÿ\0ˆý wØùíU ì°Ñ/ŒÞÛã,ñ{Ê~è©Ë°`jï¸¿1÷wÑ\0H>XìsÓ5SuÚË/jG·ŠIE¼gAÕ£QÛ<ú`JÅðþÆ8…ÚC”1`¥™UÏV&µPvc†ÚÅì7ÌÒ_8*g‰ÈXOL/#ëšÒœƒˆ¸í•ÿ\0âö°ÇºÈápƒ[o°Üìw«x/xjÏ?´ÜÆ“4Ç²\0ò÷k%“„Ï}ku#$‘K¤¦yé8þxøÕ]ÅãNýë©Î£ñ95”Ú¸Üc…[²Gí–}Æ†ÕøUUïk8$R;£4 lá<ŽÛò¯6YŽ¬‘Ci5±Æ2)ÜÝF‹ÆãÚecð«j;óVÛû×SÝYÂ˜êK6ßucI!€ëkávgÞ©¦Ði\ZkŽØñ§BVd‡\'H)üóHIÚ-(Ì—³Ç– ¹?,UXv\nˆXí½A¹êÈ;lhÛ5Búà«´·ÁÔÒ’¦ââÏÜ•2«ÈÈ™| O×¨ a1Ï¯DHFH=GçYHV\\\\È†&]eg\0±õ8Ïç÷URG#®Q”WÅAîY“\rŽDf£¤\r‰çåYÉ3^ª-¢\0…©Õ\"«ìP\"\rÉ?q\"š,GJàôë\r$#cÏj®6Ú’ÞöÕ6…C8Èþ¼éƒ(rÉƒ°Ü×ÔðÛ&±¤ýâ™3\rXÚwvËÛ>ö‘¶O—¥j¬,dáœ&[†e>”·f¬–áõÈ3¤í‘Î¯8ü©Ü%¨o\nûÙªÂ=Y9KÃ/Àc™nXjle¹måZ»^&öË¤9ùVpÞG\n˜\n:]ín¨_góªZB3KwÄåš<k\'nY¬Ghdxnmæ‚\"¥C€ýb¬ø‡ÃE•a¾Œ+¶â‹í:fSû]dî¸EØ\n’ÉŽmŽGñ¯=#˜…{×\ZàQvƒ²’Ú¼m5Å²““¥Ôç×á^4Ã+Dèá`‚7zÀhb	ˆ\\jÉò¢4‚ÔŠ†A;úÑ\ZB\":±õ­`ï3Œ•ðÌIÒiä~€àùÑVw@\0yP0ã6X|*=æz*]ÈÌ	¨,®Y½hØl“ÙÒµð¹T9ßÒ¾¬î«¤ëK´¬NXg×•k¡ˆõ¶p¸ÇQDh%ÎìhQK0J+0ç™¢ŽùÆ¦ØÒ¹ ZF‰=½WOµ²ƒœâ5çš&‹§@\rü§áùT•rÄËÊ‰ÝŒà3dòÃ^wô®rû9Â®\ZåÛä?•N;yJ»étúÌTSÄvÁúÕ‡\r§¼Ž0j<Á#”æÝ\'önû;\"Úð‘+1ëõªž\'<³;8Ò2jËˆbxàdU¬åÌ¢8ädË»×£t¨²@n8lüFÞH£»h½×Œg}ÂøSZYD—wâe\\4…qŸ•Qö{‰¬·¦Ùð¯¤¶¥VñžÞ›N\'5¬hÂåQçŠ0«,x÷âÍÅcºá¼I`ƒmq4y¿\Zb9f…ðpGVQO[qTºápß`ªI|€ŒïT‘qhn.¿e#©åB£gÀx †uËGØæ²ý±àÑYñ©YmãXæ=âÎâŸáÄ@³¸ó­Éµ°â60{eºM `kª<Î4%hñ“#œIô®î!çÝ\'þµé¼C±<:ð´šKg=3•¬o\Zìõç	r&^õ:8òúWø¹ I¦Ša_f4õðÔMºõ§Ò¥«É|ªÜoƒU©dÅ8ÛÇÐ/Ò†ðÆºŸ1R3jd×Íy8ØPÍ˜ Ÿ\0¢†mÜ¢ÓY²¹õÚ¾qÈÎ¶l†×oÈ\Z·\0ó?ûS»Ôü¿­@ óû©”Ù¨øÁ“~ðl<C\0ãåš\"÷l0ÎN0 cëI+©`Ù;\rX!Éö±Ø:\r~„lË£\03å¨oZNÈÂf¸yN­æ1Y#€‚u<gVó²ŒÀœcåVøñNcÇ¶?ÄÎ¢Fj‚âó\0à/Ú«‹§Õj®åõ>“Ê»[,e8…ÃÚñ(f²ˆ(‰¼N|¹T\\v¹â¯3Áã\'$+møVâúÅ%Œ(\0íœV~æÊáî\0¸¡L¬\"žÂËww7\rHDvúUUTîíŽ_V<&ÛºPÀç dõ¡-ƒ’šýÄØ/‘ó«›Hò ‡]’•\'Ðÿ\0\rˆkVFÈÎEo-¾·<r¬E¾1âúšÙp§Õ^¸¡èAtTœƒ±Å5*CÄ!h.P<l9\Z¥»‘íådi-×–(¶÷¡\09ZÆ3œ_±—ñÜúi@ü‰:JüiÎÆñ„9ï÷#:ß^‡\røm²	>tg¹PÎ=s¿‹ì\\ä£³ümØ£ÙÎ y€QB»áwö@5Å«…å¨¡Þ½V~\"«\'q@’f»Œ¬}ÁsödäjoâFº`ÁBàjÃÆÀ\ZŽœ€Ê<É­7i¸#Ú”YRuîMKòþU•šVÓ¥ab1²s\\’ã”]2mPC&‚|{ú“µpœŸÏøñCéÏŽú˜r¯‘·`sþT1Z¯\0QÞBë¶ù9¦\"’ »®Ùðë9ÇÖ—[]@!OV8–<—é¶þuWFŽâ$+‹Œ1ÆÄŸ<Vë€ÍØèäŽyÍyÄ–áO„€9€O#ZnÉ]²gQ¨çsœcåUà¥!á³OxB©9ªÉ—aÓ•?6àüéy—)œWS.Šù%•4ør+ä,3²`µ6ª½Ð8\'4;”ökZV’S©JŽ”äJ\r°hQ0Üt;Ó0®>´èQ»FdÜŒ©ßáZ~8\0æ³VÄàŽ£z±µ¸\nr»\n \Zãk¦ç9ðH>ú¤ŽáÈË±æ\rYñ©õp÷š?Ç¸•ŠôLÊÑr“>ÍOQõ¢Ioy‚`u«/i\rß|t5Žºâ0Ú:¥ÑIÂ±;gÊ°âqKwÝƒœŒœ…q^<‘\\4f@¥z½Ãµ6½î–¹UaæqU½¬ìœ²»qNÒÝ$Œ{È1–Aæ¾cÒ±·öÌ¥Iîò	þéÆâ¦çLW&eNÒXÉww$L­¶ó¬oh-,X›Žw5eâwßåX¸éðHÄmÌí×;téEfu ˜\'˜ô¨rµ-¡¬°Öäo‘“ð®vÃécçÝŠHÜ:I\'(yùó©ê9:u`œŒ5sbÄÞ²€¸Éûê>ÔÒ!##Ðb¾ÃWvÙc?æ**î„(\0±ïë•UEˆ‰Ê/ˆçÃ•n{ùV—±e?êIçÀ\'ÃÚ;~šiU˜¶Ç˜ÜV“±c‡Ix$ñûBóÉçòªñ¥ñÙ¶	¨&’’`€$ÙZÒ\0yTÇãUüBç„¬¨1ç]%²*€B‚V„_‘Pq›ÑÂ™¹áTŒ’*öŽÊ|jr­Ô\Z)\ZËèÇ‡WP)”}-Ýžg—­f%í%”)»’3Œ(ÜìM_vZvã\ríb\'XS!KŒdÖ—–vï ÈþTÇp\"\'9>”Ýªs*ßZGŠ^Z[ê7“ˆ}Kb‰€ñ•-ÂæD—»ÊìÃ˜ú×š­íõœÝÒNvrõèiîÒ]´òèƒˆ´±‘\'#÷Uw¢÷’`œàø³Rœß„äÃñ?¸I.$\ZÔl `cm¨ü.â~;ai5`:³c#ãK£¬’þÄ¾‚Jüé®å•µ È>j‘¡-—’vÒê,{5‹Çå×éTWË}znnâD–bK ééRy„g(ŠÌ åñ‚Ç(R\\Ä\\÷±\rl9gsK.IK£96TD(å¤T´õ+… îFv¢…2Øp¿i}=*N†4\n$Àß:FFqË<êy4Å\0¶îœÙ[}³Î¾û>6*Oú¹Qdýžåˆ2ÃŸü\nlpLÀmÉ«[z1Gß÷L	8$ì9â™ï†_¨çÖ“Hõ;ãÏ!Óz9KË¨\ruI!š\'$ ¨@£ËP;ýk]ý­´·®\\hx† 9êu‘ÙÔ…\\œmõ¯EþÎ‡ÃdÒD¥îøÙ¾Ï_•7\Zìh›v™µçvÑ­[ô,2½qËåT©ívLgq„Ç:¾IvQôaûMr×WòÝ”VÀ0>~¼ê¨[©‘È>¾|¯ÌS\"9%rÌÇ¼;‘Œç­(ó$&GN^`×3²6$©†RÚØ8óé^‘Ù	í­ø\\$…æ ±N‹úÍa–Æ8Œyr\nÛ97ê*QûU¬âkI´ºŒäûÇ~žbŒyc)¸/m¤“²7ìÕ·\\d×•ñž&œWŒ<ÚK)³RÇéŒüêBKù\"–&¾–Ky³#0	å»ï„–à2,nÅÈñ4éóZYò)t$Ã™%dÆãuÎvrú}ôSd2)bs¶h$•pÎ$hÏä:zÿ\0:ázrº\ZÊì˜ÎÞ¿JJ~\nÆ\"10ð%\0d·õ©1– ãqus¨ÆñËÝèÆÈ/ºÃ×ev\n2ê5sÍMÝö…9šu*dŽ€xs¯¦U+®q•ÁÁÆÀTšI(ŽŠ3ïyÔ‰“S‚‘¹Z|þ5ŒYãy¯ˆo¨|=yò¢Ä{’Kvs„UP6óõÿ\0šèØ~î¯=Xø•\'7JsˆãU,íÈQ]˜dÜ cÞeX±Æ79¡_Vt\0\0}º†8­¤©IÀÂ¨:‡©ÏáBg„òžEôQÅŠå&4ÊéØ:-¤\"w\ZÝ#Ë\rßmT¸+‚uŽ¾´Wu–XÁ©ê[q÷UÚ)C/$–Ú¢ð„ìœ¾J5Äö„5”Äx†@cƒòåä)W’%v\nà± •Ffc¥3âÙAÅm+Ú(–¢\0ì4¶Åyþ·û©Eq \r.–”¶£«~»ÐÚ\n4¡\\/\"HØ‘Š—~ØBˆ„’T`nÞ´®Ø²JQÉa­vÆGCL´’‹ê+¹Î¯Àÿ\0ZEË,‡™\0òÇ_ÖjBåš\\Ê¡JGi‹\"Zv\'?ç\\Ò4*¡‰:÷½Â<ª+?zºJÝG#FRø´“Ï=ÿ\0•\rú×’«a‰8óåùQRâB3 j\0dî5c­\r\Z)°%Œé\0\0NÃf+\Z–WnéS“@°m<Þ$•U¢bYŒ†ôýyPý¦7,iÓáßÔü(‰)L+j<º#ëý(M3;èm.ü×¡øÑUé…î%j>%:pp=¿:‰s>¸–E@ßùs£¤w(àã Œj|7ôÍOØ´1nù‹à†|ŒÒ©’A>Efï,’.œr\\Œ|ëë#C¦–,½ï¸øJ4’ªàm‘öQGÈTHÌ_*Ëw8úüi.ös+¯ºfE\nKkÆsŸ×ÎŠÔ+´jG\"ÙùT@/¬äŽhqPÖ¤fPÂº~tÎ¼&èâ2öæ7|xŽûŸ‡•-ÜÈÄ™!WlîHó¢w‹mV1¸Þ†t“XØmœQ‹f+ÓÞ\Z„~ïúâ+««¡9¿zËþTýŸïñö×WRËF›ÿ\0	ù‚oÍ‚ººBCÿ\0‹õç_îåùÿ\0¾¾×PðÁå÷aÿ\0OáQ¶÷n>#ñ®®¤^ÃÅûµýt¨?¼„þUÕÔˆVXÜÿ\0ââþ6ÿ\0qª!ÿ\0t?€WWQ‡¡,›—ÿ\0€üMuÏ¼Ÿ®µÕÕ3!FýíÇÃò4Å‡ï&ø×WU†ˆï®?Í¥¦æßÀ]]L¶+ÙŸÝ·ð~b‘oÞ?ñWWUa £ÿÙ');
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `codbarras` bigint(20) DEFAULT NULL,
  `codescon` bigint(20) DEFAULT NULL,
  `nombre` text COLLATE utf8_spanish_ci,
  `casa` text COLLATE utf8_spanish_ci,
  `categoria` text COLLATE utf8_spanish_ci,
  `tamano` float DEFAULT NULL,
  `precio_venta` int(11) DEFAULT NULL,
  `costo` int(11) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (123,7702521100438,'dog chow junior','Nutristar','Alimento',19,36879,32000,0,20),(7702457839765,0,'dog perro','Solla','Alimento',18,45983,39066,1,20),(131877,0,'dog adulto','Solla','Alimento',18,67534,39897,1,30),(32187,7702457839765,'dog perro gr','Solla','Alimento',17.5,45689,38907,0,40),(7706754321258,0,'kanina','Solla','Accesorios',19,647693,399393,1,30),(13133,13133,'comida para perro','Nutrion','Alimento',30,3472384,8378237,1,20),(7702521102845,7702521102845,'BULTO DOG CHOW CACHORROS RMG','Purina','Alimento',22.7,145000,120000,1,4),(123,7702521102845,'GRANEL DOG CHOW CACHORROS RMG','Purina','Alimento',1,7,2,0,40),(4545656,7702521102845,'57647578689698','Purina','Alimento',0,7,0,0,0);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `nit` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `direccion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `numfijo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `numcelular` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `mail` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `nom_vendedor` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `num_vendedor` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES ('900876543','Kanina','cra 68 # 37-76 sur','3456789','3214567895','ventas@kanina.com','yesid','3108765432'),('123124124124','Purina','cra45','3456782','3245678905','ekkhejhu@hotmail.com','eiuo','3245678991');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertbl`
--

DROP TABLE IF EXISTS `usertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertbl` (
  `idusu` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` text CHARACTER SET latin1 NOT NULL,
  `username` text CHARACTER SET latin1 NOT NULL,
  `direccion` text CHARACTER SET latin1 NOT NULL,
  `ncelular` text CHARACTER SET latin1 NOT NULL,
  `password` text CHARACTER SET latin1 NOT NULL,
  `fcreacion` date NOT NULL,
  `estado` int(1) NOT NULL,
  PRIMARY KEY (`idusu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertbl`
--

LOCK TABLES `usertbl` WRITE;
/*!40000 ALTER TABLE `usertbl` DISABLE KEYS */;
INSERT INTO `usertbl` VALUES (1,'Administrador','administrador@huellasyrazas.com','admin','3002058620','d033e22ae348aeb5660fc2140aec35850c4da997','0000-00-00',1),(5,'Elkin Castro','eknalj@hotmail.com','Trv 48','3212355589','d033e22ae348aeb5660fc2140aec35850c4da997','2017-04-15',1),(6,'jose ricardo castro pulido','caspujori@gmail.com','carrera 24 n. 74-17','3196555132','202a7dcd496b0aa094bd5b99d78d1005cce8c15e','2017-05-10',1);
/*!40000 ALTER TABLE `usertbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-22 22:09:28
