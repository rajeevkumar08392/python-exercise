use testdb;
show databases;
show tables;
insert into role values(101, 'devloper','work on edu project');
insert into role values(102, 'desiginer','work on edu website design');
insert into role values(104, 'network engineer','work on network edu project');
insert into role values(105, 'testing','work on testing edu project');
insert into role(role_id,my_role) values(107,'DBA');
insert into role values(109,'computer vision','working on detection project'),(110,'nlp eng','creating edu chatbots'),(111,'jr data scientist','creating models')
-- perticular column
select my_role from role;
-- alias name to column
select my_role as role_list from role;
select my_role as role_list , role_desc as roledescription from role;
select *from role where role_id=109
select my_role from role where role_id=109
select *from role where my_role='devloper'
insert into role values(113, 'devloper','work on cadd project');
select *from role where my_role='devloper' and role_id=113;
select my_role from role where role_id=113;
select my_role , role_desc from role where my_role='devloper' and role_id=113;
select *from role where role_id<105;
-- delete 
delete from role where role_id=109;
update role set role_desc='manage database and create query' where role_id=107;
update role set my_role= 'senior_devloper' where my_role='devloper';
select *from role;
desc student;
select *from student;
show tables;
desc emp;
select *from emp;