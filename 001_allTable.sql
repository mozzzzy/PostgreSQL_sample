-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'serviceUser'
-- 車椅子を使い予約を行うユーザー
-- ---

DROP TABLE IF EXISTS serviceUser;

CREATE TABLE serviceUser (
  id SERIAL NOT NULL ,
  name VARCHAR(50) NOT NULL ,
  password VARCHAR(50) NOT NULL ,
  PRIMARY KEY (id)
);

-- ---
-- Table 'reserve'
-- 予約テーブル
-- ---

DROP TABLE IF EXISTS reserve;

CREATE TABLE reserve (
  id SERIAL NOT NULL ,
  serviceUserID INTEGER NOT NULL ,
  fromStationID INTEGER NOT NULL ,
  toStationID INTEGER NOT NULL ,
  groupID INTEGER NOT NULL ,
  fromTime TIMESTAMP NOT NULL ,
  toTime TIMESTAMP NOT NULL ,
  companyID INTEGER NOT NULL ,
  PRIMARY KEY (id)
);

-- ---
-- Table 'station'
-- 各々の駅の情報
-- ---

DROP TABLE IF EXISTS station;

CREATE TABLE station (
  id SERIAL NOT NULL ,
  name VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (id)
) ;

-- ---
-- Table 'trainLine'
-- 路線一覧
-- ---

DROP TABLE IF EXISTS trainLine;

CREATE TABLE trainLine (
  id SERIAL NOT NULL ,
  name VARCHAR(20) NOT NULL ,
  companyID INTEGER NOT NULL ,
  PRIMARY KEY (id)
) ;

-- ---
-- Table 'company'
-- 鉄道会社一覧
-- ---

DROP TABLE IF EXISTS company;

CREATE TABLE company (
  id SERIAL NOT NULL ,
  name VARCHAR(20) NOT NULL ,
  PRIMARY KEY (id)
) ;

-- ---
-- Table 'reserveStatus'
-- 予約の詳細
-- ---

DROP TABLE IF EXISTS reserveStatus;

CREATE TABLE reserveStatus (
  id SERIAL NOT NULL ,
  reserveID INTEGER NOT NULL ,
  stationID INTEGER NOT NULL ,
  status VARCHAR(100) NOT NULL ,
  statusTimeStamp TIMESTAMP NOT NULL ,
  PRIMARY KEY (id)
) ;

-- ---
-- Table 'stationUser'
-- 駅ユーザ
-- ---

DROP TABLE IF EXISTS stationUser;

CREATE TABLE stationUser (
  id SERIAL NOT NULL ,
  name VARCHAR(20) NOT NULL ,
  password VARCHAR(20) NOT NULL ,
  stationID INTEGER NOT NULL ,
  PRIMARY KEY (id)
) ;

-- ---
-- Table 'chat'
--
-- ---

DROP TABLE IF EXISTS chat;

CREATE TABLE chat (
  id SERIAL NOT NULL ,
  serviceUserID INTEGER NOT NULL ,
  stationUserID INTEGER NOT NULL ,
  message INTEGER NOT NULL ,
  status INTEGER NOT NULL ,
  createdAt INTEGER NOT NULL ,
  PRIMARY KEY (id)
);

-- ---
-- Table 'trainLineStation'
--
-- ---

DROP TABLE IF EXISTS trainLineStation;

CREATE TABLE trainLineStation (
  id SERIAL NOT NULL ,
  trainLineID INTEGER NOT NULL ,
  StationID INTEGER NOT NULL ,
  PRIMARY KEY (id)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE reserve ADD FOREIGN KEY (serviceUserID) REFERENCES serviceUser (id);
ALTER TABLE reserve ADD FOREIGN KEY (companyID) REFERENCES company (id);
--- kitano add
ALTER TABLE reserve ADD FOREIGN KEY (fromStationID) REFERENCES station(id);
ALTER TABLE reserve ADD FOREIGN KEY (toStationID) REFERENCES station(id);

ALTER TABLE trainLine ADD FOREIGN KEY (companyID) REFERENCES company (id);
ALTER TABLE reserveStatus ADD FOREIGN KEY (reserveID) REFERENCES reserve (id);
ALTER TABLE reserveStatus ADD FOREIGN KEY (stationID) REFERENCES station (id);
ALTER TABLE stationUser ADD FOREIGN KEY (stationID) REFERENCES station (id);
ALTER TABLE chat ADD FOREIGN KEY (serviceUserID) REFERENCES serviceUser (id);
ALTER TABLE chat ADD FOREIGN KEY (stationUserID) REFERENCES stationUser (id);
ALTER TABLE trainLineStation ADD FOREIGN KEY (trainLineID) REFERENCES trainLine (id);
ALTER TABLE trainLineStation ADD FOREIGN KEY (StationID) REFERENCES station (id);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE serviceUser ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE reserve ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE station ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE trainLine ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE company ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE reserveStatus ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE stationUser ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE chat ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE trainLineStation ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO serviceUser (id,name,password) VALUES
-- ('','','');
-- INSERT INTO reserve (id,serviceUserID,fromStationID,toStationID,groupID,fromTime,toTime,companyID) VALUES
-- ('','','','','','','','');
-- INSERT INTO station (id,name) VALUES
-- ('','');
-- INSERT INTO trainLine (id,name,companyID) VALUES
-- ('','','');
-- INSERT INTO company (id,name) VALUES
-- ('','');
-- INSERT INTO reserveStatus (id,reserveID,stationID,status,statusTimeStamp) VALUES
-- ('','','','','');
-- INSERT INTO stationUser (id,name,password,stationID) VALUES
-- ('','','','');
-- INSERT INTO chat (id,serviceUserID,stationUserID,message,status,createdAt) VALUES
-- ('','','','','','');
-- INSERT INTO trainLineStation (id,trainLineID,StationID) VALUES
-- ('','','');

