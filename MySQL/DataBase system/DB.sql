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