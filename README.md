# 🏥 Hospital Management System (HMS)

## 📌 Project Description

The **Hospital Management System (HMS)** is a database-driven project designed to manage hospital operations efficiently. It handles patient details, doctor information, room allocation, billing, and more using SQL and phpMyAdmin.

---

## 🚀 Features

* 👨‍⚕️ Patient Management (Add, Update, Delete)
* 🏥 In-Patient & Out-Patient Handling
* 🛏️ Room Allocation System
* 💊 Medicine & Billing Management
* 🔗 Table Relationships using Foreign Keys
* 📊 Advanced SQL Queries (Joins, Subqueries, Views)
* ⚙️ Triggers and Cursors Implementation

  
  <img width="271" height="412" alt="Screenshot 2026-03-25 214411" src="https://github.com/user-attachments/assets/b66922f0-e470-42dc-8aba-09b99884e77d" />


---

## 🗂️ Database Name

```sql
hms
```

---

## 🏗️ Technologies Used

* 💾 MySQL
* 🧰 phpMyAdmin
* 💻 SQL
* 🖥️ XAMPP (optional for local server)

---

## 📁 Database Structure

### 🔹 Tables Included

* `patient`
* `doctor`
* `in_patient`
* `out_patient`
* `room`
* `medicine`
* `in_patient_bill`

---

## ⚙️ Key Concepts Implemented

### ✅ Constraints

* PRIMARY KEY
* FOREIGN KEY
* UNIQUE
* NOT NULL
* CHECK
* DEFAULT

### ✅ SQL Operations

* Aggregate Functions (AVG, SUM, COUNT, etc.)
* Set Operations (UNION)
* Joins (INNER, LEFT, RIGHT, CROSS)
* Subqueries

### ✅ Advanced Features

* Views
* Triggers
* Stored Procedures
* Cursors

---

## 🧪 Sample Queries

### 🔹 Patients above average age

```sql
SELECT patient_name, age
FROM patient
WHERE age > (SELECT AVG(age) FROM patient);
```
<img width="186" height="169" alt="Screenshot 2026-03-25 224224" src="https://github.com/user-attachments/assets/3910b134-09b4-427d-b8aa-fb18946243f4" />


---

## 💾 How to Run the Project

1. Open phpMyAdmin
2. Create a database named `hms`
3. Import the `hms.sql` file
4. Execute queries or connect with frontend (if available)

---

## 📤 How to Upload to GitHub

```bash
git init
git add .
git commit -m "HMS Project"
git branch -M main
git remote add origin https://github.com/your-username/HMS.git
git push -u origin main
```

---

## 🎯 Learning Outcomes

* Understanding relational database design
* Writing efficient SQL queries
* Using advanced SQL concepts like triggers and cursors
* Managing real-world database systems

---

## 👩‍💻 Author

BURUGULA MEHAR SAKHEENA

---

## 📜 License

This project is for educational purposes.
