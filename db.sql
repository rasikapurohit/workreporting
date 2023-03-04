create user 'wr'@'localhost' identified by 'tiger';

GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'wr'@'localhost' WITH GRANT OPTION; 

show grants for 'wr'@'localhost';

create database workreport;

use workreport;

