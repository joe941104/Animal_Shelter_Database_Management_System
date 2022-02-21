# Animal_Shelter_Database_Management_System

Final Report
Jiachen Liu

1.	Top level description: 
Recently, more and more people are going to the animal shelter to adopt an animal to be a member of the family. And more and more people choose to donate their pets to animal shelters rather than abandon them. Therefore, I decided to build an Animal Information Database System for an animal shelter for the growing demand. 
In the Database System, the user can log in and edit the animal, adopter, and donor information. The data used in this project contains attributes such as shelter name, address, city, state, zip code, and so on. I will organize the data into the tables for the animal shelter, animal information, animal adopter, animal donor, shelter volunteer, shelter administrator and immunization. The code will allow the user to view the information, what’s more, the user can add, delete, and update the registration information, animal, adopter, and donor information.

2.	Software:
In this project, I use SQL as data storage and use python to connect MySQL database. Compared to NoSQL database, SQL can support more complex queries. In order to allow the user to view and edit the information, I decide to use Python to develop the client application. In order to gather the information, I use https://mockaroo.com/ to generate random data as a CSV file. I use my laptop to develop this project.

3.	Interest: 
Since I am an animal lover, I adopt my kitty from my local animal shelter. From the adoption process, I realized that creating an animal information database system will improve the work efficiency for the animal shelter and help animal shelters more organized.
4.	Technical Specification
In this project, I create two file which is client_code.py and testcode.py. In the client_code.py, I create the function that is the function for the front end user. And in the testcode.py file, I import the client_code.py and use the function that I created in the client_code.py to do the test code. 
5.	UML Diagram
![project_UML](https://user-images.githubusercontent.com/55035564/154881272-45835193-c1ac-4c89-9239-019a458155c7.jpg)


6.	EER Diagram
![EER_Diagram](https://user-images.githubusercontent.com/55035564/154881285-0c813a53-b8bc-4bc4-bf38-95b03e073c23.png)

7.	Flow Chart
![Flow_chart](https://user-images.githubusercontent.com/55035564/154881292-e56e8d99-7e53-4d5d-8bc4-9637c41486df.jpg)

8.	User Interaction
(1). When the application start, the user can log in by their password and username. If the username and password is right, continue. If the username and password is not right, it will end the program and show the error message.
(2). After log in , the user can choose to view or edit information. If the user choose to view animal information, the user can search animal, donor and adopter information by their name, id and type. If the user choose to edit the information, the user can add , delete and update the information of the database.
(3). After editing and viewing the information, the user can view the results as a table. 
(4). When user finish operation, it will end the program. 
9.	README
In this final project, I use Python to develop the client code. The Python Version is 3.7. The Python IDE that I used is Pycharm. You can download it from https://www.jetbrains.com/pycharm/. There are two Python libraries in this final project, which is pymysql and datetime. These two Python libraries are standard Python libraries so that you do not to install. The database client that I used is MySQLWorkbrench. You can download it from https://www.mysql.com/products/workbench/ . In my client code file, there are two file one is client_code.py and another is testcode.py. The client_code.py contain the code for the operation for the database and testcode.py contain the test code. The username for this final project is root and password is LJc690625822. 
10.	Lesson Learned
In this class and final project, I learned how to develop a database starting from 0. I learned how to select data from database and the difference between the join. Also, I learn how to make concept model and the knowledge of 1st,2nd, and 3rd normalization to avoid data redundancy. And I learned how to create a client program for the MySQL database by Python and the use of the Python Library which is pymysql. In the end, I learn the transaction about SQL database and the theory about NoSQL database. There are some insights for this project. First, the design of concept model is important. We need to consider all the conditions before database design rather than edit the concept model after designing the database . A good concept model is an important first step for database design. The second is time management, which we need to separate each step in different days so that we can consider all possible conditions that could happen in the design database. In this project, I realized the design that I use register_info table to connect the other six tables together. And in my client code, I realized the approach that when I insert or update new tuples in the register_info table, the following table can be inserted and updated at the same time.  
11.	Future Work
In the future, I will extend the use of my database. I will add more entities for my animal shelter database such as funding data for animal shelter. What’s more, I want to add more function and procedure for the database to analysis the animal information for the animal shelter so that the animal can manage the shelter more effectively and the small animal can get a good care. The potential area for added functionality is that we can use the added functionality to develop a program that and analysis the data for different animal shelter in the internet for the whole area.
![image](https://user-images.githubusercontent.com/55035564/154881219-d0ca15bb-e329-459e-bf49-f1502210d907.png)
