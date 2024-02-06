# create database & use it
create database Capgemini;
use Capgemini;

#student table for If & CASE statement
create table student(
id int not null unique auto_increment,
name varchar(20) not null,
age int not null,
city varchar(20),
percentage int not null
);

insert into student(id,name,age,city,percentage)
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
#1- IF STATEMENT
select id,name,city,percentage,
if(percentage>40,'Pass','Fail')as 'Result' from student;

select id,name,city,
if(city='nashik','Availabale','Sorry Not Available') as 'Hill_Stations'
from student;

#2-CASE STATEMENT

select id,name,city,percentage,
CASE
	when percentage>90 and percentage<=100 then 'A+'
    when percentage>80 and percentage <=90 then 'A'
    when percentage>70 and percentage <=80 then 'B+'
    when percentage>60 and percentage <=70 then 'B'
    when percentage>50 and percentage <=60 then 'C+'
    when percentage>0 and percentage <=50 then 'Fail'
    Else 'Enter A Valid Marks to See Grade'
END as 'Grade' 
from student
where percentage>70 and percentage<=100
order by percentage DESC
limit 3;


#3-CASE STATEMENT WITH UPDATE STATEMENT
update student
set percentage=(
CASE id
		when 10 then 49
        when 11 then 67
END
)
where id in (10,11);

update student 
set percentage=(
CASE id
	when 1 then 93
    when 2 then 87
END
)
where id in (1,2);