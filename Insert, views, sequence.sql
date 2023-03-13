CREATE SEQUENCE DEPARTMENT_SEQ INCREMENT BY 1 START WITH 1;
CREATE INDEX VEHICLE_IDX ON VEHICLE(REGISTRATION_NUMBER);
CREATE INDEX CUSTNAME_IDX ON CUSTOMER(NAME, EMAIL);
----------------------
INSERT INTO Department VALUES (DEPARTMENT_SEQ.nextval, 'BDriver','Lucas','Drives a
transit bus');
INSERT INTO Department VALUES (DEPARTMENT_SEQ.nextval,'TDriver','John','Drives a
transit train');
INSERT INTO Department VALUES
(DEPARTMENT_SEQ.nextval,'Scavandezers','Jake','Responsible for cleaning bus regularly');
INSERT INTO Department VALUES (DEPARTMENT_SEQ.nextval,'Customer
Care','William','Handles customer calls');
INSERT INTO Employee VALUES
(101,'John','ryan3456@outlook.com','4371123897','TDriver',2, 101);
INSERT INTO Employee VALUES
(104,'Lucas','johnleila@gmail.com','4377894102','Manager',1,104);
INSERT INTO Employee VALUES
(102,'Rinky','rinkypreet@gmail.com','6472583690','BDriver',1,104);
INSERT INTO Employee VALUES
(103,'Cindy','cindy1534@gmail.com','6471020456','BDriver',1,104);
INSERT INTO Employee VALUES (105,'Shyam','shyam@outlook.com','4375567890','Customer
Care',4,105);
INSERT INTO Payroll VALUES (1,'985263014','2500','CIBC','0025874',101);
INSERT INTO Payroll VALUES (2,'911450025','1000','Royal Bank','1568741',104);
INSERT INTO Payroll VALUES (3,'911475263','2000','CIBC','1142265',103);
INSERT INTO Payroll VALUES (4,'933698154','2000','TD Bank','8856314',102);
INSERT INTO Payroll VALUES (5,'965472596','1500','Scotiabank','8978452',105);
INSERT INTO Insurance VALUES (1,'Life Insurance','50000','10',101);
INSERT INTO Insurance VALUES (2,'Health Insurance','6000','1',104);
INSERT INTO Insurance VALUES (3,'Health Insurance','5000','1',105);
INSERT INTO Insurance VALUES (4,'Life Insurance','50000','10',102);
INSERT INTO Insurance VALUES (5,'Life Insurance','50000','10',103);
INSERT INTO EmpSchedule VALUES (1,'45','5',101);
INSERT INTO EmpSchedule VALUES (2,'60','4',104);
INSERT INTO EmpSchedule VALUES (3,'60','3',105);
INSERT INTO EmpSchedule VALUES (4,'45','5',102);
INSERT INTO EmpSchedule VALUES (5,'45','5',103);
INSERT INTO Route VALUES (1,'Markham-Warden','Pittsburg','Warden');
INSERT INTO Route VALUES (2,'Orator-Warden','Lawerence','Warden');
INSERT INTO Route VALUES (3,'Stray-Kennedy','Birchmount','Kennedy');
INSERT INTO Route VALUES (4,'Kennedy-Eglinton','Crouse','Eglinton');
INSERT INTO Vendor VALUES (1001,'100','4-star rating','Eglinton Avenue','Star Services');
INSERT INTO Vendor VALUES (1002,'300', '4-star rating','St Clair','Blueton');
INSERT INTO Vehicle VALUES (1,'114','Bus','25-09-2022','BNCG389','60',103,1);
INSERT INTO Vehicle VALUES (2, '154','Train','04-11-2021','100CN','500',101,3);
INSERT INTO Vehicle VALUES (3,'17','Bus','11-01-2019','GDFE954','60',102,4);
INSERT INTO Maintenance VALUES (1,'10-11-2022','5480','Pending','750',1002,2);
INSERT INTO Maintenance VALUES (2,'22-09-2022','1850','Done','150',1001,1);
INSERT INTO Maintenance VALUES (3,'12-11-2022','640','Pending','200',1001,3);
INSERT INTO VehicleSchedule VALUES (1,'9:50','11:15',1);
INSERT INTO VehicleSchedule VALUES (2,'19:05','21:50',3);
INSERT INTO VehicleSchedule VALUES (3,'15:30','17:10',2);
INSERT INTO VehicleSchedule VALUES (4,'5:30','7:45',2);
INSERT INTO VehicleSchedule VALUES (5,'1:30','16:10',3);
INSERT INTO Card VALUES (1001,'Student','27-10-2021','23.30','Active');
INSERT INTO Card VALUES (1002,'Senior Citizens','17-12-2019','25','Inactive');
INSERT INTO Card VALUES (1003,'Handicapped','09-01-2018','2','Cancelled');
INSERT INTO Card VALUES (1004,'Senior Citizens','11-05-2022','55.40','Active');
INSERT INTO Card VALUES (1005,'Handicapped','15-11-2017','23.90','Active');
INSERT INTO TransactionHistory VALUES (1,'100','Credit','Pending',1003);
INSERT INTO TransactionHistory VALUES (2,'150','Debit','Denied',1001);
INSERT INTO TransactionHistory VALUES (3,'20','Debit','Processing',1005);
INSERT INTO TransactionHistory VALUES (4,'50','Cash','Aborted',1002);
INSERT INTO TransactionHistory VALUES (5,'60','Cash','Successful',1004);
INSERT INTO CUSTOMER VALUES (1,'Annie','annie2419@gmail.com', '4377329082',
'Scarborough', 'M1P2E1','258 Birchmount', '25-10-2005', 1001);
INSERT INTO CUSTOMER VALUES (2,'Thomas' , 'tpier55@gmail.com', '7894256310', 'North
York', 'M4B0E5', 'Synergy Road', '14-01-1972', 1002);
INSERT INTO CUSTOMER VALUES (3,'Pearson' ,'girardp@gmail.com', '7742584126',
'Etobicoke','M7G3H8', '645 Victoria', '09-11-2000', 1003);
INSERT INTO CUSTOMER VALUES (4, 'Ram', 'ramsajja@gmail.com', '6478890189', 'East
York', 'M8P2E3', '34 South Avenue', '12-05-1970', 1004);
INSERT INTO CUSTOMER VALUES (5,'Sandy','sandy@outlook.com', '6473390189',
'Scarborough', 'M3C0C3', '112 Kennedy', '03-03-2015', 1005);
INSERT INTO CUSTACCOUNT VALUES (1,'S%kika','Where do you live in your
childhood','Whats your dog name','Your favorite place','Scarborough','tommy','Park',1);
INSERT INTO CUSTACCOUNT VALUES (2,'nikethan','Where is you home','Who are you', 'Your
mothers maiden name', 'On earth','Student','Gigard',5);
INSERT INTO CUSTACCOUNT VALUES (3,'R@457','Your girlfriend name','Date of Birth','Your
car model','Rhaina','27-10-2000','No car',4);
INSERT INTO CUSTACCOUNT VALUES (4,'ryan4567','Whats your dog name','Your fathers
mother name','Your favorite place','tommy','Rani','Library',2);
INSERT INTO CUSTACCOUNT VALUES (5,'shyam89','Mothers last name','Your auntys
husband name','Your favorite game','Singh','Rao','Tennis',3);
INSERT INTO HelpDesk VALUES (1,'Lost the presto card','Deactivated Presto Card and
refunded amount',1);
INSERT INTO HelpDesk VALUES (2,'Load amount into presto card online','Register in Presto
app and load amount directly',5);
INSERT INTO HelpDesk VALUES (3,'How to know Presto Card number','Visible at the back of
the Presto Card',2);
INSERT INTO HelpDesk VALUES (4,'Presto Card not working','Take new card',3);
INSERT INTO HelpDesk VALUES (5,'How to convert Student account into Handicapped
account','Resolved by showing valid doctor certificate',4);
INSERT INTO FareEnum VALUES (1,'Students','3.20');
INSERT INTO FareEnum VALUES (2,'Senior Citizens','2.00');
INSERT INTO FareEnum VALUES (3,'Handicapped','1.70');
INSERT INTO RideHistory VALUES (1,'Crouse','Eglinton','13:15','15:15',3,1,3,'Completed');
INSERT INTO RideHistory VALUES (2,'Victoria','Kennedy','3:40','5:40',3,3,5,'Completed');
INSERT INTO RideHistory VALUES (3,'Kennedy','Warden','9:23','11:23',1,2,1,'Completed');
INSERT INTO RideHistory VALUES (4,'Birchmount','Warden','16:55','18:55',2,1,2,'Completed');
INSERT INTO RideHistory VALUES (5,'Donmills','Kennedy','5:05','7:05',2,3,4,'Halted');
-------------------
select * from card;
select * from custaccount;
select * from customer;
select * from department;
select * from employee;
select * from empschedule;
select * from fareenum;
select * from helpdesk;
select * from insurance;
select * from maintenance;
select * from payroll;
select * from ridehistory;
select * from route;
select * from transactionhistory;
select * from vehicle;
select * from vehicleschedule;
select * from vendor;
--------------------
CREATE VIEW VEHICLE_MAINTENANCE AS
SELECT V.VEHICLE_NUMBER, V.PURCHASE_DATE, M.SERVICE_DATE, M.STATUS, VD.VENDOR_NAME, VD.SERVICE_FEE 
FROM VEHICLE V 
INNER JOIN MAINTENANCE M ON M.VEHICLEID = V.VEHICLEID 
INNER JOIN VENDOR VD ON VD.VENDORID = M.VENDORID;

SELECT * FROM VEHICLE_MAINTENANCE;

CREATE VIEW CUSTOMER_RIDE AS
SELECT C.NAME, CD.BALANCE, CD.STATUS, CD.TYPE, FN.FARE_AMOUNT, RH.STATUS AS
RIDE_HISTORY_STATUS
FROM CUSTOMER C
INNER JOIN CARD CD ON CD.CARDID = C.CARDID AND CD.STATUS = 'Active'
INNER JOIN RIDEHISTORY RH ON RH.CUSTID = C.CUSTID
INNER JOIN FAREENUM FN ON FN.FAREID = RH.FAREID;

SELECT * FROM CUSTOMER_RIDE;

CREATE VIEW CUSTOMER_INFORMATION AS
SELECT CA.USERID, C.NAME, CD.BALANCE, CD.STATUS AS CARD_STATUS
FROM CUSTOMER C
INNER JOIN CUSTACCOUNT CA ON CA.CUSTID = C.CUSTID
INNER JOIN CARD CD ON CD.CARDID = C.CARDID;

SELECT * FROM CUSTOMER_INFORMATION;

CREATE VIEW EMP_INFORMATION AS
SELECT E.EMPID, E.EMPNAME, PR.SALARY, INS.INS_DURATION
FROM EMPLOYEE E
INNER JOIN PAYROLL PR ON PR.EMPID = E.EMPID
INNER JOIN INSURANCE INS ON INS.EMPID = E.EMPID ORDER BY EMPID;

SELECT * FROM EMP_INFORMATION;
