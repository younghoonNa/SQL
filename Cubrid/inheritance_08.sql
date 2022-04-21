CREATE CLASS car (
	ID VARCHAR(8) PRIMARY KEY,
	speed INT DEFAULT(0)
);

DROP CLASS electricCar;

CREATE CLASS electricCar UNDER car(
	`POWER` INT DEFAULT(1),
	passenger set STRING
);

INSERT INTO electricCar VALUES ('00001', 100, 39, SET{'AUDI', 'BENZ', 'BMW'});
INSERT INTO electricCar VALUES ('00002', 120, 60, SET{'KIA', 'Hyundai', 'Daewoo'});
INSERT INTO electricCar VALUES ('00003', 200, 90, SET{'ferrari', 'Lamborghini', 'McLaren'});
INSERT INTO electricCar VALUES ('00004', 180, 60, SET{'matiz', 'porter', 'Maserati'});

SELECT * FROM electriccar;