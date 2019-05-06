# 1.创建数据库employee_db
create database employee_db;
# 2.在数据库employee_db中创建table：`Employee`
create table Employee(
   id int(11) unsigned auto_increment,
   name varchar(255),
   age int(11),
   gender varchar(20),
   companyId int(11),
   salary varchar(255),
   PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
# 3.将`employee-data.csv`文件中的数据导入数据表Employee中
LOAD DATA INFILE '/Users/mahuan/Other-File/MySQL-Quiz-2019-3-14-7-49-4-960/employee-data.csv'
    INTO TABLE Employee
    FIELDS TERMINATED BY ','
    OPTIONALLY ENCLOSED BY '\''
    LINES TERMINATED BY '\n';

# 4.在数据库employee_db中创建table：`Company`
create table Company(
    id int(11) unsigned auto_increment,
    companyName varchar(255),
    employeesNumber int(11),
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

# 5.将`company-data.csv`文件中的数据导入Company数据表中
LOAD DATA INFILE '/Users/mahuan/Other-File/MySQL-Quiz-2019-3-14-7-49-4-960/company-data.csv'
    INTO TABLE Company
    FIELDS TERMINATED BY ','
    OPTIONALLY ENCLOSED BY '\''
    LINES TERMINATED BY '\n';
# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息
select * from Employee where name like '%n%' and salary> 6000
# ps:本练习中只需要将6的结果复制到`result.txt`文件中
