-- Create Procedure for Sales
CREATE
OR REPLACE PROCEDURE proc_add_sales (
    p_SalesID IN NUMBER,
    p_BranchID IN NUMBER,
    p_SaleDate IN DATE,
    p_TotalSalesAmount IN NUMBER
) IS BEGIN
INSERT INTO
    Sales (SalesID, BranchID, SaleDate, TotalSalesAmount)
VALUES
    (
        p_SalesID,
        p_BranchID,
        p_SaleDate,
        p_TotalSalesAmount
    );

END;

/
-- Read Procedure for Sales
CREATE
OR REPLACE PROCEDURE proc_view_sales (p_SalesID IN NUMBER) IS v_BranchID NUMBER;

v_SaleDate DATE;

v_TotalSalesAmount NUMBER;

BEGIN
SELECT
    BranchID,
    SaleDate,
    TotalSalesAmount INTO v_BranchID,
    v_SaleDate,
    v_TotalSalesAmount
FROM
    Sales
WHERE
    SalesID = p_SalesID;

DBMS_OUTPUT.PUT_LINE ('Branch ID: ' || v_BranchID);

DBMS_OUTPUT.PUT_LINE ('Sale Date: ' || v_SaleDate);

DBMS_OUTPUT.PUT_LINE ('Total Sales Amount: ' || v_TotalSalesAmount);

END;

/
-- Update Procedure for Sales
CREATE
OR REPLACE PROCEDURE proc_update_sales (
    p_SalesID IN NUMBER,
    p_BranchID IN NUMBER,
    p_SaleDate IN DATE,
    p_TotalSalesAmount IN NUMBER
) IS BEGIN
UPDATE Sales
SET
    BranchID = p_BranchID,
    SaleDate = p_SaleDate,
    TotalSalesAmount = p_TotalSalesAmount
WHERE
    SalesID = p_SalesID;

END;

/
-- Delete Procedure for Sales
CREATE
OR REPLACE PROCEDURE proc_delete_sales (p_SalesID IN NUMBER) IS BEGIN
DELETE FROM Sales
WHERE
    SalesID = p_SalesID;

END;

/