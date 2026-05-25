# University Library Database System

A university library database management system built using MySQL/MariaDB in XAMPP.  
This project implements database design, indexing, transactions, security, triggers, stored procedures, and query optimization techniques.

---

# Features

- Book management
- User management
- Loan and reservation system
- Transactions and concurrency control
- Indexing and query optimization
- Role-based access control (RBAC)
- Triggers and stored procedures
- Memory management tuning
- Backup and recovery planning

---

# Database Design

## Main Entities

### Book
- Book_ID
- Title
- ISBN
- Author_ID
- Stock

### Author
- Author_ID
- Author_Name
- Author_Birthdate

### User
- User_ID
- User_Name
- User_Address

### Loan
- Loan_ID
- User_ID
- Book_ID
- Loan_Date
- Return_Date

### Reserve
- Reserve_ID
- User_ID
- Book_ID

---

# Technologies Used

- MySQL / MariaDB
- XAMPP
- phpMyAdmin

---

# Storage Engine and Tablespaces

The database uses the InnoDB storage engine because it supports:

- Transactions (ACID compliance)
- Foreign key constraints
- Row-level locking
- Crash recovery
- Better concurrency control

`innodb_file_per_table` was enabled so each table has its own `.ibd` data file.

Example configuration:

```ini
innodb_file_per_table = 1
```

---

# Indexing and Query Optimization

Indexes were created to improve query performance for common operations such as:

- Searching books by title
- Searching books by author
- Finding loans by user
- Finding overdue loans
- Finding reservations by user/book

Example indexes:

```sql
CREATE INDEX idx_book_title ON book(Title);

CREATE INDEX idx_loan_user ON loan(User_ID);

CREATE INDEX idx_reserve_book ON reserve(Book_ID);
```

Query performance was analyzed using:

```sql
EXPLAIN SELECT * FROM book WHERE Title = 'Database Systems';
```

---

# Memory Management

The following configurations were used to optimize performance:

```sql
SET GLOBAL innodb_buffer_pool_size = 512 * 1024 * 1024;

SET GLOBAL query_cache_size = 64 * 1024 * 1024;

SET GLOBAL query_cache_type = 1;
```

## Explanation

- Buffer pool size set to 512MB to improve data caching and reduce disk access.
- Query cache size set to 64MB to speed up repeated SELECT queries.
- Query cache type enabled caching for repeated queries.

Performance improvements were observed through increased:
- Qcache_hits
- Qcache_inserts

---

# Transactions and Concurrency Control

Implemented transactions include:

1. Borrow a Book
2. Return a Book
3. Reserve a Book
4. Add New Book
5. Delete User Account

Example transaction:

```sql
START TRANSACTION;

UPDATE book
SET Stock = Stock - 1
WHERE Book_ID = 4169;

COMMIT;
```

---

# Security and Backup

## User Roles

### Admin
- Full database access

### Librarian
- SELECT
- INSERT
- UPDATE
- DELETE

### Student
- Read-only access to books

Example:

```sql
GRANT SELECT ON library.book TO 'student'@'localhost';
```

## Backup

Database backup using:

```bash
mysqldump -u root -p library > library_backup.sql
```

Restore using:

```bash
mysql -u root -p library < library_backup.sql
```

---

# Advanced Features

## Full-Text Search

```sql
ALTER TABLE book
ADD FULLTEXT(Title);
```

## Trigger Example

Automatically update stock after a book is returned:

```sql
CREATE TRIGGER AfterReturnUpdate
AFTER UPDATE ON loan
FOR EACH ROW
UPDATE book
SET Stock = Stock + 1
WHERE Book_ID = NEW.Book_ID
AND NEW.Return_Date IS NOT NULL;
```

---

# How to Run

1. Start Apache and MySQL in XAMPP
2. Open phpMyAdmin
3. Import the SQL files
4. Import and execute the `library.sql` file

---

# Project Structure

```text
university-library-db/
│
├── README.md
├── library.sql
├── DB Project.pdf
└── library_erd.png
```

---

# Author

Dania
