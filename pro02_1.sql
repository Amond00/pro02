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

insert into product(proNo, cateNo, proName, proSpec, oriPrice, discountRate, proPic, proPic2) values(1,1,"왕감자","감자감자왕감자",3000,0.1,"product2.jpg","product2.jpg");
insert into product values(2,1,"스테익프라이감자","클래식(Classic)",30000,0,"product3.jpg","product3.jpg");
insert into product values(3,1,"블루리본 슈스트링(막대감자)","블루리본 (Blue Ribbon)",25000,0.3,"product4.jpg","product4.jpg");
insert into product values(4,1,"포테이토 칩","스킨크레더블(Skincredibles)",10000,0.2,"product5.jpg","product5.jpg");
insert into product values(5,1,"크링클컷 10 cut 웨지","셀렉트레서피(Select Recipe)",15000,0,"product6.jpg","product6.jpg");
insert into product values(6,1,"스킨온 10컷 랜치 웨지 (반달감자)","트레디셔널(Traditional)",15000,0,"product7.jpg","product7.jpg");

insert into product values(7,2,"젠가 크리스피","Jenga",20000,0,"product8.jpg","product8.jpg");

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