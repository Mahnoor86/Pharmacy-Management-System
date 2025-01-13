create database pharmacymanagementsystem;
use pharmacymanagementsystem;

-- Table Creation Qurey
create table pharmacist(
pharmacistId int primary key,
pharfirstname varchar(255),
pharlastname varchar(255),
pharcontact varchar(255),
shift varchar(255),
licensenumber varchar(255),
admin_id int,foreign key (admin_id) references AdminLogin (adminId)
);

-- View Pharmacist Qurey
select * from pharmacist;

-- Table Creation Qurey Pharmacist Login 

create table PharmacistLogin(
pharUsername varchar(255),
pharPassword int
);

insert into PharmacistLogin(pharUsername, pharPassword)
values("phar", 123);
select * from PharmacistLogin;


create table AdminLogin(
adminUsername varchar(255),
adminPassword int,
adminId int primary key
);

insert into AdminLogin(adminUsername, adminPassword,adminId)
values("adminn",123,4384);
select * from AdminLogin;

create table Medicine (medicine_name varchar(225) primary key,
medicine_quantity int,
medicine_price int,
pharId int,foreign key (pharId) references pharmacist (pharmacistId)
);
select * from Medicine;

create table Customer_Buy(
customername varchar(255),
med_name varchar(225),
med_buy int,
pharmacist_id int, foreign key (pharmacist_id) references pharmacist (pharmacistId)
);
select * from Customer_Buy;
select * from Customer_Buy left join pharmacist on pharmacist.pharmacistId=Customer_Buy.pharmacist_id;