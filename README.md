# Mysql_assignment5
This MySQL assignment provides hands-on practice with essential SQL operations using two tables, Country and Persons. The Country table contains details about various countries, including fields for Id, Country_name, Population, and Area, while the Persons table records data about individuals, with fields for Id, Fname (first name), Lname (last name), Population, Rating, Country_Id, and Country_name.

The assignment begins with data insertion, requiring you to populate each table with 10 rows. You’ll then delve into a series of queries designed to build familiarity with different SQL functions and operations:

String Manipulation:
Extract the first three characters from Country_name in the Country table, reinforcing substring usage.
Concatenation:
Merge the first and last names in the Persons table to display full names, combining columns for more readable outputs.
Counting Unique Values:
Count unique entries in Country_name within the Persons table, emphasizing deduplication.
Aggregate Functions:
Calculate maximum and minimum values in fields such as population across both tables, introducing you to essential aggregate functions (MAX and MIN).
Handling NULL Values: 
Insert records with NULL values in the Lname field and then write queries to count the Lname entries, exploring how SQL treats NULLs in count operations.
Row Counting: Use COUNT to find the total number of rows in the Persons table.
Limiting Rows: 
Retrieve specific numbers of rows, such as the first three rows of the Country table, using the LIMIT clause.
Random Row Selection:
Select random rows from Country using RAND() with LIMIT, an introduction to randomized data sampling.
Ordering Results:
List all persons ordered by their Rating in descending order, emphasizing sorting in query results.
Aggregate and Conditional Grouping:
Calculate the total population per country within Persons, then filter for countries with a total population above 50,000. Additionally, you’ll aggregate persons’ counts and average ratings, filtering for countries with more than two persons and ordering by average rating in ascending order.







