use week3;

select salary from instructor order by salary;
select salary from instructor order by salary desc;

select avg(salary) from instructor;
select min(salary) from instructor;
select max(salary) from instructor;
select count(salary) from instructor;
select sum(salary) from instructor;
select sum(salary)/count(*) as salary_avg from instructor;

select dept_name, Avg(salary) as salary_avg from instructor
group by dept_name;

select dept_name, Avg(salary) as salary_avg from instructor
group by dept_name
having dept_name like '_i%';
 
select * from student;
select * from instructor;


select name, salary, dept_name
from instructor
where dept_name not in (
	select dept_name
    from student
	 where dept_name like '%i%'
);

select distinct dept_name
from student
where dept_name like '%i%';
     
select name, salary
from instructor
where salary > ALL
(
	select salary
    from instructor
    where name like 'K%'
);

select name, salary
from instructor
where name like 'K%';

select name, salary
from instructor
where salary < ALL
(
	select salary
    from instructor
    where name like '%i%'
);

select * from instructor;
select * from student;

select * 
from instructor
where not exists
(
	select dept_name
    from student
    where tot_cred > 100
);

select *
from (
	select name, student.dept_name as dept_name
    from student, department
    where student.dept_name = department.dept_name
    ) as tmp
where tmp.name like '_i%';

select name, student.dept_name as dept_name
from student, department
where student.dept_name = department.dept_name;
