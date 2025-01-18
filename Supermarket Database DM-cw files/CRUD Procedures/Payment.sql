CREATE
OR REPLACE PROCEDURE proc_add_payment (
    p_PaymentID IN NUMBER,
    p_Method IN VARCHAR2,
    p_PaymentDateTime IN TIMESTAMP,
    p_Amount IN NUMBER
) IS BEGIN
INSERT INTO
    Payment (PaymentID, Method, PaymentDateTime, Amount)
VALUES
    (
        p_PaymentID,
        p_Method,
        p_PaymentDateTime,
        p_Amount
    );

END;

/ CREATE
OR REPLACE PROCEDURE proc_view_payment (p_PaymentID IN NUMBER) IS v_Method VARCHAR2 (100);

v_PaymentDateTime TIMESTAMP;

v_Amount NUMBER;

BEGIN
SELECT
    Method,
    PaymentDateTime,
    Amount INTO v_Method,
    v_PaymentDateTime,
    v_Amount
FROM
    Payment
WHERE
    PaymentID = p_PaymentID;

DBMS_OUTPUT.PUT_LINE (
    'Payment Method: ' || v_Method || ', Payment DateTime: ' || v_PaymentDateTime || ', Amount: ' || v_Amount
);

END;

/ CREATE
OR REPLACE PROCEDURE proc_update_payment (
    p_PaymentID IN NUMBER,
    p_Method IN VARCHAR2,
    p_PaymentDateTime IN TIMESTAMP,
    p_Amount IN NUMBER
) IS BEGIN
UPDATE Payment
SET
    Method = p_Method,
    PaymentDateTime = p_PaymentDateTime,
    Amount = p_Amount
WHERE
    PaymentID = p_PaymentID;

END;

/ CREATE
OR REPLACE PROCEDURE proc_delete_payment (p_PaymentID IN NUMBER) IS BEGIN
DELETE FROM Payment
WHERE
    PaymentID = p_PaymentID;

END;

/