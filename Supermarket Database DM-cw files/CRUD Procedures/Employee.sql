CREATE
OR REPLACE PROCEDURE proc_add_employee (
    p_EmployeeID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Position IN VARCHAR2,
    p_Salary IN NUMBER,
    p_Address IN VARCHAR2,
    p_BranchID IN NUMBER
) IS BEGIN
INSERT INTO
    Employee (
        EmployeeID,
        Name,
        Position,
        Salary,
        Address,
        BranchID
    )
VALUES
    (
        p_EmployeeID,
        p_Name,
        p_Position,
        p_Salary,
        p_Address,
        p_BranchID
    );

END;

/ CREATE
OR REPLACE PROCEDURE proc_view_employee (p_EmployeeID IN NUMBER) IS v_Name VARCHAR2 (100);

v_Position VARCHAR2 (100);

v_Salary NUMBER;

v_Address VARCHAR2 (255);

v_BranchID NUMBER;

BEGIN
SELECT
    Name,
    Position,
    Salary,
    Address,
    BranchID INTO v_Name,
    v_Position,
    v_Salary,
    v_Address,
    v_BranchID
FROM
    Employee
WHERE
    EmployeeID = p_EmployeeID;

DBMS_OUTPUT.PUT_LINE (
    'Employee Name: ' || v_Name || ', Position: ' || v_Position || ', Salary: ' || v_Salary || ', Address: ' || v_Address || ', BranchID: ' || v_BranchID
);

END;

/ CREATE
OR REPLACE PROCEDURE proc_update_employee (
    p_EmployeeID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Position IN VARCHAR2,
    p_Salary IN NUMBER,
    p_Address IN VARCHAR2,
    p_BranchID IN NUMBER
) IS BEGIN
UPDATE Employee
SET
    Name = p_Name,
    Position = p_Position,
    Salary = p_Salary,
    Address = p_Address,
    BranchID = p_BranchID
WHERE
    EmployeeID = p_EmployeeID;

END;

/ CREATE
OR REPLACE PROCEDURE proc_delete_employee (p_EmployeeID IN NUMBER) IS BEGIN
DELETE FROM Employee
WHERE
    EmployeeID = p_EmployeeID;

END;

/