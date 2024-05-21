
-- ----------------------Innet join---------------------

-- select * from  personal  inner join city on personal.city=city.cid;
-- select * from  personal p inner join city c   --    create a object 
-- on p.city=c.cid;


-- ---------------------Specific data show inner ---------------------
-- select  p.id,p.stu_name,p.age,p.gender,c.cityname
-- from personal p inner join city c
-- on p.city =c.cid
-- where c.cityname="Pune"
-- order by p.age ASC;     -- cut where than show all  data 

  -- ----------------------Left join---------------------
--  select * from personal p left join city  c
--   on p.city= c.cid                                      -- only see common  datata 

-- ----------------------right join---------------------
  
--   select * from personal p right join city  c               -- all see data not use in table
--   on p.city= c.cid                                           --  show by null valuee
 
 
 -- ---------------------cross join---------------------
 select * from personal p  cross join  city c                   -- cross join work as  id (1) multpy by city  table by each row 

 -- ---------------------multiple  join---------------------

-- select * from 
-- personal p inner join city c
--  on  p.city=c.cid                                                -- join 3  table 
--  inner join courses s
--  on p.Cource=s.tid

 -- ---------------------Group BY---------------------

-- select * from City where Cityname="pune" group by (cityname);           -- counting tha data (in 1 table)
-- select   city,count (cityname)                                             (wrong RETRY)
-- from personal
-- group by (cityname);

 -- -------------------- sub query   ---------------------

-- select name from personal                                                  --  NOt run  (right RETRY) 
-- where Cource=(select  tid from courses where  Cource ="Mecha" );




