# Celtics25 Database Project Overview
- In our ITE140 Final Project, we were supposed to:
- Create a database with certain requirements.
- We created our database in a PostGreSQL server.
- The goal of the project was to create a presentable SQL database that would connect to an Excel file to be easily viewed.

> In my project, I created a database for the starting five Boston Celtics players for the 2024-25 season. I had a table containing the players, and then varying tables containing information about each player.

## Step 1: ER Diagram Creation
- In this project, I was required to:
- Have at least 5 tables 
- Have one many-to-many relationship,
- Create my database in 3NF (third normal form).
- I used LucidChart to create my ER Diagram.
[Celtics25ERDiagram](Celtics25ER.png)

## Step 2: Create My SQL Script
- Next, we were to create an SQL script based on our ER diagram.
- This SQL script had to be idempotent, meaning you could run it over and over without any issues.
- The SQL script had to create the tables, insert their respective data, and create at least one view for the tables.
[Celtics25SQL](Celtics25SQL.sql)

## Step 3: Python Extraction Script
- For many people, it is difficult to read SQL databases in an efficient manner.
- To fix this, I used a Python script to extract the data from my tables and write them on to a Microsoft Excel file.
- The output file is then opened in Excel using a PowerQuery, which acts like a regular Excel table that can be refreshed each time you run the Python script.
[Celtics25PythonScript](SQLtoExcelCeltics25.py)

## Step 4: Finalize Excel Data
- Finally, we made a PivotTable and PivotChart on Excel.
- The table and chart can be used to look at the data more efficiently and to see data in different ways, quickly.
[Celtics25ExcelFile](PivotChartandTableForCeltics25.xlsx)