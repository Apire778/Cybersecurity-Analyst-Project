##List all organization machines
SELECT device_id, operating_system 
FROM machines;

## Output
200 rows in set (0.028 sec)
+--------------+------------------+
|...                              |
+--------------+------------------+
| device_id    | operating_system |
+--------------+------------------+
| a184b775c707 | OS 1             |
| a192b174c940 | OS 2             |
| a305b818c708 | OS 3             |
| a317b635c465 | OS 1             |
| a320b137c219 | OS 2             |
| a398b471c573 | OS 3             |

## Retrieve a list of the machines with OS 2
SELECT device_id, operating_system 
FROM machines 
WHERE operating_system = 'OS 2';

## Output
| a821b452c176 | OS 2             |
| b157c491d493 | OS 2             |
| b264c773d977 | OS 2             |
|...                              |
+--------------+------------------+
80 rows in set (0.264 sec)


##List employees in specific departments
SELECT * 
FROM employees 
WHERE department = 'Finance';

##Identify employee machines
SELECT *
FROM employees
WHERE office = 'South-109';


##Modify the query you used in the previous step so that it returns information on all the employees in the 'South' building. Use the LIKE operator with % in this query.
  SELECT *
FROM employees
WHERE office LIKE 'South%';

## Filter for login attempts made after a certain date
SELECT *
FROM log_in_attempts
WHERE login_date > '2023-01-15'

##Filter for login attempts made in a certain date range
SELECT *
FROM log_in_attempts
WHERE login_date BETWEEN '2023-02-01' AND '2023-02-07';

##Filter for login attempts made at a certain time
SELECT *
FROM log_in_attempts
WHERE login_time = '09:30:00';


## Filter for login attempts by ID
SELECT *
FROM log_in_attempts
WHERE login_id = 503;

