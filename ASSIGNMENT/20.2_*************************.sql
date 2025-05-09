-- 1 WAQTD 7TH AMX IN EMP TABLE
SELECT SAL
FROM (SELECT ROWNUM AS SLNO, SAL
        FROM (SELECT DISTINCT SAL
                FROM SCOTT.EMP
                ORDER BY SAL DESC))
WHERE SLNO = 7;

-- 2) 4TH MIN SAL
SELECT SAL
FROM (SELECT ROWNUM AS SLNO, SAL
        FROM(SELECT DISTINCT SAL
                FROM SCOTT.EMP
                ORDER BY SAL))
WHERE SLNO = 4;

-- 3 ENAME OF EMP EARNING 8TH MAXIMUM SAL
SELECT ENAME
FROM SCOTT.EMP
WHERE SAL IN (SELECT SAL
                FROM (SELECT ROWNUM SLNO, SAL
                                FROM (SELECT DISTINCT SAL
                                        FROM SCOTT.EMP
                                        ORDER BY SAL DESC))
                                    WHERE SLNO = 8);

-- 4 DETAILS OF EMP WHO IS EARNING 3RD MIN SAL
SELECT *
FROM SCOTT.EMP
WHERE SAL IN (SELECT SAL
                FROM (SELECT ROWNUM SLNO, SAL
                        FROM (SELECT DISTINCT SAL
                                FROM SCOTT.EMP
                                ORDER BY SAL))
            WHERE SLNO = 3);

-- 5 NUM OF EMP'S WORKING IN THE DESIGNATION OF THE EMP WHO IS EARNING 9TH MIN SAL
SELECT COUNT(*)
FROM SCOTT.EMP
WHERE JOB IN (SELECT JOB 
                FROM SCOTT.EMP
                WHERE SAL IN (SELECT SAL 
                                FROM (SELECT ROWNUM SLNO, SAL
                                        FROM (SELECT DISTINCT SAL
                                                FROM SCOTT.EMP
                                                ORDER BY SAL ))
             WHERE SLNO = 9));

-- 6 DNAME OF EMP WHO IS EARNNG 7TH MIN SAL
SELECT DNAME
FROM SCOTT.DEPT
WHERE DEPTNO IN (SELECT DEPTNO
                FROM SCOTT.EMP
                WHERE SAL IN (SELECT SAL
                            FROM (SELECT ROWNUM SLNO, SAL
                                    FROM (SELECT DISTINCT SAL
                                    FROM SCOTT.EMP
                                    ORDER BY SAL DESC))
                            WHERE SLNO = 10));

-- 7  LOC OF THE EMP WHO IS EARNING 7TH MIN SAL
SELECT LOC
FROM SCOTT.DEPT
WHERE DEPTNO IN (SELECT DEPTNO
                FROM SCOTT.EMP
                WHERE SAL IN (SELECT SAL
                FROM(SELECT ROWNUM SLNO, SAL
                                FROM (SELECT DISTINCT SAL
                                        FROM SCOTT.EMP
                                        ORDER BY SAL))
                                WHERE SLNO = 7));

-- MANAGER NAME OF EMP WHO IS EARNING 1ST MIN SAL
SELECT ENAME
FROM SCOTT.EMP
WHERE EMPNO IN (SELECT MGR
                FROM SCOTT.EMP
                WHERE SAL IN (SELECT SAL
                                FROM (SELECT ROWNUM SLNO, SAL
                                        FROM (SELECT DISTINCT SAL
                                                FROM SCOTT.EMP
                                                ORDER BY SAL))
                                WHERE SLNO = 1 ));
-- *******************ALSO****************************
SELECT E2.ENAME                             
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.SAL IN (SELECT SAL
                FROM (SELECT ROWNUM SLNO, SAL
                        FROM (SELECT DISTINCT SAL
                                FROM SCOTT.EMP
                                ORDER BY SAL))
                WHERE SLNO = 1);

-- NAMES OF EMP WHO ARE REPORTING TO THE EMP WHO IS EARNING 3RD MAXIMUM SAL
SELECT E1.ENAME
FROM SCOTT.EMP E1 JOIN SCOTT.EMP E2
ON E1.MGR = E2.EMPNO
WHERE E2.SAL IN (SELECT SAL
                    FROM (SELECT ROWNUM SLNO, SAL
                            FROM (SELECT DISTINCT SAL
                                    FROM SCOTT.EMP
                                    ORDER BY SAL DESC))
                WHERE SLNO = 3);

SELECT ENAME
FROM SCOTT.EMP
WHERE MGR IN (SELECT EMPNO 
                FROM SCOTT.EMP
                WHERE SAL IN (SELECT SAL
                                FROM (SELECT ROWNUM SLNO, SAL
                                        FROM (SELECT DISTINCT SAL
                                                FROM SCOTT.EMP
                                                ORDER BY SAL DESC))
                                WHERE SLNO = 3));