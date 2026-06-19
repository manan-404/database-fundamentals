-- Get the last day of the current month and the month 3 months ago
SELECT 
    DATE_FORMAT(LAST_DAY(CURRENT_DATE), "%W") AS "Last Day of Month",
    DATE_FORMAT(ADDDATE(CURRENT_DATE, INTERVAL -3 MONTH), "%M") AS "3 Months Ago";

-- Get current day of the week
SELECT DATE_FORMAT(CURRENT_DATE(), "%W") AS "Today's Weekday";
