HOSPITAL MANAGEMENET SYSTEM



&nbsp;

ABSTRACT





The Hospital Management System (HMS) is a database-driven application designed to efficiently manage the day-to-day operations of a hospital. The primary objective of this system is to computerize and integrate all hospital activities such as patient registration, doctor management, staff administration, room allocation, billing, and medicine handling into a single, centralized platform..



This system maintains detailed records of administrators, staff, doctors, patients (in- patient and out-patient), rooms, medicines, billing, and cashier operations. It ensures proper data organization through well-defined relationships and constraints, thereby maintaining data integrity and reducing redundancy. The use of structured entities, primary and foreign keys enables accurate tracking of patient admissions, treatments, prescriptions, and payments..



The Hospital Management System improves operational efficiency by minimizing manual work, reducing errors, and providing quick access to real-time information. It also enhances coordination among departments such as reception, pharmacy, billing, and administration. Overall, the system offers a reliable, secure, and scalable solution that supports effective hospital administration and improves the quality of healthcare services. 



The system reduces data redundancy and ensures data consistency by organizing data into  well-defined relational tables using primary key and foreign key constraints, thereby maintaining referential integrity. It supports essential database operations such as insertion, deletion, updation, and retrieval using SQL queries.The project demonstrates the practical implementation of various SQL concepts including DDL, DML, and DCL commands, along with advanced features such as constraints, aggregate functions, set operations, joins, subqueries, views, triggers, and cursors. These features enable efficient data manipulation, complex query processing, and automation of database operations.

&nbsp;



PROBLEM UNDERSTANDING, IDENTIFICATION OF ENTITY AND RELATIONSHIPS, CONSTRUCTION OF DB USING ER MODEL FOR THE PROJECT “ HOSPITAL MANAGEMENT SYSTEM ”



1.1	Introduction



Hospitals are complex organizations that require proper management of patients, medical staff, administrative staff, and medical resources. Traditional paper-based systems and manual record keeping methods are inefficient and often result in data duplication, inconsistency, and loss of important information. Retrieving patient or billing information from manual records is time-consuming and affects the quality of service provided by the hospital.



The Hospital Management System is designed to overcome these challenges by providing a centralized database for storing hospital data. The system maintains detailed records of patients, doctors, staff, room assignments, and billing information in a structured manner. By using a relational database, the system ensures fast access to information, accuracy of data, and improved coordination among hospital departments. The project mainly focuses on backend database design rather than user interface development.





1.2	Motivation



The motivation behind developing the Hospital Management System is to understand the practical application of database management concepts in real-world scenarios. Healthcare institutions require reliable data management systems to ensure smooth functioning and effective decision-making. Manual systems are not suitable for handling the growing amount of hospital data.



This project provides an opportunity to apply theoretical DBMS concepts such as ER modeling, normalization, and SQL constraints to a real-life problem. It helps in understanding how databases can improve efficiency, reduce errors, and maintain data integrity. The project also enhances technical skills related to MySQL and database design.

&nbsp;

1.3	Scope



The scope of the Hospital Management System includes:



•	Patient registration and record management

•	Doctor appointment and specialization tracking

•	Staff management and role assignment

•	In-patient admission and room allocation

•	Out-patient medicine prescription tracking

•	Billing and cashier management



The project does not include online payment or frontend interfaces, focusing only on database design.





1.4	Problem Statement

Domain

DBMS | Web Application | Data Management Systems



Project Overview

The Hospital Management System is a database-oriented application designed to manage and organize hospital data efficiently. Hospitals handle a wide range of information related to patients, doctors, staff members, room allocations, medicines, and billing processes. The project focuses on designing a centralized database system that can store, retrieve, and manage this information systematically using Database Management System concepts.



Problem Addressed

Traditional hospital record management systems rely heavily on manual processes or fragmented digital records, which often result in data redundancy, inconsistency, delayed access to information, and difficulty in maintaining accurate patient history. Managing patient admissions, doctor details, billing records, and medical information manually increases the chances of errors and affects the overall efficiency of hospital operations. The lack of a unified database system makes it challenging to coordinate between different hospital departments.

&nbsp;

Core DBMS Focus

The primary focus of this project is to apply fundamental DBMS principles such as Entity Relationship modeling, relational schema design, normalization, primary keys, foreign keys, and integrity constraints. The system emphasizes structured data organization and reliable relationship mapping between entities like patients, doctors, staff, and billing records. The project demonstrates how DBMS concepts ensure data consistency, integrity, and efficient query processing in real-world applications.

Technology Stack

The Hospital Management System is implemented using MySQL as the relational database management system. MySQL Workbench is used for database design, table creation, and query execution. ER diagrams are created using standard diagramming tools to visually represent entities, attributes, and relationships. The system is developed on a standard desktop environment without focusing on frontend interfaces, concentrating entirely on backend database implementation.



Outcome

The outcome of this project is a well-structured and normalized hospital database system capable of handling essential hospital data efficiently. The designed database reduces redundancy, improves data accuracy, and enforces referential integrity through constraints. This system serves as a strong foundation for future enhancements such as frontend integration, advanced reporting, and automation of hospital workflows, demonstrating the effective application of DBMS concepts in the healthcare domain.





1.5	Project Requirements



Hardware Requirements



•	Personal Computer or Laptop

•	Minimum 4 GB RAM

•	Intel i3 Processor or higher



Software Requirements



•	Operating System: Windows / macOS / Linux

•	Database Management System: MySQL

•	ER Diagram Tool: Smartdraw

•	SQL Editor: MySQL Workbench / Command Line

&nbsp;

1.6	Identification of Entity and Relationships



Entities represent real-world objects that exist in the hospital environment. In this system, entities such as:



•	Admin

•	Staff

•	Doctor

•	Patient

•	Room

•	Medicine

•	In-Patient

•	Out-Patient

•	Billing

•	Cashier



Relationships Identified



•	Administrators appoint doctors

•	Patients may be admitted as in-patients or treated as out-patients

•	Staff members register patients and doctors

•	Staff members also act as cashiers

•	In-patients are assigned hospital rooms

•	Patients



These entities are selected based on their role in hospital operations. Identifying the correct entities is an important step in database design, as it forms the foundation for building an effective ER model and relational schema. Each entity has a unique identity and a set of attributes that describe it.



