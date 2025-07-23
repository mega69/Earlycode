create database JKhospitalRecord;
use JKhospitalRecord;
create table patient_info(PID varchar(15) primary key not null, PNAME varchar(255) not null, PGENDER varchar(10) not null,
PDOB date not null);
alter table patient_info add column Paddress text not null;
show columns from patient_info;
alter table patient_info add column Pcontact varchar(60) not null after PDOB;
show columns from patient_info;
alter table patient_info add column ID int first;
show columns from patient_info;
alter table patient_info drop column ID;
show columns from patient_info;
alter table patient_info modify column PNAME varchar(500) not null;
show columns from patient_info;
alter table patient_info change column PNAME Patient_Name varchar(500) not null;
show columns from patient_info;
alter table patient_info rename to patient_details;