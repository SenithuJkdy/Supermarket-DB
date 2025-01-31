CREATE TABLE
  ORDERS (
    ORDERID NUMBER NOT NULL,
    CUSTOMERID NUMBER,
    EMPLOYEEID NUMBER,
    BRANCHID NUMBER,
    ORDERDATE DATE NOT NULL,
    TOTALAMOUNT NUMBER (12, 2),
    DISCOUNT NUMBER (5, 2),
    PAYMENTID NUMBER,
    CONSTRAINT ORDERS_PK PRIMARY KEY (ORDERID) ENABLE
  );

ALTER TABLE ORDERS ADD CONSTRAINT ORDER_BRANCH_FK1 FOREIGN KEY (BRANCHID) REFERENCES BRANCH (BRANCHID) ENABLE;

ALTER TABLE ORDERS ADD CONSTRAINT ORDER_CUSTOMER_FK1 FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER (CUSTOMERID) ENABLE;

ALTER TABLE ORDERS ADD CONSTRAINT ORDER_EMPLOYEE_FK1 FOREIGN KEY (EMPLOYEEID) REFERENCES EMPLOYEE (EMPLOYEEID) ENABLE;

ALTER TABLE ORDERS ADD CONSTRAINT ORDER_PAYMENT_FK1 FOREIGN KEY (PAYMENTID) REFERENCES PAYMENT (PAYMENTID) ENABLE;