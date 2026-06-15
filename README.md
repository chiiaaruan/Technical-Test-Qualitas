# 📚 Library Management Database

A simple Library Management Database project built using PostgreSQL. This project was created as a System Analyst technical assessment to demonstrate database design, normalization, SQL DDL, DML, and reporting queries.

---

## 📌 Project Overview

This database manages library operational data, including:

- Library members registration
- Book inventory management
- Book borrowing transactions
- Late return penalties
- Transaction reporting

The database is designed using relational concepts by separating member, book, and borrowing data to avoid redundancy and maintain data consistency.

---

## 🗂 Database Structure

The database contains 3 main tables:

### 1. Data Anggota (`data_anggota`)

Stores information about library members.

| Column | Description |
|---|---|
| da_id | Auto generated member ID |
| da_id_number | Unique member code |
| da_name | Member full name |
| da_address | Member address |
| da_phone_number | Member phone number |
| da_regist_date | Registration date |

---

### 2. Data Buku (`data_buku`)

Stores book inventory information.

| Column | Description |
|---|---|
| db_id | Auto generated book ID |
| db_id_book | Unique book code |
| db_category | Book category |
| db_title_book | Book title |
| db_writer_name | Author name |
| db_release_date | Book release date |
| db_stock | Available book stock |

---

### 3. Data Peminjaman (`data_peminjaman`)

Stores borrowing transaction records.

| Column | Description |
|---|---|
| dp_id | Auto generated transaction ID |
| dp_da_id_number | Member reference code |
| dp_db_id_book | Book reference code |
| dp_borrow_date | Borrowing date |
| dp_return_date | Return date |
| dp_late_days | Number of late days |
| dp_fine_amt | Late penalty amount |

---

## 🔗 Database Relationship

```
data_anggota
      |
      | da_id_number
      |
data_peminjaman
      |
      | db_id_book
      |
data_buku
```

The borrowing table only stores member codes and book codes, while member names and book titles are retrieved using SQL JOIN queries. This approach reduces data duplication and follows database normalization principles.

---

## 🛠 Technologies

- PostgreSQL
- SQL
- Navicat

---

## 📂 Project Structure

```
Technical-Test-Qualitas
│
├── Qualitas
│   ├── 01_create_schema.sql
│   ├── 02_create_table.sql
│   ├── 03_insert_data_anggota.sql
│   ├── 04_insert_data_buku.sql
│   ├── 05_insert_data_peminjaman.sql
│   ├── 06_task_query.sql
│   ├── Technical Test - Database (Qualitas)
│   └── Technical Test ERD (Qualitas)
│
└── README.md
```

---

## 🎯 System Analyst Approach

This project applies several database design concepts:

- Database normalization
- Primary key implementation
- Relational database design
- SQL JOIN operations
- Aggregate functions (`COUNT`, `SUM`)
- Conditional logic using `CASE WHEN`

---


## 👩 Author

**Anastasia Rugun Christiany**  
System Analyst Technical Assessment  
Created: June 2026
