create database Wipro;
use Wipro;

create table emp(
id int not null unique,
name varchar(20) not null,
age int not null check(age>18),
city int not null,
marks int not null
);

insert into emp(id,name,age,city,marks)
values
(1,'Om',21,1,1),
(2,'Sai',22,2,3),
(3,'Ram',21,3,2),
(4,'Pooja',22,3,4),
(5,'Mayuri',22,2,1),
(6,'Saii',20,1,2),
(7,'Sejal',19,1,3),
(8,'Tejal',20,2,4),
(9,'Tejas',21,3,5);

create table cityinfo(
cityid int not null,
cityname varchar(20)
);

insert into cityinfo(cityid,cityname)
values
(1,'Pune'),
(2,'Nashik'),
(3,'Nagar');

create table marksinfo(
id 	int not null unique,
obtmarks int not null
);

insert into marksinfo(id,obtmarks)
values
(1,90),
(2,80),
(3,70),
(4,60),
(5,50);

-- ************************************************ JOIN MULTIPLES TABLES *********************************************************** 
select a.id,a.name,c.obtmarks,a.age,b.cityname from emp a
inner join cityinfo b
on a.city=b.cityid
inner join marksinfo c
on a.marks=c.id;

select a.id,a.name,c.obtmarks,b.cityname from emp a
inner join cityinfo b
on a.city=b.cityid
inner join marksinfo c
on a.marks=c.id
where c.obtmarks between 70 and 100
order by c.obtmarks DESC
limit 1,3;