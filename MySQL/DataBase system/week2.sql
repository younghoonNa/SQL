use week2;

create table department (
	dept_name	varchar(20),
    building	varchar(15),
    budget		int,
    primary key(dept_name)
);

insert into department values("Comp.Sci", "Taylor", 100000);
insert into department values("Biology", "Watson", 90000);
insert into department values("Elec.Eng", "Taylor", 85000);
insert into department values("Music", "Packard", 80000);
insert into department values("Fiance", "Painter", 120000);
insert into department values("History", "Painter", 50000);
insert into department values("Physics" , "Watson", 70000);

create table instructor (
	id			varchar(5),
    `name` 		varchar(20) not null,
    dept_name 	varchar(20),
    salary 	int,
    primary key(id)
);

 -- drop table instructor;

insert into instructor values(22222 , "Einstein", "Physics", 95000);
insert into instructor values(12121 , "Wu", "Fiance", 90000);
insert into instructor values(32343 , "El Said", "History", 60000);
insert into instructor values(45565 , "Katz", "Comp.Sci", 75000);
insert into instructor values(98345 , "Kim", "Elec.Eng", 80000);
insert into instructor values(76766 , "Crick", "Biology", 72000);
insert into instructor values(10101 , "Srinivasan", "Comp.Sci", 65000);
insert into instructor values(58583 , "Clifieri", "History", 62000);
insert into instructor values(83821 , "Brandt", "Comp.Sci", 92000);
insert into instructor values(15151 , "Mozart", "Music", 40000);
insert into instructor values(33456 , "Gold", "Physics", 87000);
insert into instructor values(76543 , "Singh", "Fiance", 80000) ;

create table student (
	id			varchar(5),
    `name` 		varchar(20) not null,
    dept_name 	varchar(20),
    tot_cred 	int,
    primary key(id)
);

insert into student values(00128 , "Zhang", "Comp.Sci", 102);
insert into student values(12345 , "Shankar", "Comp.Sci", 32);
insert into student values(19991 , "Brandt", "History", 80);
insert into student values(23121 , "Chavez", "France", 110);
insert into student values(44553 , "Peltier", "Physics", 56);
insert into student values(45678 , "Levy", "Physics", 46);
insert into student values(54321 , "Wiliams", "Comp.Sci", 54);
insert into student values(55739 , "Sanchez", "Music", 38);
insert into student values(70557 , "Snow", "Physics", 0);
insert into student values(76543 , "Brown", "Comp.Sci", 58);
insert into student values(76653 , "Aoi", "Elec.Eng", 60);
insert into student values(98765 , "Bourikas", "Elec.Eng", 98);

select * from department;
select * from instructor;
select * from studen. t;

select * from student
where tot_cred > 102;

select * from student
where tot_cred = 98;

select * from student, instructor; -- 12개 , 12개 이므로 카티션 곱을 하면 144개.

select i.`name`, s.`name` -- 이러면 name만 2개가 떠서 헷갈리므로
from instructor as i , student as s;

select i.`name` as "교수 이름", s.`name` as "학생 이름" -- column 명 재명명
from instructor as i, student as s;

select i.`name` as "교수 이름" , s.`name` as "학생 이름", i.salary, s.tot_cred
from instructor as i, student as s
where i.salary < 70000 and s.tot_cred > 100;

select i.`name` as "교수 이름" , s.`name` as "학생 이름", i.salary, s.tot_cred
from instructor as i, student as s
where i.salary < 70000 or s.tot_cred > 100;

select * from department
where dept_name like '%i%';
-- % : 모든 substring으로 match시킴. 0 ~ n 까지 매치.
-- %i% -> 중간에 i가 끼어져 있는 문자열 찾아냄.

select * from department
where dept_name like '_h%'; -- h는 하나만. %는 몇개가 와도 상관이 없다. 
-- 즉 두번째 자리에 h가 들어오는 문자열을 찾겠다.

select * from student
order by tot_cred; -- 오름차순

select * from student
order by tot_cred desc; -- 내림차순은 desc;

select * from student
order by `name` desc;

-- 23개 -> union은 중복 제거.
select `name`
from instructor
union
select `name`
from student;

select `name`
from instructor
union all -- 중복 포함 하므로 24개가 뜸.
select `name`
from student; 

select i.`name` -- 교집합은 inner join
from instructor as i  inner join student as s on i.`name` = s.`name`;

select i.`name`, s.`name`
from instructor as i left join student as s on i.`name` = s.`name`; 
-- where s.`name` is null;
--   where s.`name` is null; 이걸 붙였을 때 하나가 줄어드는 이유는 Brandt가 2개인 친구는 빠지기 때문.

-- 카티션 곱. 12 * 7 = 84
select *
from student, department;

select *
from student as s, department as d
where s.dept_name = d.dept_name;

select *
from student as s inner join department as d;

select *
from student as s inner join department as d
on s.dept_name = d.dept_name
where budget >= 100000;
-- on을 사용하냐 안하냐의 차이는 where에서는 추가적인 조건을 더 달 수 있다는거..?

select i.`name` as 교수, s.`name` as 학생
from instructor as i left join student as s
on i.dept_name = s.dept_name;
-- left join 은 오른쪽을 살림.  -> null이 있어도 데이터 생성 
-- right join은 왼쪽을 살려서 -> null이 오른쪽에 있다면 날려버림.
select i.`name` as 교수, s.`name` as 학생
from instructor as i right join student as s
on i.dept_name = s.dept_name;
