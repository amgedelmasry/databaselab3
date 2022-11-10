CREATE SCHEMA COMPANY;
USE COMPANY;
    CREATE TABLE DEPARTMENT(
    	Dnumber VARCHAR(15),
        Dname VARCHAR(20),
        mgr_ssn VARCHAR(15),
        mgr_start_date DATE,
        PRIMARY KEY (Dnumber)
    );
	CREATE TABLE EMPLOYEE (
    	ssn VARCHAR(15),
        fname VARCHAR(15),
        lname VARCHAR(15),
        bdate DATE,
        address VARCHAR(30),
        gender VARCHAR(10),
        salary DECIMAL(8,2),
        Dno VARCHAR(15),
        PRIMARY KEY (ssn),
        FOREIGN KEY (Dno) REFERENCES  DEPARTMENT(Dnumber)
    );
    ALTER TABLE DEPARTMENT ADD FOREIGN KEY (mgr_ssn) REFERENCES EMPLOYEE(ssn);
    CREATE TABLE PROJECT(
    	Pnumber VARCHAR(15),
        Pname VARCHAR(20),
        Plocation VARCHAR(20),
        Dno VARCHAR(15),
        PRIMARY KEY (Pnumber),
        FOREIGN KEY (Dno) REFERENCES DEPARTMENT(Dnumber)
    );
    