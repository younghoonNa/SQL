use test;

-- 테이블에서 조건에 맞는 객체 검색  select 
-- 테이블에서 데이터를 추가 -> insert

create TABLE student (
	id int not null primary key,
    `name` varchar(10) not null,
    dept_name varchar(20) not null,
    tot_cred int null,
    unique(`name`)
);
   
-- 테이블 구조 변경은 alter 사용
-- alter table `student` add e_mail varchar(20);
-- alter table `student` add homepage varchar(20);
   
insert into student (id, `name`, dept_name, tot_cred) values (00128, "young", "Comp.sci", 102);
insert into student values (12345, "Hoon", "Comp.sci", 223);
insert into student (id, `name`, dept_name, tot_cred) values (02228, "ae", "Life.sci", 250);
insert into student values (00232, "jung", "Life.sci", 111);
insert into student values (10244, "Na", "Comp.sci", 001);

-- SELECT * FROM test.student; ==> select id, `name`, dept_name, tot_cred from `student`; 
-- * is wildcard character   


-- 테이블 안의 데이터를 삭제하기 위해서는 delete 사용 
delete from student where `name` = 'Na';

-- DROP table `student`;

-- 테이블 내용을 바꾸고 싶으면 update를 사용.
update student
set `name` = "younghooon Na" , tot_cred = 20185124
where id = 223;

-- 테이블 구조 변경은 alter 사용
-- alter table `student` add e_mail varchar(20);
-- alter table `student` add homepage varchar(20);


