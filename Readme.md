# University Database Setup

This project involves setting up a university database with tables for students, attendance records, class venues, and teachers. The SQL script includes table creation, data insertion, and various alterations to enforce constraints and relationships.

## Database Structure

### Tables

1. **Student**
   - Attributes: `Rollnum`, `Name`, `Gender`, `Phone`
   - Stores student information.

2. **Attendance**
   - Attributes: `Rollnum`, `Datee`, `Statuss`, `ClassVenue`
   - Tracks attendance records for students.

3. **ClassVenue**
   - Attributes: `ID`, `Building`, `RoomNum`, `Teacher`
   - Details about the location and teacher of the class.

4. **Teacher**
   - Attributes: `Name`, `Designation`, `Department`
   - Information about teachers.

## Key Operations

1. **Data Insertion**
   - Populating tables with initial data for students, attendance, class venues, and teachers.

2. **Table Alterations**
   - Adding primary keys and foreign key constraints.
   - Modifying table structures (e.g., adding new columns, removing columns).

3. **Data Manipulation**
   - Inserting, updating, and deleting records to manage the database.

4. **Constraints**
   - Adding unique and check constraints to ensure data integrity.

## Sample Queries

- Retrieve all student records.
- Retrieve all attendance records.
- Retrieve all class venue details.
- Retrieve all teacher information.

## How to Use

1. **Create Database and Tables**
   - Run the provided SQL script to create the database and tables.

2. **Insert Initial Data**
   - Insert sample data into the tables as shown in the script.

3. **Modify and Query Data**
   - Perform data modifications and queries to interact with the database.

This setup provides a foundation for managing university-related data with a structured and relational approach. The script ensures the integrity and consistency of the data through various constraints and relationships.
