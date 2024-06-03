-- EJERCICIO 1
SELECT flight_id
FROM flights
WHERE status = 'On Time';

-- EJERCICIO 2
SELECT *
FROM bookings
WHERE total_amount >= 1000000

-- EJERCICIO 3
SELECT *
FROM aircrafts_data

-- EJERCICIO 4
SELECT flight_id
FROM flights
WHERE aircraft_code = '733';

-- EJERCICIO 5
SELECT *
FROM tickets
WHERE passenger_name LIKE 'IRINA%';
-- El operador % en SQL se usa para indicar cualquier cadena de cero o más caracteres

-- EJERCICIO 6
