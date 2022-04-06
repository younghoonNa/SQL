-- cubrid에서 CLASS 와 table은 같은 의미이다.
CREATE CLASS c1(
	a1 INT,
	a2 INT
);

INSERT INTO c1(a1,a2) VALUES (123,456);
INSERT INTO c1(a1,a2) VALUES (246,912);

SELECT * FROM c1;

ALTER CLASS c1 ADD ATTRIBUTE a3 STRING DEFAULT 'LEE';
SELECT *  FROM  c1;
	
ALTER CLASS c1 DROP ATTRIBUTE a2;
SELECT * FROM c1;

DROP CLASS c1;
-- SELECT * FROM c1; 

-- super CLASS 선언
CREATE CLASS bank_db (
	branch_num INT,
	branch_name STRING
);

-- sub CLASS 선언.
CREATE TABLE sub_bank1 UNDER bank_db(
	sub1_num INT,
	sub1_name string
);

-- sub CLASS 선언.
CREATE CLASS sub_bank2 UNDER bank_db(
	sub2_num INT,
	sub2_name string
);

SELECT * FROM db_attribute WHERE class_name = 'bank_db';
SELECT * FROM db_attribute WHERE class_name = 'sub_bank1';


-- 상속 super CLASS 에서의 속성 제거.
ALTER TABLE bank_db
DROP ATTRIBUTE branch_name;
SELECT * FROM db_attribute WHERE CLASS_name = 'sub_bank1';

INSERT INTO sub_bank1 VALUES (1,2, 'GOOD');
SELECT * FROM sub_bank1;
SELECT * FROM db_attribute WHERE class_name = 'sub_bank1';

SELECT * FROM bank_db;

-- 상위 클래스에서의 속성 제거는 하위 클래스의 속성도 없어진다.
ALTER TABLE bank_db DROP ATTRIBUTE branch_num;
SELECT * FROM sub_bank1;


-- SET 						: 중복을 허용하지 않는 합집합.
-- MULTISET 				: 중복을 허용하는 합집합
-- LIST OR SEQUENCE	: 중복 허용 AND 데이터 입력 순서대로 저장

CREATE CLASS city(
	city_name VARCHAR(30) PRIMARY KEY, 
	sports SET VARCHAR(20)
);

INSERT INTO  city VALUES ('Seoul', set{'baseball','basketball','golf', 'bowling', 'soccer'});  -- 중복이 있지만 set은 중복을 허용하지않아!! sorting도 해줌.
INSERT INTO  city VALUES ('Busan', set{'baseball','basketball','soccer','scuba'});
INSERT INTO  city VALUES ('Daejeon', set{'baseball','soccer'});
INSERT INTO  city VALUES ('Gwangju', set{'baseball','soccer','basketball'});
INSERT INTO  city VALUES ('Incheon', set{'baseball','basketball','golf'});
INSERT INTO  city VALUES ('Suwon', set{'soccer','basketball'});
INSERT INTO  city VALUES ('Pyongchang', set{'ski','snowboard'});
INSERT INTO  city VALUES ('Jeju', set{'tennis','golf','scuba'});

SELECT * FROM city;


CREATE TABLE employee (
	ID VARCHAR(30) NOT NULL,
	base_sal INT NOT NULL,
	cnt_family INT DEFAULT(0)
);

INSERT INTO employee VALUES ('kim', 300, 2);
INSERT INTO employee VALUES ('shin', 350, 1);
INSERT INTO employee (ID, base_sal) VALUES ('lee', 200);
-- INSERT INTO emp VALUES ('kim', 300, 20);  emp와 같은 가상 클래스는 값을 추가 할  수 없더.. 
-- 원래 클래스에 접근하여 조회는 가능.!

CREATE VCLASS emp(
	ID VARCHAR(30),
	base_sal INT,
	sal int
) AS SELECT ID, base_sal, base_sal + cnt_family * 20 FROM ALL employee;





SELECT * FROM employee;
SELECT * FROM emp;