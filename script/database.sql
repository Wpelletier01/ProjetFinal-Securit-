CREATE TABLE `ChannelDetails` (
  `ChannelID` int(10) unsigned NOT NULL,
  `Fname` varchar(25) NOT NULL,
  `Mname` varchar(25) DEFAULT NULL,
  `Lname` varchar(25) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Birth` date NOT NULL,
  PRIMARY KEY (`Email`),
  KEY `ChannelID` (`ChannelID`),
  CONSTRAINT `ChannelDetails_ibfk_1` FOREIGN KEY (`ChannelID`) REFERENCES `Channels` (`ChannelID`)
);

CREATE TABLE `Channels` (
  `ChannelID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(60) NOT NULL,
  PRIMARY KEY (`ChannelID`),
  UNIQUE KEY `Password` (`Password`)
);

CREATE TABLE `Videos` (
  `VideoID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PathHash` varchar(7) NOT NULL,
  `ChannelID` int(10) unsigned NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` mediumtext NOT NULL,
  `Upload` datetime NOT NULL,
  `Like` int(12) NOT NULL DEFAULT 0,
  `Dislike` int(12) NOT NULL DEFAULT 0,
  PRIMARY KEY (`VideoID`),
  KEY `ChannelID` (`ChannelID`),
  CONSTRAINT `Videos_ibfk_1` FOREIGN KEY (`ChannelID`) REFERENCES `Channels` (`ChannelID`)
)