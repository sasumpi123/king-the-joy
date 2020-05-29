select *
from member join children using (member_seq)

select *
from class
where member_seq = 21





SELECT 
M.MEMBER_ID,
M.MEMBER_SEQ,
CH.CHILDREN_SEQ,
CH.CHILDREN_NAME,
SL.SCHOOL_SEQ,
C.CLASS_SEQ,
C.CLASS_NAME
FROM MEMBER M
      JOIN CHILDREN CH USING(MEMBER_SEQ) 
      JOIN SCHOOL S USING(CHILDREN_SEQ) 
      JOIN SCHOOL_LIST SL USING(SCHOOL_SEQ)
      JOIN CLASS C USING(SCHOOL_SEQ)
      
      ORDER BY CLASS_SEQ;
      
      
SELECT
C.CHILDREN_NAME,
C.CHILDREN_SEQ,
SC.MEMBER_SEQ,
SC.SCHOOL_SEQ,
CL.CLASS_SEQ,
CL.CLASS_NAME
FROM CHILDREN C 
     JOIN SCHOOL SC USING(CHILDREN_SEQ)
     JOIN CLASS CL USING(CHILDREN_SEQ);
     
SELECT
C.CHILDREN_NAME,
C.CHILDREN_SEQ,
SC.MEMBER_SEQ,
SC.SCHOOL_SEQ
FROM CHILDREN C 
     JOIN SCHOOL SC USING(CHILDREN_SEQ);
     
SELECT * FROM CHILDREN;     
     
SELECT * FROM SCHOOL;

SELECT * FROM CLASS;


SELECT 
CHILDREN_NAME, 
CHILDREN_SEQ, 
MEMBER_SEQ,
CLASS_NAME,
SCHOOL_SEQ,
CLASS_SEQ 
FROM CHILDREN 
JOIN SCHOOL USING(CHILDREN_SEQ, MEMBER_SEQ) 
JOIN CLASS USING(CHILDREN_SEQ, MEMBER_SEQ,SCHOOL_SEQ)
ORDER BY CLASS_NAME;



MEMBER_ID,
SCHOOL_SEQ,
CLASS_NAME 
     
--초반에 한 것
SELECT * FROM MEMBER 
		      JOIN CHILDREN USING(MEMBER_SEQ) 
		      JOIN SCHOOL USING(CHILDREN_SEQ) 
		      JOIN CLASS USING(SCHOOL_SEQ)
		      ORDER BY CLASS_SEQ
      
      
DROP SEQUENCE PILL_SEQ;
DROP TABLE PILL;

CREATE SEQUENCE PILL_SEQ;
CREATE TABLE PILL(
PILL_SEQ NUMBER PRIMARY KEY,
MEMBER_SEQ NUMBER NOT NULL,
PILL_TITLE VARCHAR2(100) NOT NULL,
PILL_SYMPTON VARCHAR2(100) NOT NULL,
PILL_TYPE VARCHAR2(100) NOT NULL,
PILL_SPECIAL VARCHAR2(2000) NOT NULL,
SCHOOL_SEQ NUMBER NOT NULL,
MEMBER_NAME VARCHAR2(100) NOT NULL,
CHILDREN_NAME VARCHAR2(100) NOT NULL,
PILL_DATE DATE NOT NULL,
CONSTRAINT PILL_FK_MEMBER_SEQ FOREIGN KEY(MEMBER_SEQ) REFERENCES "MEMBER"(MEMBER_SEQ)
);     
      
SELECT * FROM PILL


SELECT B.* FROM
(SELECT A.*, ROWNUM AS RNUM FROM 
      (SELECT
		CHILDREN_NAME,
		CHILDREN_SEQ,
		MEMBER_SEQ,
		CLASS_NAME,
		SCHOOL_SEQ,
		CLASS_SEQ
		FROM CHILDREN
		JOIN SCHOOL USING(CHILDREN_SEQ,
		MEMBER_SEQ)
		JOIN CLASS USING(CHILDREN_SEQ, MEMBER_SEQ,SCHOOL_SEQ)
		ORDER
		BY CLASS_NAME,CHILDREN_SEQ DESC)A)B
		WHERE SCHOOL_SEQ = #{school_seq} AND RNUM BETWEEN
		#{to} AND #{from}
      
      
select * from pill; 
      
      
 SELECT CH.CHILDREN_NAME,
	    CH.CHILDREN_SEQ,
		S.MEMBER_SEQ,
		S.SCHOOL_SEQ,
		C.CLASS_SEQ,
		C.CLASS_NAME FROM CHILDREN CH
	    JOIN(SELECT SCHOOL_SEQ, COUNT(*) AS TOTALPAGE 
		FROM SCHOOL GROUP BY SCHOOL_SEQ) S
		USING(CHILDREN_SEQ,MEMBER_SEQ)
		JOIN  CLASS C USING(SCHOOL_SEQ,CHILDREN_SEQ,MEMBER_SEQ)
		
		
