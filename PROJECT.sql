-- Create the database
CREATE DATABASE IF NOT EXISTS EmployeeManagement;
USE EmployeeManagement;
-- Create the Department table
CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
DepartmentName VARCHAR(50) NOT NULL,
Location VARCHAR(50),
HeadOfDepartment VARCHAR(50),
AnnualBudget DECIMAL(10, 2)
);
-- Create the Employee table
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DepartmentID INT,
Salary DECIMAL(10, 2),
DateOfJoining DATE,
Email VARCHAR(100),
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
-- Insert records into Departments table
INSERT INTO Departments (DepartmentName, Location, HeadOfDepartment, AnnualBudget)
VALUES
('HR', 'Pune', 'Raj Sharma', 500000),
('Finance', 'Mumbai', 'Sneha Gupta', 1000000),
('IT', 'Bangalore', 'Anil Kumar', 1500000),
('Sales', 'Delhi', 'Priya Singh', 1200000),
('Operations', 'Pune', 'Ravi Patil', 900000),
('Admin', 'Chennai', 'Geeta Reddy', 400000),
('Legal', 'Hyderabad', 'Amit Desai', 600000),
('Logistics', 'Mumbai', 'Nisha Joshi', 700000),
('Research', 'Bangalore', 'Vikram Roy', 2000000),
('Support', 'Pune', 'Arun Kumar', 800000);
-- Insert records into Employees table
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, DateOfJoining, Email)
('Tina', 'Gupta', 2, 58000, '2021-06-28', 'tina.gupta@example.com'),
('Aditya', 'Kumar', 3, 72000, '2020-09-05', 'aditya.kumar@example.com'),
('Simran', 'Pawar', 4, 52000, '2019-11-08', 'simran.pawar@example.com'),
('Sanjay', 'Deshmukh', 5, 56000, '2023-05-30', 'sanjay.deshmukh@example.com'),
('Anjali', 'Joshi', 6, 51000, '2022-08-17', 'anjali.joshi@example.com'),
('Ramesh', 'Roy', 7, 74000, '2020-04-16', 'ramesh.roy@example.com'),
('Preeti', 'Sharma', 8, 49000, '2023-12-05', 'preeti.sharma@example.com'),
('Ankur', 'Patil', 9, 66000, '2021-07-13', 'ankur.patil@example.com'),
('Meera', 'Reddy', 10, 61000, '2020-10-20', 'meera.reddy@example.com'),
('Vikas', 'Shah', 1, 49000, '2022-04-04', 'vikas.shah@example.com'),
('Neeta', 'Gupta', 2, 60000, '2021-09-09', 'neeta.gupta@example.com'),
('Ashish', 'Kumar', 3, 74000, '2020-12-01', 'ashish.kumar@example.com'),
('Ritu', 'Pawar', 4, 53000, '2019-10-24', 'ritu.pawar@example.com'),
('Santosh', 'Deshmukh', 5, 58000, '2023-02-18', 'santosh.deshmukh@example.com'),
('Lata', 'Joshi', 6, 52000, '2022-11-29', 'lata.joshi@example.com'),
('Arjun', 'Roy', 7, 71000, '2020-07-04', 'arjun.roy@example.com'),
('Kiran', 'Sharma', 8, 50000, '2023-03-10', 'kiran.sharma@example.com'),
('Mohit', 'Patil', 9, 67000, '2021-11-11', 'mohit.patil@example.com'),
('Naina', 'Reddy', 10, 63000, '2020-02-14', 'naina.reddy@example.com');
VALUES
('Ravi', 'Sharma', 1, 45000, '2022-05-20', 'ravi.sharma@example.com'),
('Priya', 'Patil', 2, 60000, '2021-03-15', 'priya.patil@example.com'),
('Amit', 'Kumar', 3, 75000, '2020-01-10', 'amit.kumar@example.com'),
('Sneha', 'Desai', 4, 50000, '2019-07-22', 'sneha.desai@example.com'),
('Nisha', 'Joshi', 5, 55000, '2023-08-01', 'nisha.joshi@example.com'),
('Raj', 'Verma', 6, 48000, '2022-09-14', 'raj.verma@example.com'),
('Anil', 'Roy', 7, 70000, '2020-02-20', 'anil.roy@example.com'),
('Vikram', 'Chauhan', 8, 45000, '2023-06-11', 'vikram.chauhan@example.com'),
('Arun', 'Khan', 9, 65000, '2021-12-03', 'arun.khan@example.com'),
('Geeta', 'Reddy', 10, 62000, '2020-11-10', 'geeta.reddy@example.com'),
('Rohit', 'Sharma', 1, 46000, '2022-03-25', 'rohit.sharma@example.com'),
('Pooja', 'Mehta', 2, 59000, '2021-05-17', 'pooja.mehta@example.com'),
('Karan', 'Jain', 3, 73000, '2020-08-10', 'karan.jain@example.com'),
('Smita', 'Pawar', 4, 51000, '2019-09-14', 'smita.pawar@example.com'),
('Neha', 'Deshmukh', 5, 57000, '2023-10-19', 'neha.deshmukh@example.com'),
('Rahul', 'Joshi', 6, 50000, '2022-07-07', 'rahul.joshi@example.com'),
('Ajay', 'Roy', 7, 72000, '2020-03-25', 'ajay.roy@example.com'),
('Sunita', 'Sharma', 8, 48000, '2023-11-21', 'sunita.sharma@example.com'),
('Akshay', 'Patil', 9, 68000, '2021-01-15', 'akshay.patil@example.com'),
('Isha', 'Reddy', 10, 64000, '2020-06-12', 'isha.reddy@example.com'),
('Vivek', 'Shah', 1, 47000, '2022-02-23', 'vivek.shah@example.com'),

