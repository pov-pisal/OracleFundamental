-- Lession4: Using Conversion Functions and Conditional Expressions (Part 1)

SELECT EMPLOYEE_ID,LAST_NAME,SALARY
FROM EMPLOYEES;

SELECT EMPLOYEE_ID,LAST_NAME,SALARY,
       TO_CHAR(SALARY,'9,999,999.00$')
FROM EMPLOYEES;

-- Lesson 4: Using Conversion Functions and Conditional Expressions (Part 2)

SELECT '123',TO_NUMBER('123')
FROM DUAL;

SELECT '$12,457.99',TO_NUMBER('$12,457.99','$99,999.00')
FROM DUAL;

SELECT '01-JUL-23',TO_DATE('01-JUL-23')+22
FROM DUAL;

SELECT EMPLOYEE_ID,LAST_NAME,SALARY,HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE=TO_DATE('07-06-94','fxdd-mm-rr');

SELECT LAST_NAME,HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE='03-Jan-90';

SELECT LAST_NAME,HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE=TO_DATE('03-01-90','fxdd-mm-rr');

-- Lesson 4: Using Conversion Functions and Conditional Expressions (Part 3)

SELECT LAST_NAME,SALARY,COMMISSION_PCT,NVL(COMMISSION_PCT,0),
       NVL(COMMISSION_PCT,0)*SALARY+SALARY
FROM EMPLOYEES;

SELECT LAST_NAME,MANAGER_ID,
       NVL(TO_CHAR(MANAGER_ID),'Top Manager')  
FROM EMPLOYEES;

SELECT LAST_NAME,SALARY,COMMISSION_PCT,
       NVL2(COMMISSION_PCT,COMMISSION_PCT*SALARY+SALARY,SALARY)
FROM EMPLOYEES;

SELECT 'a','b',NULLIF('a','b')
FROM DUAL;

SELECT FIRST_NAME,LAST_NAME,NULLIF(FIRST_NAME,LAST_NAME)
FROM EMPLOYEES;

SELECT FIRST_NAME,LAST_NAME,LENGTH(FIRST_NAME),LENGTH(LAST_NAME),
       NULLIF(LENGTH(FIRST_NAME),LENGTH(LAST_NAME))
FROM EMPLOYEES;

-- Lesson 4 :Using Conversion Functions and Conditional Expressions (Part 4)End

SELECT LAST_NAME,SALARY,HIRE_DATE,CASE JOB_ID WHEN 'AD_VP' THEN 1.10*SALARY
                                              WHEN 'AD_PRES' THEN 1.20*SALARY
                                              WHEN 'IT_PROG' THEN 1.30*SALARY
                                              ELSE SALARY*1.40
                                  END AS "Reversed Salary"
FROM EMPLOYEES;

SELECT LAST_NAME,SALARY,HIRE_DATE,DECODE(JOB_ID, 'AD_VP', 1.10*SALARY,
                                                 'AD_PRES', 1.20*SALARY,
                                                 'IT_PROG', 1.30*SALARY,
                                                 SALARY*1.40
                                                 ) AS "Reversed Salary"
FROM EMPLOYEES;

SELECT LAST_NAME,SALARY,TRUNC(SALARY/2000,0)
FROM EMPLOYEES;



















