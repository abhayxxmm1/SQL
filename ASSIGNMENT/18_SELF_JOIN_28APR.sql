-- 1] WAQTD employees SAL & managers SAL.
SELECT E1.SAL EMP_SAL, E2.SAL MGR_SAL
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO;

-- 2] WAQTD employees name & managers name of if employee is working in
-- DEPTNO 20.
SELECT E1.ENAME EMP_NAME, E2.ENAME MGR_NAME
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.DEPTNO = 20;

-- 3] WAQTD employee name, manager’s name if manager is working as
-- ‘PRESIDENT’.
SELECT E1.ENAME EMP_NAME, E2.ENAME MGR_NAME
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO
WHERE E2.JOB = 'PRESIDENT'; 

-- 4] WAQTD employee name, employee SAL, manager name, manager SAL if
-- employee is earning MORE THAN 1000.
SELECT E1.ENAME EMP_NAME, E1.SAL EMP_SAL,  E2.ENAME MGR_NAME, E2.SAL MGR_SAL
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.SAL > 1000; 

-- 5] WAQTD employee name, employee HIREDATE, manager’s name,
-- manager’s HIREDATE if employees is hired after 1980 & manager hired
-- before 1987.
SELECT E1.ENAME EMP_NAME, E1.HIREDATE EMP_HIREDATE,  E2.ENAME MGR_NAME, E2.HIREDATE MGR_HIREDATE
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.HIREDATE > '31-DEC-80'AND
    E2.HIREDATE < '01-JAN-87';

-- 6] WAQTD name of the employee & his manager’s name if employee is
-- working as ‘CLERK’.
SELECT E1.ENAME EMP_NAME,  E2.ENAME MGR_NAME
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.JOB = 'CLERK';

-- 7] WAQTD ENAME, MGR designation if manager is working in DEPTNO 10 or 20.
SELECT E1.ENAME EMP_NAME,  E2.JOB MGR_JOB
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E2.DEPTNO IN (10, 20);

-- 8] WAQTD employee name & manager name if employee is hired before 1982.
SELECT E1.ENAME EMP_NAME,  E2.ENAME MGR_NAME 
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.HIREDATE < '01-JAN-82';

-- 9] WAQTD employee name, manager’s name if employee & manager both
-- earn more than 2300.
SELECT E1.ENAME EMP_NAME,  E2.ENAME MGR_NAME 
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.SAL > 2300 AND
    E2.SAL > 2300;

-- 10] WAQTD employee name, employee SAL, manager name, manager SAL if
-- employee is earning more than his manager.
SELECT E1.ENAME EMP_NAME, E1.SAL EMP_SAL,  E2.ENAME MGR_NAME, E2.SAL MGR_SAL
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.SAL > E2.SAL;

-- 11] WAQTD employee name, employee HIREDATE, manager name, manager
-- HIREDATE if employee is hired before his manager
SELECT E1.ENAME EMP_NAME, E1.HIREDATE EMP_HIREDATE,  E2.ENAME MGR_NAME, E2.HIREDATE MGR_HIREDATE
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.HIREDATE > E2.HIREDATE;      -- ❓

-- 12] WAQTD employee name & his managers name if employee is hired in
-- the year 1980 and manager is hired in the year 1981.
SELECT E1.ENAME EMP_NAME,  E2.ENAME MGR_NAME 
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.HIREDATE LIKE '%80' AND
    E2.HIREDATE LIKE '%81';

-- 13] WAQTD employee name & managers name if employee & manager both
-- hired in the year 1987.
SELECT E1.ENAME EMP_NAME,  E2.ENAME MGR_NAME 
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.HIREDATE LIKE '%87' AND
    E2.HIREDATE LIKE '%87';

-- 14] WAQTD employee name & manager name if employee & manager both
-- hired in the month of DEC.
SELECT E1.ENAME EMP_NAME,  E2.ENAME MGR_NAME 
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.HIREDATE LIKE '%DEC%' AND
    E2.HIREDATE LIKE '%DEC%';

-- 15] WAQTD employee name & manager name if employee is earning more
-- than 2900 & manager is earning more than 3000.
SELECT E1.ENAME EMP_NAME,  E2.ENAME MGR_NAME 
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.SAL > 2900 AND
    E2.SAL > 3000;

-- 16] WAQTD employee name, manager name If employee is working as
-- ANALYST & manager is working as actual manager.
SELECT E1.ENAME EMP_NAME,  E2.ENAME MGR_NAME 
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.JOB = 'ANALYST' AND
    E2.JOB = 'MANAGER';

-- 17] WAQTD employee name & manager’s name if employee is earning less
-- than 1000 & manager in department number 30.
SELECT E1.ENAME EMP_NAME,  E2.ENAME MGR_NAME 
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO AND
    E1.SAL < 1000 AND
    E2.DEPTNO = 30;

-- 18] WAQTD employee name, employee LOC, manager’s name, & manager’s LOC.
SELECT E1.ENAME EMP_NAME, D1.LOC EMP_LOC,  E2.ENAME MGR_NAME,  D2.LOC MGR_LOC  
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2 
ON E1.MGR = E2.EMPNO 
JOIN SCOTT.DEPT D1
ON E1.DEPTNO = D1.DEPTNO
JOIN SCOTT.DEPT D2
ON E2.DEPTNO = D2.DEPTNO ;

