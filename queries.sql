-- write your queries here

SELECT * FROM owners own FULL OUTER JOIN vehicles vehicle ON own.id = vehicle.owner_id; 

SELECT first_name, last_name, COUNT(owner_id) as co FROM owners own JOIN vehicles vehicle on own.id= vehicle.owner_id 
GROUP BY (first_name,last_name) ORDER BY co ASC;

SELECT first_name, last_name, ROUND(AVG(price)) as average_price, COUNT(owner_id) FROM owners own JOIN vehicles vehicle on own.id=vehicle.owner_id
GROUP BY (first_name,last_name) HAVING COUNT(owner_id) > 1 AND average_price > 10000 ORDER BY first_name DESC;