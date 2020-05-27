CREATE TABLE MEMBER(
	MEMBER_SEQ NUMBER NOT NULL,
	MEMBER_ID VARCHAR2(500) NOT NULL,
	MEMBER_PW VARCHAR2(500) NOT NULL,
	MEMBER_NAME VARCHAR2(500) NOT NULL,
	MEMBER_PHONE VARCHAR2(500) NOT NULL,
	MEMBER_EMAIL VARCHAR2(500) NOT NULL,
	MEMBER_ROLE NUMBER NOT NULL,
	MEMBER_DELFLAG CHAR(2) DEFAULT 'N' NOT NULL,
	MEMBER_OADDR VARCHAR2(500) NOT NULL,
	MEMBER_ADDR VARCHAR2(500) NOT NULL,
	MEMBER_DETAILADDR VARCHAR2(500) NOT NULL,
	MEMBER_DATE DATE DEFAULT SYSDATE,
	
	CONSTRAINT MEMBER_PK PRIMARY KEY(MEMBER_SEQ),
	CONSTRAINT MEMBER_UQ UNIQUE(MEMBER_EMAIL, MEMBER_PHONE)
);

CREATE SEQUENCE MEMBER_SEQ;

SELECT * FROM MEMBER;

INSERT INTO MEMBER(MEMBER_SEQ, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_PHONE, MEMBER_EMAIL, MEMBER_ROLE, MEMBER_DELFLAG, MEMBER_ADDR, MEMBER_DATE)
VALUES(MEMBER_SEQ.NEXTVAL, 'admin', 'admin', '愿�由ъ옄', '01056068300', 'fkdkdk3@daum.net', 0, 'N', '愿�由ъ옄吏�', SYSDATE);

CREATE TABLE SCHOOL(
	CHILDREN_SEQ NUMBER NOT NULL,
	MEMBER_SEQ NUMBER NOT NULL,
	SCHOOL_SEQ NUMBER NOT NULL,
	
	CONSTRAINT FK_KID FOREIGN KEY(CHILDREN_SEQ) REFERENCES CHILDREN(CHILDREN_SEQ) ON DELETE CASCADE,
	CONSTRAINT FK_SCH FOREIGN KEY(SCHOOL_SEQ) REFERENCES SCHOOL_LIST(SCHOOL_SEQ) ON DELETE CASCADE,
	CONSTRAINT FK_MEM FOREIGN KEY(MEMBER_SEQ) REFERENCES MEMBER(MEMBER_SEQ) ON DELETE CASCADE
)

CREATE TABLE CHILDREN(
	CHILDREN_SEQ NUMBER NOT NULL,
	MEMBER_SEQ NUMBER NOT NULL,
	CHILDREN_NAME VARCHAR2(500) NOT NULL,
	RIDING_QUIT VARCHAR2(50) NOT NULL,
	
	CONSTRAINT CHILDREN_PK_CHILDREN_SEQ PRIMARY KEY(CHILDREN_SEQ),
	CONSTRAINT CHILDREN_FK_MEMBER_SEQ FOREIGN KEY(MEMBER_SEQ) REFERENCES "MEMBER"(MEMBER_SEQ)
);

CREATE TABLE SCHOOL_LIST(
	SCHOOL_SEQ NUMBER PRIMARY KEY,
	SCHOOL_NAME VARCHAR2(500) NOT NULL,
	SCHOOL_ADDR VARCHAR2(500) NOT NULL
)

CREATE SEQUENCE SCHOOL_SEQ;
CREATE SEQUENCE CHILDREN_SEQ;
DROP SCHOOL_SEQ 

SELECT * FROM MEMBER

DROP TABLE SCHOOL
CREATE TABLE CLASS(
	CLASS_SEQ NUMBER PRIMARY KEY,
	CLASS_NAME VARCHAR2(500) NOT NULL,
	CHILDREN_SEQ NUMBER NOT NULL,
	MEMBER_SEQ NUMBER NOT NULL,
	SCHOOL_SEQ NUMBER NOT NULL,
	 
	CONSTRAINT CLASS_FK_KID FOREIGN KEY(CHILDREN_SEQ) REFERENCES CHILDREN(CHILDREN_SEQ) ON DELETE CASCADE,
	CONSTRAINT CLASS_FK_SCH FOREIGN KEY(SCHOOL_SEQ) REFERENCES SCHOOL_LIST(SCHOOL_SEQ) ON DELETE CASCADE,
	CONSTRAINT CLASS_FK_MEM FOREIGN KEY(MEMBER_SEQ) REFERENCES MEMBER(MEMBER_SEQ) ON DELETE CASCADE
)
CREATE SEQUENCE SCHOOL_SEQ;
CREATE SEQUENCE CHILDREN_SEQ;
DROP TABLE CHILDREN;
DROP TABLE SCHOOL_LIST;
SELECT * FROM SCHOOL_LIST

SELECT NOTIFICATION_SEQ
FROM
	(SELECT NOTIFICATION_SEQ
	FROM NOTIFICATION
	WHERE MEMBER_SEQ = 1
	ORDER BY NOTIFICATION_SEQ DESC)
WHERE ROWNUM = 1;

SELECT SCHOOL_SEQ
FROM SCHOOL_LIST
WHERE SCHOOL_NAME = #{school_name} AND SCHOOL_ADDR = #{school_addr}

CREATE TABLE SCHOOL(
	CHILDREN_SEQ NUMBER NOT NULL,
	MEMBER_SEQ NUMBER NOT NULL,
	SCHOOL_SEQ NUMBER NOT NULL
)


INSERT INTO SCHOOL
VALUES(
	#{children_seq},
	#{member_seq},
	#{school_seq}
)

DELETE FROM CHILDREN
WHERE MEMBER_SEQ = 21;

SELECT SCHOOL_SEQ
FROM SCHOOL
WHERE MEMBER_SEQ = 41
AND ROWNUM >= 1 AND ROWNUM < 2;

SELECT CHILDREN_SEQ
FROM
	(SELECT CHILDREN_SEQ
	FROM CHILDREN
	WHERE MEMBER_SEQ = 66
	ORDER BY CHILDREN_SEQ DESC)
WHERE ROWNUM = 1

