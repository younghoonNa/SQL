use week3;

select i.`name` as "교수 이름", s.`name` as "학생 이름" -- column 명 재명명
from instructor as i, student as s;

insert into student value(08080, "Na Zaang", "Comp.Sci", 187);

select * from student
where name like '%Z%';

select * from student
order by tot_cred desc;

select * from student
order by tot_cred;

select name from instructor
union
select name from student;

select name from instructor
union all
select name from student;

select count(name) as "학생 이름 수" from student;
select count(name) as "교수 이름 수" from instructor;

select name from instructor;

select i.`name` from instructor as i 
inner join student as s
on i.`name` = s.`name`;

select i.`name` from instructor as i 
left join student as s
on i.`name` = s.`name`
where s.`name` is null;

select *
from student, department;

select count(*) as "학생 테이블 수" from student;
select count(*) as "department 테이블 수"from department;

select *
from student as s, department as d
where s.dept_name = d.dept_name;

select *
from student as s inner join department as d
where s.dept_name = d.dept_name;

select *
from student as s inner join department as d
on d.budget > 110000;

select i.`name` as 교수, s.`name` as 학생
from instructor as i left join student as s
on i.dept_name = s.dept_name;
-- left join 은 오른쪽을 살림.  -> null이 있어도 데이터 생성 

select * from instructor;


-- right join은 오른쪽을 살려서 -> null이 왼쪽에 있어도 신경 안씀.
select i.`name` as 교수, s.`name` as 학생
from instructor as i right join student as s
on i.dept_name = s.dept_name;

select *
from instructor as i left join student as s
on i.dept_name = s.dept_name;

select *
from instructor as i right join student as s
on i.dept_name = s.dept_name;








