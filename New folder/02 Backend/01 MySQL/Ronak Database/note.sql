https://www.geeksforgeeks.org/mysql-tutorial/?ref=shm

"E:\00 Become Full Stack Java Developement\02 Backend\01 MySQL\SQL on Linux.pdf"

show databases;
create database [database-name];
drop database [database-name];
use [database-name];

-- create table
create table [table-name] ([col1] [colDataType]([size]) extra, [col2] [colDataType]([size]) extra, ...);

-- show all tables;
show tables;

-- describe table
desc [table-name];

-- alter table (change table structure) --
-- add column
alter table [table-name] add [column-name] [colDataType];

-- modify column
alter table [table-name] modify [column-name][colDataType];

-- rename column
alter table [table-name] rename column[oldColName] to [newColName];

-- drop column 
alter table [table-name] drop column [column-name];

-- insert data to the table --
-- insert one row
insert into [table-name] ([columns]) values ([values]);

-- when I know column order then
insert into [table-name] values([value1, value2,...]);

-- when insert multiple row then
insert into [table-name] ([column1, column2,...]) values (([value1, value2,...]), ([value1, value2,...]), ([value1, value2,...]),...);

-- select command --
-- select all values
select * from [table-name];

-- select only 1 or 2 columns
select [column1, column2, ...] from [table-name];

-- update command --
-- update any column value
update [table-name] set [column1] = [value1], [column2] = [value2] where id=1;

-- delete command -- 
-- delete all value
delete from [table-name];

-- delete perticular row
delete from [table-name] where [column-name];


-- Alias name --
select [column-name] as we want to display, [column-name] as we want to display from [table-name];
-- example query 
select name as student_name, city as student_city from students;
select name "STUDENT NAME", city "STUDENT CITY" from students;


-- this is use when I have multiple table(mostly use in join)
select [tempname.column1], [tempname.column2] from [table-name] [tempname];


-- and, or, not --
-- and
select * from [table-name] where [column1]=[value1] and [column2]=[value2];

-- or
select * from [table-name] where [column1]=[value1] or [column2]=[value2];

-- not
select * from [table-name] where not [column1]=[value1];

-- order by --
-- it will shorted in ascending order (default) (donot need to write asc after query and before semicolon(;))
select * from [table-name] order by [column-name];

-- it will shorted in ascending order
select * from [table-name] order by [column-name] desc;

-- limit --
-- limit with order by
select * from [table-name] order by [column-name] desc limit [number];
-- limit without order by 
select * from [table-name] limit [number];

-- offset -- 
-- it will skip first some lime (it will work with limit)
select * from [table-name] limit[number] offset [number];
-- example 
select * from students limit 2 offset 2;
-- > this query skip first 2 row then select only 2 rows after skipped rows


-- aggrigate functions --
-- this all work with where cluse, ...
-- count([column-name]) count the row (find number of rows)
select count([column-name]) from [table-name];

-- sum([column-name]) it will calcule number like how much fee is received at the end of the month (find the sum)
select sum([column-name]) from [table-name];

-- avg() average value (find the average value)
select avg([column-name]) from [table-name];


-- String Functions --
length("String") :- used to find length of given String
concat("string 1","string 2") :- used to join multiple strings

-- OTHER date & time FUNCTIONS --





store procedure :- https://www.learncodewithdurgesh.com/course/videos-others/523