Relationships describe how different entities are connected within the system. These relationships help define data flow and dependency among entities. Proper identification of relationships ensures that data remains consistent and meaningful across the database.

&nbsp;

1.7	Construction of DB Using ER Model for the HOSPITAL MANAGEMENT SYSTEM





Fig 1.1 ER Diagram representation for HOSPITAL MANAGEMENT SYSTEM



The database is constructed using the Entity-Relationship (ER) Model, which provides a clear conceptual representation of the system. Entities are represented as rectangles, attributes as ovals, and relationships as diamonds in the ER diagram.

The ER model helps in identifying primary keys, foreign keys, and cardinalities between entities. The ER diagram provides a visual representation of the Hospital Management System. It illustrates entities, their attributes, and the relationships between them. Primary keys are used to uniquely identify entities, while foreign keys establish connections between related entities

&nbsp;



Design of Relational Schemas, Creation of Database and Tables for HOSPITAL MANAGEMENT SYSTEM







2.1	Relational Schema for HOSPITAL MANAGEMENT SYSTEM

&nbsp;





Figure 2.1: Relational Schema for HOSPITAL MANAGEMENT SYSTEM

The figure 2.1 depicts the relational schema for the HOSPITAL MANAGEMENT SYSTEM. (It shows the logical structure of the database, including entities, their attributes, primary and foreign keys, and the relationships between them.)

&nbsp;

2.2	Description of Tables







Table 2.2.1: Admin



•	Purpose: Stores information about system administrators who manage high- level hospital operations.

•	Primary Key: \_id (INTEGER)

•	Data Types and Constraints:

1\.	user\_id: INTEGER, Primary Key, Not Null

2\.	admin\_username: VARCHAR(50), Not Null, Unique

3\.	admin\_password: VARCHAR(50), Not Null



Table 2.2.2: Staff



•	Purpose: Stores information about hospital staff members responsible for registration and operational activities.

•	Primary Key: staff\_id (INTEGER)

•	Data Types and Constraints:

1\.	staff\_id: INTEGER, Primary Key, Not Null, Auto Increment

2\.	staff\_fname: VARCHAR(50), Not Null

3\.	staff\_lname: VARCHAR(50), Not Null

4\.	staff\_username: VARCHAR(50), Not Null, Unique

5\.	staff\_designation: VARCHAR(50), Not Null

6\.	staff\_mobile: VARCHAR(15), Not Null



Table 2.2.3: Cashier



•	Purpose: Stores information about cashiers who handle billing and payment activities..

•	Primary Key: cashier\_id (INTEGER)

•	Data Types and Constraints:

1\.	cashier\_id: INTEGER, Primary Key, Not Null, Auto Increment

2\.	staff\_id: INTEGER, Not Null, Foreign Key references

Staff(staff\_id)Not Null

3\.	cashier\_fname: VARCHAR(50),Not Null

&nbsp;

Table 2.2.4: Doctor



•	Purpose: Stores information about doctors appointed to provide medical services.

•	Primary Key: doctor\_id (INTEGER)

•	Data Types and Constraints:

1\.	doctor\_id: INTEGER, Primary Key, Not Null, Auto Increment

2\.	doctor\_name: VARCHAR(100),Not Null

3\.	specialization: VARCHAR(100),Not Null

4\.	doctor\_mobile: VARCHAR(15), Not Null

5\.	appointed\_by\_admin: INTEGER, Not Null, Foreign Key references Admin(user\_id)



Table 2.2.5: Patient



•	Purpose: Stores information about patients registered in the hospital system.

•	Primary Key: patient\_id (INTEGER)

•	Data Types and Constraints:

1\.	patient\_id: INTEGER, Primary Key, Not Null, Auto Increment

2\.	patient\_name: VARCHAR(100), Not Null

3\.	gender: VARCHAR(10), Not Null

4\.	dob: DATE, Not Null

5\.	admission\_date: DATE

6\.	patient\_mobile: VARCHAR(15), Not Null

7\.	registered\_by\_staff: INTEGER, Not Null, Foreign Key references Staff(staff\_id)

8\.	age: INTEGER, Derived



Table 2.2.6: Room



•	Purpose: Stores information about rooms allocated to admitted patients.

•	Primary Key: room\_id (INTEGER)

•	Data Types and Constraints:

1\.	room\_id: INTEGER, Primary Key, Not Null, Auto Increment

2\.	room\_no: INTEGER, Not Null, Unique

3\.	room\_cost: DECIMAL(10,2), Not Null



Table 2.2.7: In\_Patient



•	Purpose: Stores admission details of patients admitted for inpatient treatment.

•	Primary Key: admission\_id (INTEGER)

•	Data Types and Constraints:

1\.	admission\_id: INTEGER, Primary Key, Not Null, Auto Increment

2\.	patient\_id: INTEGER, Not Null, Foreign Key references Patient(patient\_id)

3\.	room\_id: INTEGER, Not Null, Foreign Key references Room(room\_id)

4\.	ip\_date: DATE, Not Null

&nbsp;

Table 2.2.8: In\_Patient\_Bill



•	Purpose: Stores billing information generated for inpatient services.

•	Primary Key: bill\_id (INTEGER)

•	Data Types and Constraints:

1\.	bill\_id: INTEGER, Primary Key, Not Null, Auto Increment

2\.	admission\_id: INTEGER, Not Null, Foreign Key references In\_Patient(admission\_id)

3\.	total: DECIMAL(10,2), Derived



Table 2.2.9: Out\_Patient



•	Purpose: Stores information about patients treated without hospital admission.

•	Primary Key: patient\_id (INTEGER)

•	Data Types and Constraints:

1\.	patient\_id: INTEGER, Primary Key, Not Null, Foreign Key references Patient(patient\_id)



Table 2.2.10: Medicine



•	Purpose: Stores information about medicines available in the hospital pharmacy.

•	Primary Key: medicine\_id (INTEGER)

•	Data Types and Constraints:

1\.	medicine\_id: INTEGER, Primary Key, Not Null, Auto Increment

2\.	medicine\_name: VARCHAR(100), Not Null

3\.	price: DECIMAL(10,2), Not Null

Table 2.2.11: Out\_Patient\_Medical



•	Purpose: Stores information about medicines prescribed to outpatients.

•	Primary Key: outpatient\_med\_id(INTEGER)

