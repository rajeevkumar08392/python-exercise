use testdb;
show tables;
select *from role;
update role set my_role='project_manager' where role_id=113;
select distinct (my_role) as different_role from role;
-- primary key
create table employee(eid int,ename varchar(50), edept varchar(50), esalary decimal(5,2),primary key(eid));
insert into employee values(1,'gaurav','telecome',400.00),(2,'mohan','developer',600.00);
desc employee;
select *from employee;
-- insert into employee values(1,'gaurav','telecome',400.00) duplicate entry
alter table student add constraint pk_roll_no primary key(roll_no);
desc student;

-- new tabel for auto increment
create table product1(pid int auto_increment,
 pname varchar(50),
 pprice int,
 primary key(pid));
desc product1;
insert into product1 values(100, 'dettol',50);
insert into product1(pname,pprice) values('parle g',10);
select *from product1;

alter table product1 add unique(pname);
insert into product1(pname,pprice) values('sunfeast',10);
insert into product1(pprice) values(110);	
select *from product1;
#addd constrain
alter table product1 modify pprice int not null;
insert into product1(pname,pprice) values('lizol',233);	
-- set default value
alter table product1 alter pprice set default 0;
insert into product1(pname) values('harpic');	


select max(pprice) from product1;
select min(pprice) from product1;
select sum(pprice) from product1;
select avg(pprice) from product1;
select count(pprice) from product1; 
select sum(pprice) +100 from product1;
select (sum(pprice)*18)/100 +sum(pprice) as total_bill from product1;