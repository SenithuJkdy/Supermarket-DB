--------------------------------------------------------
--  File created - Wednesday-October-09-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure ADDCUSTOMER
--------------------------------------------------------
set
  define off;

CREATE
OR REPLACE NONEDITIONABLE PROCEDURE "SYS"."ADDCUSTOMER" (
  CUSTOMERID IN NUMBER,
  NAME IN VARCHAR2,
  ADDRESS IN VARCHAR2,
  PHONENUMBER IN NUMBER,
  EMAIL IN VARCHAR2
) IS BEGIN
INSERT INTO
  Customer
VALUES
  (CUSTOMERID, NAME, ADDRESS, PHONENUMBER, EMAIL);

dbms_output.put_line ('Customer added... ');

--dbms_output.put_line('Customer added : ' || customerid);
EXCEPTION WHEN OTHERS THEN dbms_output.put_line ('Error adding customer: ' || SQLERRM);

END addCustomer;

/