•	Data Types and Constraints:

1\.	outpatien\_med\_id: INTEGER, Primary Key, Not Null, Auto Increment

2\.	patient\_id: INTEGER, Not Null, Foreign Key references Out\_Patient(patient\_id)

3\.	medicine\_id: INTEGER, Not Null, Foreign Key references Medicine(medicine\_id)

4\.	quantity: INTEGER, Not Null

&nbsp;

2.3	Creation of Database and Tables - DDL Commands



This section describes the Data Definition Language (DDL) commands used to create the database and tables for the Hospital Management System.



2.3.1	Creation of Database



CREATE DATABASE hospital\_management; USE hospital\_management;





2.3.2	Creation of Admin Table



CREATE TABLE admin (

user\_id INT PRIMARY KEY,

admin\_username VARCHAR(50) NOT NULL UNIQUE, admin\_password VARCHAR(50) NOT NULL

);





2.3.3	Creation of staff Table



CREATE TABLE staff (

staff\_id INT AUTO\_INCREMENT PRIMARY KEY,

staff\_fname VARCHAR(50) NOT NULL, staff\_lname VARCHAR(50) NOT NULL,

staff\_username VARCHAR(50) NOT NULL UNIQUE, staff\_designation VARCHAR(50) NOT NULL, staff\_mobile VARCHAR(15) NOT NULL

);





2.3.4	Creation of Cashier Table



CREATE TABLE cashier (

cashier\_id INT AUTO\_INCREMENT PRIMARY KEY,

staff\_id INT NOT NULL,

cashier\_fname VARCHAR(50) NOT NULL,

FOREIGN KEY (staff\_id) REFERENCES staff(staff\_id)

);

&nbsp;

2.3.5	Creation of Doctor Table



CREATE TABLE doctor (

doctor\_id INT AUTO\_INCREMENT PRIMARY KEY,

doctor\_name VARCHAR(100) NOT NULL, specialization VARCHAR(100) NOT NULL, doctor\_mobile VARCHAR(15) NOT NULL, appointed\_by\_admin INT NOT NULL, registered\_by\_staff INT NOT NULL,

FOREIGN KEY (appointed\_by\_admin) REFERENCES admin(user\_id), FOREIGN KEY (registered\_by\_staff) REFERENCES staff(staff\_id)

);





2.3.6	Creation of Patient Table



CREATE TABLE patient (

patient\_id INT AUTO\_INCREMENT PRIMARY KEY,

patient\_name VARCHAR(100) NOT NULL, gender VARCHAR(10) NOT NULL,

dob DATE NOT NULL,

admission\_date DATE NOT NULL, patient\_mobile VARCHAR(15) NOT NULL, registered\_by\_staff INT NOT NULL,

FOREIGN KEY (registered\_by\_staff) REFERENCES staff(staff\_id)

);





2.3.7	Creation of room Table



CREATE TABLE room (

room\_id INT AUTO\_INCREMENT PRIMARY KEY, room\_no INT NOT NULL UNIQUE,

room\_cost DECIMAL(10,2) NOT NULL

);





2.3.8	reation of in\_patient Table



CREATE TABLE in\_patient (

admission\_id INT AUTO\_INCREMENT PRIMARY KEY, patient\_id INT NOT NULL,

room\_id INT NOT NULL, ip\_date DATE NOT NULL,

FOREIGN KEY (patient\_id) REFERENCES patient(patient\_id), FOREIGN KEY (room\_id) REFERENCES room(room\_id)

);

&nbsp;

2.3.9	Creation of in\_patient\_bill Table



CREATE TABLE in\_patient\_bill (

bill\_id INT AUTO\_INCREMENT PRIMARY KEY,

admission\_id INT NOT NULL, total DECIMAL(10,2),

FOREIGN KEY (admission\_id) REFERENCES in\_patient(admission\_id)

);





2.3.10	Creation of out\_patient Table



CREATE TABLE out\_patient ( patient\_id INT PRIMARY KEY,

FOREIGN KEY (patient\_id) REFERENCES patient(patient\_id)

);





2.3.11	Creation of medicine Table



CREATE TABLE medicine (

medicine\_id INT AUTO\_INCREMENT PRIMARY KEY, medicine\_name VARCHAR(100) NOT NULL,

price DECIMAL(10,2) NOT NULL

);





2.3.12	Creation of out\_patient\_medical Table



CREATE TABLE out\_patient\_medical (

outpatient\_med\_id INT AUTO\_INCREMENT PRIMARY KEY, patient\_id INT NOT NULL,

medicine\_id INT NOT NULL, quantity INT NOT NULL,

FOREIGN KEY (patient\_id) REFERENCES out\_patient(patient\_id), FOREIGN KEY (medicine\_id) REFERENCES medicine(medicine\_id)

);

&nbsp;

2.4	Insertion of tuples into the table – DML commands





This section describes the Data Manipulation Language (DML) commands used to insert sample records into the tables of the Hospital Management System.





2.4.1	Insertion into Admin Table



INSERT INTO admin VALUES

(1,'admin1','p1'),(2,'admin2','p2'),(3,'admin3','p 3'),(4,'admin4','p4'),

(5,'admin5','p5'),(6,'admin6','p6'),(7,'admin7','p 7'),(8,'admin8','p8'),

(9,'admin9','p9'),(10,'admin10','p10');





2.4.2	Insertion into Staff Table

INSERT INTO staff (first\_name,last\_name,username,designation,mobile) VALUES

('Ravi','Kumar','ravi','Nurse','9001'),

('Anita','Shah','anita','Receptionist','9002'),

('Suresh','Naik','suresh','Ward Boy','9003'),

('Deepa','Nair','deepa','Clerk','9004'),

('Manoj','Patel','manoj','Cleaner','9005'),

('Kiran','Reddy','kiran','Pharmacist','9006'),

('Sunil','Verma','sunil','Security','9007'),

('Rekha','Iyer','rekha','Nurse','9008'),

('Ajay','Singh','ajay','Technician','9009'),

('Latha','Rao','latha','Manager','9010');





2.4.3	Insertion into Cashier Table



INSERT INTO cashier (staff\_id, first\_name) VALUES

(1,'Ravi'),

(2,'Anita'),

(3,'Suresh'),

(4,'Deepa'),

