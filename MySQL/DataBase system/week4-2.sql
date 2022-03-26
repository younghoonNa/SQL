
select * from takes;

select distinct c_id
from section
where years = "2009";

select c_id, grade
from student as s inner join takes as t
on s.id = t.s_id and s.name = 'Levy';

select * from takes;
select * from student;


select i_id
from teaches as t
where c_id in 
(
	select c_id
    from section
    where building = "Taylor"
);    


select s_id ,sum(credits) as "모든 학점"
from takes as t inner join course as c
on t.c_id = c.id;
-- group by t.s_id;
-- having t.c_id = c.id;

select s_id, sum(credits) as "모든 학점"
from takes as t inner join course as c
on t.c_id = c.id
group by t.s_id;


select * 
from takes, course;

select * from takes;
select * from course;
