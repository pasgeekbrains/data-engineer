create database example;

use example;
create table users
(
id int  AUTO_INCREMENT PRIMARY KEY,
name varchar(20) not null
);

insert into users(name) values('pas');
commit;
 
use sys

select count(*) 
from metrics

create table example.metrics as
select *
  from metrics

select *
  from example.metrics

