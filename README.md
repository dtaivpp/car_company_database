# Car Company Database
For best viewing experiance please view at https://github.com/dtaivpp/car_company_database    
Also, please note these instructions are written from the perspective of the macOS however can still work with small modifications on windows or linux. 

## About the Database
This database is designed to handle the everyday operations of a major car company. It provides functionality to view the transactions of dealers, track car inventory, and maintain the models and avaliable options of cars. See the below file to view the Entity Relationship diagram for the database.  
The databases uses triggers, primary, and foreign keys to ensure the constraints of the database are maintianted upon insertion. Each entitiy has an autogenerated ID to ensure they are unique and to ensure that the transformations are easier. 

![alt text](https://github.com/dtaivpp/car_company_database/blob/master/Car_Database_ER_Diagram.png?raw=true "ER Diagram")
  
### Setting up the database
*Note this is using the already built database  
1. First go ahead and download sqlite from here: https://www.sqlite.org/index.html using version 3.24.0
2. After installing open a commandline or terminal and clone the repositiory using  `git clone https://github.com/dtaivpp/car_company_database.git`
3. From the terminal then navigate to the directory that you just cloned called car_company_database
4. Next run `sqlite3 Car_Database` to open the database in the terminal  

### Building the database from scratch
1. Use steps 1 - 3 from the previous section
2. Alternatively you can build the database from the source files by running `sqlite3 .open {Name for your database here}` to create a new database
3. Next you would run from your sqlite shell `.read Create_Tables.sql` to create the tables 
5. Run `.read Triggers.sql` from your sqlite shell to create the triggers to ensure inserts do not break any rules of the database such as adding a model with an invalid option set id. 
5. Finally you would run `.read Insert.sql` from your sqlite shell to populate the tables with the data

### Running Sample SQL operations
1. If your database is alredy open skip to step 3. Otherwise open up a terminal and navigate to the directory your database is in. 
2. Next run `sqlite3 Car_Database` to open the database in the terminal  
3. Next you would run from your sqlite shell `.read {Query Name Here}.sql` without the curls to run the query from the file 