(5,'Manoj'),

(6,'Kiran'),

(7,'Sunil'),

(8,'Rekha'),

(9,'Ajay'),

(10,'Latha');

&nbsp;

2.4.4	Insertion into Doctor Table

INSERT INTO doctor (doctor\_name,specialization,mobile,appointed\_by\_admin,registered\_by\_staff) VALUES ('Dr A','Cardiology','7001',1,1),

('Dr B','Neurology','7002',2,2),

('Dr C','Orthopedic','7003',3,3),

('Dr D','ENT','7004',4,4),

('Dr E','Pediatric','7005',5,5),

('Dr F','Dermatology','7006',6,6),

('Dr G','Oncology','7007',7,7),

('Dr H','Psychiatry','7008',8,8),

('Dr I','General','7009',9,9),

('Dr J','Urology','7010',10,10);



2.4.5	Insertion into Patient Table

INSERT INTO patient

(patient\_name, gender, age, dob, mobile, admission\_date, registered\_by\_staff) VALUES

('Arun','Male',30,'1994-01-01','8001','2024-01-01',1),

('Bhavya','Female',25,'1999-02-02','8002','2024-01-02',2),

('Charan','Male',40,'1984-03-03','8003','2024-01-03',3),

('Divya','Female',35,'1989-04-04','8004','2024-01-04',4),

('Eshwar','Male',28,'1996-05-05','8005','2024-01-05',5),

('Farah','Female',32,'1992-06-06','8006','2024-01-06',6),

('Gopal','Male',45,'1979-07-07','8007','2024-01-07',7),

('Hema','Female',22,'2002-08-08','8008','2024-01-08',8),

('Imran','Male',38,'1986-09-09','8009','2024-01-09',9),

('Jyothi','Female',27,'1997-10-10','8010','2024-01-10',10);



2.4.6	Insertion into Room Table

INSERT INTO room (room\_no, room\_cost) VALUES (101,2000),

(102,2200),

(103,2500),

(104,3000),

(105,3500),

(201,4000),

(202,4500),

(203,5000),

(204,5500),

(205,6000);

&nbsp;

2.4.7	Insertion into in\_patient Table

INSERT INTO in\_patient (patient\_id, room\_id, admission\_date) VALUES (1,1,'2024-01-01'),

(2,2,'2024-01-02'),

(3,3,'2024-01-03'),

(4,4,'2024-01-04'),

(5,5,'2024-01-05'),

(6,6,'2024-01-06'),

(7,7,'2024-01-07'),

(8,8,'2024-01-08'),

(9,9,'2024-01-09'),

(10,10,'2024-01-10');





2.4.8	Insertion into in\_patient\_bill Table

INSERT INTO in\_patient\_bill (admission\_id, total) VALUES (1,4500),

(2,5200),

(3,6100),

(4,4800),

(5,7000),

(6,5300),

(7,8200),

(8,7600),

(9,6900),

(10,8800);





2.4.9	Insertion into out\_patient Table



INSERT INTO out\_patient (patient\_name, mobile, doctor\_name) VALUES ('Kiran','8101','Dr A'),

('Lalitha','8102','Dr B'),

('Manish','8103','Dr C'),

('Nandini','8104','Dr D'),

('Omkar','8105','Dr E'),

('Pooja','8106','Dr F'),

('Qadir','8107','Dr G'),

('Ritika','8108','Dr H'),

('Sanjay','8109','Dr I'),

('Tanvi','8110','Dr J');

&nbsp;

2.4.10	Insertion into medicine Table



INSERT INTO out\_patient (patient\_name, mobile, doctor\_name) VALUES ('Kiran','8101','Dr A'),

('Lalitha','8102','Dr B'),

('Manish','8103','Dr C'),

('Nandini','8104','Dr D'),

('Omkar','8105','Dr E'),

('Pooja','8106','Dr F'),

('Qadir','8107','Dr G'),

('Ritika','8108','Dr H'),

('Sanjay','8109','Dr I'),

('Tanvi','8110','Dr J');



2.4.11	Insertion into out\_patient\_medical Table



INSERT INTO out\_patient\_medical (patient\_id, medicine\_id, quantity) VALUES (1,1,5),

(2,2,3),

(3,3,4),

(4,4,6),

(5,5,2),

(6,6,7),

(7,7,3),

(8,8,5),

(9,9,4),

(10,10,6);



















































Admin Table



&nbsp;





Cashier Table



&nbsp;













Doctor Table



&nbsp;



in-patient Table



&nbsp;













Medicine Table



&nbsp;



Out-Patient-Medical Table



&nbsp;













Out\_Patient Table

&nbsp;



Patient Table



Patient\_id	Patient\_name	gender	age	dob	Mobile	Admission

\_date	Registered

\_by\_staff

1	Arun	Male	30	1994-01-01	8001	2024-01-01	1

2	Bhavya	Female	25	1999-02-02	8002	2024-01-01	2

&nbsp;

Room Table

&nbsp;



Staff Table



&nbsp;























In-Patient-Bill Table



&nbsp;

















































CHAPTER 3



Complex queries based on the concepts of constraints, sets, joins, views, Triggers and Cursors.





3.1 Adding Constraints and queries based on constraints

&nbsp;   3.1.1: Check constraint

&nbsp;    Question: To check whether the cost of the room is positive or not 



&nbsp;    SQL Statement: ALTER TABLE room

&nbsp;                                            ADD CONSTRAINT chk\_room\_cost

&nbsp;                                            CHECK (room\_cost >= 0);

&nbsp;      

&nbsp;    Output:

&nbsp;                   

&nbsp;  

&nbsp;   3.1.2: Unique Constraint

&nbsp;    Question: To check whether the mobile number is unique or not 



&nbsp;    SQL Statement: ALTER TABLE patient

&nbsp;                                            ADD CONSTRAINT uq\_mobile UNIQUE (mobile);       

&nbsp;    Output:

&nbsp;                   





&nbsp;       3.1.3: Primary Key Constraint

&nbsp;     Question: Create a PATIENT table where patient\_id is the Primary Key



&nbsp;     SQL Statement: CREATE TABLE patient (

&nbsp;                                              patient\_id INT PRIMARY KEY,

&nbsp;                                              patient\_name VARCHAR(50),

&nbsp;                                              age INT

&nbsp;                                              );      

