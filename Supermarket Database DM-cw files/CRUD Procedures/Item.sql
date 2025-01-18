CREATE
OR REPLACE PROCEDURE proc_add_item (
    p_ItemID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Description IN CLOB,
    p_Price IN NUMBER,
    p_StockQuantity IN INT,
    p_BrandID IN INT,
    p_CategoryID IN INT
) IS BEGIN
INSERT INTO
    Item (
        ItemID,
        Name,
        Description,
        Price,
        StockQuantity,
        BrandID,
        CategoryID
    )
VALUES
    (
        p_ItemID,
        p_Name,
        p_Description,
        p_Price,
        p_StockQuantity,
        p_BrandID,
        p_CategoryID
    );

END;

/ CREATE
OR REPLACE PROCEDURE proc_view_item (p_ItemID IN NUMBER) IS v_Name VARCHAR2 (100);

v_Description CLOB;

v_Price NUMBER (10, 2);

v_StockQuantity INT;

v_BrandID INT;

v_CategoryID INT;

BEGIN
SELECT
    Name,
    Description,
    Price,
    StockQuantity,
    BrandID,
    CategoryID INTO v_Name,
    v_Description,
    v_Price,
    v_StockQuantity,
    v_BrandID,
    v_CategoryID
FROM
    Item
WHERE
    ItemID = p_ItemID;

DBMS_OUTPUT.PUT_LINE ('Item Name: ' || v_Name);

DBMS_OUTPUT.PUT_LINE ('Description: ' || v_Description);

DBMS_OUTPUT.PUT_LINE ('Price: ' || v_Price);

DBMS_OUTPUT.PUT_LINE ('Stock Quantity: ' || v_StockQuantity);

DBMS_OUTPUT.PUT_LINE ('Brand ID: ' || v_BrandID);

DBMS_OUTPUT.PUT_LINE ('Category ID: ' || v_CategoryID);

END;

/ CREATE
OR REPLACE PROCEDURE proc_update_item (
    p_ItemID IN NUMBER,
    p_Name IN VARCHAR2,
    p_Description IN CLOB,
    p_Price IN NUMBER,
    p_StockQuantity IN INT,
    p_BrandID IN INT,
    p_CategoryID IN INT
) IS BEGIN
UPDATE Item
SET
    Name = p_Name,
    Description = p_Description,
    Price = p_Price,
    StockQuantity = p_StockQuantity,
    BrandID = p_BrandID,
    CategoryID = p_CategoryID
WHERE
    ItemID = p_ItemID;

END;

/ CREATE
OR REPLACE PROCEDURE proc_delete_item (p_ItemID IN NUMBER) IS BEGIN
DELETE FROM Item
WHERE
    ItemID = p_ItemID;

END;

/