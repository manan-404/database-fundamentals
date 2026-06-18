-- Extract the last word of an address by reversing the string
SELECT 
    street_address, 
    RIGHT(street_address, INSTR(REVERSE(street_address), ' ') - 1) AS "Last Word"
FROM locations;
