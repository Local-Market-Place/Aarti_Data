-- ------------------------------ primaray key table ---------------------------

SELECT * FROM constraints.personal;
-- create table personal(
-- id int not null unique,
-- stu_name varchar(100) not null,
-- age int not null check(age>=18),
-- gender varchar(10) not null,
-- city int not null,primary key(id), foreign key(city) references City(cid));

insert into personal values
(1,'Rushi',18,'M',1),
(2,'Ram',67,'M',2),
(3,'Raj',98,'F',1),
(4,'Raksh',38,'F',1),
(5,'Raju',38,'M',1),
(6,'abhi',46,'M',1); 