&nbsp;    Output:

&nbsp;                   









&nbsp;    3.1.4:Not Null Key Constraint

&nbsp;     Question: Create a table where patient\_name cannot be NULL.



&nbsp;     SQL Statement: CREATE TABLE patient (

&nbsp;                                             patient\_id INT PRIMARY KEY,

&nbsp;                                             patient\_name VARCHAR(50) NOT NULL,

&nbsp;                                             age INT

&nbsp;                                             );

&nbsp;       IF WE TRY TO INSERT A RECORD WHERE THE PATIENT NAME IS                                            

&nbsp;       NULL : INSERT INTO patient VALUES (1,NULL,25);

&nbsp;     

&nbsp;     Output:

&nbsp;                   





&nbsp;    3.1.5: Default Constraint

&nbsp;     Question: Set default value of city as Chennai.



&nbsp;     SQL Statement: CREATE TABLE patient (

&nbsp;                                             patient\_id INT PRIMARY KEY,

&nbsp;                                             patient\_name VARCHAR(50),

&nbsp;                                             city VARCHAR(50) DEFAULT 'Chennai'

&nbsp;                                              );        

&nbsp;        

&nbsp;         Output:

&nbsp;         IF WE TRY TO INSERT A RECORD WITHOUT MENTIONING CITY NAME :                                          

&nbsp;        INSERT INTO patient (patient\_id,patient\_name)

&nbsp;        VALUES (1,'Kiran');

&nbsp;      

&nbsp;                  



&nbsp;    3.1.6: Foreign Key Constraint

&nbsp;     Question: Create DOCTOR table and reference it in PATIENT..



&nbsp;     SQL Statement: CREATE TABLE doctor (

&nbsp;                                             doctor\_id INT PRIMARY KEY,

&nbsp;                                             doctor\_name VARCHAR(50) 

&nbsp;                                             ); 



&nbsp;                                             CREATE TABLE patient (

&nbsp;                                             patient\_id INT PRIMARY KEY,

&nbsp;                                             patient\_name VARCHAR(50),

&nbsp;                                              doctor\_id INT,

&nbsp;                                              FOREIGN KEY (doctor\_id) REFERENCES doctor(doctor\_id)

&nbsp;                                              );        

&nbsp;           IF WE TRY TO INSERT A RECORD SUCH THAT: 

&nbsp;           INSERT INTO patient VALUES (1,'Arun',5);

&nbsp;     

&nbsp;     Output:

&nbsp;                  ERROR 1452:

&nbsp;                          Cannot add or update a child row:

&nbsp;                          a foreign key constraint fails





3.2 Queries based on Aggregate Functions

&nbsp;  3.2.1: AVG() Function

&nbsp;     Question: Find average room cost.



&nbsp;     SQL Statement: SELECT AVG(room\_cost) AS average\_cost

&nbsp;                                             FROM room;



&nbsp;     Output:

&nbsp;                  

&nbsp;  



&nbsp;  3.2.2: SUM() Function

&nbsp;     Question: Find total inpatient bill.



&nbsp;     SQL Statement: SELECT SUM(total) AS total\_bill

&nbsp;                                             FROM in\_patient\_bill;      

&nbsp;    

&nbsp;     Output:

&nbsp;                   

&nbsp;  

&nbsp;  3.2.3: MAX() Function

&nbsp;     Question: Find maximum medicine price.



&nbsp;     SQL Statement: SELECT MAX(price) AS highest\_price

&nbsp;                                             FROM medicine;      



&nbsp;     Output:

&nbsp;                   



&nbsp;  

&nbsp; 3.2.4: COUNT() Function

&nbsp;     Question: Find the total number of patients in the patient table.

&nbsp;     

&nbsp;     SQL Statement: SELECT COUNT(\*) AS total\_patients

&nbsp;                                             FROM patient;     

&nbsp;     

&nbsp;     Output:

&nbsp;                   

&nbsp;    

&nbsp;3.2.5: MIN() Function

&nbsp;     Question: Find the minimum room cost from the room table.

&nbsp;     

&nbsp;     SQL Statement: SELECT MIN(room\_cost) AS minimum\_room\_cost

&nbsp;                                             FROM room;      

&nbsp;     Output:

&nbsp;                   



&nbsp; 3.2.6: VARIANCE() Function

&nbsp;     Question: Find the variance of patient ages.

&nbsp;     

&nbsp;     SQL Statement: SELECT VARIANCE(age) AS age\_variance

&nbsp;                                             FROM patient;

&nbsp;     Output:

&nbsp;                   







&nbsp; 3.2.7: STDDEV() Function

&nbsp;     Question: Find the standard deviation of patient ages.

&nbsp;     

&nbsp;     SQL Statement: SELECT STDDEV(age) AS age\_stddev

&nbsp;                                             FROM patient;

&nbsp;     

&nbsp;     Output:

&nbsp;                   



&nbsp; 

&nbsp;3.2.8: ALL THE FUNCTIONS COMBINED

&nbsp;     Question: Find count, minimum age, variance, and standard deviation of patients.

&nbsp;     

&nbsp;     SQL Statement: SELECT 

&nbsp;                                             COUNT(age) AS total\_patients, 

&nbsp;                                             MIN(age) AS minimum\_age,

&nbsp;                                             VARIANCE(age) AS age\_variance,

&nbsp;                                             STDDEV(age) AS age\_stddev

&nbsp;                                             FROM patient;      

&nbsp;     

&nbsp;  





&nbsp;  Output:          





3.3 Complex queries based on Sets

&nbsp;3.3.1: UNION Operation

&nbsp;     Question: Display patient names from patient and out\_patient using UNION.      

&nbsp;     

&nbsp;     SQL Statement: SELECT patient\_name FROM patient

&nbsp;                                             UNION

&nbsp;                                             SELECT patient\_name FROM out\_patient;      

&nbsp;     

&nbsp;     







&nbsp;      Output: 

&nbsp;                  

&nbsp;                  



3.3.2: Intersection Operation

&nbsp;     Question: Display common patient IDs using INTERSECT concept.      

&nbsp;     

&nbsp;     SQL Statement: SELECT patient.patient\_id

&nbsp;                                             FROM patient

&nbsp;                                             INNER JOIN out\_patient

&nbsp;                                             ON patient.patient\_id = out\_patient.patient\_id;    

