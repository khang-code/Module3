use student_management;
create table clazz (
id 		int,
name 	varchar(45)
);
create table teacher (
id 		int,
name 	varchar(45),
age 	int,
country varchar(20)
);
insert into clazz (id , name) values 
	(1, 'dong'),
	(2, 'long'),
    (3, 'tuan'),
    (4, 'khang');
insert into teacher (id, name, age, country) values
	(1,'dao',32, 'vn'),
    (2, 'an', 36, 'vn');