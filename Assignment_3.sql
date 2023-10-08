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

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ass2               |
| information_schema |
| learn              |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> create database ass3;
Query OK, 1 row affected (0.01 sec)

mysql> use database ass3;
ERROR 1049 (42000): Unknown database 'database'
mysql> use ass3;
Database changed
mysql> create table student(roll_no int primary key,name varchar (10),city varchar (10));
Query OK, 0 rows affected (0.03 sec)

mysql> insert into student(roll_no,name,city)
    -> values(1,'prasad','malegoan')
    -> ,(2,'gaurav','pimpalgoan')
    -> ,(3,'ishan','manmad')
    -> ,(4,'mahesh','chandwad')
    -> ,(5,'pranav','malegoan')
    -> ;
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+--------+------------+
| roll_no | name   | city       |
+---------+--------+------------+
|       1 | prasad | malegoan   |
|       2 | gaurav | pimpalgoan |
|       3 | ishan  | manmad     |
|       4 | mahesh | chandwad   |
|       5 | pranav | malegoan   |
+---------+--------+------------+
5 rows in set (0.00 sec)

mysql> create table marks(roll_no int not null,name varchar(10),marks int ,p
rimary key(roll_no))
    -> ;
Query OK, 0 rows affected (0.01 sec)

mysql> insert into marks(roll_no,name,marks)
    -> values(1,'prasad',90)
    -> ,(4,'mahesh',91)
    -> ,(3,'ishan',97)
    -> ,(2,'gaurav',88)
    -> ,(5,'pranav',84);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+--------+------------+
| roll_no | name   | city       |
+---------+--------+------------+
|       1 | prasad | malegoan   |
|       2 | gaurav | pimpalgoan |
|       3 | ishan  | manmad     |
|       4 | mahesh | chandwad   |
|       5 | pranav | malegoan   |
+---------+--------+------------+
5 rows in set (0.00 sec)

mysql> select * from marks;
+---------+--------+-------+
| roll_no | name   | marks |
+---------+--------+-------+
|       1 | prasad |    90 |
|       2 | gaurav |    88 |
|       3 | ishan  |    97 |
|       4 | mahesh |    91 |
|       5 | pranav |    84 |
+---------+--------+-------+
5 rows in set (0.00 sec)

mysql> alter table marks
    -> foreign key (roll_no)
    -> references student(roll_no);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'foreign key (roll_no)
references student(roll_no)' at line 2
mysql> alter table marks
    -> add foreign key (roll_no)
    -> references student(roll_no);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *
    -> from marks
    -> order by marks asc;
+---------+--------+-------+
| roll_no | name   | marks |
+---------+--------+-------+
|       5 | pranav |    84 |
|       2 | gaurav |    88 |
|       1 | prasad |    90 |
|       4 | mahesh |    91 |
|       3 | ishan  |    97 |
+---------+--------+-------+
5 rows in set (0.00 sec)

mysql> select *
    -> from marks
    -> order by marks desc;
+---------+--------+-------+
| roll_no | name   | marks |
+---------+--------+-------+
|       3 | ishan  |    97 |
|       4 | mahesh |    91 |
|       1 | prasad |    90 |
|       2 | gaurav |    88 |
|       5 | pranav |    84 |
+---------+--------+-------+
5 rows in set (0.00 sec)

mysql> select *
    -> from marks
    -> order by name desc;
+---------+--------+-------+
| roll_no | name   | marks |
+---------+--------+-------+
|       1 | prasad |    90 |
|       5 | pranav |    84 |
|       4 | mahesh |    91 |
|       3 | ishan  |    97 |
|       2 | gaurav |    88 |
+---------+--------+-------+
5 rows in set (0.00 sec)

mysql> order by name asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order by name asc' at line 1
mysql> select *
    -> from marks
    -> order by marks asc;