SELECT CH.CHILDREN_NAME,
	    CH.CHILDREN_SEQ,
		S.MEMBER_SEQ,
		S.SCHOOL_SEQ 
		FROM CHILDREN CH	
		JOIN (SELECT SCHOOL_SEQ
		FROM SCHOOL GROUP BY SCHOOL_SEQ) S USING(CHILDREN_SEQ,MEMBER_SEQ)
		
		
		JOIN CLASS  USING(CHILDREN_SEQ, MEMBER_SEQ,SCHOOL_SEQ)		
		
		
		
		
		
		
		
	SELECT CHILDREN_NAME,
	    CHILDREN_SEQ,
		MEMBER_SEQ,
		SCHOOL_SEQ 
		FROM CHILDREN	
		JOIN SCHOOL USING(CHILDREN_SEQ,MEMBER_SEQ)
		JOIN CLASS  USING(CHILDREN_SEQ, MEMBER_SEQ,SCHOOL_SEQ)
		
		
SELECT B.BNO, B.UNO, U.NAME, B.PNO, B.IFLIKE, B.TITLE, B.CONTENT, B.BDATE, 
B.COUNT, B.RECO, B.IMG, R.RCOUNT
FROM BOARD B
LEFT JOIN
(SELECT BNO, COUNT(*) AS RCOUNT
FROM REPLY
GROUP BY BNO) R
USING(BNO)
LEFT JOIN USERS U USING (UNO)

		
      
    SELECT 
        CH.CHILDREN_NAME,
	    CH.CHILDREN_SEQ,
		S.MEMBER_SEQ,
		C.CLASS_NAME,
		S.SCHOOL_SEQ,
		C.CLASS_SEQ
		FROM CHILDREN CH(SELECT CHILDREN_SEQ, COUNT(*) AS TOTALPAGE )
		JOIN SCHOOL S USING(CHILDREN_SEQ,MEMBER_SEQ)
		JOIN CLASS C USING(CHILDREN_SEQ, MEMBER_SEQ,SCHOOL_SEQ)  
      

select * from pill














SELECT B.CHILDREN_NAME,
		CHILDREN_SEQ,
		MEMBER_SEQ,
		CLASS_NAME,
		SCHOOL_SEQ,
		CLASS_SEQ FROM(SELECT A.CHILDREN_NAME,
		CHILDREN_SEQ,
		MEMBER_SEQ,
		CLASS_NAME,
		SCHOOL_SEQ,
		CLASS_SEQ,ROWNUM AS RNUM FROM(
		SELECT
		CHILDREN_NAME,
		CHILDREN_SEQ,
		MEMBER_SEQ,
		CLASS_NAME,
		SCHOOL_SEQ,
		CLASS_SEQ
		FROM CHILDREN
		JOIN SCHOOL USING(CHILDREN_SEQ,
		MEMBER_SEQ)
		JOIN CLASS USING(CHILDREN_SEQ, MEMBER_SEQ,SCHOOL_SEQ)
		ORDER
		BY CLASS_NAME,CHILDREN_SEQ DESC)A)B
		WHERE SCHOOL_SEQ = 1
		AND RNUM BETWEEN 1 AND 10
		
		
		
		
		
		
		
SELECT COUNT(*) AS TOTALPAGE        
        FROM(SELECT  CHILDREN_NAME,
		CHILDREN_SEQ,
		MEMBER_SEQ,
		CLASS_NAME,
		SCHOOL_SEQ,
		CLASS_SEQ
		FROM CHILDREN
		JOIN SCHOOL USING(CHILDREN_SEQ, MEMBER_SEQ)
		JOIN CLASS USING(CHILDREN_SEQ, MEMBER_SEQ, SCHOOL_SEQ)
		)WHERE SCHOOL_SEQ = 1
		
		
	//children list 원래 쿼리문
	SELECT
		CHILDREN_NAME,
		CHILDREN_SEQ,
		MEMBER_SEQ,
		CLASS_NAME,
		SCHOOL_SEQ,
		CLASS_SEQ
		FROM CHILDREN
		JOIN SCHOOL USING(CHILDREN_SEQ,
		MEMBER_SEQ)
		JOIN CLASS USING(CHILDREN_SEQ, MEMBER_SEQ,SCHOOL_SEQ)
		WHERE SCHOOL_SEQ = #{school_seq}
		ORDER
		BY CLASS_NAME,CHILDREN_SEQ DESC
		
		
		
	SELECT COUNT(*) AS TOTALPAGE        
        FROM(SELECT  CHILDREN_NAME,
		CHILDREN_SEQ,
		MEMBER_SEQ,
		CLASS_NAME,
		SCHOOL_SEQ,
		CLASS_SEQ
		FROM CHILDREN
		JOIN SCHOOL USING(CHILDREN_SEQ, MEMBER_SEQ)
		JOIN CLASS USING(CHILDREN_SEQ, MEMBER_SEQ, SCHOOL_SEQ)
		)WHERE SCHOOL_SEQ = 1	
		
		SELECT COUNT(*) AS TOTALPAGE        
        FROM(SELECT  CHILDREN_NAME,
		CHILDREN_SEQ,
		MEMBER_SEQ,
		CLASS_NAME,
		SCHOOL_SEQ,
		CLASS_SEQ
		FROM CHILDREN
		JOIN SCHOOL USING(CHILDREN_SEQ, MEMBER_SEQ)
		JOIN CLASS USING(CHILDREN_SEQ, MEMBER_SEQ, SCHOOL_SEQ)
		)WHERE SCHOOL_SEQ = 1
		
























