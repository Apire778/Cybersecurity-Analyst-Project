-- Retrieve all failed login attempts
SELECT * FROM log_in_attempts WHERE success = 0;

-- Count failed attempts per username
SELECT username, COUNT(*) AS failed_attempts
FROM log_in_attempts
WHERE success = 0
GROUP BY username;

##Output
+--------------+------------------+----------------+---------------+-------------+

| device_id    | operating_system | email_client   | OS_patch_date | employee_id |

+--------------+------------------+----------------+---------------+-------------+

| a184b775c707 | OS 1             | Email Client 1 | 2021-09-01    |        1156 |

| a192b174c940 | OS 2             | Email Client 1 | 2021-06-01    |        1052 |

| a305b818c708 | OS 3             | Email Client 2 | 2021-06-01    |        1182 |

| a317b635c465 | OS 1             | Email Client 2 | 2021-03-01    |        1130 |

| a320b137c219 | OS 2             | Email Client 2 | 2021-03-01    |        1000 |

|...           |                  |                |               |             |

+--------------+------------------+----------------+---------------+-------------+
