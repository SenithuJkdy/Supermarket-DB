CREATE
OR REPLACE PROCEDURE proc_add_order (
    p_OrderID IN NUMBER,
    p_CustomerID IN NUMBER,
    p_EmployeeID IN NUMBER,
    p_BranchID IN NUMBER,
    p_OrderDate IN DATE,
    p_TotalAmount IN NUMBER,
    p_Discount IN NUMBER,
    p_PaymentID IN NUMBER
) IS BEGIN
INSERT INTO
    Orders (
        OrderID,
        CustomerID,
        EmployeeID,
        BranchID,
        OrderDate,
        TotalAmount,
        Discount,
        PaymentID
    )
VALUES
    (
        p_OrderID,
        p_CustomerID,
        p_EmployeeID,
        p_BranchID,
        p_OrderDate,
        p_TotalAmount,
        p_Discount,
        p_PaymentID
    );

END;

/ CREATE
OR REPLACE PROCEDURE proc_view_order (p_OrderID IN NUMBER) IS v_CustomerID NUMBER;

v_EmployeeID NUMBER;

v_BranchID NUMBER;

v_OrderDate DATE;

v_TotalAmount NUMBER;

v_Discount NUMBER;

v_PaymentID NUMBER;

BEGIN
SELECT
    CustomerID,
    EmployeeID,
    BranchID,
    OrderDate,
    TotalAmount,
    Discount,
    PaymentID INTO v_CustomerID,
    v_EmployeeID,
    v_BranchID,
    v_OrderDate,
    v_TotalAmount,
    v_Discount,
    v_PaymentID
FROM
    Orders
WHERE
    OrderID = p_OrderID;

DBMS_OUTPUT.PUT_LINE (
    'CustomerID: ' || v_CustomerID || ', EmployeeID: ' || v_EmployeeID || ', BranchID: ' || v_BranchID || ', Order Date: ' || v_OrderDate || ', Total Amount: ' || v_TotalAmount || ', Discount: ' || v_Discount || ', PaymentID: ' || v_PaymentID
);

END;

/ CREATE
OR REPLACE PROCEDURE proc_update_order (
    p_OrderID IN NUMBER,
    p_CustomerID IN NUMBER,
    p_EmployeeID IN NUMBER,
    p_BranchID IN NUMBER,
    p_OrderDate IN DATE,
    p_TotalAmount IN NUMBER,
    p_Discount IN NUMBER,
    p_PaymentID IN NUMBER
) IS BEGIN
UPDATE Orders
SET
    CustomerID = p_CustomerID,
    EmployeeID = p_EmployeeID,
    BranchID = p_BranchID,
    OrderDate = p_OrderDate,
    TotalAmount = p_TotalAmount,
    Discount = p_Discount,
    PaymentID = p_PaymentID
WHERE
    OrderID = p_OrderID;

END;

/ CREATE
OR REPLACE PROCEDURE proc_delete_order (p_OrderID IN NUMBER) IS BEGIN
DELETE FROM Orders
WHERE
    OrderID = p_OrderID;

END;

/