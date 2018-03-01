CREATE TABLE DEPARTMENT
(
    ID bigint PRIMARY KEY NOT NULL,
    NAME varchar(100) NOT NULL,
    ADRESS varchar(100)
);
CREATE TABLE PERSON
(
    ID bigint PRIMARY KEY NOT NULL,
    POSITION_ID bigint NOT NULL REFERENCES POSITION(id),
    FULLNAME varchar(100) NOT NULL,
    DEPARTMENT_ID bigint NOT NULL,
    SALARY bigint NOT NULL
);
CREATE TABLE POSITION
(
    ID bigint PRIMARY KEY NOT NULL,
    NAME varchar(100) NOT NULL
)
CREATE TABLE DEPARTMENT
(
    ID bigint PRIMARY KEY NOT NULL,
    NAME varchar(100) NOT NULL,
    ADRESS varchar(100)
);
CREATE TABLE PERSON
(
    ID bigint PRIMARY KEY NOT NULL,
    POSITION_ID bigint NOT NULL,
    FULLNAME varchar(100) NOT NULL,
    DEPARTMENT_ID bigint NOT NULL,
    SALARY bigint NOT NULL
);
CREATE TABLE POSITION
(
    ID bigint PRIMARY KEY NOT NULL,
    NAME varchar(100) NOT NULL
)


select fullname, salary from person where salary>1000

order by salary DESC ,FULLNAME;

select DEPARTMENT_ID,
    sum(salary) as SUM_Salary,
    avg(salary) as avg_salary
from person GROUP BY DEPARTMENT_ID;


select fullname, salary from person where salary>1000

order by salary DESC ,FULLNAME;

select DEPARTMENT_ID,
    sum(salary) as SUM_Salary,
    avg(salary) as avg_salary
from person GROUP BY DEPARTMENT_ID;

select * FROM PERSON;


select * from DEPARTMENT, PERSON, POSITION
where person.DEPARTMENT_ID = DEPARTMENT.id and PERSON.POSITION_ID = POSITION.id;

SELECT * from DEPARTMENT RIGHT JOIN PERSON LEFT JOIN POSITION
        ON POSITION.id=PERSON.POSITION_ID
        on DEPARTMENT.id= PERSON.DEPARTMENT_ID;

SELECT * from DEPARTMENT dep RIGHT JOIN PERSON per LEFT JOIN POSITION pos
        ON pos.id=per.POSITION_ID
        on dep.id= per.DEPARTMENT_ID;

select * from PERSON left OUTER JOIN DEPARTMENT on PERSON.DEPARTMENT_ID = DEPARTMENT.ID;


insert into PERSON( id,FULLNAME,POSITION_ID, DEPARTMENT_ID,SALARY)
values (11, 'Ivan Petrov', 1, null, 10000);
