CREATE TABLE  TEST_PART1(
       CDATE     VARCHAR2(8)  NOT NULL,
       CUSTOMER  VARCHAR2(10) NOT NULL,
       SALES     NUMBER,
       CONSTRAINT PART1_PK PRIMARY KEY (CDATE,CUSTOMER)
                        );
INSERT INTO TEST_PART1 VALUES ('20000501','112054',1);
INSERT INTO TEST_PART1 VALUES ('20000502','112054',2);
INSERT INTO TEST_PART1 VALUES ('20000504','112054',4);
INSERT INTO TEST_PART1 VALUES ('20000505','112054',5);
INSERT INTO TEST_PART1 VALUES ('20000501','112055',6);
INSERT INTO TEST_PART1 VALUES ('20000503','112055',8);
INSERT INTO TEST_PART1 VALUES ('20000504','112055',9);
INSERT INTO TEST_PART1 VALUES ('20000505','112055',10);
INSERT INTO TEST_PART1 VALUES ('20000502','112056',12);
INSERT INTO TEST_PART1 VALUES ('20000503','112056',13);
INSERT INTO TEST_PART1 VALUES ('20000504','112056',14);
INSERT INTO TEST_PART1 VALUES ('20000505','112056',15);
CREATE TABLE  TEST_PART2(
       CDATE     VARCHAR2(8)  NOT NULL,
       CUSTOMER  VARCHAR2(10) NOT NULL,
       SALES     NUMBER,
       CONSTRAINT PART2_PK PRIMARY KEY (CDATE,CUSTOMER)
                        );
INSERT INTO TEST_PART2 VALUES ('20000502','112056',12);
INSERT INTO TEST_PART2 VALUES ('20000503','112056',13);
INSERT INTO TEST_PART2 VALUES ('20000504','112056',14);
INSERT INTO TEST_PART2 VALUES ('20000505','112056',15);
INSERT INTO TEST_PART2 VALUES ('20000501','112057',16);
INSERT INTO TEST_PART2 VALUES ('20000502','112057',17);
INSERT INTO TEST_PART2 VALUES ('20000504','112057',19);
INSERT INTO TEST_PART2 VALUES ('20000505','112057',20);
INSERT INTO TEST_PART2 VALUES ('20000501','112058',21);
INSERT INTO TEST_PART2 VALUES ('20000502','112058',22);
INSERT INTO TEST_PART2 VALUES ('20000503','112058',23);
INSERT INTO TEST_PART2 VALUES ('20000504','112058',24); 
COMMIT;