-- 19] WAQTD employee name, employee LOC, manager name, manager LOC if
-- employee is working as a ‘CLERK’ & manager is working in ‘DALLAS’.
SELECT E1.ENAME EMP_NAME, D1.LOC EMP_LOC, E2.ENAME MGR_NAME, D2.LOC MGR_LOC
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2 
ON E1.MGR = E2.EMPNO 
JOIN SCOTT.DEPT D1
ON  E1.DEPTNO = D1.DEPTNO  
JOIN SCOTT.DEPT D2
ON E2.DEPTNO = D2.DEPTNO
WHERE E1.JOB = 'CLERK' AND
        D2.LOC = 'DALLAS';

-- 21] WAQTD employee name, employee LOC, manager name, manager LOC if
-- employee working as ‘SALESMAN’ in ‘SALES’ department & manager is
-- working as actual manager in ‘CHICAGO’.
SELECT E1.ENAME EMP_NAME, D1.LOC EMP_LOC, E2.ENAME MGR_NAME, D2.LOC MGR_LOC
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2 
ON E1.MGR = E2.EMPNO 
JOIN SCOTT.DEPT D1
ON  E1.DEPTNO = D1.DEPTNO  
JOIN SCOTT.DEPT D2
ON E2.DEPTNO = D2.DEPTNO
WHERE E1.JOB = 'SALESMAN' AND
        D1.DNAME = 'SALES' AND
        E2.JOB = 'MANAGER' AND
        D2.LOC = 'CHICAGO';

-- 22] WAQTD employee name, employee DNAME, manager name, manager
-- DNAME if employee is hired in the year 81 working as ‘CLERK’ & manager
-- working in ‘SALES’ department.
SELECT E1.ENAME EMP_NAME, D1.DNAME EMP_DNAME, E2.ENAME MGR_NAME, D2.DNAME MGR_DNAME
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2 
ON E1.MGR = E2.EMPNO 
JOIN SCOTT.DEPT D1
ON  E1.DEPTNO = D1.DEPTNO  
JOIN SCOTT.DEPT D2
ON E2.DEPTNO = D2.DEPTNO AND
    E1.HIREDATE LIKE '%81' AND
    E1.JOB = 'CLERK' AND
    D2.DNAME = 'SALES';

-- 23] WAQTD employee name, employee LOC, manager name, manager LOC if
-- employee is working in DEPTNO 10 or 20 and hired after 1982 & manager is
-- working as actual manager in ‘RESEARCH’ department.
SELECT E1.ENAME EMP_NAME, D1.DNAME EMP_DNAME, E2.ENAME MGR_NAME, D2.DNAME MGR_DNAME
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2 
ON E1.MGR = E2.EMPNO 
JOIN SCOTT.DEPT D1
ON  E1.DEPTNO = D1.DEPTNO  
JOIN SCOTT.DEPT D2
ON E2.DEPTNO = D2.DEPTNO AND
    E1.DEPTNO IN (10, 20) AND
    E1.HIREDATE > '31-DEC-82' AND
    E2.JOB = 'MANAGER';

-- 24] WAQTD employee name, employee LOC, manager name, manager LOC if
-- employee is hired after ‘JONES’ into ‘SALES’ department & manager is
-- earning less than ‘KING’ in ‘CHICAGO’.
SELECT E1.ENAME EMP_NAME, D1.LOC EMP_LOC, E2.ENAME MGR_NAME, D2.LOC MGR_LOC 
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2 
ON E1.MGR = E2.EMPNO
JOIN SCOTT.DEPT D1
ON E1.DEPTNO = D1.DEPTNO 
JOIN SCOTT.DEPT D2
ON E2.DEPTNO = D2.DEPTNO
WHERE E1.HIREDATE > (SELECT HIREDATE
                    FROM SCOTT.EMP
                    WHERE ENAME = 'JONES') AND
        D1.DNAME = 'SALES' AND
        E2.SAL < (SELECT SAL
                FROM SCOTT.EMP
                WHERE ENAME = 'KING') AND
        D2.LOC = 'CHICAGO';

-- 25] WAQTD employee name, employee DNAME, manager name, manager
-- DNAME if employee is earning more than ‘ALLEN’ in ‘ACCOUNTING’
-- department & manager is working as a ‘PRESIDENT’ in ‘NEW YORK.
SELECT E1.ENAME EMP_ENAME, D1.DNAME EMP_DNAME , E2.ENAME MGR_ENAME , D2.DNAME MGR_DNAME
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2 
ON E1.MGR = E2.EMPNO
JOIN SCOTT.DEPT D1
ON E1.DEPTNO = D1.DEPTNO
JOIN SCOTT.DEPT D2
ON E2.DEPTNO = D2.DEPTNO 
WHERE E1.SAL > (SELECT SAL
                FROM SCOTT.EMP
                WHERE ENAME = 'ALLEN') AND
        D1.DNAME = 'ACCOUNTING' AND
        E2.JOB = 'PRESIDENT' AND
        D2.LOC = 'NEW YORK';