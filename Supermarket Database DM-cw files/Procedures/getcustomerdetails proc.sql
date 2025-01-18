--------------------------------------------------------
--  File created - Wednesday-October-09-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure GETCUSTOMERDETAILS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYS"."GETCUSTOMERDETAILS" 
       (Emp_no IN NUMBER) 
      IS
          CURSOR c_customer IS
          SELECT * FROM Customer WHERE customerid = Emp_no;
          c_record c_customer%ROWTYPE;
      BEGIN
            OPEN c_customer;
            FETCH c_customer INTO c_record;

            IF c_customer%NOTFOUND THEN
            dbms_output.put_line('Customer not found');
            ELSE
            --dbms_output.put_line('Customer ID: ' || c_record.customerid);
            dbms_output.put_line('Customer Name: ' || c_record.name);
            dbms_output.put_line('Customer Address: ' || c_record.address);
            dbms_output.put_line('Customer Phone Number: ' || c_record.phonenumber);
            dbms_output.put_line('Customer Email: ' || c_record.email);
            END IF;

            CLOSE c_customer;

      END getCustomerDetails;

/
