
select * from school

  CREATE TABLE "SCHOOL" 
   (	"CHILDREN_SEQ" NUMBER, 
	"MEMBER_SEQ" NUMBER NOT NULL ENABLE, 
	"SCHOOL_SEQ" NUMBER NOT NULL ENABLE
   );
 
INSERT INTO SCHOOL
(CHILDREN_SEQ, MEMBER_SEQ, SCHOOL_SEQ)
VALUES(, 0, 0);
   
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES 
(NULL,6,6);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(NULL,22,43);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(50,84,51);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(NULL,83,46);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(48,84,51);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(49,84,51);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(NULL,6,5);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(NULL,6,5);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(NULL,66,44);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(53,86,1);

INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES 
(51,85,1);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(52,85,1);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(54,86,1);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(55,87,1);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(56,87,1);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(57,88,1);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(58,88,1);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(59,89,1);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(60,89,1);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(61,90,1);

INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES 
(62,90,1);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(7,21,1);
INSERT INTO SCHOOL (CHILDREN_SEQ,MEMBER_SEQ,SCHOOL_SEQ) VALUES
(NULL,81,45);




  CREATE TABLE "SCHOOL_LIST" 
   (	"SCHOOL_SEQ" NUMBER, 
	"SCHOOL_NAME" VARCHAR2(500) NOT NULL ENABLE, 
	"SCHOOL_ADDR" VARCHAR2(500) NOT NULL ENABLE, 
	 PRIMARY KEY ("SCHOOL_SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES 
(6,'aaa','서울 동작구 만양로 5-1 (상도동, 나동)');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(48,'마','서울 관악구 미성길 5 (신림동)');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(43,'a,,',',,');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(46,'두','서울 금천구 두산로 3 (독산동)');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(51,'어디유치원','충남 당진시 어디실길 13 (대덕동)');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(1,'수도유치원','경기 수원시 장안구 장안로 278 (정자동)');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(2,'강남 유정유치원','서울 강남구 광평로34길 17 (수서동)');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(5,'병설유치원','서울 강남구 강남대로 238 (도곡동)');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(44,'어디게','부산 기장군 기장읍 동암해안길 6');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(50,'a','서울 강서구 마곡서로 13 (마곡동)');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(4,'ㅇㄷ','서울 동대문구 망우로 1 (휘경동)');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(45,'두두유치원','전남 신안군 장산면 두두리길 62-16');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(49,'마','서울 강서구 마곡서로 13 (마곡동)');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(3,'a','부산 해운대구 APEC로 17 (우동)');
INSERT INTO SCHOOL_LIST (SCHOOL_SEQ,SCHOOL_NAME,SCHOOL_ADDR) VALUES
(47,'란','서울 구로구 도림로 4-3 (구로동)');


SELECT *
FROM MEMBER JOIN CLASS USING(MEMBER_SEQ)
WHERE MEMBER_ROLE = 2

SELECT *
FROM MEMBER
WHERE MEMBER_ROLE = 2

SELECT * FROM CHILDREN

SELECT *
FROM MEMBER JOIN CLASS USING(MEMBER_SEQ)
WHERE MEMBER_ROLE = 2
AND MEMBER_DELFLAG = 'N'
ORDER BY MEMBER_SEQ DESC

UPDATE MEMBER SET MEMBER_DELFLAG = 'N' WHERE MEMBER_SEQ = 22

SELECT * FROM CLASS WHERE MEMBER_SEQ = 22
UPDATE CLASS SET CLASS_NAME = '장미반' WHERE MEMBER_SEQ = 22

INSERT INTO CLASS(CLASS_SEQ, CLASS_NAME, CHILDREN_SEQ, MEMBER_SEQ, SCHOOL_SEQ)
 VALUES(CLASS_SEQ.NEXTVAL, '미정', 0, 125, 1 )
 
 SELECT member_seq FROM MEMBER WHERE MEMBER_ID = 't2'
 