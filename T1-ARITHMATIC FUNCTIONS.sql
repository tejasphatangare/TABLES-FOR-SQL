# create database & use it
create database Capgemini;
use Capgemini;

#STUDENT TABLE FOR ARITHMATIC FUNCTIONS
create table stud(
id int not null unique auto_increment,
name varchar(20) not null,
age int not null,
city varchar(20),
percentage int not null
);

insert into Stud(id,name,age,city,percentage)
values
(1,'Om',21,'Pune',91),
(2,'sai',22,'Nagar',88),
(3,'ram',20,'nashik',77),
(4,'Pooja',21,'Pune',66),
(5,'Mayuri',22,'Nagar',54),
(6,'shyam',20,'nashik',45),
(7,'sumit',22,'nashik',70),
(8,'Pratiksha',22,'Nagar',35),
(9,'Shraddha',20,'Pune',25),
(10,'Priya',21,'Nagar',110),
(11,'Sumel',22,'Nagar',-37);

-- ************************************** CLEAR BELOW CODE BEFORE PRACTISE *****************************************************

select (4+5) as Total;
select id,name,(percentage+5) 'New Per' from stud;


select pi() as 'Fixed value';
select round(3.55);
select round(3.35);
select round((3.3333),1);
select ceil(4.45);
select ceil(4.65);
select floor(4.22);
select pow(4,3);
select sqrt(3);
select rand();
select rand() * 50;
