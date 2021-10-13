-- A
CREATE DATABASE staff;

-- B
CREATE TABLE data_staff(
	id_staff int identity(1,1) primary key,
	nama varchar(50),
	alamat varchar(150),
	handphone varchar(15)
);

-- C dan D
INSERT into data_staff(nama,alamat,handphone)VALUES('Fikri','Tangerang','081289225893');
INSERT into data_staff(nama,alamat,handphone)VALUES('Tono','Bandung','0812981252359');
INSERT into data_staff(nama,alamat,handphone)VALUES('Rudi','Jakarta','081292539025');
INSERT into data_staff(nama,alamat,handphone)VALUES('Siti','Yogyakarta','081592358352');
INSERT into data_staff(nama,alamat,handphone)VALUES('Mawar','Surabaya','0815982349284');

-- E
Alter Table data_staff add joindate date;
insert into data_staff (nama, alamat, handphone, joindate) values('Anton', 'Bali', '0815891248259', '2021-11-10');

-- F dan G
SELECT top 2 * from data_staff ds;

SELECT top 3 * from data_staff ds order by id_staff DESC ; 

-- H
CREATE TABLE staff_outsource(
	id_staff int identity(1,1) primary key,
	nama varchar(50),
	alamat varchar(150),
	handphone varchar(15),
	joindate date
);

-- I
insert into staff_outsource (nama, alamat, handphone, joindate) values('Rian', 'Denpasar', '081589723725', '2021-05-25');
insert into staff_outsource (nama, alamat, handphone, joindate) values('Joko', 'Maluku', '081589823259', '2021-09-11');
insert into staff_outsource (nama, alamat, handphone, joindate) values('Indra', 'Aceh', '081589945683', '2020-12-01');
insert into staff_outsource (nama, alamat, handphone, joindate) values('Lukas', 'Medan', '08158993057', '2021-03-15');
insert into staff_outsource (nama, alamat, handphone, joindate) values('Putri', 'Ternate', '081589023568', '2021-07-05');
insert into staff_outsource (nama, alamat, handphone, joindate) values('Dwi', 'Ambon', '0815897228436', '2020-11-30');
insert into staff_outsource (nama, alamat, handphone, joindate) values('Eka', 'Batam', '081589720352', '2021-11-10');
insert into staff_outsource (nama, alamat, handphone, joindate) values('Riski', 'Bekasi', '081589702304', '2020-11-27');
insert into staff_outsource (nama, alamat, handphone, joindate) values('Tika', 'Bogor', '081589702149', '2021-02-15');
insert into staff_outsource (nama, alamat, handphone, joindate) values('Risa', 'Bengkulu', '081589799235', '2021-01-13');

-- J
SELECT * FROM data_staff ds inner join staff_outsource so on ds.joindate = so.joindate;

-- K
SELECT * FROM data_staff ds right join staff_outsource so on ds.joindate = so.joindate;

-- L
SELECT * FROM data_staff ds left join staff_outsource so on ds.joindate = so.joindate;

-- M
SELECT * From data_staff ds full join staff_outsource so on ds.joindate = so.joindate;


