/*2.CREATE DB example && TABLE users*/
CREATE database example;
CREATE table users;
use example;
CREATE table users 
(id integer,
name varchar(100));
INSERT into users values (1, "Ivanov");
INSERT into users values (2, "Petrov");
INSERT into users values (3, "Sidorov");
select * from users;
DELETE from users where name = "Petrov";

/*3. CREATE DUMP example & IMPORT TO BD sample*/
mysqldump -u root -p example > c:\Temp\mysql_dump\example_dump.sql
mysql -u root -p sample < c:\Temp\mysql_dump\example_dump.sql

/* 4. CREATE DUMP TABLE mysql.help_keyword */
mysqldump -u root -p --where="1 limit 100" mysql help_keyword > c:\Temp\mysql_dump\mysql_dump1.sql