-- 1]- Situational Questions on INSERT
-- Situation -1
# We have hired two employees, Siddharth Gupta (email: siddharth.gupta@example.com, salary: ₹70,000, DOJ: 2024-01-01) 
#and Aarav Jain (email: aarav.jain@example.com, salary: ₹72,000, DOJ: 2024-01-02), in the IT department (DepartmentID: 3). Add these records.
INSERT INTO Employees (Name, Email, Salary, DOJ, DepartmentID)
VALUES 
('Siddharth Gupta', 'siddharth.gupta@example.com', 70000, '2024-01-01', 3),
('Aarav Jain', 'aarav.jain@example.com', 72000, '2024-01-02', 3);

-- Situation -2
-- The Marketing department has been created (DepartmentID: 11) with a budget of ₹13,00,000, located in Pune, and headed by Rakesh Mehta. Add this department.
INSERT INTO Departments (DepartmentID, Name, Budget, Location, Head)
VALUES 
(11, 'Marketing', 1300000, 'Pune', 'Rakesh Mehta');

-- Situation -3
-- Three employees have been hired for the Marketing department (DepartmentID: 11): Rahul Mehra (email: rahul.mehra@example.com, salary: 
-- ₹58,000, DOJ: 2024-01-10), Sara Kapoor (email: sara.kapoor@example.com, salary: ₹62,000, DOJ: 2024-01-11), and Nitin Shah 
-- (email: nitin.shah@example.com, salary: ₹60,000, DOJ: 2024-01-12). Add these records.
INSERT INTO Employees (Name, Email, Salary, DOJ, DepartmentID)
VALUES 
('Rahul Mehra', 'rahul.mehra@example.com', 58000, '2024-01-10', 11),
('Sara Kapoor', 'sara.kapoor@example.com', 62000, '2024-01-11', 11),
('Nitin Shah', 'nitin.shah@example.com', 60000, '2024-01-12', 11);

-- Situation -4
-- Two employees have been hired for the HR department (DepartmentID: 1): Riya Sharma (email: riya.sharma@example.com, salary: ₹50,000, DOJ: 2024-02-01)
-- and Mohit Desai (email: mohit.desai@example.com, salary: ₹55,000, DOJ: 2024-02-02). Add these records.
INSERT INTO Employees (Name, Email, Salary, DOJ, DepartmentID)
VALUES 
('Riya Sharma', 'riya.sharma@example.com', 50000, '2024-02-01', 1),
('Mohit Desai', 'mohit.desai@example.com', 55000, '2024-02-02', 1);

-- Situation -5
-- Sneha Rao (email: sneha.rao@example.com) has joined the Finance department (DepartmentID: 2) on 2024-02-15 with a salary of ₹60,000. Add this record.
INSERT INTO Employees (Name, Email, Salary, DOJ, DepartmentID)
VALUES 
('Sneha Rao', 'sneha.rao@example.com', 60000, '2024-02-15', 2);

