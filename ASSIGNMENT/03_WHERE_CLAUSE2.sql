SELECT *
FROM SCOTT.EMP
WHERE HIREDATE < '01-JAN-87';

SELECT ENAME
FROM SCOTT.EMP
WHERE JOB = 'CLERK' AND
      SAL < 1000;

SELECT ENAME
FROM SCOTT.EMP 
WHERE JOB = 'SALESMAN' AND
        DEPTNO = 20;

SELECT SAL
FROM SCOTT.EMP 
WHERE JOB = 'PRESIDENT';

SELECT ENAME
FROM SCOTT.EMP 
WHERE JOB = 'ANALYST';

SELECT ENAME 
FROM SCOTT.EMP 
WHERE SAL < 1000;

SELECT ENAME
FROM SCOTT.EMP 
WHERE SAL = 3000;

SELECT *
FROM SCOTT.EMP
WHERE HIREDATE < '01-JAN-1981'; -- <= '31-DEC-80'

SELECT ENAME
FROM SCOTT.EMP
WHERE HIREDATE > '31-DEC-1982'; -- >= '01-JAN-83'

SELECT ENAME 
FROM SCOTT.EMP 
WHERE COMM < 300;

-- 11
SELECT ENAME
FROM SCOTT.EMP 
WHERE DEPTNO = 10;

SELECT ENAME
FROM SCOTT.EMP 
WHERE JOB = 'CLERK' AND 
        SAL > 1000;

SELECT *
FROM SCOTT.EMP 
WHERE JOB = 'MANAGER' AND
        DEPTNO = 20;

SELECT *
FROM SCOTT.EMP 
WHERE JOB = 'CLERK' AND
        HIREDATE > '31-DEC-1980';

SELECT *
FROM SCOTT.EMP 
WHERE JOB = 'ANALYST' AND
        HIREDATE > '31-DEC-83';

SELECT *
FROM SCOTT.EMP 
WHERE JOB = 'SALESMAN'        AND
        DEPTNO = 30 AND 
        SAL > 1500;

SELECT * 
FROM SCOTT.EMP 
WHERE JOB = 'CLERK' AND 
        DEPTNO = 30 AND
        HIREDATE > '31-DEC-80';

SELECT *
FROM SCOTT.EMP
WHERE JOB = 'PRESIDENT' OR 
        JOB = 'ANALYST';

SELECT *
FROM SCOTT.EMP 
WHERE SAL >2500 AND
        SAL < 3000 ;       

SELECT *
FROM SCOTT.EMP        
WHERE HIREDATE > '31-DEC-1981' AND 
        HIREDATE < '01-JAN-87';

-- 21
SELECT*
FROM SCOTT.EMP 
WHERE JOB = 'MANAGER' AND 
        HIREDATE > '31-DEC-81';

SELECT *
FROM SCOTT.EMP 
WHERE HIREDATE >= '01-JAN-87' AND 
        HIREDATE <= '31-DEC-87';

SELECT *
FROM SCOTT.EMP
WHERE JOB = 'PRESIDENT' OR
        HIREDATE < '01-JAN-81';

SELECT *
FROM SCOTT.EMP
WHERE DEPTNO = 10 OR
    DEPTNO =30;        

SELECT *
FROM SCOTT.EMP
WHERE DEPTNO = 20 OR 
        DEPTNO = 30;