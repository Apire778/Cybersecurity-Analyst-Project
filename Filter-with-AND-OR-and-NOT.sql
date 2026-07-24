##Retrieve after hours failed login attempts
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00' AND success = FALSE;

##Retrieve login attempts on specific dates
SELECT * 
FROM log_in_attempts 
WHERE login_date = '2022-05-09' OR login_date = '2022-05-08';

##Retrieve login attempts outside of Mexico
SELECT * 
FROM log_in_attempts 
WHERE NOT country LIKE 'MEX%';

##Retrieve employees in Marketing
SELECT * 
FROM employees 
WHERE department = 'Marketing' AND office LIKE 'East%';

##Retrieve employees in Finance or Sales
SELECT * 
FROM employees 
WHERE department = 'Finance' OR department = 'Sales';

##Retrieve all employees not in IT
SELECT * 
FROM employees 
WHERE NOT department = 'Information Technology';
