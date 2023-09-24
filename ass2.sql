C:\Users\ASUS>mysql -u root -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ass2               |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.02 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| ass2               |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> USE ass2;
Database changed
mysql> CREATE TABLE student_info (roll_no INT ,name VARCHAR(30),submission_status VARCHAR(30));
ERROR 1050 (42S01): Table 'student_info' already exists
mysql> INSERT INTO student_info VALUES(26,'PRANJAL','NA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO student_info VALUES(27,'PRASHANT','NA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO student_info VALUES(28,'AADARSH','NA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO student_info VALUES(29,'TEJAS','NA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO student_info VALUES(30,'OM','NA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO student_info VALUES(31,'HEMANT','NA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO student_info VALUES(32,'DHANASHREE','NA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO student_info VALUES(33,'UTKARSH','NA');
Query OK, 1 row affected (0.00 sec)

mysql>
mysql> SELECT * FROM student_info;
+---------+------------+-------------------+
| roll_no | name       | submission_status |
+---------+------------+-------------------+
|      26 | PRANJAL    | NA                |
|      27 | PRASHANT   | NA                |
|      28 | AADARSH    | NA                |
|      29 | TEJAS      | NA                |
|      30 | OM         | NA                |
|      31 | HEMANT     | NA                |
|      32 | DHANASHREE | NA                |
|      33 | UTKARSH    | NA                |
+---------+------------+-------------------+
8 rows in set (0.00 sec)

mysql>
mysql>
mysql> ALTER TABLE student_info ADD PRIMARY KEY(roll_no);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>
mysql> desc student_info;
+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| roll_no           | int         | NO   | PRI | NULL    |       |
| name              | varchar(30) | YES  |     | NULL    |       |
| submission_status | varchar(30) | YES  |     | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql>
mysql> ALTER TABLE student_info ADD COLUMN teacher_name VARCHAR(30) DEFAULT  'DEEPALI';
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>
mysql>
mysql> UPDATE student_info SET submission_status = 'COMPLETED' WHERE roll_no = 31;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
mysql>
mysql>
mysql> UPDATE student_info SET submission_status = 'COMPLETED' WHERE name = 'DHANASHREE';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
mysql> INSERT INTO student_info (roll_no,name,submission_status) VALUES (34,'XYZ','NA');
Query OK, 1 row affected (0.00 sec)

mysql>
mysql>
mysql>
mysql> DELETE FROM student_info WHERE name = 'XYZ';
Query OK, 1 row affected (0.00 sec)

mysql>
mysql> CREATE VIEW a_view AS SELECT roll_no , submission_status FROM student_info;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM a_view;
+---------+-------------------+
| roll_no | submission_status |
+---------+-------------------+
|      26 | NA                |
|      27 | NA                |
|      28 | NA                |
|      29 | NA                |
|      30 | NA                |
|      31 | COMPLETED         |
|      32 | COMPLETED         |
|      33 | NA                |
+---------+-------------------+
8 rows in set (0.00 sec)

mysql>
mysql> ALTER VIEW a_view AS SELECT name FROM student_info;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM a_view;
+------------+
| name       |
+------------+
| PRANJAL    |
| PRASHANT   |
| AADARSH    |
| TEJAS      |
| OM         |
| HEMANT     |
| DHANASHREE |
| UTKARSH    |
+------------+
8 rows in set (0.00 sec)

mysql> UPDATE a_view SET name = 'OM GAWANDE' WHERE name = 'OM';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
mysql> DROP VIEW a_view;
Query OK, 0 rows affected (0.00 sec)

mysql>
mysql>
mysql> CREATE TABLE set_1 (emp_id INT,name VARCHAR(30),city VARCHAR(30));
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> CREATE TABLE set_2 (emp_id INT,name VARCHAR(30),country VARCHAR(30));
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO set_1 VALUES (001,'ASHUTOSH','PUNE');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO set_1 VALUES (002,'ARYAN','MUMBAI');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO set_1 VALUES (003,'SARTHAK','SURAT');
Query OK, 1 row affected (0.00 sec)

mysql>
mysql> INSERT INTO set_2 VALUES (001,'ASHUTOSH','INDIA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO set_2 VALUES (002,'ARYAN','UK');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO set_2 VALUES (003,'SARTHAK','USA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO set_2 VALUES (004,'YASH','AUSTRALIA');
Query OK, 1 row affected (0.00 sec)

mysql>
mysql>
mysql> SELECT * FROM set_1;
+--------+----------+--------+
| emp_id | name     | city   |
+--------+----------+--------+
|      1 | ASHUTOSH | PUNE   |
|      2 | ARYAN    | MUMBAI |
|      3 | SARTHAK  | SURAT  |
+--------+----------+--------+
3 rows in set (0.00 sec)

mysql>
mysql> SELECT * FROM set_2;
+--------+----------+-----------+
| emp_id | name     | country   |
+--------+----------+-----------+
|      1 | ASHUTOSH | INDIA     |
|      2 | ARYAN    | UK        |
|      3 | SARTHAK  | USA       |
|      4 | YASH     | AUSTRALIA |
+--------+----------+-----------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM set_1 UNION SELECT * FROM set_2;
+--------+----------+-----------+
| emp_id | name     | city      |
+--------+----------+-----------+
|      1 | ASHUTOSH | PUNE      |
|      2 | ARYAN    | MUMBAI    |
|      3 | SARTHAK  | SURAT     |
|      1 | ASHUTOSH | INDIA     |
|      2 | ARYAN    | UK        |
|      3 | SARTHAK  | USA       |
|      4 | YASH     | AUSTRALIA |
+--------+----------+-----------+
7 rows in set (0.00 sec)

mysql> SELECT name FROM set_1 UNION SELECT name from set_2;
+----------+
| name     |
+----------+
| ASHUTOSH |
| ARYAN    |
| SARTHAK  |
| YASH     |
+----------+
4 rows in set (0.00 sec)

mysql>
mysql> SELECT name FROM set_1 UNION ALL SELECT name from set_2;
+----------+
| name     |
+----------+
| ASHUTOSH |
| ARYAN    |
| SARTHAK  |
| ASHUTOSH |
| ARYAN    |
| SARTHAK  |
| YASH     |
+----------+
7 rows in set (0.00 sec)


