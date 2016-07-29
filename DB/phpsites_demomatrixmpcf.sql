CREATE TABLE `adminclicks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT '0',
  `adid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `adminlinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL DEFAULT '0',
  `adid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `adminnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `htmlcode` longtext NOT NULL,
  PRIMARY KEY `index` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `adminsolos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `adbody` longtext NOT NULL,
  `sent` tinyint(4) NOT NULL DEFAULT '0',
  `datesent` int(15) NOT NULL DEFAULT '0',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `date` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `adpacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `howmanytimeschosen` int(10) unsigned NOT NULL DEFAULT '0',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `surfcredits` int(10) unsigned NOT NULL DEFAULT '0',
  `banner_num` int(10) unsigned NOT NULL DEFAULT '0',
  `banner_views` int(10) unsigned NOT NULL DEFAULT '0',
  `solo_num` int(10) unsigned NOT NULL DEFAULT '0',
  `traffic_num` int(10) unsigned NOT NULL DEFAULT '0',
  `traffic_views` int(10) unsigned NOT NULL DEFAULT '0',
  `login_num` int(10) unsigned NOT NULL DEFAULT '0',
  `login_views` int(10) unsigned NOT NULL DEFAULT '0',
  `hotlink_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hotlink_views` int(10) unsigned NOT NULL DEFAULT '0',
  `button_num` int(10) unsigned NOT NULL DEFAULT '0',
  `button_views` int(10) unsigned NOT NULL DEFAULT '0',
  `ptc_num` int(10) unsigned NOT NULL DEFAULT '0',
  `ptc_views` int(10) unsigned NOT NULL DEFAULT '0',
  `featuredad_num` int(10) unsigned NOT NULL DEFAULT '0',
  `featuredad_views` int(10) unsigned NOT NULL DEFAULT '0',
  `hheaderad_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hheaderad_views` int(10) unsigned NOT NULL DEFAULT '0',
  `hheadlinead_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hheadlinead_views` int(10) unsigned NOT NULL DEFAULT '0',
  `enabled` varchar(4) NOT NULL DEFAULT 'yes',
  PRIMARY KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `advertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `bannerurl` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `autoresponder` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `days` tinyint(4) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `memtype` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `banneddomains` (
	id integer unsigned not null auto_increment primary key,
  `domain` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `banned_emails` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `bannerurl` varchar(100) NOT NULL DEFAULT '',
  `targeturl` varchar(70) NOT NULL DEFAULT '',
  `userid` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `shown` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `show_views` int(9) NOT NULL DEFAULT '0',
  `show_clicks` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `bannerviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `blid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blid` (`blid`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `banner_clicks` (
	id integer unsigned not null auto_increment primary key,	
  `bannerid` int(11) NOT NULL DEFAULT '0',
  `userid` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `botnav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `targeturl` varchar(70) NOT NULL DEFAULT '',
  `userid` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `shown` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `show_views` int(9) NOT NULL DEFAULT '0',
  `show_clicks` int(9) NOT NULL DEFAULT '0',
  `date` int(15) NOT NULL DEFAULT '0',
   PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `botnavviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `blid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blid` (`blid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `builder` (
  `userid` varchar(20) NOT NULL DEFAULT '',
  `fav1_title` varchar(100) NOT NULL DEFAULT '',
  `fav1_desc` varchar(100) NOT NULL DEFAULT '',
  `fav1_url` varchar(250) NOT NULL DEFAULT '',
  `fav2_title` varchar(100) NOT NULL DEFAULT '',
  `fav2_desc` varchar(100) NOT NULL DEFAULT '',
  `fav2_url` varchar(250) NOT NULL DEFAULT '',
  `fav3_title` varchar(100) NOT NULL DEFAULT '',
  `fav3_desc` varchar(100) NOT NULL DEFAULT '',
  `fav3_url` varchar(250) NOT NULL DEFAULT '',
  `fav1_bold` tinyint(4) NOT NULL DEFAULT '0',
  `fav2_bold` tinyint(4) NOT NULL DEFAULT '0',
  `fav3_bold` tinyint(4) NOT NULL DEFAULT '0',
  `fav1_color` varchar(15) NOT NULL DEFAULT '',
  `fav2_color` varchar(15) NOT NULL DEFAULT '',
  `fav3_color` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `builder_cat` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `order` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `builder_fav` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `bold` tinyint(4) NOT NULL DEFAULT '0',
  `color` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `builder_sites` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `order` int(9) NOT NULL DEFAULT '0',
  `category` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `buttons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `bannerurl` varchar(100) NOT NULL DEFAULT '',
  `targeturl` varchar(70) NOT NULL DEFAULT '',
  `userid` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `shown` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `show_views` int(9) NOT NULL DEFAULT '0',
  `show_clicks` int(9) NOT NULL DEFAULT '0',
   PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `buttonviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `blid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blid` (`blid`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `cashoutrequests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `paypal` varchar(255) not null,
  `payza` varchar(255) NOT NULL,
  `egopay` varchar(255) NOT NULL,
  `perfectmoney` varchar(255) NOT NULL,
  `okpay` varchar(255) NOT NULL,
  `solidtrustpay` varchar(255) NOT NULL,
  `moneybookers` varchar(255) NOT NULL,
  `amountrequested` decimal(9,2) NOT NULL DEFAULT '0.00',
  `owed` decimal(9,2) NOT NULL DEFAULT '0.00',
  `daterequested` datetime NOT NULL,
  `paid` decimal(9,2) NOT NULL,
  `lastpaid` datetime NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `clicks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT '0',
  `adid` int(11) NOT NULL DEFAULT '0',
   PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(64) NOT NULL DEFAULT '',
  `iso_code2` char(2) NOT NULL DEFAULT '',
  `iso_code3` char(3) NOT NULL DEFAULT '',
  `reserved1` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`country_id`),
  KEY `IDX_COUNTRIES_NAME` (`country_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `dailybonus` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `rented` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `clicks` int(10) NOT NULL,
  `added` tinyint(4) NOT NULL,
  `approved` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `drawing` (
	id integer unsigned not null auto_increment primary key,
  `userid` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `email_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject1` varchar(250) NOT NULL DEFAULT '',
  `subject2` varchar(250) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `featuredadclicks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `featuredadid` int(11) NOT NULL DEFAULT '0',
  `dateviewed` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `featuredadid` (`featuredadid`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `featuredads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `headinghighlight` varchar(255) NOT NULL DEFAULT '#ffff00',
  `description` text NOT NULL,
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `purchase` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `footerads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `subject` varchar(35) DEFAULT NULL,
  `desc1` varchar(35) DEFAULT NULL,
  `desc2` varchar(35) DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `clicks` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `fullloginads` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL,
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(9) NOT NULL DEFAULT '0',
  `rented` varchar(20) NOT NULL,
  `purchase` datetime NOT NULL,
  `lastshown` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `fullloginadviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `fullloginadid` int(11) NOT NULL DEFAULT '0',
  `dateviewed` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fullloginadid` (`fullloginadid`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `hheaderadclicks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `hheaderadid` int(11) NOT NULL DEFAULT '0',
  `dateviewed` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hheaderadid` (`hheaderadid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `hheaderads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL DEFAULT '',
  `bgcolor` varchar(255) NOT NULL DEFAULT '#ffff00',
  `url` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `headingfontcolor` varchar(255) NOT NULL DEFAULT '#000000',
  `description` text NOT NULL,
  `descriptionfontcolor` varchar(255) NOT NULL DEFAULT '#000000',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `purchase` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `hheadlineadclicks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `hheadlineadid` int(11) NOT NULL DEFAULT '0',
  `dateviewed` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hheadlineadid` (`hheadlineadid`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `hheadlineads` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `color` varchar(10) NOT NULL DEFAULT '',
  `bgcolor` varchar(10) NOT NULL DEFAULT '',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `views` int(15) NOT NULL DEFAULT '0',
  `max` int(15) NOT NULL DEFAULT '0',
  `clicks` int(15) NOT NULL DEFAULT '0',
  `bold` tinyint(4) NOT NULL DEFAULT '0',
  `purchase` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `hotlinks` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL DEFAULT '',
  `subject` varchar(150) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `views` int(9) NOT NULL DEFAULT '0',
  `max` int(9) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `purchase` int(15) NOT NULL DEFAULT '0',
  `date` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `hotlink_clicks` (
	id integer unsigned not null primary key auto_increment,
  `hotlinkid` int(11) NOT NULL DEFAULT '0',
  `userid` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL DEFAULT '0',
  `adid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `loginads` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL DEFAULT '',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `adbody` text NOT NULL,
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(10) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `matrixconfiguration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `matrixlevelname` varchar(255) NOT NULL,
  `matrixwidth` int(10) unsigned NOT NULL DEFAULT '2',
  `matrixdepth` int(10) unsigned NOT NULL DEFAULT '2',
  `matrixprice` decimal(9,2) NOT NULL DEFAULT '1.00',
  `matrixpayout` decimal(9,2) NOT NULL DEFAULT '4.00',
  `givereentrythislevel`varchar(4) not null default 'yes',
  `matrixactive` varchar(4) NOT NULL DEFAULT 'yes',
  `matrixsequence` int(10) unsigned NOT NULL DEFAULT '0',
  `cyclecommissionforsponsor` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `name` varchar(50) NOT NULL DEFAULT '',
  `contact_email` varchar(255) NOT NULL DEFAULT '',
  `subscribed_email` varchar(255) NOT NULL DEFAULT '',
	paypal_email varchar(255) NOT NULL DEFAULT '',
	payza_email varchar(255) NOT NULL DEFAULT '',
	egopay_account varchar(255) not null default '',
	perfectmoney_account varchar(255) not null default '',
	okpay_account varchar(255) not null default '',
	solidtrustpay_account varchar(255) not null default '',
	moneybookers_email varchar(255) NOT NULL DEFAULT '',
  `pword` varchar(20) NOT NULL DEFAULT '',
  `userid` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `referid` varchar(20) NOT NULL DEFAULT '',
  `verified` tinyint(4) NOT NULL DEFAULT '0',
  `solos` tinyint(4) NOT NULL DEFAULT '0',
  `points` double NOT NULL DEFAULT '0',
  `commission` double NOT NULL DEFAULT '0',
  `ip` varchar(30) NOT NULL DEFAULT '',
  `joindate` date NOT NULL DEFAULT '0000-00-00',
  `subscribed` date NOT NULL DEFAULT '0000-00-00',
  `memtype` varchar(14) NOT NULL DEFAULT '',
  `confirmed` date NOT NULL DEFAULT '0000-00-00',
  `vacation` tinyint(4) NOT NULL DEFAULT '0',
  `vacation_date` int(15) NOT NULL DEFAULT '0',
  `referrer` varchar(255) NOT NULL DEFAULT '',
  `lastlogin` varchar(20) NOT NULL DEFAULT '',
  `traffic_clicks` int(15) NOT NULL DEFAULT '0',
  `solo_clicks` int(15) NOT NULL DEFAULT '0',
  `textad_clicks` int(15) NOT NULL DEFAULT '0',
  `super_clicks` int(8) NOT NULL DEFAULT '0',
  `super_clicks1` int(8) NOT NULL DEFAULT '0',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `upgrade_points` tinyint(4) NOT NULL DEFAULT '0',
  `banner_clicks` int(15) NOT NULL DEFAULT '0',
  `button_clicks` int(15) NOT NULL DEFAULT '0',
  `hotlink_clicks` int(15) NOT NULL DEFAULT '0',
  `htmlad_clicks` int(15) NOT NULL DEFAULT '0',
  `traffic1_clicks` int(15) NOT NULL DEFAULT '0',
  `solo1_clicks` int(15) NOT NULL DEFAULT '0',
  `textad1_clicks` int(15) NOT NULL DEFAULT '0',
  `banner1_clicks` int(15) NOT NULL DEFAULT '0',
  `button1_clicks` int(15) NOT NULL DEFAULT '0',
  `hotlink1_clicks` int(15) NOT NULL DEFAULT '0',
  `htmlad1_clicks` int(15) NOT NULL DEFAULT '0',
  `propoints` tinyint(4) NOT NULL DEFAULT '0',
  `navtop_clicks` int(15) NOT NULL DEFAULT '0',
  `navbot_clicks` int(15) NOT NULL DEFAULT '0',
  `powersolo_clicks` int(15) NOT NULL DEFAULT '0',
  `ptc_clicks` int(15) NOT NULL DEFAULT '0',
  `navtop1_clicks` int(15) NOT NULL DEFAULT '0',
  `navbot1_clicks` int(15) NOT NULL DEFAULT '0',
  `powersolo1_clicks` int(15) NOT NULL DEFAULT '0',
  `ptc1_clicks` int(15) NOT NULL DEFAULT '0',
  `lastfullloginadseen` varchar(20) NOT NULL,
  `lastsolopost` varchar(20) NOT NULL,
  `surfcredits` int(10) unsigned NOT NULL,
  `surf_clicks` int(10) unsigned NOT NULL,
  `surf1_clicks` int(10) unsigned NOT NULL,
  `surf_last_id` int(10) unsigned NOT NULL,
  `tickets` int(10) unsigned NOT NULL,
  `sitessurfedtoday` int(10) unsigned NOT NULL,
  `surfratiocounter` int(10) unsigned NOT NULL,
  `totalsitessurfedever` int(10) unsigned NOT NULL,
  `sitessurfedforcontest` int(10) unsigned NOT NULL,
  `lastmonthlybonus` datetime NOT NULL,
  `nextmonthlybonus` datetime NOT NULL,
  `hheaderad_clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `hheadlinead_clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `hheaderad_clicks1` int(10) unsigned NOT NULL DEFAULT '0',
  `hheadlinead_clicks1` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(255) NOT NULL,
  `bonus_viewed` tinyint(4) not null default '0',
  KEY `index` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `monthlybonusesjv` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `banner_num` int(10) unsigned NOT NULL DEFAULT '0',
  `banner_views` int(10) unsigned NOT NULL DEFAULT '0',
  `solo_num` int(10) unsigned NOT NULL DEFAULT '0',
  `traffic_num` int(10) unsigned NOT NULL DEFAULT '0',
  `traffic_views` int(10) unsigned NOT NULL DEFAULT '0',
  `nav_num` int(10) unsigned NOT NULL DEFAULT '0',
  `login_num` int(10) unsigned NOT NULL DEFAULT '0',
  `login_views` int(10) unsigned NOT NULL DEFAULT '0',
  `super_num` int(10) unsigned NOT NULL DEFAULT '0',
  `supersolo_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hotlink_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hotlink_views` int(10) unsigned NOT NULL DEFAULT '0',
  `button_num` int(10) unsigned NOT NULL DEFAULT '0',
  `button_views` int(10) unsigned NOT NULL DEFAULT '0',
  `ptc_num` int(10) unsigned NOT NULL DEFAULT '0',
  `ptc_views` int(10) unsigned NOT NULL DEFAULT '0',
  `topnav_num` int(10) unsigned NOT NULL DEFAULT '0',
  `botnav_num` int(10) unsigned NOT NULL DEFAULT '0',
  `featuredad_num` int(10) unsigned NOT NULL DEFAULT '0',
  `featuredad_views` int(10) unsigned NOT NULL DEFAULT '0',
  `hheaderad_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hheaderad_views` int(10) unsigned NOT NULL DEFAULT '0',
  `hheadlinead_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hheadlinead_views` int(10) unsigned NOT NULL DEFAULT '0',
  `surfcredits` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbonusdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `monthlybonusespro` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `banner_num` int(10) unsigned NOT NULL DEFAULT '0',
  `banner_views` int(10) unsigned NOT NULL DEFAULT '0',
  `solo_num` int(10) unsigned NOT NULL DEFAULT '0',
  `traffic_num` int(10) unsigned NOT NULL DEFAULT '0',
  `traffic_views` int(10) unsigned NOT NULL DEFAULT '0',
  `nav_num` int(10) unsigned NOT NULL DEFAULT '0',
  `login_num` int(10) unsigned NOT NULL DEFAULT '0',
  `login_views` int(10) unsigned NOT NULL DEFAULT '0',
  `super_num` int(10) unsigned NOT NULL DEFAULT '0',
  `supersolo_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hotlink_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hotlink_views` int(10) unsigned NOT NULL DEFAULT '0',
  `button_num` int(10) unsigned NOT NULL DEFAULT '0',
  `button_views` int(10) unsigned NOT NULL DEFAULT '0',
  `ptc_num` int(10) unsigned NOT NULL DEFAULT '0',
  `ptc_views` int(10) unsigned NOT NULL DEFAULT '0',
  `topnav_num` int(10) unsigned NOT NULL DEFAULT '0',
  `botnav_num` int(10) unsigned NOT NULL DEFAULT '0',
  `featuredad_num` int(10) unsigned NOT NULL DEFAULT '0',
  `featuredad_views` int(10) unsigned NOT NULL DEFAULT '0',
  `hheaderad_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hheaderad_views` int(10) unsigned NOT NULL DEFAULT '0',
  `hheadlinead_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hheadlinead_views` int(10) unsigned NOT NULL DEFAULT '0',
  `surfcredits` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbonusdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

INSERT INTO `members` (`id`, `name`, `contact_email`, `subscribed_email`, `paypal_email`, `payza_email`, `egopay_account`, `perfectmoney_account`, `okpay_account`, `solidtrustpay_account`, `moneybookers_email`, `pword`, `userid`, `status`, `referid`, `verified`, `solos`, `points`, `commission`, `ip`, `joindate`, `subscribed`, `memtype`, `confirmed`, `vacation`, `vacation_date`, `referrer`, `lastlogin`, `traffic_clicks`, `solo_clicks`, `textad_clicks`, `super_clicks`, `super_clicks1`, `lastname`, `upgrade_points`, `banner_clicks`, `button_clicks`, `hotlink_clicks`, `htmlad_clicks`, `traffic1_clicks`, `solo1_clicks`, `textad1_clicks`, `banner1_clicks`, `button1_clicks`, `hotlink1_clicks`, `htmlad1_clicks`, `propoints`, `navtop_clicks`, `navbot_clicks`, `powersolo_clicks`, `ptc_clicks`, `navtop1_clicks`, `navbot1_clicks`, `powersolo1_clicks`, `ptc1_clicks`, `lastfullloginadseen`, `lastsolopost`, `surfcredits`, `surf_clicks`, `surf1_clicks`, `surf_last_id`, `tickets`, `sitessurfedtoday`, `surfratiocounter`, `totalsitessurfedever`, `sitessurfedforcontest`, `lastmonthlybonus`, `nextmonthlybonus`, `hheaderad_clicks`, `hheadlinead_clicks`, `hheaderad_clicks1`, `hheadlinead_clicks1`, `country`, `bonus_viewed`) VALUES (1,'Sabrina','webmaster@pearlsofwealth.com','webmaster@pearlsofwealth.com','','','','','','','','demopass','demomember',1,'admin',1,1,1000,0,'68.146.236.220','2014-09-09','0000-00-00','JV Member','2014-09-09',0,0,'http://demomatrixmpcf.phpsitescripts.com/memberlogin.php?referid=admin','2015-04-29',0,0,0,0,0,'Markon',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','2014-09-08',1000,0,0,0,0,0,0,0,0,'2014-09-09 23:44:12','2014-10-09 23:44:12',0,0,0,0,'Canada',0);

CREATE TABLE `monthlybonusessuperjv` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `banner_num` int(10) unsigned NOT NULL DEFAULT '0',
  `banner_views` int(10) unsigned NOT NULL DEFAULT '0',
  `solo_num` int(10) unsigned NOT NULL DEFAULT '0',
  `traffic_num` int(10) unsigned NOT NULL DEFAULT '0',
  `traffic_views` int(10) unsigned NOT NULL DEFAULT '0',
  `nav_num` int(10) unsigned NOT NULL DEFAULT '0',
  `login_num` int(10) unsigned NOT NULL DEFAULT '0',
  `login_views` int(10) unsigned NOT NULL DEFAULT '0',
  `super_num` int(10) unsigned NOT NULL DEFAULT '0',
  `supersolo_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hotlink_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hotlink_views` int(10) unsigned NOT NULL DEFAULT '0',
  `button_num` int(10) unsigned NOT NULL DEFAULT '0',
  `button_views` int(10) unsigned NOT NULL DEFAULT '0',
  `ptc_num` int(10) unsigned NOT NULL DEFAULT '0',
  `ptc_views` int(10) unsigned NOT NULL DEFAULT '0',
  `topnav_num` int(10) unsigned NOT NULL DEFAULT '0',
  `botnav_num` int(10) unsigned NOT NULL DEFAULT '0',
  `featuredad_num` int(10) unsigned NOT NULL DEFAULT '0',
  `featuredad_views` int(10) unsigned NOT NULL DEFAULT '0',
  `hheaderad_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hheaderad_views` int(10) unsigned NOT NULL DEFAULT '0',
  `hheadlinead_num` int(10) unsigned NOT NULL DEFAULT '0',
  `hheadlinead_views` int(10) unsigned NOT NULL DEFAULT '0',
  `surfcredits` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbonusdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `monthly_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL DEFAULT '',
  `action` text NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `navbanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner` varchar(250) NOT NULL DEFAULT '',
  `target` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `navigation` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `status` char(3) NOT NULL DEFAULT 'ON',
  `seq` int(11) NOT NULL DEFAULT '0',
  `memtype` varchar(25) NOT NULL DEFAULT '',
  `showforhigherlevel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `category` varchar(255) NOT NULL DEFAULT 'Main',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `navlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `date` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `offerpage` (
	id integer unsigned not null primary key auto_increment,
  `price` float NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  `banner_num` int(8) NOT NULL DEFAULT '0',
  `banner_views` int(8) NOT NULL DEFAULT '0',
  `solo_num` int(8) NOT NULL DEFAULT '0',
  `traffic_num` int(8) NOT NULL DEFAULT '0',
  `traffic_views` int(8) NOT NULL DEFAULT '0',
  `memtype` varchar(14) NOT NULL DEFAULT '0',
  `enable` tinyint(4) NOT NULL DEFAULT '0',
  `upgrade` varchar(14) NOT NULL DEFAULT '0',
  `login_num` varchar(15) NOT NULL DEFAULT '',
  `login_views` varchar(15) NOT NULL DEFAULT '',
  `upgrade10_price` int(15) NOT NULL DEFAULT '0',
  `upgrade10_super` int(15) NOT NULL DEFAULT '0',
  `upgrade10_text` varchar(100) NOT NULL,
  `super_num` int(15) NOT NULL DEFAULT '0',
  `upgrade_pro` tinyint(4) NOT NULL DEFAULT '0',
  `hotlink_num` int(8) NOT NULL DEFAULT '0',
  `hotlink_views` int(8) NOT NULL DEFAULT '0',
  `button_num` int(8) NOT NULL DEFAULT '0',
  `button_views` int(8) NOT NULL DEFAULT '0',
  `ptc_num` int(15) NOT NULL DEFAULT '0',
  `ptc_views` int(15) NOT NULL DEFAULT '0',
  `topnav_num` int(8) NOT NULL DEFAULT '0',
  `botnav_num` int(8) NOT NULL DEFAULT '0',
  `featuredad_num` int(10) unsigned NOT NULL,
  `featuredad_views` int(10) unsigned NOT NULL,
  `hheaderad_num` int(10) unsigned NOT NULL,
  `hheaderad_views` int(10) unsigned NOT NULL,
  `hheadlinead_num` int(10) unsigned NOT NULL,
  `hheadlinead_views` int(10) unsigned NOT NULL,
  `surfcredits` int(10) unsigned NOT NULL,
  `priceinterval` varchar(255) NOT NULL DEFAULT 'onetime'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `oto` (
	id integer unsigned not null primary key auto_increment,
  `price` float NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  `banner_num` int(8) NOT NULL DEFAULT '0',
  `banner_views` int(8) NOT NULL DEFAULT '0',
  `solo_num` int(8) NOT NULL DEFAULT '0',
  `traffic_num` int(8) NOT NULL DEFAULT '0',
  `traffic_views` int(8) NOT NULL DEFAULT '0',
  `upgrade` varchar(14) NOT NULL DEFAULT '',
  `login_num` varchar(15) NOT NULL DEFAULT '',
  `login_views` varchar(15) NOT NULL DEFAULT '',
  `upgrade10_price` int(15) NOT NULL DEFAULT '0',
  `upgrade10_super` int(15) NOT NULL DEFAULT '0',
  `upgrade10_text` varchar(100) NOT NULL,
  `super_num` int(15) NOT NULL DEFAULT '0',
  `memtype` varchar(10) NOT NULL DEFAULT '0',
  `enable` tinyint(4) NOT NULL DEFAULT '0',
  `upgrade_pro` tinyint(4) NOT NULL DEFAULT '0',
  `hotlink_num` int(8) NOT NULL DEFAULT '0',
  `hotlink_views` int(8) NOT NULL DEFAULT '0',
  `button_num` int(8) NOT NULL DEFAULT '0',
  `button_views` int(8) NOT NULL DEFAULT '0',
  `ptc_num` int(15) NOT NULL DEFAULT '0',
  `ptc_views` int(15) NOT NULL DEFAULT '0',
  `topnav_num` int(8) NOT NULL DEFAULT '0',
  `botnav_num` int(8) NOT NULL DEFAULT '0',
  `featuredad_num` int(10) unsigned NOT NULL,
  `featuredad_views` int(10) unsigned NOT NULL,
  `hheaderad_num` int(10) unsigned NOT NULL,
  `hheaderad_views` int(10) unsigned NOT NULL,
  `hheadlinead_num` int(10) unsigned NOT NULL,
  `hheadlinead_views` int(10) unsigned NOT NULL,
  `surfcredits` int(10) unsigned NOT NULL,
  `priceinterval` varchar(255) NOT NULL DEFAULT 'onetime'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `htmlcode` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `payouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `paid` decimal(9,2) NOT NULL,
  `datepaid` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adbody` longtext NOT NULL,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `posted` int(15) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '0',
  `saved_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `post_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adbody` longtext NOT NULL,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `posted` int(15) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '0',
  `saved_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `prizes` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `clicks` int(15) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '',
  `solo_num` int(15) NOT NULL DEFAULT '0',
  `traffic_num` int(15) NOT NULL DEFAULT '0',
  `traffic_views` int(15) NOT NULL DEFAULT '0',
  `nav_num` int(15) NOT NULL DEFAULT '0',
  `banner_num` int(15) NOT NULL DEFAULT '0',
  `banner_views` int(15) NOT NULL DEFAULT '0',
  `points` int(15) NOT NULL DEFAULT '0',
  `commission` float NOT NULL DEFAULT '0',
  `ptc_num` int(15) NOT NULL DEFAULT '0',
  `ptc_views` int(15) NOT NULL DEFAULT '0',
  `super_num` int(15) NOT NULL DEFAULT '0',
  `botnav_num` int(15) NOT NULL DEFAULT '0',
  `hotlink_num` int(15) NOT NULL DEFAULT '0',
  `hotlink_views` int(15) NOT NULL DEFAULT '0',
  `login_num` int(15) NOT NULL DEFAULT '0',
  `login_views` int(15) NOT NULL DEFAULT '0',
  `button_num` int(15) NOT NULL DEFAULT '0',
  `button_views` int(15) NOT NULL DEFAULT '0',
  `topnav_num` int(15) NOT NULL DEFAULT '0',
  `featuredad_num` int(10) unsigned NOT NULL,
  `featuredad_views` int(10) unsigned NOT NULL,
  `hheaderad_num` int(10) unsigned NOT NULL,
  `hheaderad_views` int(10) unsigned NOT NULL,
  `hheadlinead_num` int(10) unsigned NOT NULL,
  `hheadlinead_views` int(10) unsigned NOT NULL,
  `surfcredits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `prizes_won` (
	id integer unsigned not null primary key auto_increment,
  `userid` varchar(20) NOT NULL DEFAULT '',
  `won` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `prizetrans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL DEFAULT '',
  `action` text NOT NULL,
  `date` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `promo_codes` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `code` varchar(50) NOT NULL DEFAULT '',
  `max` int(9) NOT NULL DEFAULT '0',
  `count` int(9) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  `banner_num` int(8) NOT NULL DEFAULT '0',
  `banner_views` int(8) NOT NULL DEFAULT '0',
  `solo_num` int(8) NOT NULL DEFAULT '0',
  `traffic_num` int(8) NOT NULL DEFAULT '0',
  `traffic_views` int(8) NOT NULL DEFAULT '0',
  `nav_num` int(8) NOT NULL DEFAULT '0',
  `upgrade` varchar(14) NOT NULL DEFAULT '',
  `time` int(15) NOT NULL DEFAULT '0',
  `members` varchar(10) NOT NULL DEFAULT '',
  `login_num` varchar(15) NOT NULL DEFAULT '',
  `login_views` varchar(15) NOT NULL DEFAULT '',
  `super_num` int(8) NOT NULL DEFAULT '0',
  `supersolo_num` int(10) NOT NULL DEFAULT '0',
  `hotlink_num` int(15) NOT NULL DEFAULT '0',
  `hotlink_views` int(15) NOT NULL DEFAULT '0',
  `button_num` int(15) NOT NULL DEFAULT '0',
  `button_views` int(15) NOT NULL DEFAULT '0',
  `ptc_num` int(15) NOT NULL DEFAULT '0',
  `ptc_views` int(8) NOT NULL DEFAULT '0',
  `topnav_num` int(8) NOT NULL DEFAULT '0',
  `botnav_num` int(8) NOT NULL DEFAULT '0',
  `featuredad_num` int(10) unsigned NOT NULL,
  `featuredad_views` int(10) unsigned NOT NULL,
  `hheaderad_num` int(10) unsigned NOT NULL,
  `hheaderad_views` int(10) unsigned NOT NULL,
  `hheadlinead_num` int(10) unsigned NOT NULL,
  `hheadlinead_views` int(10) unsigned NOT NULL,
  `surfcredits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `promo_used` (
  `id` int(15) NOT NULL AUTO_INCREMENT primary key,
  `promoid` int(9) NOT NULL DEFAULT '0',
  `userid` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ptcads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `ptcadviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `tlid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tlid` (`tlid`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `ptclinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ptcviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `ptcid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ptcid` (`ptcid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `recommendedsystems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `htmlcode` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `refmail` (
	id integer unsigned not null primary key auto_increment,
  `userid` varchar(20) NOT NULL DEFAULT '0',
  `timestamp` int(15) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `saved_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adbody` longtext NOT NULL,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `saved_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adbody` longtext NOT NULL,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `saved_solos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `adbody` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `settings` (
  `name` varchar(255) NOT NULL,
  `setting` varchar(255) NOT NULL,
  PRIMARY KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `solos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `adbody` longtext NOT NULL,
  `sent` tinyint(4) NOT NULL DEFAULT '0',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `date` int(15) NOT NULL DEFAULT '0',
  `datesent` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `paymentdate` varchar(12) NOT NULL,
  `amountreceived` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `subj` varchar(200) DEFAULT NULL,
  `mesg` text,
  `timesubmitted` datetime DEFAULT NULL,
  `membertype` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `origid` int(11) NOT NULL DEFAULT '0',
  `span` int(11) NOT NULL DEFAULT '0',
  `ticketstatus` varchar(20) DEFAULT NULL,
  `replyto` varchar(100) DEFAULT NULL,
  `lastreply` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `surfurls` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `surfname` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `surfurl` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `surfview` int(15) NOT NULL DEFAULT '0',
  `surfclicks` int(15) NOT NULL DEFAULT '0',
  `surfpoint` int(15) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0= No, 1= Yes',
  `shownyet` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0= No, 1= Yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Surf URL table';

CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `rating` int(10) unsigned NOT NULL DEFAULT '10',
  `dateadded` datetime NOT NULL,
  `approved` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `tlinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `approved` tinyint(4) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `tlviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `tlid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tlid` (`tlid`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `topnav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `targeturl` varchar(70) NOT NULL DEFAULT '',
  `userid` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `shown` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `added` tinyint(4) NOT NULL DEFAULT '0',
  `show_views` int(9) NOT NULL DEFAULT '0',
  `show_clicks` int(9) NOT NULL DEFAULT '0',
  `date` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `topnavviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL DEFAULT '',
  `blid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blid` (`blid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `transactions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL DEFAULT '',
  `action` text NOT NULL,
  `date` int(15) NOT NULL DEFAULT '0',
  `quantity` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `urls` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `url_location` tinytext NOT NULL,
  `url_tag` tinytext NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `userid` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `viewed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL DEFAULT '0',
  `userid` varchar(30) NOT NULL DEFAULT '',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

CREATE TABLE `viewed_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL DEFAULT '0',
  `userid` varchar(30) NOT NULL DEFAULT '',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;


INSERT INTO `adminnotes` (`id`, `name`, `htmlcode`) VALUES (1, 'Admin Notes', '');

INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (1, 'Afghanistan', 'AF', 'AFG', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (2, 'Albania', 'AL', 'ALB', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (3, 'Algeria', 'DZ', 'DZA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (4, 'American Samoa', 'AS', 'ASM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (5, 'Andorra', 'AD', 'AND', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (6, 'Angola', 'AO', 'AGO', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (7, 'Anguilla', 'AI', 'AIA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (8, 'Antarctica', 'AQ', 'ATA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (9, 'Antigua and Barbuda', 'AG', 'ATG', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (10, 'Argentina', 'AR', 'ARG', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (11, 'Armenia', 'AM', 'ARM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (12, 'Aruba', 'AW', 'ABW', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (13, 'Australia', 'AU', 'AUS', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (14, 'Austria', 'AT', 'AUT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (15, 'Azerbaijan', 'AZ', 'AZE', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (16, 'Bahamas', 'BS', 'BHS', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (17, 'Bahrain', 'BH', 'BHR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (18, 'Bangladesh', 'BD', 'BGD', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (19, 'Barbados', 'BB', 'BRB', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (20, 'Belarus', 'BY', 'BLR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (21, 'Belgium', 'BE', 'BEL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (22, 'Belize', 'BZ', 'BLZ', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (23, 'Benin', 'BJ', 'BEN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (24, 'Bermuda', 'BM', 'BMU', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (25, 'Bhutan', 'BT', 'BTN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (26, 'Bolivia', 'BO', 'BOL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (27, 'Bosnia and Herzegowina', 'BA', 'BIH', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (28, 'Botswana', 'BW', 'BWA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (29, 'Bouvet Island', 'BV', 'BVT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (30, 'Brazil', 'BR', 'BRA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (31, 'British Indian Ocean Territory', 'IO', 'IOT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (32, 'Brunei Darussalam', 'BN', 'BRN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (33, 'Bulgaria', 'BG', 'BGR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (34, 'Burkina Faso', 'BF', 'BFA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (35, 'Burundi', 'BI', 'BDI', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (36, 'Cambodia', 'KH', 'KHM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (37, 'Cameroon', 'CM', 'CMR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (38, 'Canada', 'CA', 'CAN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (39, 'Cape Verde', 'CV', 'CPV', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (40, 'Cayman Islands', 'KY', 'CYM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (41, 'Central African Republic', 'CF', 'CAF', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (42, 'Chad', 'TD', 'TCD', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (43, 'Chile', 'CL', 'CHL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (44, 'China', 'CN', 'CHN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (45, 'Christmas Island', 'CX', 'CXR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (47, 'Colombia', 'CO', 'COL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (48, 'Comoros', 'KM', 'COM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (49, 'Congo', 'CG', 'COG', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (50, 'Cook Islands', 'CK', 'COK', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (51, 'Costa Rica', 'CR', 'CRI', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (52, 'Cote D''Ivoire', 'CI', 'CIV', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (53, 'Croatia', 'HR', 'HRV', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (54, 'Cuba', 'CU', 'CUB', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (55, 'Cyprus', 'CY', 'CYP', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (56, 'Czech Republic', 'CZ', 'CZE', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (57, 'Denmark', 'DK', 'DNK', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (58, 'Djibouti', 'DJ', 'DJI', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (59, 'Dominica', 'DM', 'DMA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (60, 'Dominican Republic', 'DO', 'DOM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (61, 'East Timor', 'TP', 'TMP', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (62, 'Ecuador', 'EC', 'ECU', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (63, 'Egypt', 'EG', 'EGY', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (64, 'El Salvador', 'SV', 'SLV', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (65, 'Equatorial Guinea', 'GQ', 'GNQ', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (66, 'Eritrea', 'ER', 'ERI', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (67, 'Estonia', 'EE', 'EST', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (68, 'Ethiopia', 'ET', 'ETH', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (70, 'Faroe Islands', 'FO', 'FRO', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (71, 'Fiji', 'FJ', 'FJI', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (72, 'Finland', 'FI', 'FIN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (73, 'France', 'FR', 'FRA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (74, 'France, Metropolitan', 'FX', 'FXX', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (75, 'French Guiana', 'GF', 'GUF', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (76, 'French Polynesia', 'PF', 'PYF', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (77, 'French Southern Territories', 'TF', 'ATF', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (78, 'Gabon', 'GA', 'GAB', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (79, 'Gambia', 'GM', 'GMB', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (80, 'Georgia', 'GE', 'GEO', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (81, 'Germany', 'DE', 'DEU', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (82, 'Ghana', 'GH', 'GHA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (83, 'Gibraltar', 'GI', 'GIB', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (84, 'Greece', 'GR', 'GRC', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (85, 'Greenland', 'GL', 'GRL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (86, 'Grenada', 'GD', 'GRD', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (87, 'Guadeloupe', 'GP', 'GLP', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (88, 'Guam', 'GU', 'GUM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (89, 'Guatemala', 'GT', 'GTM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (90, 'Guinea', 'GN', 'GIN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (91, 'Guinea-bissau', 'GW', 'GNB', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (92, 'Guyana', 'GY', 'GUY', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (93, 'Haiti', 'HT', 'HTI', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (95, 'Honduras', 'HN', 'HND', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (96, 'Hong Kong', 'HK', 'HKG', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (97, 'Hungary', 'HU', 'HUN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (98, 'Iceland', 'IS', 'ISL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (99, 'India', 'IN', 'IND', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (100, 'Indonesia', 'ID', 'IDN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (102, 'Iraq', 'IQ', 'IRQ', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (103, 'Ireland', 'IE', 'IRL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (104, 'Israel', 'IL', 'ISR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (105, 'Italy', 'IT', 'ITA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (106, 'Jamaica', 'JM', 'JAM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (107, 'Japan', 'JP', 'JPN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (108, 'Jordan', 'JO', 'JOR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (109, 'Kazakhstan', 'KZ', 'KAZ', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (110, 'Kenya', 'KE', 'KEN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (111, 'Kiribati', 'KI', 'KIR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (112, 'Korea', 'KP', 'PRK', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (114, 'Kuwait', 'KW', 'KWT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (115, 'Kyrgyzstan', 'KG', 'KGZ', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (116, 'Lao People''s Democratic Republic', 'LA', 'LAO', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (117, 'Latvia', 'LV', 'LVA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (118, 'Lebanon', 'LB', 'LBN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (119, 'Lesotho', 'LS', 'LSO', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (120, 'Liberia', 'LR', 'LBR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (122, 'Liechtenstein', 'LI', 'LIE', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (123, 'Lithuania', 'LT', 'LTU', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (124, 'Luxembourg', 'LU', 'LUX', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (125, 'Macau', 'MO', 'MAC', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (126, 'Macedonia', 'MK', 'MKD', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (127, 'Madagascar', 'MG', 'MDG', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (128, 'Malawi', 'MW', 'MWI', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (129, 'Malaysia', 'MY', 'MYS', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (130, 'Maldives', 'MV', 'MDV', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (131, 'Mali', 'ML', 'MLI', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (132, 'Malta', 'MT', 'MLT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (133, 'Marshall Islands', 'MH', 'MHL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (134, 'Martinique', 'MQ', 'MTQ', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (135, 'Mauritania', 'MR', 'MRT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (136, 'Mauritius', 'MU', 'MUS', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (137, 'Mayotte', 'YT', 'MYT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (138, 'Mexico', 'MX', 'MEX', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (139, 'Micronesia, Federated States of', 'FM', 'FSM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (140, 'Moldova, Republic of', 'MD', 'MDA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (141, 'Monaco', 'MC', 'MCO', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (142, 'Mongolia', 'MN', 'MNG', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (143, 'Montserrat', 'MS', 'MSR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (144, 'Morocco', 'MA', 'MAR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (145, 'Mozambique', 'MZ', 'MOZ', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (146, 'Myanmar', 'MM', 'MMR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (147, 'Namibia', 'NA', 'NAM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (148, 'Nauru', 'NR', 'NRU', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (149, 'Nepal', 'NP', 'NPL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (150, 'Netherlands', 'NL', 'NLD', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (151, 'Netherlands Antilles', 'AN', 'ANT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (152, 'New Caledonia', 'NC', 'NCL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (153, 'New Zealand', 'NZ', 'NZL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (154, 'Nicaragua', 'NI', 'NIC', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (155, 'Niger', 'NE', 'NER', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (156, 'Nigeria', 'NG', 'NGA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (157, 'Niue', 'NU', 'NIU', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (158, 'Norfolk Island', 'NF', 'NFK', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (159, 'Northern Mariana Islands', 'MP', 'MNP', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (160, 'Norway', 'NO', 'NOR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (161, 'Oman', 'OM', 'OMN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (162, 'Pakistan', 'PK', 'PAK', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (163, 'Palau', 'PW', 'PLW', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (164, 'Panama', 'PA', 'PAN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (165, 'Papua New Guinea', 'PG', 'PNG', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (166, 'Paraguay', 'PY', 'PRY', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (167, 'Peru', 'PE', 'PER', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (168, 'Philippines', 'PH', 'PHL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (169, 'Pitcairn', 'PN', 'PCN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (170, 'Poland', 'PL', 'POL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (171, 'Portugal', 'PT', 'PRT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (172, 'Puerto Rico', 'PR', 'PRI', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (173, 'Qatar', 'QA', 'QAT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (174, 'Reunion', 'RE', 'REU', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (175, 'Romania', 'RO', 'ROM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (176, 'Russian Federation', 'RU', 'RUS', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (177, 'Rwanda', 'RW', 'RWA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (178, 'Saint Kitts and Nevis', 'KN', 'KNA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (179, 'Saint Lucia', 'LC', 'LCA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (181, 'Samoa', 'WS', 'WSM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (182, 'San Marino', 'SM', 'SMR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (183, 'Sao Tome and Principe', 'ST', 'STP', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (184, 'Saudi Arabia', 'SA', 'SAU', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (185, 'Senegal', 'SN', 'SEN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (186, 'Seychelles', 'SC', 'SYC', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (187, 'Sierra Leone', 'SL', 'SLE', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (188, 'Singapore', 'SG', 'SGP', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (190, 'Slovenia', 'SI', 'SVN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (191, 'Solomon Islands', 'SB', 'SLB', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (192, 'Somalia', 'SO', 'SOM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (193, 'South Africa', 'ZA', 'ZAF', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (194, 'South Georgia', 'GS', 'SGS', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (195, 'Spain', 'ES', 'ESP', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (196, 'Sri Lanka', 'LK', 'LKA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (197, 'St. Helena', 'SH', 'SHN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (198, 'St. Pierre and Miquelon', 'PM', 'SPM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (199, 'Sudan', 'SD', 'SDN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (200, 'Suriname', 'SR', 'SUR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (202, 'Swaziland', 'SZ', 'SWZ', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (203, 'Sweden', 'SE', 'SWE', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (204, 'Switzerland', 'CH', 'CHE', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (205, 'Syrian Arab Republic', 'SY', 'SYR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (206, 'Taiwan', 'TW', 'TWN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (207, 'Tajikistan', 'TJ', 'TJK', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (208, 'Tanzania, United Republic of', 'TZ', 'TZA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (209, 'Thailand', 'TH', 'THA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (210, 'Togo', 'TG', 'TGO', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (211, 'Tokelau', 'TK', 'TKL', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (212, 'Tonga', 'TO', 'TON', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (213, 'Trinidad and Tobago', 'TT', 'TTO', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (214, 'Tunisia', 'TN', 'TUN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (215, 'Turkey', 'TR', 'TUR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (216, 'Turkmenistan', 'TM', 'TKM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (217, 'Turks and Caicos Islands', 'TC', 'TCA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (218, 'Tuvalu', 'TV', 'TUV', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (219, 'Uganda', 'UG', 'UGA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (220, 'Ukraine', 'UA', 'UKR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (221, 'United Arab Emirates', 'AE', 'ARE', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (222, 'United Kingdom', 'GB', 'GBR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (223, 'United States', 'US', 'USA', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (224, 'United States Minor Outlying Islands', 'UM', 'UMI', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (225, 'Uruguay', 'UY', 'URY', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (226, 'Uzbekistan', 'UZ', 'UZB', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (227, 'Vanuatu', 'VU', 'VUT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (228, 'Vatican City State (Holy See)', 'VA', 'VAT', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (229, 'Venezuela', 'VE', 'VEN', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (230, 'Viet Nam', 'VN', 'VNM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (231, 'Virgin Islands (British)', 'VG', 'VGB', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (233, 'Wallis and Futuna Islands', 'WF', 'WLF', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (234, 'Western Sahara', 'EH', 'ESH', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (235, 'Yemen', 'YE', 'YEM', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (236, 'Yugoslavia', 'YU', 'YUG', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (237, 'Zaire', 'ZR', 'ZAR', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (238, 'Zambia', 'ZM', 'ZMB', 0);
INSERT INTO `countries` (`country_id`, `country_name`, `iso_code2`, `iso_code3`, `reserved1`) VALUES (239, 'Zimbabwe', 'ZW', 'ZWE', 0);

INSERT INTO `emails` (`id`, `title`, `subject`, `message`) VALUES (1, 'newticket', 'New Support Request', 'Dear ~fullname~, Your support request has been received.  You will receive a response as quickly as possible. Thank You for using ~sitename~! Sincerely, ~sitename~ Support');
INSERT INTO `emails` (`id`, `title`, `subject`, `message`) VALUES (2, 'ticketreply', 'Support Ticket Updated', '--------------------PLEASE DO NOT REPLY TO THIS EMAIL.  GO TO THE ONLINE HELP DESK INSTEAD--------------------\r\n~domain~\r\nSubject: ~subj~ \r\nCreated: ~timesubmitted~ \r\nName: ~fullname~ Hello ~fullname~, Your ticket has been updated.  \r\nPlease visit our online support center to view our response to you. \r\nThank you for using our Online Support Center. Best Regards, ~domain~ Support Center \r\nContext of your support request\r\nStatus: ~ticketstatus~ ~mesg~');
INSERT INTO `emails` (`id`, `title`, `subject`, `message`) VALUES (3, 'reply', 'New Reply Added', 'Dear ~fullname~,Your added reply has been received.  You will receive a response as quickly as possible. Thank You for using ~sitename~! Sincerely, ~sitename~ Support');

INSERT INTO `monthlybonusesjv` (`id`, `points`, `banner_num`, `banner_views`, `solo_num`, `traffic_num`, `traffic_views`, `nav_num`, `login_num`, `login_views`, `super_num`, `supersolo_num`, `hotlink_num`, `hotlink_views`, `button_num`, `button_views`, `ptc_num`, `ptc_views`, `topnav_num`, `botnav_num`, `featuredad_num`, `featuredad_views`, `hheaderad_num`, `hheaderad_views`, `hheadlinead_num`, `hheadlinead_views`, `surfcredits`, `lastbonusdate`) VALUES (1, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2011-09-05 01:16:29');

INSERT INTO `monthlybonusespro` (`id`, `points`, `banner_num`, `banner_views`, `solo_num`, `traffic_num`, `traffic_views`, `nav_num`, `login_num`, `login_views`, `super_num`, `supersolo_num`, `hotlink_num`, `hotlink_views`, `button_num`, `button_views`, `ptc_num`, `ptc_views`, `topnav_num`, `botnav_num`, `featuredad_num`, `featuredad_views`, `hheaderad_num`, `hheaderad_views`, `hheadlinead_num`, `hheadlinead_views`, `surfcredits`, `lastbonusdate`) VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2011-08-27 01:15:13');

INSERT INTO `monthlybonusessuperjv` (`id`, `points`, `banner_num`, `banner_views`, `solo_num`, `traffic_num`, `traffic_views`, `nav_num`, `login_num`, `login_views`, `super_num`, `supersolo_num`, `hotlink_num`, `hotlink_views`, `button_num`, `button_views`, `ptc_num`, `ptc_views`, `topnav_num`, `botnav_num`, `featuredad_num`, `featuredad_views`, `hheaderad_num`, `hheaderad_views`, `hheadlinead_num`, `hheadlinead_views`, `surfcredits`, `lastbonusdate`) VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, '2011-09-03 01:15:16');

INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('View Traffic Links', 'tlinkview.php', 'ON', 3, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Edit My Details', 'edit.php', 'ON', 15, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Browse HTML Ads', 'browseads_html.php', 'ON', 7, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Upgrade Account', 'upgrade.php', 'ON', 1, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Contact Support', 'support.php', 'ON', 17, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Delete Account', 'delete.php', 'ON', 19, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('<b>Purchase Advertising</b>', 'advertise.php', 'ON', 1, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Start Here', 'index.php', 'ON', 0, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Logout', 'logout.php', 'ON', 35, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Post Text Ads', 'post.php', 'ON', 4, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Paid To Click Ads', 'ptcadview.php', 'OFF', 2, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('JV Bonuses', 'jv_bonus.php', 'ON', 14, 'JV Member', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('SUPER JV Bonuses', 'superjv_bonus.php', 'ON', 13, 'SUPER JV', 0);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Email My Referrals', 'refmail.php', 'ON', 11, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Downline Builder', 'builder.php', 'ON', 12, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Referral Contest', '../contest.php', 'ON', 16, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Viral Url Cloaker', 'link.php', 'ON', 21, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Browse Text Ads', 'browseads.php', 'ON', 5, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Post HTML Ads', 'post_html.php', 'ON', 6, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Tools & Stats', 'stats.php', 'ON', 9, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Special Offer', '../offerpage.php', 'ON', 26, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Full Page Login Ads', 'fullloginadbuy.php', 'ON', 1, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Clicking Prizes', 'prizeinfo.php', 'ON', 2, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('<b>SET UP YOUR ADS</b>', 'advertisestats.php', 'ON', 1, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('<b>** SURF! **</b>', 'surf.php', 'ON', 1, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('<b>Add Surf Pages</b>', 'mysurf.php', 'ON', 1, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Browse Admin Emails', 'browseadmincontact.php', 'ON', 7, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Request Cash Out', 'requestcashout.php', 'ON', 10, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Submit Testimonial', 'testimonialsadd.php', 'ON', 15, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Get Your Own Site!', 'http://phpsitescripts.com', 'ON', 40, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Sunshine Hosting', 'http://sunshinehosting.net', 'ON', 40, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('Matrix Stats', 'matrixselect.php', 'ON', 1, '', 1);
INSERT INTO `navigation` (`name`, `url`, `status`, `seq`, `memtype`, `showforhigherlevel`) VALUES ('BUY POSITIONS', 'matrixselect.php', 'ON', 1, '', 1);

INSERT INTO `offerpage` (`price`, `points`, `banner_num`, `banner_views`, `solo_num`, `traffic_num`, `traffic_views`, `memtype`, `enable`, `upgrade`, `login_num`, `login_views`, `upgrade10_price`, `upgrade10_super`, `upgrade10_text`, `super_num`, `upgrade_pro`, `hotlink_num`, `hotlink_views`, `button_num`, `button_views`, `ptc_num`, `ptc_views`, `topnav_num`, `botnav_num`, `featuredad_num`, `featuredad_views`, `hheaderad_num`, `hheaderad_views`, `hheadlinead_num`, `hheadlinead_views`, `surfcredits`, `priceinterval`) VALUES (99, 1000, 50, 1000, 50, 20, 100, 'ALL', 1, '0', '20', '100', 0, 0, '', 3, 2, 0, 0, 20, 100, 2, 200, 0, 0, 20, 100, 20, 10, 0, 0, 5000, 'onetime');

INSERT INTO `oto` (`price`, `points`, `banner_num`, `banner_views`, `solo_num`, `traffic_num`, `traffic_views`, `upgrade`, `login_num`, `login_views`, `upgrade10_price`, `upgrade10_super`, `upgrade10_text`, `super_num`, `memtype`, `enable`, `upgrade_pro`, `hotlink_num`, `hotlink_views`, `button_num`, `button_views`, `ptc_num`, `ptc_views`, `topnav_num`, `botnav_num`, `featuredad_num`, `featuredad_views`, `hheaderad_num`, `hheaderad_views`, `hheadlinead_num`, `hheadlinead_views`, `surfcredits`, `priceinterval`) VALUES (49, 0, 10, 1000, 20, 5, 200, 'JVPARTNER', '10', '100', 0, 0, '', 2, '0', 0, 1, 5, 100, 5, 100, 2, 100, 0, 0, 10, 1000, 0, 0, 10, 1000, 5000, 'onetime');

INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (1, 'Index (Main) Page', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (2, 'Advertiser Instructions', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (3, 'Prizes', 'Prizes Content Here');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (4, 'Login #1', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (5, 'Login #2', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (6, 'Login #3', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (7, 'Login #4', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (8, 'Login #5', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (9, 'Login #6', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (10, 'Login #7', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (11, 'Login #8', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (12, 'Login #9', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (13, 'Login #10', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (14, 'Contest', 'Contest Information Content Here');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (15, 'Members Area Main Page', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (16, 'OTO', 'One Time Offer Content Here');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (17, 'Downline Builder', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (18, 'Offer Page', 'Special Offer Content Here');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (19, 'Referral Contest', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (20, 'Notes', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (21, 'Drawing', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (22, 'Solo Footer Ad', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (23, 'Admin Email Footer Ad', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (24, 'Pro Bonuses', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (25, 'JV Bonuses', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (26, 'SUPER JV Bonuses', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (27, 'Full Page Login Ads', '');
insert into pages (`id`, `name`, `htmlcode`) VALUES (28, 'Affiliate Program Description','');
insert into pages (`id`, `name`, `htmlcode`) VALUES (29, 'Already Cycled Page','');
insert into pages (`id`, `name`, `htmlcode`) VALUES (30, 'Next To Cycle Page','');
insert into pages (`id`, `name`, `htmlcode`) VALUES (31, 'Program Details Page','');
insert into pages (`id`, `name`, `htmlcode`) VALUES (32, 'FAQ Page','');
insert into pages (`id`, `name`, `htmlcode`) VALUES (33, 'Terms','');
insert into pages (`id`, `name`, `htmlcode`) VALUES (34, 'Thank-You Page After a Position is Purchased','');
insert into pages (`id`, `name`, `htmlcode`) VALUES (35, 'Member Order Page To Buy Positions','');
insert into pages (`id`, `name`, `htmlcode`) VALUES (36, 'Spam/Privacy Page','');
insert into pages (`id`, `name`, `htmlcode`) VALUES (37, 'Earnings Disclaimer','');
insert into pages (`id`, `name`, `htmlcode`) VALUES (38, 'Member Downline Stats Page','');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (39, 'Request Cash Out Page', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES (40, 'Testimonial Page', '');
INSERT INTO `pages` (`id`, `name`, `htmlcode`) VALUES(41, 'Matrix Order and Stats Page', '');

INSERT INTO `recommendedsystems` (`id`, `htmlcode`) VALUES (1, '');

insert into settings (name,setting) values  ('row1', 'x');
insert into settings (name,setting) values  ('adminid', 'Admin');
insert into settings (name,setting) values  ('adminpw', 'admin');
insert into settings (name,setting) values  ('adminemail', 'Admin Email');
insert into settings (name,setting) values  ('basecolour', '');
insert into settings (name,setting) values  ('contrastcolour', '');
insert into settings (name,setting) values  ('fonttype', '');
insert into settings (name,setting) values  ('fontcolour', '');
insert into settings (name,setting) values  ('domain', 'http://demomatrixmpcf.phpsitescripts.com');
insert into settings (name,setting) values  ('sitename', 'Matrix Demo - Multi-Phase Company Forced with Spillover');
insert into settings (name,setting) values  ('pointrate', '10000');
insert into settings (name,setting) values  ('adminname', 'Admin Name');
insert into settings (name,setting) values  ('adminaddress', '');
insert into settings (name,setting) values  ('navmax', '3');
insert into settings (name,setting) values  ('conteststart', '2011-10-01');
insert into settings (name,setting) values  ('paypal', '');
insert into settings (name,setting) values  ('adminpayza', 'Admin Payza');
insert into settings (name,setting) values  ('adminpayzaseccode', 'Admin Payza Seccode');
insert into settings (name,setting) values ('egopay_store_id', '');
insert into settings (name,setting) values ('egopay_store_password', '');
insert into settings (name,setting) values ('adminperfectmoney', '');
insert into settings (name,setting) values ('adminperfectmoneyalternatepassphrase', '');
insert into settings (name,setting) values ('adminokpay', '');
insert into settings (name,setting) values ('adminsolidtrustpay', '');
insert into settings (name,setting) values  ('adminmoneybookers', '');
insert into settings (name,setting) values  ('moneybookers_id', '');
insert into settings (name,setting) values  ('pay_with', 'a:1:{s:8:"payza";s:1:"1";}');
insert into settings (name,setting) values  ('drawing', '0');
insert into settings (name,setting) values  ('drawwinner', '');
insert into settings (name,setting) values  ('drawprice', '');
insert into settings (name,setting) values  ('nav_bg', '');
insert into settings (name,setting) values  ('nav_hover', '');
insert into settings (name,setting) values  ('nav_text', '');
insert into settings (name,setting) values  ('buttondisplay', '10');
insert into settings (name,setting) values  ('bannerprice', '3.00');
insert into settings (name,setting) values  ('soloprice', '3.00');
insert into settings (name,setting) values  ('pointprice', '0.50');
insert into settings (name,setting) values  ('navprice', '3.00');
insert into settings (name,setting) values  ('hotlinkprice1', '4.00');
insert into settings (name,setting) values  ('hotlinkpointprice1', '4000000');
insert into settings (name,setting) values  ('hotlinkprice2', '5.00');
insert into settings (name,setting) values  ('hotlinkpointprice2', '6000000');
insert into settings (name,setting) values  ('hotlinkprice3', '6.00');
insert into settings (name,setting) values  ('hotlinkpointprice3', '8000000');
insert into settings (name,setting) values  ('buttonpointprice', '2000000');
insert into settings (name,setting) values  ('buttonprice', '4.00');
insert into settings (name,setting) values  ('tlinkprice1', '3.00');
insert into settings (name,setting) values  ('tlinkprice2', '4.00');
insert into settings (name,setting) values  ('tlinkprice3', '5.00');
insert into settings (name,setting) values  ('tlinkpoints1', '300000');
insert into settings (name,setting) values  ('tlinkpoints2', '400000');
insert into settings (name,setting) values  ('tlinkpoints3', '600000');
insert into settings (name,setting) values  ('navpricepoints', '6000000');
insert into settings (name,setting) values  ('loginpricepoints', '800000');
insert into settings (name,setting) values  ('bannerpointprice', '15000');
insert into settings (name,setting) values  ('sopointprice', '200000000');
insert into settings (name,setting) values  ('safprice', '6.00');
insert into settings (name,setting) values  ('safpointprice', '100000');
insert into settings (name,setting) values  ('adminnotice', '1');
insert into settings (name,setting) values  ('supersoloprice', '5.00');
insert into settings (name,setting) values  ('loginprice', '5.00');
insert into settings (name,setting) values  ('solopointprice', '600000');
insert into settings (name,setting) values  ('propoints', '5000');
insert into settings (name,setting) values  ('propointsmonthly', '0');
insert into settings (name,setting) values  ('prointerval', 'Lifetime');
insert into settings (name,setting) values  ('proreadearn', '75');
insert into settings (name,setting) values  ('prohtmlearn', '125');
insert into settings (name,setting) values  ('probannerearn', '75');
insert into settings (name,setting) values  ('proclickearn', '125');
insert into settings (name,setting) values  ('protrafficearn', '50');
insert into settings (name,setting) values  ('prohotlinkearn', '125');
insert into settings (name,setting) values  ('probuttonclick', '50');
insert into settings (name,setting) values  ('prosupersoloearn', '200');
insert into settings (name,setting) values  ('adminproclickearn', '500');
insert into settings (name,setting) values  ('propost', '2');
insert into settings (name,setting) values  ('proposthtml', '2');
insert into settings (name,setting) values  ('prosave', '2');
insert into settings (name,setting) values  ('prosavehtml', '5');
insert into settings (name,setting) values  ('prosavesolos', '5');
insert into settings (name,setting) values  ('prourls', '2');
insert into settings (name,setting) values  ('proreflogin', '5');
insert into settings (name,setting) values  ('prorefpoints', '5000');
insert into settings (name,setting) values  ('procommission', '0.00');
insert into settings (name,setting) values  ('propercent', '0');
insert into settings (name,setting) values  ('probuycom', '0');
insert into settings (name,setting) values  ('prosupercom', '0');
insert into settings (name,setting) values  ('projvcom', '0.00');
insert into settings (name,setting) values  ('jvpoints', '1000');
insert into settings (name,setting) values  ('jvpointsmonthly', '25000');
insert into settings (name,setting) values  ('jvinterval', 'Lifetime');
insert into settings (name,setting) values  ('jvprice', '20');
insert into settings (name,setting) values  ('jvpointprice', '1000000000');
insert into settings (name,setting) values  ('jvreadearn', '75');
insert into settings (name,setting) values  ('jvhtmlearn', '125');
insert into settings (name,setting) values  ('jvbannerearn', '75');
insert into settings (name,setting) values  ('jvclickearn', '500');
insert into settings (name,setting) values  ('jvtrafficearn', '50');
insert into settings (name,setting) values  ('jvhotlinkearn', '125');
insert into settings (name,setting) values  ('jvbuttonclick', '50');
insert into settings (name,setting) values  ('jvsupersoloearn', '400');
insert into settings (name,setting) values  ('adminjvclickearn', '1000');
insert into settings (name,setting) values  ('jvpost', '3');
insert into settings (name,setting) values  ('jvposthtml', '2');
insert into settings (name,setting) values  ('jvsave', '2');
insert into settings (name,setting) values  ('jvsavehtml', '5');
insert into settings (name,setting) values  ('jvsavesolos', '5');
insert into settings (name,setting) values  ('jvurls', '5');
insert into settings (name,setting) values  ('jvreflogin', '50');
insert into settings (name,setting) values  ('jvrefpoints', '1000');
insert into settings (name,setting) values  ('jvcommission', '0.00');
insert into settings (name,setting) values  ('jvpercent', '5');
insert into settings (name,setting) values  ('jvbuycom', '0');
insert into settings (name,setting) values  ('jvsupercom', '1.00');
insert into settings (name,setting) values  ('jvjvcom', '0.00');
insert into settings (name,setting) values  ('jvsignup', '1');
insert into settings (name,setting) values  ('superjvpoints', '10000');
insert into settings (name,setting) values  ('superjvpointsmonthly', '250000');
insert into settings (name,setting) values  ('superjvprice', '30');
insert into settings (name,setting) values  ('superjvinterval', 'Lifetime');
insert into settings (name,setting) values  ('superjvpricepoints', '10000000000');
insert into settings (name,setting) values  ('superjvreadearn', '400');
insert into settings (name,setting) values  ('superjvhtmlearn', '500');
insert into settings (name,setting) values  ('superjvbannerclick', '450');
insert into settings (name,setting) values  ('superjvclickearn', '500');
insert into settings (name,setting) values  ('superjvtrafficearn', '375');
insert into settings (name,setting) values  ('superjvhotlinkearn', '500');
insert into settings (name,setting) values  ('superjvbuttonclick', '350');
insert into settings (name,setting) values  ('jvssupersoloearn', '650');
insert into settings (name,setting) values  ('adminsuperjvclickearn', '1000');
insert into settings (name,setting) values  ('superjvpost', '25');
insert into settings (name,setting) values  ('superjvposthtml', '15');
insert into settings (name,setting) values  ('superjvsave', '25');
insert into settings (name,setting) values  ('superjvsavehtml', '20');
insert into settings (name,setting) values  ('superjvsavesolos', '20');
insert into settings (name,setting) values  ('superjvurls', '25');
insert into settings (name,setting) values  ('superjvreflogin', '150');
insert into settings (name,setting) values  ('superjvrefpoints', '10000');
insert into settings (name,setting) values  ('superjvcommission', '0.50');
insert into settings (name,setting) values  ('superjvpercent', '25');
insert into settings (name,setting) values  ('superjvbuycom', '10');
insert into settings (name,setting) values  ('superjvjvcom', '0.00');
insert into settings (name,setting) values  ('superjv2supercom', '1.50');
insert into settings (name,setting) values  ('proptcearn', '0');
insert into settings (name,setting) values  ('jvptcearn', '0.001');
insert into settings (name,setting) values  ('superjvptcearn', '0.001');
insert into settings (name,setting) values  ('ptc1points', '10000000');
insert into settings (name,setting) values  ('ptc2points', '15000000');
insert into settings (name,setting) values  ('ptc3points', '20000000');
insert into settings (name,setting) values  ('ptc1', '5.00');
insert into settings (name,setting) values  ('ptc2', '7.00');
insert into settings (name,setting) values  ('ptc3', '10.00');
insert into settings (name,setting) values  ('pronavtopearn', '100');
insert into settings (name,setting) values  ('jvnavtopearn', '100');
insert into settings (name,setting) values  ('superjvnavtopearn', '250');
insert into settings (name,setting) values  ('navtopprice', '5.00');
insert into settings (name,setting) values  ('navtoppointprice', '8000000');
insert into settings (name,setting) values  ('probotnavearn', '75');
insert into settings (name,setting) values  ('jvbotnavearn', '75');
insert into settings (name,setting) values  ('superjvbotnavearn', '200');
insert into settings (name,setting) values  ('topnavmax', '3');
insert into settings (name,setting) values  ('linkgood', '15');
insert into settings (name,setting) values  ('superjvfullloginadearn', '500');
insert into settings (name,setting) values  ('jvfullloginadearn', '300');
insert into settings (name,setting) values  ('profullloginadearn', '125');
insert into settings (name,setting) values  ('superjvfullloginadprice', '2');
insert into settings (name,setting) values  ('jvfullloginadprice', '5');
insert into settings (name,setting) values  ('profullloginadprice', '10');
insert into settings (name,setting) values  ('fullloginadpointpricesuperjv', '0');
insert into settings (name,setting) values  ('fullloginadpointpricejv', '0');
insert into settings (name,setting) values  ('fullloginadpointpricepro', '0');
insert into settings (name,setting) values  ('superjvfullloginadcredittimer', '7');
insert into settings (name,setting) values  ('jvfullloginadcredittimer', '20');
insert into settings (name,setting) values  ('profullloginadcredittimer', '20');
insert into settings (name,setting) values  ('featuredadwidth', '175');
insert into settings (name,setting) values  ('featuredadheight', '100');
insert into settings (name,setting) values  ('featuredadheightheading', '18');
insert into settings (name,setting) values  ('featuredadmaxheadingchars', '24');
insert into settings (name,setting) values  ('featuredadheadingfontcolor', '#ffffff');
insert into settings (name,setting) values  ('featuredadheadingfontface', 'Tahoma');
insert into settings (name,setting) values  ('featuredadheadingfontsize', '10pt');
insert into settings (name,setting) values  ('featuredadheadingbgcolor', '#000000');
insert into settings (name,setting) values  ('featuredadheadingbordercolor', '#000000');
insert into settings (name,setting) values  ('featuredadmaxdescchars', '');
insert into settings (name,setting) values  ('featuredaddescmaxbodylines', '5');
insert into settings (name,setting) values  ('featuredaddescmaxcharsperline', '24');
insert into settings (name,setting) values  ('featuredadnumberofboxes', '10');
insert into settings (name,setting) values  ('featuredaddescfontcolor', '#000000');
insert into settings (name,setting) values  ('featuredaddescfontface', 'Tahoma');
insert into settings (name,setting) values  ('featuredaddescfontsize', '10pt');
insert into settings (name,setting) values  ('featuredaddescbgcolor', '#ffffff');
insert into settings (name,setting) values  ('featuredaddescbordercolor', '#000000');
insert into settings (name,setting) values  ('featuredadadsbytext', 'Matrix Demo - Multi-Phase Company Forced with Spillover');
insert into settings (name,setting) values  ('featuredadadsbyurl', 'http://demomatrixmpcf.phpsitescripts.com');
insert into settings (name,setting) values  ('featuredadadsbyheight', '22');
insert into settings (name,setting) values  ('featuredadadsbyfontcolor', '#ffffff');
insert into settings (name,setting) values  ('featuredadadsbyfontface', 'Tahoma');
insert into settings (name,setting) values  ('featuredadadsbyfontsize', '10pt');
insert into settings (name,setting) values  ('featuredadadsbybgcolor', '#000000');
insert into settings (name,setting) values  ('featuredadadsbybordercolor', '#000000');
insert into settings (name,setting) values  ('superjvfeaturedadearn', '250');
insert into settings (name,setting) values  ('jvfeaturedadearn', '75');
insert into settings (name,setting) values  ('profeaturedadearn', '75');
insert into settings (name,setting) values  ('superjvfeaturedadprice', '1.25');
insert into settings (name,setting) values  ('jvfeaturedadprice', '2.00');
insert into settings (name,setting) values  ('profeaturedadprice', '3.00');
insert into settings (name,setting) values  ('featuredadpointpricesuperjv', '500000');
insert into settings (name,setting) values  ('featuredadpointpricejv', '0');
insert into settings (name,setting) values  ('featuredadpointpricepro', '0');
insert into settings (name,setting) values  ('superjvfeaturedadcredittimer', '7');
insert into settings (name,setting) values  ('jvfeaturedadcredittimer', '20');
insert into settings (name,setting) values  ('profeaturedadcredittimer', '20');
insert into settings (name,setting) values  ('superjvfeaturedadmaxhits', '5000');
insert into settings (name,setting) values  ('jvfeaturedadmaxhits', '5000');
insert into settings (name,setting) values  ('profeaturedadmaxhits', '0');
insert into settings (name,setting) values  ('superjvhheaderadearn', '250');
insert into settings (name,setting) values  ('jvhheaderadearn', '75');
insert into settings (name,setting) values  ('prohheaderadearn', '75');
insert into settings (name,setting) values  ('superjvhheaderadprice', '1.50');
insert into settings (name,setting) values  ('jvhheaderadprice', '2.75');
insert into settings (name,setting) values  ('prohheaderadprice', '4.00');
insert into settings (name,setting) values  ('hheaderadpointpricesuperjv', '500000');
insert into settings (name,setting) values  ('hheaderadpointpricejv', '0');
insert into settings (name,setting) values  ('hheaderadpointpricepro', '0');
insert into settings (name,setting) values  ('superjvhheaderadcredittimer', '7');
insert into settings (name,setting) values  ('jvhheaderadcredittimer', '20');
insert into settings (name,setting) values  ('prohheaderadcredittimer', '20');
insert into settings (name,setting) values  ('superjvhheaderadmaxhits', '1000');
insert into settings (name,setting) values  ('jvhheaderadmaxhits', '500');
insert into settings (name,setting) values  ('prohheaderadmaxhits', '250');
insert into settings (name,setting) values  ('hheaderadmaxheadingchars', '50');
insert into settings (name,setting) values  ('hheaderadmaxdescchars', '300');
insert into settings (name,setting) values  ('hheaderadtopnotefontcolor', '#ffffff');
insert into settings (name,setting) values  ('hheaderadtopnotefontface', 'Tahoma');
insert into settings (name,setting) values  ('hheaderadtopnotefontsize', '10pt');
insert into settings (name,setting) values  ('hheaderadtopnotebgcolor', '#000000');
insert into settings (name,setting) values  ('hheaderadbottomnotefontcolor', '#000000');
insert into settings (name,setting) values  ('hheaderadbottomnotefontface', 'Tahoma');
insert into settings (name,setting) values  ('hheaderadbottomnotefontsize', '10pt');
insert into settings (name,setting) values  ('hheaderadbottomnotebgcolor', '#ffff33');
insert into settings (name,setting) values  ('superjvhheadlineadearn', '250');
insert into settings (name,setting) values  ('jvhheadlineadearn', '75');
insert into settings (name,setting) values  ('prohheadlineadearn', '75');
insert into settings (name,setting) values  ('superjvhheadlineadprice', '1.25');
insert into settings (name,setting) values  ('jvhheadlineadprice', '2.50');
insert into settings (name,setting) values  ('prohheadlineadprice', '4.00');
insert into settings (name,setting) values  ('hheadlineadpointpricesuperjv', '500000');
insert into settings (name,setting) values  ('hheadlineadpointpricejv', '0');
insert into settings (name,setting) values  ('hheadlineadpointpricepro', '0');
insert into settings (name,setting) values  ('superjvhheadlineadcredittimer', '7');
insert into settings (name,setting) values  ('jvhheadlineadcredittimer', '20');
insert into settings (name,setting) values  ('prohheadlineadcredittimer', '20');
insert into settings (name,setting) values  ('superjvhheadlineadmaxhits', '1000');
insert into settings (name,setting) values  ('jvhheadlineadmaxhits', '500');
insert into settings (name,setting) values  ('prohheadlineadmaxhits', '250');
insert into settings (name,setting) values  ('autoapproveenable', 'yes');
insert into settings (name,setting) values  ('autoapproveenablesurf', 'yes');
insert into settings (name,setting) values  ('prosurfurls', '2');
insert into settings (name,setting) values  ('jvsurfurls', '10');
insert into settings (name,setting) values  ('superjvsurfurls', '25');
insert into settings (name,setting) values  ('prosurfcreditspersite', '1');
insert into settings (name,setting) values  ('jvsurfcreditspersite', '1');
insert into settings (name,setting) values  ('superjvsurfcreditspersite', '5');
insert into settings (name,setting) values  ('prosurftimer', '10');
insert into settings (name,setting) values  ('jvsurftimer', '10');
insert into settings (name,setting) values  ('superjvsurftimer', '5');
insert into settings (name,setting) values  ('prosurfratio', '2');
insert into settings (name,setting) values  ('jvsurfratio', '2');
insert into settings (name,setting) values  ('superjvsurfratio', '1');
insert into settings (name,setting) values  ('prosurfcreditsignupbonus', '25');
insert into settings (name,setting) values  ('jvsurfcreditsignupbonus', '1000');
insert into settings (name,setting) values  ('superjvcreditsignupbonus', '2500');
insert into settings (name,setting) values  ('prodailysurfsitestopostads', '0');
insert into settings (name,setting) values  ('jvdailysurfsitestopostads', '0');
insert into settings (name,setting) values  ('superjvdailysurfsitestopostads', '0');
insert into settings (name,setting) values  ('superjvsurfcreditsignupbonus', '30');
insert into settings (name,setting) values  ('lowerlevel', 'Pro');
insert into settings (name,setting) values  ('middlelevel', 'JV Member');
insert into settings (name,setting) values  ('toplevel', 'Super JV');
insert into settings (name,setting) values  ('admintablebgcolor', '');
insert into settings (name,setting) values  ('testimonialgroupmax', '5');
insert into settings (name,setting) values  ('testimonialrotateorgroup', 'rotate');
insert into settings (name,setting) values  ('testimonialphotopath', '/home/phpsites/public_html/demos/demomatrixmpcf/photos/');
insert into settings (name,setting) values  ('showmembercount', 'yes');
insert into settings (name,setting) values  ('showperlevelmembercount', 'yes');
insert into settings (name,setting) values  ('paymentprocessorfeepercentagetoadd', '5');
insert into settings (name,setting) values  ('minimumbalancetowithdraw', '2.00');
insert into settings (name,setting) values  ('minimumpayout', '5.00');
insert into settings (name,setting) values  ('canbuymultiplepositionsatonce', 'yes');
insert into settings (name,setting) values  ('bonusurl', 'http://phpsitescripts.com');
insert into settings (name,setting) values  ('bonusmin', '1000');
insert into settings (name,setting) values  ('bonusmax', '2000');
insert into settings (name,setting) values  ('dailybonusprice', '3.75');