&nbsp;     

&nbsp;     Output: 

&nbsp;                  









3.3.3: UNION ALL OPERATION

&nbsp;     Question: Display all patient names from in\_patient and out\_patient.

&nbsp;     

&nbsp;     SQL Statement: SELECT p.patient\_name

&nbsp;                                             FROM in\_patient ip

&nbsp;                                             JOIN patient p ON ip.patient\_id = p.patient\_id

&nbsp;                                             UNION ALL

&nbsp;                                             SELECT patient\_name

&nbsp;                                             FROM out\_patient;      

&nbsp;  

























&nbsp;  Output:         

&nbsp;                                



3.4 Complex queries based on Subqueries

&nbsp;                                 SINGLE-ROW SUBQUERIES



3.4.1:USING = OPERATOR

&nbsp;     Question: Display the patient name and age of the oldest patient.

&nbsp;     

&nbsp;     SQL Statement: SELECT patient\_name, age

&nbsp;                                             FROM patient

&nbsp;                                             WHERE age = (

&nbsp;                                             SELECT MAX(age)

&nbsp;                                             FROM patient

&nbsp;                                             );      

&nbsp;  

&nbsp;  Output:         

&nbsp;                                

3.4.2: USING  >  OPERATOR

&nbsp;     Question: Find patients whose age is greater than the average age.

&nbsp;     

&nbsp;     SQL Statement: SELECT patient\_name, age

&nbsp;                                             FROM patient

&nbsp;                                             WHERE age > (

&nbsp;                                             SELECT AVG(age)

&nbsp;                                             FROM patient

&nbsp;                                             );

&nbsp;     Output:         

&nbsp;                                



3.4.3: USING  <  OPERATOR

&nbsp;     Question: Find rooms whose cost is less than the average room cost.

&nbsp;     

&nbsp;     SQL Statement: SELECT room\_no, room\_cost

&nbsp;                                             FROM room

&nbsp;                                             WHERE room\_cost < (

&nbsp;                                             SELECT AVG(room\_cost)

&nbsp;                                             FROM room  

&nbsp;                                             );      

&nbsp;     Output:         

&nbsp;                                



&nbsp;                                        MULTI-ROW SUBQUERIES



3.4.4: USING IN OPERATOR

&nbsp;     Question: Display patient names whose patient\_id is present in the in\_patient                     

&nbsp;                          table.

&nbsp;     SQL Statement: SELECT patient\_name

&nbsp;                                             FROM patient

&nbsp;                                             WHERE patient\_id IN (

&nbsp;                                             SELECT patient\_id

&nbsp;                                             FROM in\_patient

&nbsp;                                             );      

&nbsp;     Output:         

&nbsp;                                



3.4.5: USING  NOT IN OPERATOR

&nbsp;     Question: Find rooms whose cost is less than the average room cost.

&nbsp;     

&nbsp;     SQL Statement: SELECT patient\_name

&nbsp;                                             FROM patient

&nbsp;                                             WHERE patient\_id NOT IN (

&nbsp;                                             SELECT patient\_id

&nbsp;                                             FROM out\_patient

&nbsp;                                             );

&nbsp;    







&nbsp;Output:         

&nbsp;                                



3.4.6: USING  ANY OPERATOR

&nbsp;     Question: Display rooms whose cost is greater than any room cost above 3000.

&nbsp;     

&nbsp;     SQL Statement: SELECT room\_no, room\_cost

&nbsp;                                             FROM room

&nbsp;                                             WHERE room\_cost > ANY (

&nbsp;                                             SELECT room\_cost

&nbsp;                                             FROM room

&nbsp;                                             WHERE room\_cost > 3000

&nbsp;                                              );      

&nbsp;     Output:         

&nbsp;                                











3.4.7: USING  ALL OPERATOR

&nbsp;     Question: Display medicines whose price is greater than all prices below 150.

&nbsp;     

&nbsp;     SQL Statement: SELECT medicine\_name, price

&nbsp;                                             FROM medicine

&nbsp;                                             WHERE price > ALL ( 

&nbsp;                                             SELECT price

&nbsp;                                             FROM medicine

&nbsp;                                             WHERE price < 150

&nbsp;                                             ); 

&nbsp;     Output:         

&nbsp;                                



3.4.8: USING  EXISTS OPERATOR

&nbsp;     Question: Display patient names if matching records exist in in\_patient.

&nbsp;     

&nbsp;     SQL Statement: SELECT patient\_name

&nbsp;                                             FROM patient p

&nbsp;                                             WHERE EXISTS (

&nbsp;                                             SELECT 1

&nbsp;                                             FROM in\_patient ip

&nbsp;                                             WHERE ip.patient\_id = p.patient\_id

&nbsp;                                              );     

&nbsp;

Output:         

&nbsp;                                











3.5 Complex queries based on JOINS



3.5.1: USING  INNER JOIN

&nbsp;     Question: Display patient name along with their room number (only admitted                            

&nbsp;                          patients).

&nbsp;     

&nbsp;     SQL Statement: SELECT p.patient\_name, r.room\_no

&nbsp;                                             FROM patient p

&nbsp;                                             INNER JOIN in\_patient ip ON p.patient\_id = ip.patient\_id

&nbsp;                                             INNER JOIN room r ON ip.room\_id = r.room\_id; 

&nbsp;       

&nbsp;     Output:         

&nbsp;                                





3.5.2: USING  LEFT JOIN

&nbsp;     Question: Display all patients and their inpatient details (if available).      

&nbsp;    

&nbsp;     SQL Statement: SELECT p.patient\_name, ip.room\_id

&nbsp;                                             FROM patient p

&nbsp;                                             LEFT JOIN in\_patient ip ON p.patient\_id = ip.patient\_id;        

&nbsp;     

&nbsp; 













&nbsp;   Output:         

&nbsp;                                



3.5.3: USING  RIGHT JOIN

&nbsp;     Question: Display all inpatients and their patient names.     

&nbsp;    

&nbsp;     SQL Statement: SELECT p.patient\_name, ip.room\_id

&nbsp;                                             FROM patient p

&nbsp;                                             RIGHT JOIN in\_patient ip ON p.patient\_id = ip.patient\_id;       

&nbsp;   

&nbsp;    Output:         

&nbsp;                                









