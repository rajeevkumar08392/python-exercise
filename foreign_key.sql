show databases;
use p1;
create table emp1(
empid int primary key,
empname varchar(20));

-- new table
create table emp2(
emp_dep varchar(40),
emp_salary int not null,
empid int,
foreign key (empid) references emp1(empid));
alter table emp1 add constraint pk_empid primary key(empid);
desc emp1;
desc emp2;