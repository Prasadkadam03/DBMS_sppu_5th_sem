# DBMS_sppu_5th_sem
DBMS lab stuff in 5th semester of computer engineering (SPPU)
## ASSIGNMENT 1: ER Modeling and Normalization:<br/><br/>
Decide a case study related to real time application in group of 2-3 students and formulate a
problem statement for application to be developed. Propose a Conceptual Design using ER
features using tools like ERD plus, ER Win etc. (Identifying entities, relationships between
entities, attributes, keys, cardinalities, generalization, specialization etc.) Convert the ER diagram
into relational tables and normalize Relational data model.
Note: Student groups are required to continue same problem statement throughout all the
assignments in order to design and develop an application as a part Mini Project. Further
assignments will be useful for students to develop a backend for system. To design front end
interface students should use the different concepts learnt in the other subjects also.
<br/><br/>

## ASSIGNMENT 2: SQL Queries:<br/><br/>
a. Design and Develop SQL DDL statements which demonstrate the use of SQL objects such
as Table, View, Index, Sequence, Synonym, different constraints etc.<br/>
b. Write at least 10 SQL queries on the suitable database application using SQL DML
statements.
<br/><br/>
>Note: Instructor will design the queries which demonstrate the use of concepts like Insert, Select,
>Update, Delete with operators, functions, and set operator etc.
<br/><br/>

## ASSIGNMENT 3: SQL Queries - all types of Join, Sub-Query and View:<br/><br/>
Write at least 10 SQL queries for suitable database application using SQL DML statements.<br/>
<br/>
>Note: Instructor will design the queries which demonstrate the use of concepts like all types of
>Join, Sub-Query and View
<br/><br/>

## ASSIGNMENT 4: Unnamed PL/SQL code block: Use of Control structure and Exception handling is mandatory.<br/><br/>
Suggested Problem statement:
Consider Tables:
  1. Borrower(Roll_no, Name, DateofIssue, NameofBook, Status)
  
  2. Fine(Roll_no,Date,Amt)
  
  3. Accept Roll_no and NameofBook from user.
  
  4. Check the number of days (from date of issue).
  
  5. If days are between 15 to 30 then fine amount will be Rs 5per day.
  
  6. If no. of days>30, per day fine will be Rs 50 per day and for days less than 30, Rs. 5 per
  day.
  
  7. After submitting the book, status will change from I to R.
  
  8. If condition of fine is true, then details will be stored into fine table.
  
  9. Also handles the exception by named exception handler or user define exception handler.<br/><br/>
  
OR<br/>

## Write a PL/SQL code block to calculate the area of a circle for a value of radius varying from 5 to
Store the radius and the corresponding values of calculated area in an empty table named areas,
consisting of two columns, radius and area.
>Note: Instructor will frame the problem statement for writing PL/SQL block in line with above
>statement.
<br/><br/>

## Named PL/SQL Block: PL/SQL Stored Procedure and Stored Function.
Write a Stored Procedure namely proc_Grade for the categorization of student. If marks scored by
students in examination is <=1500 and marks>=990 then student will be placed in distinction
category if marks scored are between 989 and 900 category is first class, if marks 899 and 825
category is Higher Second Class.
Write a PL/SQL block to use procedure created with above requirement.
Stud_Marks(name, total_marks) Result(Roll,Name, Class)
>Note: Instructor will frame the problem statement for writing stored procedure and Function in
>line with above statement.

## Cursors: (All types: Implicit, Explicit, Cursor FOR Loop, Parameterized Cursor)<br/>
Write a PL/SQL block of code using parameterized Cursor that will merge the data available in
the newly created table N_RollCall with the data available in the table O_RollCall. If the data in
the first table already exist in the second table then that data should be skipped.
>Note: Instructor will frame the problem statement for writing PL/SQL block using all types of
>Cursors in line with above statement.

## Database Trigger (All Types: Row level and Statement level triggers, Before and After
Triggers).<br/>
Write a database trigger on Library table. The System should keep track of the records that are
being updated or deleted. The old value of updated or deleted records should be added in
Library_Audit table.
>Note: Instructor will Frame the problem statement for writing PL/SQL block for all types of
>Triggers in line with above statement.
<br/><br/>
## Database Connectivity:
Write a program to implement MySQL/Oracle database connectivity with any front end
language to implement Database navigation operations (add, delete, edit etc.)
<br/><br/>