-- Situation -6
-- Three employees have been hired for the Legal department (DepartmentID: 7): Aditya Malhotra (email: aditya.malhotra@example.com, salary: 
-- ₹65,000, DOJ: 2024-03-01), Priyanka Kapoor (email: priyanka.kapoor@example.com, salary: ₹67,000, DOJ: 2024-03-02), and Kunal Singh 
-- (email: kunal.singh@example.com, salary: ₹68,000, DOJ: 2024-03-03). Add these records.
INSERT INTO Employees (Name, Email, Salary, DOJ, DepartmentID)
VALUES 
('Aditya Malhotra', 'aditya.malhotra@example.com', 65000, '2024-03-01', 7),
('Priyanka Kapoor', 'priyanka.kapoor@example.com', 67000, '2024-03-02', 7),
('Kunal Singh', 'kunal.singh@example.com', 68000, '2024-03-03', 7);

-- Situation -7
-- The Research department (DepartmentID: 12) has been created with a budget of ₹20,00,000, located in Hyderabad, and headed by Dr. Meera Joshi.
-- Add this department.
INSERT INTO Departments (DepartmentID, Name, Budget, Location, Head)
VALUES 
(12, 'Research', 2000000, 'Hyderabad', 'Dr. Meera Joshi');

-- Situation -8
-- Two employees have been hired for the Research department (DepartmentID: 12): Arjun Shah (email: arjun.shah@example.com, salary: ₹75,000, DOJ: 2024-04-01)
-- and Riya Patel (email: riya.patel@example.com, salary: ₹72,000, DOJ: 2024-04-02). Add these records.
INSERT INTO Employees (Name, Email, Salary, DOJ, DepartmentID)
VALUES 
('Arjun Shah', 'arjun.shah@example.com', 75000, '2024-04-01', 12),
('Riya Patel', 'riya.patel@example.com', 72000, '2024-04-02', 12);

-- Situation -9
-- The Logistics department (DepartmentID: 13) has been created with a budget of ₹9,00,000, located in Chennai, and headed by Ravi Verma. Add this department.
INSERT INTO Departments (DepartmentID, Name, Budget, Location, Head)
VALUES 
(13, 'Logistics', 900000, 'Chennai', 'Ravi Verma');

-- Situation -10
-- Two employees have been hired for the Logistics department (DepartmentID: 13): Kavita Desai (email: kavita.desai@example.com, salary: 
-- ₹50,000, DOJ: 2024-05-01) and Amit Jain (email: amit.jain@example.com, salary: ₹52,000, DOJ: 2024-05-02). Add these records.
INSERT INTO Employees (Name, Email, Salary, DOJ, DepartmentID)
VALUES 
('Kavita Desai', 'kavita.desai@example.com', 50000, '2024-05-01', 13),
('Amit Jain', 'amit.jain@example.com', 52000, '2024-05-02', 13);

-- Employee Table
-- Situation -1 We are planning a cybersecurity project. Find all employees working in the IT department (DepartmentID: 3).
SELECT * FROM Employees
WHERE DepartmentID = 3;

-- Situation -2 To organize a corporate event, we need employees who joined after 2024-01-01. Retrieve their details.
SELECT * FROM Employees
WHERE DOJ > '2024-01-01';

-- Situation -3 The finance team is preparing budgets. List all employees whose salary is greater than ₹60,000.
SELECT * FROM Employees
WHERE Salary > 60000;

-- Situation -4 We are sending a company-wide newsletter. Find the details of employees whose email ends with '@example.com'.
SELECT * FROM Employees
WHERE Email LIKE '%@example.com';

-- Situation -5 The Marketing department is launching a new campaign and needs a cost-effective team. Retrieve the details of employees 
-- in the Marketing department (DepartmentID: 11) who earn less than ₹60,000.
SELECT * FROM Employees
WHERE DepartmentID = 11 AND Salary < 60000;

-- Situation -6 A client requires a project lead for their team. Find the employee details where the name starts with 'S'.
SELECT * FROM Employees
WHERE Name LIKE 'S%';

-- Situation -7 For recruitment analysis, retrieve all employees who joined in February 2024.
SELECT * FROM Employees
WHERE DOJ BETWEEN '2024-02-01' AND '2024-02-29';

-- Situation -8 To shortlist mid-level employees, find the details of employees who are earning between ₹50,000 and ₹70,000.
SELECT * FROM Employees
WHERE Salary BETWEEN 50000 AND 70000;

-- Situation -9 We need to identify senior employees. Retrieve the details of employees who joined before 2024-03-01 and earn more than ₹55,000
SELECT * FROM Employees
WHERE DOJ < '2024-03-01' AND Salary > 55000;

-- Situation -10 A special campaign is being planned for team leaders. Find employees who have "Manager" in their name.
SELECT * FROM Employees
WHERE Name LIKE '%Manager%';