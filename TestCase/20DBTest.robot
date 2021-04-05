*** Settings ***
Library   DatabaseLibrary
Library   OperatingSytem

Suite Setup     Connect to Database   pymysql  ${DBName}    ${DBUsername}   ${DBPassword}   ${DBHost}   ${DBPort}
Suite Teardown    Disconnect from Database

*** Variables ***
${DBName}       mysql
${DBUsername}   root
${DBPassword}   root
${DBHost}       localhost   #127.0.0.1
${DBPort}       3306        #Default

*** Test Cases ***
Create Table Person
    ${Output}=  Execute sql string  create table person(id integer,first_name varchar(20),last_name varchar(20))
    log to console  ${Output}
    should be equal as string   ${Output}    None
Insert Data
     Exceute sql string     insert into person values(101,"Yaswanth","Bobbu");
     #Run sql file [Test Data] to add multiple rows in sql
Multiple Insert Data
     Execute sql script     ../TestData/mysqlfile.sql
Checking Name
    #row count is 0/ Equal to/greater than/less than {X}
     check if Exist in database     select id from person where first_name="Yaswanth";      #{no.X}
     chekc if not Exist in database  select id from person where first_name="Bobby"
Table in Database
     Table must Exists  person
Update in Database
      Execute sql string    update into person set first_name="Yaswanth_Bobbu" where id=101;
Retrieve from Database
      @{Results}=   query     select * from person;
      log to console    many  @{Results}
Delete records
       Execute sql string   Delete from person;;














