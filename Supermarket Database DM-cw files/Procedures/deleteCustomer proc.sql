--------------------------------------------------------
--  File created - Wednesday-October-09-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure DELETECUSTOMER
--------------------------------------------------------
set
  define off;

CREATE
OR REPLACE NONEDITIONABLE PROCEDURE "SYS"."DELETECUSTOMER" (p_CUSTOMERID IN NUMBER) IS BEGIN
DELETE FROM Customer
WHERE
  CUSTOMERID = p_CUSTOMERID;

dbms_output.put_line ('Customer deleted... ');

--dbms_output.put_line('Customer deleted : ' || customerid);
EXCEPTION WHEN NO_DATA_FOUND THEN dbms_output.put_line ('Error deleting customer: ' || SQLERRM);

END deleteCustomer;

/