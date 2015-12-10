#SOLUTIONS!!!!
1. select * from states;
2. select * from regions;
3. select state_name,population from states;
4. select state_name,population from states order by -population;
5. select state_name from states where region_id = 7;
6. select state_name,population_density from states where population_density > 50 order by population_density;
7. select state_name from states where population>1000000 and population<1500000;
8. select state_name,region_id from states order by region_id;
9. select region_name from regions where region_name like '%Central';
10. select regions.region_name, states.state_name from regions, states where regions.id=states.region_id;

###CLUELESS SCHEMA DESIGNER!!!
https://github.com/masopie/phase-0/blob/master/week-8/database-intro/Clueless%20Schemadesigner.jpg

####REFLECTIONS!!
######What are databases for?
* Databases exist to store large amounts of information and then access them pretty easily! They're a collection of:
1. 'entities' (**tables** ~ each associated to each item you want to manage)
2. their 'attributes' (**columns** ~ describe different pieces of info you want to collect)
3. and 'records' (or 'instances') of these entities (**rows**)


######What is a one-to-many relationship?
- Just gonna steal this definition cause I can't type it concisely: *In relational databases, a one-to-many relationship occurs when a parent record in one table can potentially reference several child records in another table. In a one-to-many relationship, the parent is not required to have child records; therefore, the one-to-many relationship allows zero child records, a single child record or multiple child records. The important thing is that the child cannot have more than one parent record.*

######What is a primary key? What is a foreign key? How can you determine which is which?
- A primary key is the key in the parent record. It uniquely identifies each record in a database table. Each table can only have ONE primary key.
- A foreign key in one table points to a primary key in another table.

######How can you select information out of a SQL database? What are some general guidelines for that?
- Gotta write the commands in uppercase! So selecting information out of a SQL database is like writing a sentence: its syntax is more like a phrase saying "let's SELECT x FROM foo database;" etc.