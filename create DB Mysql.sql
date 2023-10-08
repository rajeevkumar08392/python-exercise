create database inventorydb1;
show databases;
use inventorydb;
create table role(
role_id int,
role_name varchar(50),
role_desc varchar(50));
show tables;
create table role1(
role_id int,
role_name varchar(50),
role_desc varchar(50));
drop table role1;
drop database inventorydb1;
alter table role add role_department varchar(50);
alter table role drop role_department;
alter table role modify role_name varchar(100);
alter table role rename column role_name to my_role;