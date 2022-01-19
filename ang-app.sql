create database ang_mat_db;



create table ang_mat_db.departments (
  id int not null auto_increment,
  deptid int not null,
  deptname varchar(45) not null,
  ordno int not null,
  isactive boolean default true,
  
  createdat timestamp not null,
  updatedat timestamp  null,
  createdby int not null,
  updatedby int  null,
  primary key (id)
);
  
create table ang_mat_db.employees (
  id int not null auto_increment,
  empid int not null,
  empcode varchar(10) not null,
  empname varchar(100) not null,
  gender varchar(10) not null,
  dob datetime not null,
  mob varchar(15), 
  email varchar(100),
  
  deptid int not null,
  
  imgpath varchar(250),
  isactive boolean default true,
  
  createdat timestamp not null,
  updatedat timestamp  null,
  createdby int not null,
  updatedby int  null,
  
  primary key (id),
  foreign key (deptid) references departments(id)

  
);

select * from employees;

create table ang_mat_db.photos (
  id int not null auto_increment,
  empid int not null,
  photoimg blob not null,
  primary key (id),
  foreign key (empid) references employees(id)
);


INSERT INTO `ang_mat_db`.`departments`(`id`,`deptid`,`deptname`,`ordno`,`isactive`,`createdat`,`updatedat`,`createdby`,`updatedby`) VALUES (2,2,'MECH',2,true,now(),now(),1,1);
INSERT INTO `ang_mat_db`.`departments`(`id`,`deptid`,`deptname`,`ordno`,`isactive`,`createdat`,`updatedat`,`createdby`,`updatedby`) VALUES (3,3,'Admin',3,true,now(),now(),1,1);
INSERT INTO `ang_mat_db`.`departments`(`id`,`deptid`,`deptname`,`ordno`,`isactive`,`createdat`,`updatedat`,`createdby`,`updatedby`) VALUES (4,4,'HR',4,true,now(),now(),1,1);
INSERT INTO `ang_mat_db`.`departments`(`id`,`deptid`,`deptname`,`ordno`,`isactive`,`createdat`,`updatedat`,`createdby`,`updatedby`) VALUES (5,5,'Finance',5,true,now(),now(),1,1);
INSERT INTO `ang_mat_db`.`departments`(`id`,`deptid`,`deptname`,`ordno`,`isactive`,`createdat`,`updatedat`,`createdby`,`updatedby`) VALUES (6,6,'IT',6,true,now(),now(),1,1);
INSERT INTO `ang_mat_db`.`departments`(`id`,`deptid`,`deptname`,`ordno`,`isactive`,`createdat`,`updatedat`,`createdby`,`updatedby`) VALUES (7,7,'Sales',7,true,now(),now(),1,1);

commit;
INSERT INTO `ang_mat_db`.`employees`(`id`,`empid`,`empcode`,`empname`,`gender`,`dob`,`mob`,`email`,`deptid`,`imgpath`,`isactive`,`createdat`,`updatedat`,`createdby`,`updatedby`) 
VALUES(1,1,'CS-1','Shanmugham','MALE',STR_TO_DATE('31-08-1976',"%d-%m-%Y" ),'9003122436','shan@as.com',1,'  ',true,now(),now(),1,1);
