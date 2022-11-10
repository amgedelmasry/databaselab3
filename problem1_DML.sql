INSERT INTO DEPARTMENT (Dnumber,Dname,mgr_ssn,mgr_start_date)
VALUES ('201', 'SMW' , NULL, DATE '2020-5-6');
INSERT INTO EMPLOYEE (ssn,fname,lname,bdate,address,gender,salary,Dno) 
VALUES ('6712','Amged','Elmasry',DATE '2001-7-31','21 Mohamed Ezz elarab','male',2000,'201');
UPDATE department
SET mgr_ssn='6712'
WHERE Dnumber='201';
INSERT INTO project (Pnumber,Pname,Plocation,Dno)
VALUES ('2011005', 'SMWAD' , 'EGYPT','201');

