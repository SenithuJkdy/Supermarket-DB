--------------------------------------------------------
--  File created - Wednesday-October-09-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure UPDATECUSTOMER
--------------------------------------------------------
set
  define off;

CREATE
OR REPLACE NONEDITIONABLE PROCEDURE "SYS"."UPDATECUSTOMER" (
  p_CUSTOMERID IN NUMBER,
  p_NAME IN VARCHAR2,
  p_ADDRESS IN VARCHAR2,
  p_PHONENUMBER IN NUMBER,
  p_EMAIL IN VARCHAR2
) IS BEGIN
UPDATE CUSTOMER
SET
  NAME = p_NAME,
  ADDRESS = p_ADDRESS,
  PHONENUMBER = p_PHONENUMBER,
  EMAIL = p_EMAIL
WHERE
  CUSTOMERID = p_CUSTOMERID;

dbms_output.put_line ('Customer updated... ');

--dbms_output.put_line('Customer updated : ' || customerid);
EXCEPTION WHEN OTHERS THEN dbms_output.put_line ('Error updating customer: ' || SQLERRM);

END updateCustomer;

/