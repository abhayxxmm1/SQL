SELECT ENAME
FROM SCOTT.EMP
WHERE SAL IN (SELECT MAX(SAL)
                FROM SCOTT.EMP
                WHERE SAL < (SELECT MAX(SAL)
                            FROM SCOTT.EMP));

SELECT ENAME 
FROM SCOTT.EMP
WHERE SAL > (SELECT SAL
            FROM SCOTT.EMP
            WHERE ENAME = 'WARD') AND
        DEPTNO IN (SELECT DEPTNO
                FROM SCOTT.EMP
                WHERE ENAME = 'BLAKE' ) AND
        HIREDATE < (SELECT HIREDATE
                    FROM SCOTT.EMP
                    WHERE ENAME = 'TURNER');

-- WAQTD NAMES OF AN EMP HIRED AFTER SMITH, BEFORE MILLER & WORKING
-- IN SAME DESIGNATION AS THAT OF JONES IN SALES DEPTARTMENT.
SELECT ENAME 
FROM SCOTT.EMP
WHERE HIREDATE BETWEEN (SELECT HIREDATE+1
                    FROM SCOTT.EMP
                    WHERE ENAME = 'SMITH') AND
                    (SELECT HIREDATE-1
                    FROM SCOTT.EMP
                    WHERE ENAME = 'MILLER') AND
        JOB IN (SELECT JOB
                FROM SCOTT.EMP
                WHERE ENAME = 'JONES') AND
        DEPTNO IN (SELECT DEPTNO 
                FROM SCOTT.DEPT
                WHERE DNAME = 'SALES');

-- WAQTD NAMES OF AN EMP EARNING LESS THAN KING & HIRED BEFORE
-- MILLER IN NEW YORK.

SELECT ENAME 
FROM SCOTT.EMP
WHERE SAL < (SELECT SAL
            FROM SCOTT.EMP
            WHERE ENAME = 'KING') AND
        HIREDATE < (SELECT HIREDATE
                    FROM SCOTT.EMP 
                    WHERE ENAME = 'MILLER') AND
        DEPTNO IN (SELECT DEPTNO 
                FROM SCOTT.DEPT
                WHERE LOC = 'NEW YORK');

SELECT ENAME
FROM SCOTT.EMP
WHERE SAL IN (SELECT MIN(SAL)
                FROM SCOTT.EMP
                WHERE SAL > (SELECT MIN(SAL)
                            FROM SCOTT.EMP
                            WHERE SAL > (SELECT MIN(SAL)
                                        FROM SCOTT.EMP)));

SELECT LOC
FROM SCOTT.DEPT
WHERE DEPTNO IN ( SELECT DEPTNO
                    FROM SCOTT.EMP
                    WHERE SAL IN (SELECT MAX(SAL)
                                   FROM SCOTT.EMP
                                   WHERE SAL < (SELECT MAX(SAL)
                                                 FROM SCOTT.EMP
                                                   WHERE SAL < (SELECT MAX(SAL)
                                                               FROM SCOTT.EMP))));


SELECT ENAME 
FROM SCOTT.EMP
WHERE HIREDATE IN (SELECT MAX(HIREDATE)
                    FROM SCOTT.EMP);

SELECT ENAME 
FROM SCOTT.EMP
WHERE HIREDATE IN (SELECT MIN(HIREDATE)
                    FROM SCOTT.EMP
                    WHERE HIREDATE > (SELECT MIN(HIREDATE)
                                        FROM SCOTT.EMP));

-- WAQTD LOC OF EMP HIRED 2ND LAST.
SELECT LOC
FROM SCOTT.DEPT
WHERE DEPTNO IN (SELECT DEPTNO 
FROM SCOTT.EMP
WHERE HIREDATE IN (SELECT MAX(HIREDATE)
                    FROM SCOTT.EMP
                    WHERE HIREDATE < (SELECT MAX(HIREDATE)
                                        FROM SCOTT.EMP)));

-- WAQTD NAME OF THE EMP EARNING 5TH MIN SAL.
SELECT ENAME
FROM SCOTT.EMP
WHERE SAL IN (SELECT MIN(SAL)
                FROM SCOTT.EMP
                WHERE SAL > (SELECT MIN(SAL)
                            FROM SCOTT.EMP
                            WHERE SAL > (SELECT MIN(SAL)
                FROM SCOTT.EMP
                WHERE SAL > (SELECT MIN(SAL)
                            FROM SCOTT.EMP
                            WHERE SAL > (SELECT MIN(SAL)
                                        FROM SCOTT.EMP)))));

SELECT LOC
FROM SCOTT.DEPT
WHERE DEPTNO IN (SELECT DEPTNO
                FROM SCOTT.EMP
WHERE SAL IN (SELECT MIN(SAL)
                FROM SCOTT.EMP
                WHERE SAL > (SELECT MIN(SAL)
                                FROM SCOTT.EMP)));

-- WAQTD NAME OF AN EMP EARNING 4TH MIN SAL
SELECT ENAME
FROM SCOTT.EMP
WHERE SAL IN (SELECT MIN(SAL)
                FROM SCOTT.EMP
                WHERE SAL > (SELECT MIN(SAL)
                            FROM SCOTT.EMP
                            WHERE SAL > (SELECT MIN(SAL)
                                        FROM SCOTT.EMP
                                        WHERE SAL > (SELECT MIN(SAL)
                                                    FROM SCOTT.EMP))));

SELECT DNAME
FROM SCOTT.DEPT
WHERE DEPTNO IN (SELECT DEPTNO
                FROM SCOTT.EMP
                WHERE ENAME = 'SMITH');

-- WAQTD DNAME, LOC OF THE EMP'S WHOSE NAME IS KING.
SELECT DNAME, LOC
FROM SCOTT.DEPT
WHERE DEPTNO IN (SELECT DEPTNO
                FROM SCOTT.EMP
                WHERE ENAME = 'KING');

-- WAQTD LOC OF EMP WHOSE EMPNO IS 7902.
SELECT LOC
FROM SCOTT.DEPT
WHERE DEPTNO IN (SELECT DEPTNO
                FROM SCOTT.EMP
                WHERE EMPNO = 7902);

-- WAQTD DETAILS OF AN EMP WORKING AS PRESIDENT AND EARNING MORE
-- THAN SCOTT AND HIRED AFTER SMITH.
SELECT *
FROM SCOTT.EMP
WHERE JOB = 'PRESIDENT' AND
        SAL > (SELECT SAL
                FROM SCOTT.EMP
                WHERE ENAME = 'SCOTT') AND
        HIREDATE > (SELECT HIREDATE
                    FROM SCOTT.EMP
                    WHERE ENAME = 'SMITH');