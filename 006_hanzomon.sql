INSERT INTO trainLine (name, companyID) VALUES ('半蔵門線', (SELECT id FROM company WHERE name = '東京メトロ') );

INSERT INTO station (name) VALUES ('渋谷');
INSERT INTO station (name) VALUES ('表参道');
INSERT INTO station (name) VALUES ('青山一丁目');
INSERT INTO station (name) VALUES ('永田町');
INSERT INTO station (name) VALUES ('半蔵門');
INSERT INTO station (name) VALUES ('九段下');
INSERT INTO station (name) VALUES ('神保町');
INSERT INTO station (name) VALUES ('大手町');
INSERT INTO station (name) VALUES ('三越前');
INSERT INTO station (name) VALUES ('水天宮前');
INSERT INTO station (name) VALUES ('清澄白河');
INSERT INTO station (name) VALUES ('住吉');
INSERT INTO station (name) VALUES ('錦糸町');
INSERT INTO station (name) VALUES ('押上');

INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '渋谷'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '表参道'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '青山一丁目'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '永田町'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '半蔵門'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '九段下'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '神保町'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '大手町'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '三越前'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '水天宮前'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '清澄白河'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '住吉'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '錦糸町'));
INSERT INTO trainLineStation (trainLineID,StationID) VALUES ((SELECT id FROM trainLine WHERE name = '半蔵門線'), (SELECT id FROM station WHERE name = '押上'));