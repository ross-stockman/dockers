DECLARE cnt NUMBER;
BEGIN
  SELECT COUNT(*) INTO cnt FROM user_tables WHERE table_name = 'TEST';
  IF cnt <> 0 THEN
    EXECUTE IMMEDIATE 'DROP TABLE trucker.test';
  END IF;
END;
/

create table trucker.test (
id int,
name varchar(10)
);

exit;
