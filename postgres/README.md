# Data Modeling with Postgres
## Description 
Design and implement a star schema using Postgres and build an ETL pipeline using Python. The data modelling aspect consists of one fact table with multiple dimension tables with a particular analytic focus to allow fast retrieval of data.

A startup called Sparkify wants to analyze the data they've been collecting on songs and user activity on their new music streaming app. The analytics team is particularly interested in understanding what songs users are listening to. Currently, they don't have an easy way to query their data, which resides in a directory of JSON logs on user activity on the app, as well as a directory with JSON metadata on the songs in their app.

They'd like a data engineer to create a Postgres database with tables designed to optimize queries on song play analysis. The goal is to create a database schema and ETL pipeline for this analysis.

## Steps
- Run create_tables.py from terminal or python console to set up database and tables.
- Run etl.py from terminal or console to process and load data into database.
