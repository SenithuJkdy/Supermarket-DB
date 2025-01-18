CREATE ROLE demo_user IDENTIFIED BY EXTERNALLY; -- for os to integrate with it's services

--------------------------------------- Admin role 
CREATE ROLE c##admin IDENTIFIED BY admin123;
GRANT ALL PRIVILEGES ON Employees TO c##admin;

CREATE USER C##admin_user IDENTIFIED BY admin_u;

GRANT CREATE SESSION TO C##admin_user;
GRANT C##admin TO C##admin_user; 

-------------------------------------------------------- User role 
CREATE ROLE c##user IDENTIFIED BY user123;
GRANT SELECT, INSERT, UPDATE, DELETE ON table_name TO c##user;

----------------------------------------------------------- Viewer role 
CREATE ROLE c##viewer NOT IDENTIFIED;
GRANT SELECT ON Employee TO c##viewer;

CREATE USER C##test_viewer_user IDENTIFIED BY tuser;

GRANT CREATE SESSION TO C##test_viewer_user; 
GRANT C##viewer TO C##test_viewer_user; 

-- Revoke the role from any users
REVOKE C##viewer FROM C##test_viewer_user;

-- drop roles
DROP ROLE C##viewr;
DROP ROLE C##admin;
DROP ROLE C##user;

--view roles
SELECT ROLE
FROM DBA_ROLES;

--view all sessions
SELECT *
FROM V$SESSION;

SELECT * FROM ALL_USERS;


--------------------------------------------------------------------------
-- Optional 
-- Enable auditing
AUDIT ALL;

-- Audit actions for roles
AUDIT SELECT, INSERT, UPDATE, DELETE ON table_name BY user;
AUDIT SELECT ON table_name BY viewer;
AUDIT ALL ON table_name BY admin;

-- View audit logs
SELECT USERNAME, ACTION_NAME, TIMESTAMP, SQL_TEXT 
FROM DBA_AUDIT_TRAIL
WHERE USERNAME IN ('ADMIN_USER', 'DATA_ENTRY_USER', 'VIEWER_USER');