CREATE
OR REPLACE PROCEDURE proc_add_branch (
    p_BranchID IN NUMBER,
    p_Name IN VARCHAR2,
    p_District IN VARCHAR2,
    p_Profit IN NUMBER
) IS BEGIN
INSERT INTO
    Branch (BranchID, Name, District, Profit)
VALUES
    (p_BranchID, p_Name, p_District, p_Profit);

END;

/ CREATE
OR REPLACE PROCEDURE proc_view_branch (p_BranchID IN NUMBER) IS v_Name VARCHAR2 (100);

v_District VARCHAR2 (100);

v_Profit NUMBER;

BEGIN
SELECT
    Name,
    District,
    Profit INTO v_Name,
    v_District,
    v_Profit
FROM
    Branch
WHERE
    BranchID = p_BranchID;

DBMS_OUTPUT.PUT_LINE (
    'Branch Name: ' || v_Name || ', District: ' || v_District || ', Profit: ' || v_Profit
);

END;

/ CREATE
OR REPLACE PROCEDURE proc_update_branch (
    p_BranchID IN NUMBER,
    p_Name IN VARCHAR2,
    p_District IN VARCHAR2,
    p_Profit IN NUMBER
) IS BEGIN
UPDATE Branch
SET
    Name = p_Name,
    District = p_District,
    Profit = p_Profit
WHERE
    BranchID = p_BranchID;

END;

/ CREATE
OR REPLACE PROCEDURE proc_delete_branch (p_BranchID IN NUMBER) IS BEGIN
DELETE FROM Branch
WHERE
    BranchID = p_BranchID;

END;

/