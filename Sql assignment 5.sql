Create table country (Id int not null primary key, Country_name varchar(15) not null,
Population int not null,Area int not null );

desc country;

create table Persons(Id int not null primary key,Fname varchar(15) not null ,
Lname varchar(15) ,Population int not null ,Rating float not null ,
Country_id varchar(5) not null,Country_name varchar(20) );

desc persons;

#Insert 10 rows to Table Country

insert into Country(Id,Country_name,Population,Area)values
(200,'China' , 1400000, 9600000 ),
 ( 201,'India', 1400000,  3300000) ,
( 202,'United States', 335000 , 9800000 ),
( 203,'Indonesia',  277000 , 1900000 ),
( 204,'Brazil',  215000, 8400000),
 (205,'Pakistan',  2350000 , 881913 ),
 (206,'Nigeria',21800, 923768 ),
  (207,'Bangladesh',80000, 148571) ,
 (208,'Russia',1440000, 17125191 ),
(209,' Australia',260000,7692024 );

select * from country;

insert into persons(Id,Fname,Lname,Population,Rating,Country_id,Country_name)values
(1 ,'John', 'Doe', 10000 , 4.5 ,'US' ,'USA'),
( 2 ,'Jane', 'Smith',  9000 , 3.8 , 'CA', 'Canada' ),
( 3 ,'Michael', 'Johnson', 800000, 4.2 ,' AU','Australia' ),
(4,'Emily', 'Davis' ,7000,  4.0 , 'CA', 'Canada'),
( 5  ,'Ethan ','Lee',9000 , 4.7,  'CN  ','China '),
( 6,'Olivia',  'Martinez' ,600000,3.9,'US','USA'), 
 (7 ,'Ava','Williams' ,12000,4.8,'UK','UK'),
(8,'Sophia','Alex' , 400000 , 3.7,'IN', 'India'),
(9,'Isabella','Jones', 15000 , 4.9,'JP', 'Japan'),
( 10 ,'Liam', 'Miller',  30000  ,3.6,'MX','Mexico');

SELECT * FROM PERSONS;
-- 1. Write an SQL query to print the first three characters of Country_name from the Country table.
select Country_name,substring(Country_name,1,3)  as First_3_char from country;

--  2. Write an SQL query to concatenate first name and last name from Persons table.
select Fname,Lname, concat(Fname,' ',Lname) as Fullname from persons;
 
--  3. Write an SQL query to count the number of unique country names from Persons table.
 select   count( distinct Country_name) from persons;
 
-- 4. Write a query to print the maximum population from the Country table. 
select max(Population) as Maximum_population from country;

 -- 5. Write a query to print the minimum population from Persons table.
 select min(Population) as Minimum_population from persons;
 
-- 6. Insert 2 new rows to the Persons table making the Lname NULL. 
--  Then write another query to count Lname from Persons table. 
insert into persons VALUES (11,'Lia', NULL,  65000,3.9,'DXB','Dubai'),
( 12 ,'Rose', NULL,  50000,4.6,'CA','Canada');
SELECT COUNT(Lname) as Notnull_Lname_count FROM persons;
 
--  7. Write a query to find the number of rows in the Persons table. 
 Select count(Id) as Total_rows_count from persons;
 

 -- 8. Write an SQL query to show the population of the Country table for 
 -- the first 3 rows. (Hint: Use LIMIT)
 select Population from country limit 3;
 
 -- 9. Write a query to print 3 random rows of countries. 
 -- (Hint: Use rand() function and LIMIT) 
 select * from country order by rand() limit 3;
 
 -- 10. List all persons ordered by their rating in descending order.
 select Fname,Lname,Rating from persons order by Rating desc;
 
-- 11. Find the total population for each country in the Persons table. 
select Country_name ,sum(Population) as Total_population from persons group by Country_name;

--  12. Find countries in the Persons table with a total population greater than 50,000
select Country_name ,sum(Population) as Total_population from persons group by Country_name 
having Total_Population > 50000;


 -- 13. List the total number of persons and average rating for each country,
 -- but only for countries with more than 2 persons, ordered by the average
 -- rating in ascending order.
 Select Country_name,count(*) as Total_num_of_persons,avg(Rating) as
 Average_rating from persons
 group by Country_name having count(*)>2 order by Average_rating asc;
 
 
