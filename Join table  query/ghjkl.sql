-- ---------------------------Constraints--------------------------------
-- create table rushi(
-- id int not null unique idnamerushi,
-- name varchar(100) not null,
-- age int not null check(age>=18),
-- gender varchar(10) not null,
-- phone_no varchar(10) not null unique,
-- city varchar(20)  not null default 'Pune');  -- but no chnge retry;
 
--  -----------------------INSERT Table-----------------------------------

-- insert into rushi values
-- (1,'Rushi',18,'M',9077787879,'Pune'),
-- (2,'Ram',67,'M',9077787559,' '),
-- (3,'Raj',98,'F',9077787229,'shirur'),
-- (4,'Raksh',38,'F',9077787669,''),
-- (5,'Raju',38,'M',9077787859,'madhavagad'),
-- (6,'abhi',46,'M',9077784589,null); 

 --  -----------------------update information -----------------------------------
-- UPDATE rushi SET city ="ama",  age=32 WHERE id=2;
-- select * from rushi;
--  UPDATE rushi SET age=25 where id in (4,5) ;  -- multiple rows update
 
--  ----------------------- Coloum headeing change -----------------------------------

-- select id as ID ,name as Nmme,age as Age,gender as Gender,phone_no as Phone_no,city as CITY;                     -- Coloum headeing change using AS
 -- select id as ID ,name as "Student Name",age as Age,gender as Gender,phone_no as "Phone no",city as CITY; ------- Space for heading file write as  


--  ----------------------- condtion searching -----------------------------------

-- select *from rushi where age>=40;
-- select *from rushi where age<=40;
-- select *from rushi where (Not) age<=40 and city=shirur OR age>=20 ;----- use (And ya OR)(not word use for no show);
-- select *from rushi where id In(1,2,5,6);    -------use in mulptiple record show in table

--   select* from rushi where id between 3 and 6      --  use when show a   text value in table not found by operator


--  ----------------------- Like Operator searching-----------------------------------

-- select *from rushi where name  like "R%" or name like "u%";  -- seraching pattern using (" % ") //;

-- select *from rushi where binary name  like "r%"   --  show record when letter is big ya samll alpahabet in table 

-- --------------------------------pattern (IMP Complex Searcha)-------------------------

-- select* from rushi where name  regexp '^ra;
-- select* from rushi where name regexp 'Raju|Raj|Ram'  -- (imp) regular expression 
-- c   -- (imp)regular expression  serching similar word in table

-- -------------------Acending orde and decinding order--------------------

-- select *from rushi  order by age   ASC | DESC-- 

-- -----------------------Distinct (Coommon things in  table more than)-----------

-- select distinct city from rushi ;        --  searcha common things in t table 


--    ------------------------- searcha the Null  data store--------- 

 -- select *from  rushi  where city is  null

-- ----------------------------Limit/offset data seraching at time--------------

-- select *from  rushi    limit 3;
-- select *from  rushi    where city="Shirur" order by name DESC limit 3;

-- --------------------offset data -------------------
--  select  *from rushi limit 3,3    when u see 100 record now you show new record form 110 to 200 the use

-- ---------------------------- (aggregate fun)   -------------------

--  select count(distinct city) from rushi   -- count
-- select min/max(age)  as min_maz from rushi    -- max/min value
-- select avg(age) as percenttage from rushi -- average of table
-- select sum(age) as Sum_total from rushi   --- sum of colunm item

  -- --------------------rollback  and commit-------------------
 
-- select * from rushi
-- commit;
-- update rushi set age="88" where id=3;
-- rollback;


  -- -------------------- delete-------------------
  --  select * from rushi
--   commit;
--   delete  from rushi 
--   where id=6;
--   rollback;

  -- -------------------- primaroy key set-------------------

--  alter table rushi add primary key(id);
  
  -- -------------------- foreign key set-------------------
 -- alter table rushi add foreign key(city) references city(cid);