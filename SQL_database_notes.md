# SQL Database Notes

### What are SQL databases?
They are relational database management systems (RDBMS) that store and manage data in structured formats using tables. These databases use SQL to define, manipulate, retrieve and control access to the data

### Key features of SQL databases
1. **Structured Data Storage**
    - Data is organised into tables with predefined schemas (columns and data types)
2. **Relational Model**
    - Tables can be related to each other using primary keys and foreign keys
3. **ACID Compliance**
    - Atomicity - Transactions are all-or-nothing
    - Consistency - Data remains valid before and after transactions
    - Isolation - Concurrent transactions don't interfere
    - Durability - Data persists even after system failures
4. **Scalability**
    - Traditionally scales vertically (increasing server resources), some modern SQL databases support horizontal scaling

### Popular SQL Databases
1. **MySQL**
    - Open-source, widely used in web applications
    - Strong support for read-heavy workloads
    - Used by Facebook, Twitter
2. **PostgreSQL**
    - Advanced open-source database
    - Strong ACID compliance
    - Supports complex queries, JSON, and extensibility
    - Used by Apple, Instagram
3. **Microsoft SQL Server**
    - Integrats with .NET
4. **Oracle Database**
    - High-performance and feature-rich
    - Supports PL/SQL (procedural SQL)
5. **SQLite**
    - Lightweight, serverless, and self-contained database
    - Ideal for mobile apps and small-scale applications

### Advantages of SQL Databases
- Reliable and consistent (ACID compliance)
- Supports complex queries and data relationships
- Industry-standard for structured data
- Strong security and role-based access control

### Disadvantages of SQL Databases
- Les flexible for unstructured data
- Scaling horizontally is complex
- Rigid schema requires careful planning


### What is a Primary Key?
A column (or a set of columns) in a table that uniquely identifies each row and ensures that no two rows have the same value for that column

### Key Characteristics of a Primary Key
1. Unique
2. Non-nullable
3. One per Table
4. *Optional* Auto-increment

### What is a Foreign Key?
Establishes relationships between tables, references a primary key in another table

### Normalisation
- 1st Normal Form (1NF) - Remove duplicate columns
- 2nd Normal Form (2NF) - Ensure every column depends on the primary key
- 3rd Normal Form (3NF) - Remove transitive dependencies (no indirect relationships)