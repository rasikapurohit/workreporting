create user 'wr'@'localhost' identified by 'tiger';

GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'wr'@'localhost' WITH GRANT OPTION; 

show grants for 'wr'@'localhost';

create database workreport;

use workreport;

create table notes(id int primary key auto_increment, title varchar(10), author varchar(10)); 

insert into notes (title, author) values ('My first note', 'Rasika');
insert into notes (title, author) values ('My second note', 'Aishwarya');
insert into notes (title, author) values ('Third', 'Priyanka');

select * from notes;

