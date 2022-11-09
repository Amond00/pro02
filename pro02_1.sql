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
alter table custom add visited int default 0;




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

alter table notice add visited int default 0;


alter table custom rename column adress to address;
select * from custom;
delete from custom where cusid='testid3';

insert into custom values ('admin','1234','관리자','경기도 고양시 일선서구 주엽동','010-1111-1111',SYSDATE(),9999,9,100);
insert into custom values ('hth','1234','한태헌','경기도 고양시 일선서구 마두동','010-1004-1004',SYSDATE(),0,0,5);

commit;

create table category(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);

insert into category(cateName) values ("CONVENTIONAL");
insert into category(cateName) values ("CLEAR COATING");
insert into category(cateName) values ("Seasoned＆Battered");
insert into category(cateName) values ("Delivery+");
insert into category(cateName) values ("Specialty");
insert into category(cateName) values ("AVOCADO");
insert into category(cateName) values ("VEGETABLE");
insert into category(cateName) values ("Tortilla");

select * from category;
commit;

create table product(
	proNo int primary key auto_increment,
	cateNo int not null,
	proName varchar(40) not null,
	proSpec varchar(500),
	oriPrice int not null,
	discountRate double not null,
	proPic varchar(200),
	proPic2 varchar(200)
);
alter table product add scnt int default 0;
alter table product drop cnt;
 -- 1
insert into product(proNo, cateNo, proName, proSpec, oriPrice, discountRate, proPic, proPic2) values(1,1,"왕감자","감자감자왕감자",3000,0.1,"product2.jpg","product2.jpg");
 -- 2
insert into product values(12,2,"콘퀘스트 스트레이트컷 스킨온","Conquest",21200,0.24,"product13.jpg","product13.jpg");
 -- 3
insert into product values(15,3,"고메 케이준 프라이","Gourmet",26230,0.22,"product16.jpg","product16.jpg");
 -- 4
 insert into product values(21,4,"딜리버리플러스 슈스트링","Seasoned Crisp Delivery+",51400,0.5,"product22.jpg","product22.jpg");
 -- 5
 insert into product values(27,5,"101 해쉬브라운","Traditional",9200,0.34,"product28.jpg","product28.jpg");
 -- 6
  insert into product values(30,6,"웨스턴 구아까몰","Harvest Fresh",1200,0.24,"product31.jpg","product31.jpg");
 -- 7
  insert into product values(34,7,"홀그린 빈(그린콩)","Green Valley",5100,0.14,"product35.jpg","product35.jpg");
  update product set proSpec="Green Valley" where proNo=33;
 -- 8
   insert into product values(38,8,"밀 또띠아 홈스타일 6 인치","Fresca",1200,0.24,"product37.jpg","product37.jpg");

select * from product;
commit;

-- 입고 테이블 생성
create table wearing(
	proNo int primary key,
    amount int
);

desc wearing;
select * from wearing;

-- 판매 테이블 생성
create table sales(
	saleNo int primary key auto_increment,
    cusId varchar(13) not null,
    proNo int not null,
    amount int not null,
    saleDate datetime default now(),
    parselNo int,
    salePayNo int
);

desc sales;
select * from sales;

-- 결제 테이블 생성
create table payment(
	salePayNo int primary key auto_increment,
    payMethod varchar(20),
    payCom varchar(50),
    cardNum varchar(40),
    payAmount int
);

desc payment;
select * from payment;

-- 배송 테이블 생성
create table parsel(
	parselNo int primary key auto_increment,
    parselAddr varchar(500),
    cusTel varchar(14),
    parselCompany varchar(50),
    parselTel varchar(14),
    parselState int default 0
);    

desc parsel;
select * from parsel;
drop table parsel;


create table cart(
	cartNo int primary key auto_increment,
    proNo int,
    cusId varchar(13)
);

select * from cart;
commit;

create table qnaa(
    no int primary key auto_increment,
    title varchar(100) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    resdate datetime default now(),
    lev int default 0,            -- 깊이
    parno int not null,          -- 부모글 번호
    sec char(1)                     -- 비밀글 여부
);

insert into qnaa(title, content, author, lev, parno, sec)  values ("문의 합니다. 테스트 글1", "문의 합니다. 테스트 글1의 내용입니다.", "hth072", 0, 1, "N");
alter table qnaa add column visited int default 0; 
alter table qnaa modify column parno int default;
select * from qnaa;
drop table qnaa;
select no from qnaa order by no desc limit 1;
select no from qnaa order by resdate desc limit 1;
update qnaa set parno=2 where no=2;
commit;
select no from qnaa order by resdate desc limit 1;
delete from qnaa where no >= 6;

create table board(
    no int primary key auto_increment,
    title varchar(100) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    resdate datetime default now(),
    lev int default 0,            -- 깊이
    parno int not null	       -- 부모글 번호
);

alter table board add visited int default 0;

select * from board;
commit;