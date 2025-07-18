CREATE TABLE DUMMY
(
    ID NUMBER(3),
    ENAME VARCHAR2(20)
);

insert into dummy values  (6, 'RA_HUL');
insert into dummy values  (7, 'SHUB%AM');
insert into dummy values  (8, 'A_MI_T');
insert into dummy values  (9, 'A%NAMI%KA');
insert into dummy values  (10, '_AJAY_');
insert into dummy values  (11, 'M_NO%J');

TRUNCATE TABLE DUMMY;
SELECT * FROM DUMMY;


-- waqtd details of emp who name end with _
select *
from dummy
where ename like '%p_' escape 'p';

-- names starts with _
select *
from dummy
where ename like 'v_%' escape 'v';