-- Create Procedure for Supplier
CREATE OR REPLACE PROCEDURE proc_add_supplier(
    p_SupplierID IN NUMBER,
    p_Name IN VARCHAR2,
    p_ContactInfo IN VARCHAR2,
    p_Origin IN VARCHAR2
)
IS
BEGIN
    INSERT INTO Supplier (SupplierID, Name, ContactInfo, Origin)
    VALUES (p_SupplierID, p_Name, p_ContactInfo, p_Origin);
    
END;
/

-- Read Procedure for Supplier
CREATE OR REPLACE PROCEDURE proc_view_supplier(p_SupplierID IN NUMBER)
IS
    v_Name VARCHAR2(100);
    v_ContactInfo VARCHAR2(255);
    v_Origin VARCHAR2(100);
BEGIN
    SELECT Name, ContactInfo, Origin INTO v_Name, v_ContactInfo, v_Origin
    FROM Supplier
    WHERE SupplierID = p_SupplierID;
    
    DBMS_OUTPUT.PUT_LINE('Supplier Name: ' || v_Name);
    DBMS_OUTPUT.PUT_LINE('Contact Info: ' || v_ContactInfo);
    DBMS_OUTPUT.PUT_LINE('Origin: ' || v_Origin);
END;
/

-- Update Procedure for Supplier
CREATE OR REPLACE PROCEDURE proc_update_supplier(
    p_SupplierID IN NUMBER,
    p_Name IN VARCHAR2,
    p_ContactInfo IN VARCHAR2,
    p_Origin IN VARCHAR2
)
IS
BEGIN
    UPDATE Supplier
    SET Name = p_Name,
        ContactInfo = p_ContactInfo,
        Origin = p_Origin
    WHERE SupplierID = p_SupplierID;
    
END;
/

-- Delete Procedure for Supplier
CREATE OR REPLACE PROCEDURE proc_delete_supplier(p_SupplierID IN NUMBER)
IS
BEGIN
    DELETE FROM Supplier
    WHERE SupplierID = p_SupplierID;
    
END;
/
