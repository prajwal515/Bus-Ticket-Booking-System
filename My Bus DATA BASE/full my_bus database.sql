create database my_bus;
use my_bus;

CREATE TABLE `user` (
  `name` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `admin` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `admin` VALUES ('prajwal','prajwal123'),('mahadeva','mahadeva123');


CREATE TABLE `booked` (
  `ticket_no` varchar(10) NOT NULL,
  `date` date DEFAULT NULL,
  `from1` varchar(20) DEFAULT NULL,
  `to1` varchar(20) DEFAULT NULL,
  `dtime1` varchar(10) DEFAULT NULL,
  `atime1` varchar(10) DEFAULT NULL,
  `busno` varchar(10) DEFAULT NULL,
  `busname` varchar(10) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `seatno` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `booked` VALUES ('',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('T71903','2019-06-06','banglore','mysore','08:00','11:00','1234','bus1',190,250,9,NULL),('T7070504','2019-06-07','banglore','mysore','08:00','11:00','1234','bus1',190,250,3,'prajwal@gmail.com'),('T7070869','2019-06-07','banglore','mysore','08:00','11:00','1234','bus1',190,240,10,'prajwal@gmail.com'),('T71301012','2019-06-13','mandya','mysore','08:00','11:00','1234','bus1',190,240,16,'prajwal@gmail.com'),('T7120249','2019-10-12','mandya','mysore','08:00','11:00','1234','bus1',190,240,1,'prajwal@gmail.com'),('T7230827','2019-11-23','mandya','mysore','08:00','11:00','1234','bus1',190,240,16,'prajwal@gmail.com');


CREATE TABLE `bookseats` (
  `busno` varchar(10) DEFAULT NULL,
  `busname` varchar(20) DEFAULT NULL,
  `fromstop` varchar(20) DEFAULT NULL,
  `tostop` varchar(20) DEFAULT NULL,
  `seatno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `bookseats` VALUES ('1234','bus1','banglore','mysore',1),('1234','bus1','banglore','mysore',2),('1234','bus1','banglore','mysore',3),('1234','bus1','banglore','mysore',4),('1234','bus1','banglore','mysore',5),('1234','bus1','banglore','mysore',6),('1234','bus1','banglore','mysore',7),('1234','bus1','banglore','mysore',8),('1234','bus1','banglore','mysore',9),('1234','bus1','banglore','mysore',10),('1234','bus1','banglore','mysore',11),('1234','bus1','banglore','mysore',12),('1234','bus1','banglore','mysore',13),('1234','bus1','banglore','mysore',14),('1234','bus1','banglore','mysore',15),('1234','bus1','banglore','mysore',16),('1234','bus1','banglore','mysore',17),('1234','bus1','banglore','mysore',18),('1234','bus1','banglore','mysore',19),('1234','bus1','banglore','mysore',20),('1234','bus1','banglore','mysore',21),('1234','bus1','banglore','mysore',22),('1234','bus1','banglore','mysore',23),('1234','bus1','banglore','mysore',24),('1234','bus1','banglore','mysore',25),('5978','rajahamsa','manglore','chennai',1),('5978','rajahamsa','manglore','chennai',2),('5978','rajahamsa','manglore','chennai',3),('5978','rajahamsa','manglore','chennai',4),('5978','rajahamsa','manglore','chennai',5),('5978','rajahamsa','manglore','chennai',6),('5978','rajahamsa','manglore','chennai',7),('5978','rajahamsa','manglore','chennai',8),('5978','rajahamsa','manglore','chennai',9),('5978','rajahamsa','manglore','chennai',10),('5978','rajahamsa','manglore','chennai',11),('5978','rajahamsa','manglore','chennai',12),('5978','rajahamsa','manglore','chennai',13),('5978','rajahamsa','manglore','chennai',14),('5978','rajahamsa','manglore','chennai',15),('5978','rajahamsa','manglore','chennai',16),('5978','rajahamsa','manglore','chennai',17),('5978','rajahamsa','manglore','chennai',18),('5978','rajahamsa','manglore','chennai',19),('5978','rajahamsa','manglore','chennai',20),('5978','rajahamsa','manglore','chennai',21),('5978','rajahamsa','manglore','chennai',22),('5978','rajahamsa','manglore','chennai',23),('5978','rajahamsa','manglore','chennai',24),('5978','rajahamsa','manglore','chennai',25),('5978','rajahamsa','manglore','chennai',26),('5978','rajahamsa','manglore','chennai',27),('5978','rajahamsa','manglore','chennai',28),('5978','rajahamsa','manglore','chennai',29),('5978','rajahamsa','manglore','chennai',30);


CREATE TABLE `bus` (
  `busname` varchar(30) DEFAULT NULL,
  `busno` varchar(20) NOT NULL,
  `dtime` varchar(20) DEFAULT NULL,
  `atime` varchar(20) DEFAULT NULL,
  `fromstop` varchar(30) DEFAULT NULL,
  `tostop` varchar(30) DEFAULT NULL,
  `bustype` varchar(10) DEFAULT NULL,
  `distance` varchar(10) DEFAULT NULL,
  `chargeamount` varchar(10) DEFAULT NULL,
  `seats` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`busno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `bus` VALUES ('bus1','1234','08:00','11:00','mandya','mysore','AC','190','240','30'),('rajahamsa','5978','10:00','17:00','manglore','chennai','AC','500','1000','30');

CREATE TABLE `register` (
  `userid` varchar(20) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `register` VALUES ('MS71902','abhi','bd','male','1996-12-18','8697457382','abhi@gmail.com','abhi123','patna'),('MS71903','mohammed','omair','male','1996-12-19','9972498523','omair@gmail.com','omair','mysore'),('MS71901','prajwal','gowda','male','1996-12-18','8978675432','prajwal@gmail.com','prajwal123','pandavapura mandya'),('MS71904','test1','test','male','2019-09-13','9832864921','prajwal111@gmail.com','1234','Harohalli pandavapura');




