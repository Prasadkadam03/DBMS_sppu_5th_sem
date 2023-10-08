PowerShell 7.3.7
PS C:\Users\ASUS> mysql -u root -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database ass_4b;
Query OK, 1 row affected (0.00 sec)

mysql> use ass_4b;
Database changed
mysql> delimiter //
mysql> create procedure calculate_area()
    -> begin
    -> declare pradious int;
    -> declare parea float;
    -> declare pi float;
    -> set pi := 3.14;
    -> create table assignment_4b (radius int, area float);
    -> set pradious := 5;
    -> while pradious <= 9 do
    -> set parea := pi * pradious * pradious;
    -> select parea;
    -> insert into assignment_4b(radius, area) values (pradious, parea);
    -> set pradious := pradious + 1;
    -> end while;
    -> end//
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call calculate_area();
+-------+
| parea |
+-------+
|  78.5 |
+-------+
1 row in set (0.02 sec)

+--------+
| parea  |
+--------+
| 113.04 |
+--------+
1 row in set (0.02 sec)

+--------+
| parea  |
+--------+
| 153.86 |
+--------+
1 row in set (0.03 sec)

+--------+
| parea  |
+--------+
| 200.96 |
+--------+
1 row in set (0.03 sec)

+--------+
| parea  |
+--------+
| 254.34 |
+--------+
1 row in set (0.03 sec)

Query OK, 1 row affected (0.03 sec)

mysql> select * from assignment_4b;
+--------+--------+
| radius | area   |
+--------+--------+
|      5 |   78.5 |
|      6 | 113.04 |
|      7 | 153.86 |
|      8 | 200.96 |
|      9 | 254.34 |
+--------+--------+
5 rows in set (0.00 sec)

mysql> exit;
Bye