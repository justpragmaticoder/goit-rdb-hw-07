### 1. Напишіть SQL-запит, який для таблиці orders з атрибута date витягує рік, місяць і число. Виведіть на екран їх у три окремі атрибути поряд з атрибутом id та оригінальним атрибутом date (всього вийде 5 атрибутів). START ###

SELECT
    id,
    DATE_FORMAT(order_date, '%Y') AS year,
    DATE_FORMAT(order_date, '%m') AS month,
    DATE_FORMAT(order_date, '%d') AS day,
    order_date AS original_date
FROM
    orders;

### END ###

### 2. Напишіть SQL-запит, який для таблиці orders до атрибута date додає один день. На екран виведіть атрибут id, оригінальний атрибут date та результат додавання. START ###

SELECT
    id,
    order_date AS original_date,
    DATE_ADD(order_date, INTERVAL 1 DAY) AS date_plus_one_day
FROM
    orders;

### END ###

### 3. Напишіть SQL-запит, який для таблиці orders для атрибута date відображає кількість секунд з початку відліку (показує його значення timestamp). Для цього потрібно знайти та застосувати необхідну функцію. На екран виведіть атрибут id, оригінальний атрибут date та результат роботи функції. START ###

SELECT
    id,
    order_date AS original_date,
    UNIX_TIMESTAMP(order_date) AS timestamp_seconds
FROM
    orders;

### END ###

### 4. Напишіть SQL-запит, який рахує, скільки таблиця orders містить рядків з атрибутом date у межах між 1996-07-10 00:00:00 та 1996-10-08 00:00:00. START ###

SELECT
    COUNT(*) AS total_rows
FROM
    orders
WHERE
    order_date >= '1996-07-10 00:00:00' AND order_date < '1996-10-08 00:00:00';

### END ###

### 5. Напишіть SQL-запит, який для таблиці orders виводить на екран атрибут id, атрибут date та JSON-об’єкт {"id": <атрибут id рядка>, "date": <атрибут date рядка>}. Для створення JSON-об’єкта використайте функцію. START ###

SELECT
    id,
    order_date,
    JSON_OBJECT('id', id, 'date', order_date) AS json_object
FROM
    orders;

### END ###