+---------+--------+-------+
| roll_no | name   | marks |
+---------+--------+-------+
|       5 | pranav |    84 |
|       2 | gaurav |    88 |
|       1 | prasad |    90 |
|       4 | mahesh |    91 |
|       3 | ishan  |    97 |
+---------+--------+-------+
5 rows in set (0.00 sec)

mysql> select *
    -> from marks
    -> order by marks desc
    -> limit 3;
+---------+--------+-------+
| roll_no | name   | marks |
+---------+--------+-------+
|       3 | ishan  |    97 |
|       4 | mahesh |    91 |
|       1 | prasad |    90 |
+---------+--------+-------+
3 rows in set (0.00 sec)

mysql> select *
    -> from marks
    -> order by name desc
    -> limit 6;
+---------+--------+-------+
| roll_no | name   | marks |
+---------+--------+-------+
|       1 | prasad |    90 |
|       5 | pranav |    84 |
|       4 | mahesh |    91 |
|       3 | ishan  |    97 |
|       2 | gaurav |    88 |
+---------+--------+-------+
5 rows in set (0.00 sec)

mysql> select avg(marks)
    -> from marks;
+------------+
| avg(marks) |
+------------+
|    90.0000 |
+------------+
1 row in set (0.00 sec)

mysql> select avg(marks),count(name)
    -> from marks;
+------------+-------------+
| avg(marks) | count(name) |
+------------+-------------+
|    90.0000 |           5 |
+------------+-------------+
1 row in set (0.00 sec)

mysql> select min(marks),sum(roll_no)
    -> from marks;
+------------+--------------+
| min(marks) | sum(roll_no) |
+------------+--------------+
|         84 |           15 |
+------------+--------------+
1 row in set (0.00 sec)

mysql> select marks,count(name)
    -> from marks;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'ass3.marks.marks'; this is incompatible with sql_mode=only_full_group_by
mysql> select marks,count(name)
    -> from marks
    -> group by marks;
+-------+-------------+
| marks | count(name) |
+-------+-------------+
|    90 |           1 |
|    88 |           1 |
|    97 |           1 |
|    91 |           1 |
|    84 |           1 |
+-------+-------------+
5 rows in set (0.00 sec)

mysql> select name,count(city)
    -> from student
    -> group by name;
+--------+-------------+
| name   | count(city) |
+--------+-------------+
| prasad |           1 |
| gaurav |           1 |
| ishan  |           1 |
| mahesh |           1 |
| pranav |           1 |
+--------+-------------+
5 rows in set (0.00 sec)

mysql> select city,count(name)
    -> from student
    -> group by name;
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'ass3.student.city' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
mysql> select city,count(name)
    -> from student
    -> group by city;
+------------+-------------+
| city       | count(name) |
+------------+-------------+
| malegoan   |           2 |
| pimpalgoan |           1 |
| manmad     |           1 |
| chandwad   |           1 |
+------------+-------------+
4 rows in set (0.00 sec)

mysql> select city,avg(name)
    -> from student
    -> group by city;
+------------+-----------+
| city       | avg(name) |
+------------+-----------+
| malegoan   |         0 |
| pimpalgoan |         0 |
| manmad     |         0 |
| chandwad   |         0 |
+------------+-----------+
4 rows in set, 5 warnings (0.00 sec)

mysql> select name
    -> from marks
    -> group by city;
ERROR 1054 (42S22): Unknown column 'city' in 'group statement'
mysql> select name
    -> from student
    -> where city = malegoan
    -> group by name;
ERROR 1054 (42S22): Unknown column 'malegoan' in 'where clause'
mysql> select name
    -> from student
    -> where city = 'malegoan'
    -> group by name;
+--------+
| name   |
+--------+
| prasad |
| pranav |
+--------+
2 rows in set (0.00 sec)

mysql> select name
    -> from student
    -> where city = 'malegoan'
    -> group by city;
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'ass3.student.name' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
mysql> select name
    -> from student
    -> where city = 'malegoan'
    -> group by roll_no;
+--------+
| name   |
+--------+
| prasad |
| pranav |
+--------+
2 rows in set (0.00 sec)