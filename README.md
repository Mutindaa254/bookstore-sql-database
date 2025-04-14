# 📚 Bookstore SQL Database Project

## Overview

This project simulates the work of a Database Administrator (DBA) tasked with designing and implementing a MySQL database for a **Bookstore**. It offers hands-on experience in database design, table creation, data loading, querying, and access control.

By collaborating on this repository, we will apply database best practices to create a robust system capable of managing large, complex datasets.

---

## 🛠️ Tools and Technologies
- **MySQL** – Core database engine
- **Draw.io** – For database schema diagrams

---

## ✅ Prerequisites
Before contributing, ensure you're familiar with:
- MySQL basics and relational databases
- Creating tables with appropriate data types
- Writing SQL queries (SELECT, JOIN, etc.)
- Managing users and permissions in MySQL

---

## 🎯 Project Objective

To design and build a relational MySQL database that supports the core operations of a bookstore, such as managing:
- Books and authors
- Customers and addresses
- Orders and shipping
- Historical records and statuses

---

## 📂 Directory Structure

| Folder          | Description                                      |
|-----------------|--------------------------------------------------|
| `schema/`       | SQL file for creating tables and diagrams        |
| `data/`         | SQL scripts with sample data for testing         |
| `queries/`      | SQL scripts to test queries and relationships    |
| `access_control/`| Scripts to set up user roles and permissions    |
| `docs/`         | Extra notes, instructions, and planning material |

---

## 🧱 Tables to Implement

- `book`
- `book_author`
- `author`
- `book_language`
- `publisher`
- `customer`
- `customer_address`
- `address_status`
- `address`
- `country`
- `cust_order`
- `order_line`
- `shipping_method`
- `order_history`
- `order_status`

---

## 🚀 bash
bookstore-sql-database/
│
├── README.md
├── schema/
│   ├── bookstore_schema.drawio        # Visual schema diagram
│   └── create_tables.sql              # SQL script to create all tables
│
├── data/
│   └── sample_data.sql                # Sample INSERT statements
│
├── queries/
│   └── test_queries.sql               # Useful SELECT queries for testing
│
├── access_control/
│   └── user_roles.sql                 # User roles and permissions setup
│
└── docs/
    └── project_overview.md           # Extended documentation or notes


