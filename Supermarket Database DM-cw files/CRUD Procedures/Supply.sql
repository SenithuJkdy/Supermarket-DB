-- Create Procedure for Supply
CREATE
OR REPLACE PROCEDURE proc_add_supply (
    p_SupplyID IN NUMBER,
    p_SupplierID IN NUMBER,
    p_ItemID IN NUMBER,
    p_Quantity IN INT,
    p_SupplyDate IN DATE
) IS BEGIN
INSERT INTO
    Supply (
        SupplyID,
        SupplierID,
        ItemID,
        Quantity,
        SupplyDate
    )
VALUES
    (
        p_SupplyID,
        p_SupplierID,
        p_ItemID,
        p_Quantity,
        p_SupplyDate
    );

END;

/
-- Read Procedure for Supply
CREATE
OR REPLACE PROCEDURE proc_view_supply (p_SupplyID IN NUMBER) IS v_SupplierID NUMBER;

v_ItemID NUMBER;

v_Quantity INT;

v_SupplyDate DATE;

BEGIN
SELECT
    SupplierID,
    ItemID,
    Quantity,
    SupplyDate INTO v_SupplierID,
    v_ItemID,
    v_Quantity,
    v_SupplyDate
FROM
    Supply
WHERE
    SupplyID = p_SupplyID;

DBMS_OUTPUT.PUT_LINE ('Supplier ID: ' || v_SupplierID);

DBMS_OUTPUT.PUT_LINE ('Item ID: ' || v_ItemID);

DBMS_OUTPUT.PUT_LINE ('Quantity: ' || v_Quantity);

DBMS_OUTPUT.PUT_LINE ('Supply Date: ' || v_SupplyDate);

END;

/
-- Update Procedure for Supply
CREATE
OR REPLACE PROCEDURE proc_update_supply (
    p_SupplyID IN NUMBER,
    p_SupplierID IN NUMBER,
    p_ItemID IN NUMBER,
    p_Quantity IN INT,
    p_SupplyDate IN DATE
) IS BEGIN
UPDATE Supply
SET
    SupplierID = p_SupplierID,
    ItemID = p_ItemID,
    Quantity = p_Quantity,
    SupplyDate = p_SupplyDate
WHERE
    SupplyID = p_SupplyID;

END;

/
-- Delete Procedure for Supply
CREATE
OR REPLACE PROCEDURE proc_delete_supply (p_SupplyID IN NUMBER) IS BEGIN
DELETE FROM Supply
WHERE
    SupplyID = p_SupplyID;

END;

/