CREATE
OR REPLACE PROCEDURE proc_add_brand (
    p_BrandID IN NUMBER,
    p_Name IN VARCHAR2,
    p_CategoryID IN NUMBER,
    p_Origin IN VARCHAR2
) IS BEGIN
INSERT INTO
    Brand (BrandID, Name, CategoryID, Origin)
VALUES
    (p_BrandID, p_Name, p_CategoryID, p_Origin);

END;

/ CREATE
OR REPLACE PROCEDURE proc_view_brand (p_BrandID IN NUMBER) IS v_Name VARCHAR2 (100);

v_CategoryID NUMBER;

v_Origin VARCHAR2 (100);

BEGIN
SELECT
    Name,
    CategoryID,
    Origin INTO v_Name,
    v_CategoryID,
    v_Origin
FROM
    Brand
WHERE
    BrandID = p_BrandID;

DBMS_OUTPUT.PUT_LINE (
    'Brand Name: ' || v_Name || ', CategoryID: ' || v_CategoryID || ', Origin: ' || v_Origin
);

END;

/ CREATE
OR REPLACE PROCEDURE proc_update_brand (
    p_BrandID IN NUMBER,
    p_Name IN VARCHAR2,
    p_CategoryID IN NUMBER,
    p_Origin IN VARCHAR2
) IS BEGIN
UPDATE Brand
SET
    Name = p_Name,
    CategoryID = p_CategoryID,
    Origin = p_Origin
WHERE
    BrandID = p_BrandID;

END;

/ CREATE
OR REPLACE PROCEDURE proc_delete_brand (p_BrandID IN NUMBER) IS BEGIN
DELETE FROM Brand
WHERE
    BrandID = p_BrandID;

END;

/