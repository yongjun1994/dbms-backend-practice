-- 테이블 생성
CREATE TABLE TBL_USER(
   USER_ID VARCHAR2(30),
   USER_PW VARCHAR2(30),
   USER_NAME VARCHAR2(30),
   USER_AGE NUMBER,
   USER_GENDER VARCHAR2(10),
   USER_BIRTH DATE,
   CONSTRAINT PK_USER PRIMARY KEY(USER_ID)
);

-- 테이블 조회
SELECT * FROM TBL_USER;

-- 컬럼추가
ALTER TABLE TBL_USER
ADD (USER_PHONE VARCHAR2(15));

-- 컬럼삭제
ALTER TABLE TBL_USER
DROP COLUMN USER_PHONE;

-- 컬럼 자료형 변경
ALTER TABLE TBL_USER
MODIFY (USER_GENDER CHAR(1));

-- 컬럼명 변경
ALTER TABLE TBL_USER
RENAME COLUMN USER_PW TO USER_PASSWORD;

-- 기본값 추가 USER_GENDER
ALTER TABLE TBL_USER
MODIFY (USER_GENDER DEFAULT 'M');

-- 제약조건 추가
-- CHECK 제약조건 : ADD CONSTRAINT 사용
ALTER TABLE TBL_USER 
ADD CONSTRAINT CHK_USER CHECK(USER_GENDER IN ('M', 'W'));

-- NOT NULL 제약조건 : 오라클 문법에서 자료형을 함께 지정해야함
ALTER TABLE TBL_USER
MODIFY (USER_NAME VARCHAR2(30) NOT NULL);

-- 제약조건 삭제 : 제약조건의 이름을 알고있어야한다!
ALTER TABLE TBL_USER 
DROP CONSTRAINT SYS_C007117;

-- 테이블명 변경
ALTER TABLE TBL_USER 
RENAME TO TBL_MEMBER;

SELECT * FROM TBL_MEMBER;

-- 테이블 삭제
DROP TABLE TBL_MEMBER;

-- 테이블 생성
CREATE TABLE TBL_USER(
   USER_NUMBER NUMBER,
   USER_ID VARCHAR2(30),
   USER_PW VARCHAR2(30),
   USER_NAME VARCHAR2(30),
   USER_AGE NUMBER,
   USER_GENDER CHAR(1) DEFAULT 'M',
   CONSTRAINT PK_USER PRIMARY KEY(USER_NUMBER)
);

SELECT * FROM TBL_USER;

-- 데이터 삽입(DML)
INSERT INTO TBL_USER 
VALUES (1, 'kim123', 'pw123', '김철수', 25, 'M');

INSERT INTO TBL_USER
VALUES (2, 'lee456', 'pw456', '이영희', 25, 'F');

SELECT * FROM tbl_user;

-- 시퀀스 생성
CREATE SEQUENCE SEQ_USER_NO
START WITH 3
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- 시퀀스 생성된 것은 아래처럼 사용할 수 없다
--SELECT * FROM SEQ_USER_NO;

-- 시퀀스 사용
INSERT INTO TBL_USER 
VALUES(SEQ_USER_NO.NEXTVAL, 'kim77', 'pw77', '김영희', 28, 'F');


SELECT * FROM tbl_user;

-- 현재 번호 확인
SELECT seq_user_no.currval FROM dual;
-- 다음 번호 확인
--무조건소모
SELECT seq_user_no.nextval FROM dual; 



INSERT INTO TBL_USER(USER_NUMBER, USER_ID, USER_PW, USER_NAME, USER_AGE)
VALUES(SEQ_USER_NO.NEXTVAL, ?, ?, ?, ?);


SELECT * FROM tbl_user;

SELECT user_id, user_pw, user_name
FROM tbl_user
WHERE user_id = 'kim123' AND user_pw='pw123';

-- select 컬럼명 from 테이블명 where 조건식 order by 정렬기준컬럼명 ASC or DESC;
-- insert into 테이블명 values(컬럼명,...);
-- update 테이블명 set 컬럼명=바꿀값 where 조건식;
-- delete from 테이블명 where 조건식;

UPDATE tbl_user
SET user_name='김뚜비';

SELECT * FROM tbl_user;

UPDATE TBL_USER
SET USER_NAME = '김철수'
WHERE user_id = 'kim123';

UPDATE tbl_user
SET user_id = 'web01', user_pw = 'web123', user_name='김보라', user_age = 20, user_gender = 'F'
WHERE user_number = 1;

UPDATE tbl_user
SET user_id = 'web01', user_pw = 'web123', user_name='김보라', user_age = 20, user_gender = 'F'
WHERE user_id = 'test' AND user_pw = 'test123';

SELECT * FROM tbl_user;

--TRUNCATE TABLE TBL_USER;

-- 회원 1명 탈퇴
DELETE FROM TBL_USER;
WHERE tb1_number = 8;