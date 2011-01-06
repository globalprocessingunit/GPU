CREATE TABLE `tbclient` (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`nodeid` VARCHAR( 32 ) NOT NULL ,
`nodename` VARCHAR( 32 ) NOT NULL ,
`country` VARCHAR( 32 ) NOT NULL ,
`region` VARCHAR( 32 ) NULL ,
`city` VARCHAR( 32 ) NULL ,
`zip` VARCHAR( 32 ) NULL ,
`ip` VARCHAR( 32 ) NULL ,
`port` VARCHAR( 32 ) NULL ,
`localip` VARCHAR( 32 ) NULL ,
`os` VARCHAR( 32 ) NOT NULL ,
`version` VARCHAR( 16 ) NOT NULL,
`acceptincoming` INT NOT NULL DEFAULT '0',
`gigaflops` INT NOT NULL,
`ram` INT NOT NULL,
`mhz` INT NOT NULL,
`nbcpus` INT NOT NULL,
`bits` INT NOT NULL,
`isscreensaver` INT NOT NULL DEFAULT '0',
`uptime` DOUBLE NOT NULL ,
`totaluptime` DOUBLE NOT NULL ,
`longitude` DOUBLE NOT NULL ,
`latitude` DOUBLE NOT NULL ,
`userid` VARCHAR( 32 ) NOT NULL ,
`team` VARCHAR( 64 ) NOT NULL ,
`description` VARCHAR( 256 ) NULL ,
`cputype` VARCHAR( 64 ) NULL,
`create_dt` DATETIME NOT NULL,
`update_dt` DATETIME NULL
) ENGINE = MYISAM ;


CREATE TABLE `tbchannel` (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`nodeid` VARCHAR( 32 ) NOT NULL ,
`nodename` VARCHAR( 32 ) NOT NULL ,
`user` VARCHAR( 32 ) NOT NULL ,
`channame` VARCHAR( 32 ) NULL ,
`chantype` VARCHAR( 32 ) NULL ,
`ip` VARCHAR( 32 ) NULL ,
`usertime_dt` DATETIME NULL,
`create_dt` DATETIME NOT NULL
) ENGINE = MYISAM ;