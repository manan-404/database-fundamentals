# MongoDB

This folder contains MongoDB practice from the 4th semester 
Advanced Database Management Systems (ADBMS) course.

All queries are written in the **MongoDB Shell (mongosh)** and 
tested against the `sample_mflix` database and custom collections
used in lab exercises.

## Folder Structure

| Folder | Concepts Covered |
|--------|-----------------|
| 01_basics | insertOne, insertMany, find, update operators, delete, drop |
| 02_query_operators | $gt, $lt, $and, $or, $in, $nin, $exists, $type, $expr, $regex |
| 03_indexes | Single, compound, unique, sparse, TTL, text indexes, explain |
| 04_aggregation | $match, $group, $unwind, $lookup, $filter, $sortArray, $project |
| 05_transactions_schema | Multi-document transactions, JSON schema validation, collMod |

## Key Differences from SQL

| SQL | MongoDB |
|-----|---------|
| Table | Collection |
| Row | Document |
| Column | Field |
| JOIN | $lookup |
| WHERE | $match |
| GROUP BY | $group |
| INDEX | createIndex |
| VIEW | No direct equivalent |
| Transaction | Session-based transaction |
