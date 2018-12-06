CREATE TABLESPACE tbs_perm_01
  DATAFILE 'tbs_perm_01.dat' 
    SIZE 20M
    REUSE
    AUTOEXTEND ON NEXT 10M MAXSIZE 200M;

CREATE TEMPORARY TABLESPACE tbs_temp_01
  TEMPFILE 'tbs_temp_01.dbf'
    SIZE 5M
    AUTOEXTEND ON;
    
CREATE UNDO TABLESPACE tbs_undo_01
  DATAFILE 'tbs_undo_01.f'
    SIZE 5M 
    AUTOEXTEND ON
  RETENTION GUARANTEE;

create user trucker identified by trucker default tablespace tbs_perm_01 temporary tablespace tbs_temp_01 quota 20M on tbs_perm_01;

GRANT create session TO trucker;
GRANT create table TO trucker;
GRANT create view TO trucker;
GRANT create any trigger TO trucker;
GRANT create any procedure TO trucker;
GRANT create sequence TO trucker;
GRANT create synonym TO trucker;

exit;
