-- CURRENT_DATE / CURDATE: returns today's date (no time)
SELECT CURRENT_DATE() AS "Today (No Time)";
SELECT CURDATE() AS "Today (Shorthand)";

-- NOW: returns current date AND time
SELECT NOW() AS "Right Now (Date + Time)";

-- CURTIME: returns current time only
SELECT CURTIME() AS "Current Time";
