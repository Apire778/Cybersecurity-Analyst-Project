##Complete the query to perform an inner join between the machines and employees tables on the device_id column. Replace X and Y with this column name:
SELECT * 
FROM machines 
INNER JOIN employees ON machines.device_id = employees.device_id;

##Return more data
SELECT * 
FROM machines 
LEFT JOIN employees ON machines.device_id = employees.device_id;

##Run the following SQL query to connect the machines and employees tables through a right join. 
SELECT * 
FROM machines 
RIGHT JOIN employees ON machines.device_id = employees.device_id;

##Retrieve login attempt data
SELECT * 
FROM employees 
INNER JOIN log_in_attempts ON employees.username = log_in_attempts.username;

