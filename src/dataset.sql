 CREATE TABLE nodes
(node1 VARCHAR NOT NULL ,
 node2 VARCHAR NOT NULL ,
 cost NUMERIC NOT NULL );

INSERT INTO nodes VALUES ('a', 'b', 10);
INSERT INTO nodes VALUES ('b', 'a', 10);
INSERT INTO nodes VALUES ('a', 'd', 20);
INSERT INTO nodes VALUES ('d', 'a', 20);
INSERT INTO nodes VALUES ('a', 'c', 15);
INSERT INTO nodes VALUES ('c', 'a', 15);
INSERT INTO nodes VALUES ('b', 'c', 35);
INSERT INTO nodes VALUES ('c', 'b', 35);
INSERT INTO nodes VALUES ('d', 'b', 25);
INSERT INTO nodes VALUES ('b', 'd', 25);
INSERT INTO nodes VALUES ('d', 'c', 30);
INSERT INTO nodes VALUES ('c', 'd', 30);