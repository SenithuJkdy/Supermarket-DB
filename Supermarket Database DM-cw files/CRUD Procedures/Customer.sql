CREATE
OR REPLACE PROCEDURE proc_add_customer (
    p_CustomerID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Address IN VARCHAR2,
    p_PhoneNumber IN VARCHAR2,
    p_Email IN VARCHAR2
) IS BEGIN
INSERT INTO
    Customer (CustomerID, Name, Address, PhoneNumber, Email)
VALUES
    (
        p_CustomerID,
        p_Name,
        p_Address,
        p_PhoneNumber,
        p_Email
    );

END;

/ CREATE
OR REPLACE PROCEDURE proc_view_customer (p_CustomerID IN NUMBER) IS v_Name VARCHAR2 (100);

v_Address VARCHAR2 (255);

v_PhoneNumber VARCHAR2 (15);

v_Email VARCHAR2 (100);

BEGIN
SELECT
    Name,
    Address,
    PhoneNumber,
    Email INTO v_Name,
    v_Address,
    v_PhoneNumber,
    v_Email
FROM
    Customer
WHERE
    CustomerID = p_CustomerID;

DBMS_OUTPUT.PUT_LINE (
    'Customer Name: ' || v_Name || ', Address: ' || v_Address || ', Phone Number: ' || v_PhoneNumber || ', Email: ' || v_Email
);

END;

/ CREATE
OR REPLACE PROCEDURE proc_update_customer (
    p_CustomerID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Address IN VARCHAR2,
    p_PhoneNumber IN VARCHAR2,
    p_Email IN VARCHAR2
) IS BEGIN
UPDATE Customer
SET
    Name = p_Name,
    Address = p_Address,
    PhoneNumber = p_PhoneNumber,
    Email = p_Email
WHERE
    CustomerID = p_CustomerID;

END;

/ CREATE
OR REPLACE PROCEDURE proc_delete_customer (p_CustomerID IN NUMBER) IS BEGIN
DELETE FROM Customer
WHERE
    CustomerID = p_CustomerID;

END;

/