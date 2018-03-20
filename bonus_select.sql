#- get all information for all products that have been sold
SELECT * FROM bonus AS 'Bonus-1';

#- get all information for all products that are over 100
SELECT 'Get all information for all products that are over 100' AS 'Bonus-2';
SELECT * FROM BONUS
WHERE sales > 100;

#- get the name and sold status information for the ps3 product
SELECT 'Get the name and sold status information for the ps3 product' AS 'Bonus-3';
SELECT * FROM BONUS
WHERE product = 'ps3';

#- get the price for the dog
SELECT 'Get the price for the dog' AS 'Bonus-4';
SELECT * FROM BONUS
WHERE product = 'dog'

#- get the sold status for all products over 199

SELECT 'Get get the sold status for all products over 199' AS 'Bonus-5';
SELECT * FROM BONUS
WHERE sales > 199;