3.5.4: USING  CROSS JOIN

&nbsp;     Question: Display all possible combinations of patients and doctors.     

&nbsp;    

&nbsp;     SQL Statement:  SELECT p.patient\_name, d.doctor\_name

&nbsp;                                              FROM patient p

&nbsp;                                              CROSS JOIN doctor d;     











&nbsp;     Output:    

&nbsp;                       



3.6 Complex queries based on views



&nbsp; 3.6.1: CREATING A VIEW

&nbsp;     Question: Create a view to display patient details.

&nbsp;     

&nbsp;     SQL Statement: CREATE VIEW patient\_view AS

&nbsp;                                             SELECT patient\_id, patient\_name, age

&nbsp;                                             FROM patient;        

&nbsp;     

&nbsp;    Output:

&nbsp;                            

&nbsp;                               

&nbsp; 3.6.2: UPDATE VIEW

&nbsp;     Question: Update patient name using view.

&nbsp;     

&nbsp;     SQL Statement: UPDATE patient\_view

&nbsp;                                             SET patient\_name = 'Rahul'

&nbsp;                                             WHERE patient\_id = 1;

&nbsp;     

&nbsp;    Output:

&nbsp;                    



&nbsp; 3.6.3: SELECT VIEW

&nbsp;     Question: Display data from the created view.

&nbsp;     

&nbsp;     SQL Statement: SELECT \* FROM patient\_view;

&nbsp;     

&nbsp;    



&nbsp;    Output:

&nbsp;            



&nbsp; 3.6.4: DROP VIEW

&nbsp;     Question: Update patient name using view.

&nbsp;     

&nbsp;     SQL Statement: DROP VIEW patient\_view;



&nbsp;  







&nbsp;  Output:

&nbsp;            



&nbsp;  

3.7 Complex queries based on Triggers

&nbsp;  3.7.1: 

&nbsp;     Question: Create trigger to prevent negative room cost.

&nbsp;     

&nbsp;     SQL Statement: DELIMITER //



&nbsp;                                             CREATE TRIGGER trg\_check\_room\_cost

&nbsp;                                             BEFORE INSERT ON room

&nbsp;                                             FOR EACH ROW

&nbsp;                                             BEGIN

&nbsp;                                             IF NEW.room\_cost < 0 THEN

&nbsp;                                             SIGNAL SQLSTATE '45000'

&nbsp;                                             SET MESSAGE\_TEXT = 'Room cost cannot be negative';

&nbsp;                                             END IF;

&nbsp;                                             END//



&nbsp;                                             DELIMITER ; 



&nbsp;     Output: INSERT INTO room(room\_id, room\_no, room\_cost)

&nbsp;                          VALUES (11, 210, -500);



&nbsp;                





3.7.2: 

&nbsp;     Question: Create trigger to set default medicine price

&nbsp;     

&nbsp;     SQL Statement: DELIMITER //



&nbsp;                                             CREATE TRIGGER trg\_set\_medicine\_price

&nbsp;                                             BEFORE INSERT ON medicine

&nbsp;                                             FOR EACH ROW

&nbsp;                                             BEGIN

&nbsp;                                             IF NEW.price IS NULL OR NEW.price < 0 THEN

&nbsp;                                             SET NEW.price = 0;

&nbsp;                                            

&nbsp;                                             END IF;

&nbsp;                                             END//



&nbsp;                                             DELIMITER ; 



&nbsp;     Output: INSERT INTO medicine(medicine\_id, medicine\_name, price)

&nbsp;                          VALUES (11, 'NewTablet', -50);

&nbsp;                          SELECT \* FROM medicine WHERE medicine\_id = 11;



&nbsp;                



3.7.3: 

&nbsp;     Question: Create trigger to log deleted patient details.

&nbsp;     

&nbsp;     SQL Statement:

&nbsp;      CREATE TABLE patient\_log (

&nbsp;         log\_id INT AUTO\_INCREMENT PRIMARY KEY,

&nbsp;         patient\_id INT,

&nbsp;         patient\_name VARCHAR(50),

&nbsp;         deleted\_at TIMESTAMP DEFAULT CURRENT\_TIMESTAMP

&nbsp;          );



&nbsp;         DELIMITER //



&nbsp;         CREATE TRIGGER trg\_patient\_delete\_log

&nbsp;         BEFORE DELETE ON patient

&nbsp;          FOR EACH ROW

&nbsp;         BEGIN

&nbsp;         INSERT INTO patient\_log(patient\_id, patient\_name)

&nbsp;         VALUES (OLD.patient\_id, OLD.patient\_name);

&nbsp;          END//



&nbsp;          DELIMITER ;

&nbsp;     

Output:   





3.8 Complex queries based on Cursors

&nbsp; 3.8.1: 

&nbsp;     Question: Create a cursor to calculate the total age of all patients.

&nbsp;     

&nbsp;     SQL Statement: DELIMITER //



&nbsp;                                             CREATE PROCEDURE total\_age\_cursor()

&nbsp;                                             BEGIN

&nbsp;                                             DECLARE done INT DEFAULT FALSE;

&nbsp;                                             DECLARE page INT;

&nbsp;                                             DECLARE total\_age INT DEFAULT 0;



&nbsp;                                             DECLARE cur CURSOR FOR

&nbsp;                                             SELECT age FROM patient;

&nbsp;

&nbsp;                                          DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;



&nbsp;                                           OPEN cur;



&nbsp;                                           read\_loop: LOOP

&nbsp;                                           FETCH cur INTO page;



&nbsp;                                          IF done THEN

&nbsp;                                          LEAVE read\_loop;

&nbsp;                                          END IF;



&nbsp;                                          SET total\_age = total\_age + page;

&nbsp;                                          END LOOP;



&nbsp;                                         CLOSE cur; 



&nbsp;                                         SELECT total\_age AS total\_age\_of\_patients;

&nbsp;                                         END//



&nbsp;                                        DELIMITER ;



&nbsp;     Output:

&nbsp;                      CALL total\_age\_cursor();



&nbsp;                  



3.8.2: 

&nbsp;     Question: Create a cursor that copies patient names into another table.

&nbsp;     

&nbsp;     SQL Statement: CREATE TABLE patient\_names\_log (

&nbsp;                                              log\_id INT AUTO\_INCREMENT PRIMARY KEY,

&nbsp;                                              patient\_name VARCHAR(100)

&nbsp;                                              );

