													-- Window functions

-- Window functions in SQL are a type of analytical function that perform calculations across a set of rows that are related to the current row, 
-- called a "window". 
-- A window function calculates a value for each row in the result set based on a subset of the rows that are defined by a window specification.

-- The window specification is defined using the OVER() clause in SQL, 
-- which specifies the partitioning and ordering of the rows that the window function will operate on. 
-- The partitioning divides the rows into groups based on a specific column or expression, while the ordering defines the order in 
-- which the rows are processed within each group.

create database if not exists college;
use college ;
CREATE TABLE `student_marks` (
  `student_id` int(2) DEFAULT NULL,
  `name` varchar(8) DEFAULT NULL,
  `branch` varchar(4) DEFAULT NULL,
  `marks` int(2) DEFAULT NULL
);

INSERT INTO `student_marks` (`student_id`, `name`, `branch`, `marks`) VALUES
(1, 'Nitish', 'EEE', 82),
(2, 'Rishabh', 'EEE', 91),
(3, 'Anukant', 'EEE', 69),
(4, 'Rupesh', 'EEE', 55),
(5, 'Shubham', 'CSE', 78),
(6, 'Ved', 'CSE', 43),
(7, 'Deepak', 'CSE', 98),
(8, 'Arpan', 'CSE', 95),
(9, 'Vinay', 'ECE', 95),
(10, 'Ankit', 'ECE', 88),
(11, 'Anand', 'ECE', 81),
(12, 'Rohit', 'ECE', 95),
(13, 'Prashant', 'MECH', 75),
(14, 'Amit', 'MECH', 69),
(15, 'Sunny', 'MECH', 39),
(16, 'Gautam', 'MECH', 51),
(17, 'Abhi', 'EEE', 1);

