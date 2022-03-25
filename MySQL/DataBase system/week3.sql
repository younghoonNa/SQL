use week2;

select avg(salary) from instructor;

select min(salary) from instructor;

select salary from instructor order by salary;

select salary from instructor order by salary desc;

select count(salary) from instructor;

select sum(salary) from instructor;

select sum(salary)/count(*) as salary_avg from instructor;

select * from instructor;

select dept_name, Avg(salary) as salary_avg from instructor
group by dept_name;

select dept_name, Avg(salary) as salary_avg from instructor
group by dept_name
having dept_name like '_i%';

select * from student;
select * from instructor;

delete from student where id = '23121';
insert into student value(23231, 'Wu', 'Fiance', "110");
insert into student value(14020, 'Singh', 'Fiance', "190");
 
select name, salary, dept_name
from instructor
where dept_name in (
	select dept_name
    from student
	 where dept_name like 'F%'
);

select name, salary, dept_name
from instructor
where dept_name in (
	select dept_name
	from student
    where dept_name like '_i%'
    );

select * from instructor;

select name, salary
from instructor
where salary < SOME
(
	select salary
    from instructor
    where name like '%i%'
);

select name, salary
from instructor
where salary < ALL
(
	select salary
    from instructor
    where name like '%i%'
);

select * 
from instructor
where exists
(
	select dept_name
    from student
    where tot_cred > 20
);

select *
from instructor
where true;

select Exists
(
	select dept_name
    from student
    where tot_cred > 20
);

select *
from instructor
where not exists
(
	select dept_name
    from student
    where tot_cred > 20
);

select * from student;

select *
from (
	select dept_name
    from student
    ) as tmp
where tmp.dept_name like '%i%';

select *
from (
	select distinct dept_name
    from student
    ) as tmp
where tmp.dept_name like '%i%';

select *
from (
	select name, student.dept_name as dept_name
    from student, department
    where student.dept_name = department.dept_name
    ) as tmp
where tmp.name like '_i%';