&nbsp;                                             DELIMITER //



&nbsp;                                             CREATE PROCEDURE patient\_log\_cursor()

&nbsp;                                              BEGIN

&nbsp;                                              DECLARE done INT DEFAULT FALSE;

&nbsp;                                              DECLARE pname VARCHAR(100);



&nbsp;                                              DECLARE cur CURSOR FOR

&nbsp;                                              SELECT patient\_name FROM patient;



&nbsp;                                          DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;



&nbsp;                                             OPEN cur;



&nbsp;                                            read\_loop: LOOP

&nbsp;                                            FETCH cur INTO pname;



&nbsp;                                             IF done THEN

&nbsp;                                             LEAVE read\_loop;

&nbsp;                                              END IF;



&nbsp;                                               INSERT INTO patient\_names\_log(patient\_name)

&nbsp;                                               VALUES (pname);

&nbsp;                                               END LOOP;



&nbsp;                                              CLOSE cur;

&nbsp;                                              END//



&nbsp;                                              DELIMITER ;



&nbsp;     Output:

&nbsp;                      CALL patient\_log\_cursor();

&nbsp;                      SELECT \* FROM patient\_names\_log;

&nbsp;                  



3.8.3: 

&nbsp;     Question: Create a cursor to count how many male patients are present.

&nbsp;     

&nbsp;     SQL Statement: DELIMITER //



&nbsp;                                              CREATE PROCEDURE male\_patient\_count\_cursor()

&nbsp;                                               BEGIN

&nbsp;                                               DECLARE done INT DEFAULT FALSE;

&nbsp;                                               DECLARE g VARCHAR(10);

&nbsp;                                               DECLARE male\_count INT DEFAULT 0;



&nbsp;                                               DECLARE cur CURSOR FOR

&nbsp;                                               SELECT gender FROM patient;



&nbsp;                          DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;



&nbsp;                         OPEN cur;



&nbsp;                          read\_loop: LOOP

&nbsp;                          FETCH cur INTO g;



&nbsp;                           IF done THEN

&nbsp;                           LEAVE read\_loop;

&nbsp;                           END IF;



&nbsp;                           IF g = 'Male' THEN

&nbsp;                           SET male\_count = male\_count + 1;

&nbsp;                           END IF;

&nbsp;                           END LOOP;



&nbsp;                            CLOSE cur;



&nbsp;                            SELECT male\_count AS total\_male\_patients;

&nbsp;                            END//



&nbsp;                             DELIMITER ;



&nbsp;    

&nbsp;Output:

&nbsp;                   CALL male\_patient\_count\_cursor();                        

&nbsp;                  





3.9 Complex queries based on all the concepts

&nbsp;   3.9.1:

&nbsp;     Question: Display patients whose age is above the average patient age and whose                      

&nbsp;                          room cost is below the average room cost. 

&nbsp;     

&nbsp;     SQL Statement: SELECT p.patient\_id, p.patient\_name, p.age, r.room\_no, r.room\_cost

&nbsp;                                             FROM patient p

&nbsp;                                             JOIN in\_patient ip ON p.patient\_id = ip.patient\_id

&nbsp;                                            JOIN room r ON ip.room\_id = r.room\_id

&nbsp;                                           WHERE p.age > (

&nbsp;                                             SELECT AVG(age)

&nbsp;                                             FROM patient

&nbsp;                                              )

&nbsp;                                           AND r.room\_cost < (

&nbsp;                                           SELECT AVG(room\_cost)

&nbsp;                                           FROM room

&nbsp;                                            );



&nbsp;    







&nbsp;Output:

&nbsp;            



3.9.2:

&nbsp;     Question: Create a view for inpatient room details, then display only those 

&nbsp;                          patients staying in rooms with the minimum room cost.

&nbsp;     

&nbsp;     SQL Statement: CREATE OR REPLACE VIEW inpatient\_room\_view AS

&nbsp;                                              SELECT p.patient\_id, p.patient\_name, p.age, r.room\_no, r.room\_cost

&nbsp;                                              FROM patient p

&nbsp;                                              JOIN in\_patient ip ON p.patient\_id = ip.patient\_id

&nbsp;                                              JOIN room r ON ip.room\_id = r.room\_id;

&nbsp;                                              FROM room

&nbsp;                                               ); 

&nbsp;                                                  SELECT \*

&nbsp;                                              FROM inpatient\_room\_view

&nbsp;                                              WHERE room\_cost = (

&nbsp;                                             SELECT MIN(room\_cost)

&nbsp;                                             FROM inpatient\_room\_view

&nbsp;                                             );



&nbsp;     Output:

&nbsp;            



3.9.3:

&nbsp;     Question: Display patient details of patients present in both in\_patient and 

&nbsp;                          out\_patient and whose age is greater than average age.      

&nbsp;     

&nbsp;      SQL Statement: SELECT p.patient\_id, p.patient\_name, p.age

&nbsp;                                               FROM patient p

&nbsp;                                               WHERE p.patient\_id IN (

&nbsp;                                               SELECT patient\_id FROM in\_patient

&nbsp;                                               ) 

&nbsp;                                              AND p.patient\_id IN (

&nbsp;                                              SELECT patient\_id FROM out\_patient

&nbsp;                                              )

&nbsp;                                             AND p.age > (

&nbsp;                                             SELECT AVG(age) FROM patient

&nbsp;                                             );



&nbsp;     Output:

&nbsp;            



3.9.4:

&nbsp;     Question: Patients staying in rooms cheaper than average room cost of all 

&nbsp;                          Inpatients



&nbsp;      SQL Statement: SELECT p.patient\_name, ip.doctor\_id, r.room\_no, r.room\_cost

&nbsp;                                              FROM patient p

&nbsp;                                              JOIN in\_patient ip ON p.patient\_id = ip.patient\_id

&nbsp;                                              JOIN room r ON ip.room\_id = r.room\_id

&nbsp;                                              WHERE r.room\_cost < (

&nbsp;                                              SELECT AVG(r2.room\_cost)

&nbsp;                                              FROM in\_patient ip2

&nbsp;                                               JOIN room r2 ON ip2.room\_id = r2.room\_id );                                                                                



&nbsp;     Output:

&nbsp;            





