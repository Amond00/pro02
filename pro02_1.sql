create database myshop;
commit;
use myshop;
create table custom (
	cusId varchar(13) primary key, 
    cusPw varchar(200) not null,
    cusName varchar(50) not null,
    address varchar(500) not null,
    tel varchar(14) not null,
    regDate datetime default now(),
    point int default 0,
    level int default 0,
    visited int default 0
);

create table notice(
	notiNo int primary key auto_increment,
	title varchar(200) not null,
	content varchar(1000) not null,
	author varchar(20) not null,
	resDate datetime default now()
);

insert into notice(title, content, author) values ("테스트 제목1", "테스트1 내용입니다.", "admin");
insert into notice(title, content, author) values ("테스트 제목2", "테스트2 내용입니다.", "admin");
insert into notice(title, content, author) values ("테스트 제목3", "테스트3 내용입니다.", "admin");
insert into notice(title, content, author) values ("테스트 제목4", "테스트4 내용입니다.", "admin");
insert into notice(title, content, author) values ("테스트 제목5", "테스트5 내용입니다.", "admin");
commit;

select * from notice;
select * from notice order by notiNo desc;

alter table custom rename column adress to address;
select * from custom;
delete from custom where cusid='testid3';

insert into custom values ('admin','1234','관리자','경기도 고양시 일선서구 주엽동','010-1111-1111',SYSDATE(),9999,9,100);
insert into custom values ('hth','1234','한태헌','경기도 고양시 일선서구 마두동','010-1004-1004',SYSDATE(),0,0,5);

commit;

create table product(
	proNo int primary key auto_increment
    

);
