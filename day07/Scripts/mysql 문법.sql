-- mysql은 데이터베이스 먼저 선택해야한다
-- 생성된 DB 사용
use world;

select * from city;

-- 데이터 베이스 생성
create database webdb;
-- 데이터베이스 삭제
drop database webdb;
-- 데이터베이스 재생성
create database webdb character set utf8mb4;

-- 데이터베이스 사용
use webdb;

create table tbl_user(
   user_id int auto_increment primary key,
   user_name varchar(20) not null,
   user_age int,
   created_date datetime default CURRENT_TIMESTAMP
);

select * from tbl_user;

drop table tbl_user;

insert into tbl_user(user_name, user_age)
values ('짱구', 5);

select * from tbl_user;

insert into tbl_user(user_name, user_age)
values ('철수', 5), ('맹구', 5);

show table status like 'tbl_user';

show table status;

use world;

select * from city;

use webdb;

-- 현재 세션에서 가장 최근에 삽입된 AUTO_INCREMENT 값을 반환
select last_insert_id();
-- last_insert_id()는 현재 세션 기준, 동시에 여러개의 row를 한 번에 삽입할 경우 가장 첫번째 row의 id만 반환

-- day8
use world;

select * from city;

use webdb;

select * from tbl_user;









