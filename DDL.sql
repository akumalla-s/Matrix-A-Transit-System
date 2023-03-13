CREATE TABLE DEPARTMENT
(
DEPTID INT NOT NULL,
DEPARTMENT_NAME VARCHAR2(50) NOT NULL,
MANAGER_NAME VARCHAR2(50) NOT NULL,
DESCRIPTION VARCHAR2(50) NOT NULL,
CONSTRAINT DEPARTMENT_DEPTID_PK PRIMARY KEY (DEPTID) ENABLE
);
CREATE TABLE EMPLOYEE
(
EMPID INT NOT NULL ,
EMPNAME VARCHAR2(20) NOT NULL ,
EMAIL VARCHAR2(20) ,
CONTACT VARCHAR2(20) ,
DESIGNATION VARCHAR2(20) ,
DEPTID INT NOT NULL ,
MANAGERID INT NOT NULL ,
CONSTRAINT EMPLOYEE_EMPID_PK PRIMARY KEY (EMPID) ENABLE
);
ALTER TABLE EMPLOYEE
ADD CONSTRAINT EMPLOYEE_DEPTID_FK FOREIGN KEY (DEPTID) REFERENCES
DEPARTMENT (DEPTID)
ENABLE;
ALTER TABLE EMPLOYEE
ADD CONSTRAINT EMPLOYEE_MANAGERID_FK FOREIGN KEY (MANAGERID)
REFERENCES EMPLOYEE (EMPID)
ENABLE;
CREATE TABLE PAYROLL
(
PAYID INT NOT NULL ,
SIN VARCHAR2(20) UNIQUE NOT NULL,
SALARY VARCHAR2(20) ,
BANK_BRANCH VARCHAR2(20) ,
ACC_NUMBER VARCHAR2(20) ,
EMPID INT NOT NULL ,
CONSTRAINT PAYROLL_EMPID_FK FOREIGN KEY (EMPID) REFERENCES EMPLOYEE
(EMPID) ENABLE
);
CREATE TABLE INSURANCE
(
INS_ID INT NOT NULL ,
INS_TYPE VARCHAR2(20) ,
COVERAGE VARCHAR2(20) ,
INS_DURATION VARCHAR2(20) ,
EMPID INT NOT NULL ,
CONSTRAINT INSURANCE_EMPID_FK FOREIGN KEY (EMPID) REFERENCES EMPLOYEE
(EMPID) ENABLE
);
CREATE TABLE ROUTE
(
ROUTEID INT NOT NULL ,
ROUTE_NAME VARCHAR2(20) ,
START_LOCATION VARCHAR2(20) ,
DESTINATION VARCHAR2(20) ,
CONSTRAINT ROUTE_ROUTEID_PK PRIMARY KEY (ROUTEID) ENABLE
);
CREATE TABLE VENDOR
(
VENDORID INT NOT NULL ,
VENDOR_NAME VARCHAR2(20) ,
VENDORT_LOCATION VARCHAR2(20) ,
REVIEW VARCHAR2(20) ,
SERVICE_FEE VARCHAR2(20) ,
CONSTRAINT VENDOR_VENDORID_PK PRIMARY KEY (VENDORID) ENABLE
);
CREATE TABLE VEHICLE
(
VEHICLEID INT NOT NULL ,
VEHICLE_NUMBER VARCHAR2(20) UNIQUE NOT NULL,
TYPE VARCHAR2(20) ,
PURCHASE_DATE VARCHAR2(20) ,
REGISTRATION_NUMBER VARCHAR2(20) ,
CAPACITY VARCHAR2(20) ,
EMPID INT NOT NULL ,
ROUTEID INT NOT NULL ,
CONSTRAINT VEHICLE_VEHICLEID_PK PRIMARY KEY (VEHICLEID) ENABLE ,
CONSTRAINT VEHICLE_EMPID_FK FOREIGN KEY (EMPID) REFERENCES EMPLOYEE
(EMPID) ENABLE ,
CONSTRAINT VEHICLE_ROUTEID_FK FOREIGN KEY (ROUTEID) REFERENCES ROUTE
(ROUTEID) ENABLE
);
CREATE TABLE MAINTENANCE
(
MAINTENANCEID INT NOT NULL ,
SERVICE_DATE VARCHAR2(20) NOT NULL,
MILES VARCHAR2(20) ,
STATUS VARCHAR2(20) ,
MAINTENANCE_COST VARCHAR2(20) ,
VENDORID INT NOT NULL ,
VEHICLEID INT NOT NULL ,
CONSTRAINT MAINTENANCE_MAINTENANCEID_PK PRIMARY KEY (MAINTENANCEID)
ENABLE ,
CONSTRAINT MAINTENANCE_VENDORID_FK FOREIGN KEY (VENDORID) REFERENCES
VENDOR (VENDORID) ENABLE ,
CONSTRAINT MAINTENANCE_VEHICLEID_FK FOREIGN KEY (VEHICLEID) REFERENCES
VEHICLE (VEHICLEID) ENABLE
);
CREATE TABLE VEHICLESCHEDULE
(
SCHEDULEID INT NOT NULL ,
DEPT_TIME VARCHAR2(20) NOT NULL,
ARRIVAL_TIME VARCHAR2(20) ,
VEHICLEID INT NOT NULL ,
CONSTRAINT VEHICLESCHEDULE_SCHEDULEID_PK PRIMARY KEY (SCHEDULEID)
ENABLE ,
CONSTRAINT VEHICLESCHEDULE_VEHICLEID_FK FOREIGN KEY (VEHICLEID)
REFERENCES VEHICLE (VEHICLEID) ENABLE
);
CREATE TABLE CARD
(
CARDID INT NOT NULL ,
TYPE VARCHAR2(20) NOT NULL,
ISSUED_DATE VARCHAR2(20) ,
BALANCE VARCHAR2(20) NOT NULL ,
STATUS VARCHAR2(20) NOT NULL ,
CONSTRAINT CARD_CARDID_PK PRIMARY KEY (CARDID) ENABLE
);
CREATE TABLE TRANSACTIONHISTORY
(
TRANSACTIONID INT NOT NULL,
AMOUNT VARCHAR2(20) NOT NULL,
PAYMENT_MODE VARCHAR2(20) NOT NULL,
PAYMENT_STATUS VARCHAR2(20) NOT NULL,
CARDID INT NOT NULL ,
CONSTRAINT TRANSACTIONHISTORY_TRANSACTIONID_PK PRIMARY KEY
(TRANSACTIONID) ENABLE ,
CONSTRAINT TRANSACTIONHISTORY_CARDID_FK FOREIGN KEY (CARDID) REFERENCES
CARD (CARDID) ENABLE
);
CREATE TABLE EMPSCHEDULE
(
ESCHEDULEID INT NOT NULL,
WEEKLY_HOURS VARCHAR2(20) NOT NULL,
LEAVE_COUNT VARCHAR2(20) NOT NULL,
EMPID INT NOT NULL ,
CONSTRAINT EMPSCHEDULE_ESCHEDULEID_PK PRIMARY KEY (ESCHEDULEID) ENABLE
,
CONSTRAINT EMPSCHEDULE_EMPID_FK FOREIGN KEY (EMPID) REFERENCES
EMPLOYEE (EMPID) ENABLE
);
CREATE TABLE CUSTOMER
(
CUSTID INT NOT NULL,
NAME VARCHAR2(20) NOT NULL,
EMAIL VARCHAR2(20) NOT NULL,
CONTACT VARCHAR2(20) NOT NULL,
CITY VARCHAR2(20) NOT NULL,
ZIPCODE VARCHAR2(20) NOT NULL,
ADDRESS VARCHAR2(20) NOT NULL,
DOB VARCHAR2(20) NOT NULL,
CARDID INT NOT NULL ,
CONSTRAINT CUSTOMER_CUSTID_PK PRIMARY KEY (CUSTID) ENABLE ,
CONSTRAINT CUSTOMER_CARDID_FK FOREIGN KEY (CARDID) REFERENCES CARD
(CARDID) ENABLE
);
CREATE TABLE CUSTACCOUNT
(
USERID INT NOT NULL,
PASSWORD VARCHAR2(20) NOT NULL,
SECURITY_Q1 VARCHAR2(100) NOT NULL,
SECURITY_Q2 VARCHAR2(100) NOT NULL,
SECURITY_Q3 VARCHAR2(100) NOT NULL,
SECURITY_A1 VARCHAR2(20) NOT NULL,
SECURITY_A2 VARCHAR2(20) NOT NULL,
SECURITY_A3 VARCHAR2(20) NOT NULL,
CUSTID INT NOT NULL ,
CONSTRAINT CUSTACCOUNT_USERID_PK PRIMARY KEY (USERID) ENABLE ,
CONSTRAINT CUSTACCOUNT_CUSTID_FK FOREIGN KEY (CUSTID) REFERENCES
CUSTOMER (CUSTID) ENABLE
);
CREATE TABLE HELPDESK
(
ENQUIRYID INT NOT NULL,
DESCRIPTION VARCHAR2(150) NOT NULL,
STATUS VARCHAR2(150) NOT NULL,
CUSTID INT NOT NULL ,
CONSTRAINT HELPDESK_ENQUIRYID_PK PRIMARY KEY (ENQUIRYID) ENABLE ,
CONSTRAINT HELPDESK_CUSTID_FK FOREIGN KEY (CUSTID) REFERENCES CUSTOMER
(CUSTID) ENABLE
);
CREATE TABLE FAREENUM
(
FAREID INT NOT NULL,
DESCRIPTION VARCHAR2(20) NOT NULL,
FARE_AMOUNT VARCHAR2(20) NOT NULL,
CONSTRAINT FAREENUM_FAREID_PK PRIMARY KEY (FAREID) ENABLE
);
CREATE TABLE RIDEHISTORY
(
RIDEID INT NOT NULL,
START_LOCATION VARCHAR2(20) NOT NULL,
DESTINATION VARCHAR2(20) NOT NULL,
TAPPING_TIME VARCHAR2(20) NOT NULL,
VALID_TIME VARCHAR2(20) NOT NULL,
FAREID INT NOT NULL ,
VEHICLEID INT NOT NULL ,
CUSTID INT NOT NULL ,
CONSTRAINT RIDEHISTORY_RIDEID_PK PRIMARY KEY (RIDEID) ENABLE ,
CONSTRAINT RIDEHISTORY_VEHICLEID_FK FOREIGN KEY (VEHICLEID) REFERENCES
VEHICLE (VEHICLEID) ENABLE ,
CONSTRAINT RIDEHISTORY_CUSTID_FK FOREIGN KEY (CUSTID) REFERENCES
CUSTOMER (CUSTID) ENABLE
);

ALTER TABLE RIDEHISTORY ADD STATUS VARCHAR2(20) NOT NULL;
