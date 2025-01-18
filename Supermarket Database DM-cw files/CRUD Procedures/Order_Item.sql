-- Create Procedure for Order_Item
CREATE
OR REPLACE PROCEDURE proc_add_order_item (
    p_OrderItemID IN NUMBER,
    p_OrderID IN NUMBER,
    p_ItemID IN NUMBER,
    p_Quantity IN INT,
    p_UnitPrice IN NUMBER,
    p_TotalPrice IN NUMBER
) IS BEGIN
INSERT INTO
    Order_Item (
        OrderItemID,
        OrderID,
        ItemID,
        Quantity,
        UnitPrice,
        TotalPrice
    )
VALUES
    (
        p_OrderItemID,
        p_OrderID,
        p_ItemID,
        p_Quantity,
        p_UnitPrice,
        p_TotalPrice
    );

END;

/
-- Read Procedure for Order_Item
CREATE
OR REPLACE PROCEDURE proc_view_order_item (p_OrderItemID IN NUMBER) IS v_OrderID NUMBER;

v_ItemID NUMBER;

v_Quantity INT;

v_UnitPrice NUMBER;

v_TotalPrice NUMBER;

BEGIN
SELECT
    OrderID,
    ItemID,
    Quantity,
    UnitPrice,
    TotalPrice INTO v_OrderID,
    v_ItemID,
    v_Quantity,
    v_UnitPrice,
    v_TotalPrice
FROM
    Order_Item
WHERE
    OrderItemID = p_OrderItemID;

DBMS_OUTPUT.PUT_LINE ('Order ID: ' || v_OrderID);

DBMS_OUTPUT.PUT_LINE ('Item ID: ' || v_ItemID);

DBMS_OUTPUT.PUT_LINE ('Quantity: ' || v_Quantity);

DBMS_OUTPUT.PUT_LINE ('Unit Price: ' || v_UnitPrice);

DBMS_OUTPUT.PUT_LINE ('Total Price: ' || v_TotalPrice);

END;

/
-- Update Procedure for Order_Item
CREATE
OR REPLACE PROCEDURE proc_update_order_item (
    p_OrderItemID IN NUMBER,
    p_OrderID IN NUMBER,
    p_ItemID IN NUMBER,
    p_Quantity IN INT,
    p_UnitPrice IN NUMBER,
    p_TotalPrice IN NUMBER
) IS BEGIN
UPDATE Order_Item
SET
    OrderID = p_OrderID,
    ItemID = p_ItemID,
    Quantity = p_Quantity,
    UnitPrice = p_UnitPrice,
    TotalPrice = p_TotalPrice
WHERE
    OrderItemID = p_OrderItemID;

END;

/
-- Delete Procedure for Order_Item
CREATE
OR REPLACE PROCEDURE proc_delete_order_item (p_OrderItemID IN NUMBER) IS BEGIN
DELETE FROM Order_Item
WHERE
    OrderItemID = p_OrderItemID;

END;

/