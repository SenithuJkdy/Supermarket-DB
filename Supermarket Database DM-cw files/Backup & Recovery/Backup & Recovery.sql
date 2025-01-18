BEGIN DBMS_OUTPUT.PUT_LINE ('Starting full database backup...');

EXECUTE IMMEDIATE 'BACKUP DATABASE';

DBMS_OUTPUT.PUT_LINE ('Full backup completed.');

END;

/ BEGIN DBMS_OUTPUT.PUT_LINE ('Starting incremental backup...');

EXECUTE IMMEDIATE 'BACKUP INCREMENTAL LEVEL 1 DATABASE';

DBMS_OUTPUT.PUT_LINE ('Incremental backup completed.');

END;

/
-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Recovery 
BEGIN DBMS_OUTPUT.PUT_LINE ('Starting full recovery...');

EXECUTE IMMEDIATE 'RESTORE DATABASE';

EXECUTE IMMEDIATE 'RECOVER DATABASE';

DBMS_OUTPUT.PUT_LINE ('Full recovery completed.');

END;

/