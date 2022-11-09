create database insurance1;
use insurance1;
create table person2 (driver_id char(10), name varchar(20), address varchar(20), primary key(driver_id));
show tables;
desc person2;
create table car (reg_num char(10), model varchar(15), year year, primary key(reg_num));
show tables;
desc car;
create table owns (
driver_id char(10),
reg_num varchar(10),
primary key (driver_id, reg_num),
foreign key(driver_id) references person2(driver_id) on delete cascade,
foreign key(reg_num) references car(reg_num) on delete cascade);
show tables;
desc owns;
create table accident(
report_num int(10),
accident_date date,
location char(30),
primary key(report_num));
show tables;
create table participated (
   driver_id char(10),
   reg_num char(10),
   report_num int(10),
   damage_amount int(7),
   primary key (report_num));
   drop table person1;
   drop table person;
   create table owns (
driver_id char(10),
reg_num varchar(10),
primary key (driver_id, reg_num),
foreign key(driver_id) references person2(driver_id) on delete cascade,
foreign key(reg_num) references car(reg_num) on delete cascade);
drop table person;
show tables;
insert into person2 values('B01', 'Vijayan', 'RT Nagar');
insert into person2 values('B02', 'Seema', 'JP Nagar');
insert into person2 values('B03', 'Suresh', 'Avanoor');  
insert into person2 values('B04', 'Shanthanu', 'Yelahanka');
insert into person2 values('B05', 'John', 'Hanumanth Nagar');   
select * from person2;
insert into car values('KA052250', 'Indica', 1990);
insert into car values('KA053330', 'Lancer', 1991);
insert into car values('KA054440', 'Toyota', 1992);
insert into car values('KA055500', 'Honda', 1993);
insert into car values('KA066660', 'Audi', 1995);
select * from car;
insert into accident values(11, '2003-01-01', 'Mysore road');
insert into accident values(12, '2004-21-02', 'South end circle');
insert into accident values(13, '2003-01-21', 'Bull temple road');
insert into accident values(14, '2008-01-017', 'Mysore road');
insert into accident values(15, '2004-03-05', 'kanakapura road');
select * from accident;
SET FOREIGN_KEY_CHECKS=0;
SET GLOBAL FOREIGN_KEY_CHECKS=0;
insert into participated values('B01','KA052250', 11,10000);
insert into participated values('B02','KA053330', 12, 50000);
insert into participated values('B03','KA054440', 13, 25000);
insert into participated values('B04','KA055500', 14, 35000);
insert into participated values('B05','KA066660', 15, 45000);
select * from participated;
SET FOREIGN_KEY_CHECKS=0;
SET GLOBAL FOREIGN_KEY_CHECKS=0;
insert into owns values('B01','KA052250');
insert into owns values('B02','KA053330');
insert into owns values('B03','KA054440');
insert into owns values('B04','KA055500');
insert into owns values('B05','KA066660');
select * from owns;
drop table participated;
create table participated (
   driver_id char(10),
   reg_num char(10),
   report_num int,
   damage_amount int,
   
   foreign key(driver_id) references person2(driver_id) on delete cascade,
foreign key(reg_num) references car(reg_num) on delete cascade,
foreign key(report_num) references accident(report_num)
);
   drop table person1;
   drop table person;
   select * from person2;
  create table participated (
   driver_id char(10),
   reg_num char(10),
   report_num int,
   damage_amount int,
   
   foreign key(driver_id) references person2(driver_id) on delete cascade,
foreign key(reg_num) references car(reg_num) on delete cascade,
foreign key(report_num) references accident(report_num)
);
drop table owns;
create table owns (
driver_id char(10),
reg_num varchar(10),
foreign key(driver_id) references person2(driver_id) on delete cascade,
foreign key(reg_num) references car(reg_num) on delete cascade);
