CREATE
OR REPLACE PROCEDURE proc_add_category (p_CategoryID IN NUMBER, p_Type IN VARCHAR2) IS BEGIN
INSERT INTO
    Category (CategoryID, Type)
VALUES
    (p_CategoryID, p_Type);

END;

/ CREATE
OR REPLACE PROCEDURE proc_view_category (p_CategoryID IN NUMBER) IS v_Type VARCHAR2 (100);

BEGIN
SELECT
    Type INTO v_Type
FROM
    Category
WHERE
    CategoryID = p_CategoryID;

DBMS_OUTPUT.PUT_LINE ('Category Type: ' || v_Type);

END;

/ CREATE
OR REPLACE PROCEDURE proc_update_category (p_CategoryID IN NUMBER, p_Type IN VARCHAR2) IS BEGIN
UPDATE Category
SET
    Type = p_Type
WHERE
    CategoryID = p_CategoryID;

END;

/ CREATE
OR REPLACE PROCEDURE proc_delete_category (p_CategoryID IN NUMBER) IS BEGIN
DELETE FROM Category
WHERE
    CategoryID = p_CategoryID;

END;

/