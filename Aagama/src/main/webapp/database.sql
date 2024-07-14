create table register(
email varchar(50),
password varchar(20),
college  varchar(50),
fullname  varchar(50),
phone  varchar(50),
city  varchar(50),
role varchar(20),
primary key(email)
);


-- inserting admin details into register and login table
insert into register values('admin@gmail.com','admin@123','mic','Sasank','9999999999','Milavaram','admin');



-- events table
create table events(
id varchar(20),
name varchar(50),
type varchar(20),
branch varchar(10),
registration_amount float,
coordinator_id1 varchar(50),
coordinator_id2 varchar(50),
location varchar(10),
winning_prize varchar(50),
start_time varchar(50),
event_date date,
primary key(id),
foreign key(coordinator_id1) references register(email),
foreign key(coordinator_id2) references register(email)
);



