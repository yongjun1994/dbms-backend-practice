use webdb;

SELECT * FROM tbl_user;

-- 회원가입 진행(INSERT)
insert into TBL_USER(USER_NAME, USER_AGE)
values ('훈이', 6);

-- 전체 회원 조회
select * from TBL_USER;

-- 이름이 훈이인 회원만 조회
select *
from TBL_USER
where USER_NAME = '훈이';

-- 이름과 나이로 조회
select *
from TBL_USER
where USER_NAME = '짱구' and USER_AGE = 5;

-- 가장 최근에 가입한 사람 순서로 조회
select *
from TBL_USER
order by CREATED_DATE desc;

-- 회원 테이블(TBL_USERS)
create table TBL_USERS(
	users_number INT auto_increment primary key,
	users_id varchar(20) not null unique, -- 로그인 아이디(중복 불가, null 허용하지 않음)
	users_pw varchar(20) not null, -- 비밀번호(null값 허용하지 않음)
	users_name varchar(50) not null, -- 이름
	users_email varchar(100) unique -- 이메일(중복 불가)
);

select * from tbl_users;

insert into tbl_users(users_id, users_pw, users_name, users_email)
values('admin', '1234', '관리자', 'admin@koreait.com');

select * from tbl_users;