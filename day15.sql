# myaql Queries
# select, update, delete
use jkhospitalrecord;
select * from patient_details;
show columns from patient_details;
insert into patient_details (PID, Patient_name, PGENDER, PDOB, Pcontact, Paddress) values
('HP001','Okoro Samuel','Male', '1990-06-24', '08152523634', 'no 15 old lady street, wusse 2'),
('HP002','Jennifer Jang','female', '2002-12-14', '08147788996', 'no 50 ALL Well Cresent, Garki'),
('HP003','Hanna Ania','female', '1995-10-24', '09023200014', 'no 80 baba blue street wuse 2'),
('HP004','Lawal Boniface','Male', '1970-06-24', '08054521111', 'no 14 Opeyi street, Karu'),
('HP005','Hope Ogban','female', '1994-08-20', '09177402026', 'no 110 Bob street, Wuse 2');
select * from patient_details;
select PID, Patient_name, Pcontact from patient_details;
update patient_details set PDOB = '1997-10-24' where PID ='HP003';
select * from patient_details;
delete from patient_details where PID='HP005';
select * from patient_details;
create database allwellAcademy;
use allwellAcademy;
select * from student_data;
#mysql clause
select * from student_data order by age;
select * from student_data order by age desc;
select distinct Mjob from student_data;
select Mjob, avg(age) from student_data group by Mjob;
select Mjob, sum(age) from student_data group by Mjob;
select Mjob, max(age) from student_data group by Mjob;
select Mjob, min(age) from student_data group by Mjob;
select Mjob, count(age) from student_data group by Mjob;
select Mjob, sum(age) from student_data group by Mjob having sum(age)>850;
# mysql conditions 
select school, sex, age, mjob, g1, g2 from student_data where g1 >=15 and g2 >=10;
select school, sex, age, mjob, g1, g2 from student_data where g1 >=15 or g2 >=10;
select school, sex, age, mjob, g1, g2 from student_data where age in (16,19,20);
select school, sex, age, mjob, g1, g2 from student_data where g1 between 7 and 11;
select school, sex, age, mjob, g1, g2 from student_data where g1 is null;
select school, sex, age, mjob, g1, g2 from student_data where g1 is not null;
select school, sex, age, mjob, g1, g2 from student_data where mjob like 'te%';
select school, sex, age, mjob, g1, g2 from student_data where mjob like '%me';
select school, sex, age, mjob, g1, g2 from student_data where mjob like '__r%';
select school, sex, age, mjob, g1, g2 from student_data where mjob like '______';