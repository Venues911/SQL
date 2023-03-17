1) Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd

Select model,speed,hd from pc where price <500
//////////////////////////////////////

2) Найдите производителей принтеров. Вывести: maker 

Select DISTINCT maker from product where type ='Printer'

3) Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.

Select Distinct model, ram, screen 
from Laptop where price > 1000

4) Найдите все записи таблицы Printer для цветных принтеров.

select * from printer where color='y'


5) Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.

Select distinct model, speed, hd from PC where (Pc.cd = '12x'
or PC.cd = '24x') and price < 600


6) Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.

SELECT DISTINCT Product.maker, Laptop.speed
FROM Product JOIN Laptop ON Product.model = Laptop.model
WHERE Laptop.hd >=10


7) Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

SELECT model, price 
FROM PC 
WHERE model IN (SELECT model 
 FROM Product 
 WHERE maker = 'B' AND 
 type = 'PC'
 )
UNION
SELECT model, price 
FROM Laptop 
WHERE model IN (SELECT model 
 FROM Product 
 WHERE maker = 'B' AND 
 type = 'Laptop'
 )
UNION
SELECT model, price 
FROM Printer 
WHERE model IN (SELECT model 
 FROM Product 
 WHERE maker = 'B' AND 
 type = 'Printer'
)

8) Найдите производителя, выпускающего ПК, но не ПК-блокноты.

SELECT DISTINCT maker
  FROM product
   WHERE type = 'pc'
EXCEPT
  SELECT DISTINCT product.maker
   FROM product
    Where type = 'laptop'

9) Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

select distinct product.maker
 from PC
JOIN product ON (pc.model = product.model)
 where pc.speed >= 450

10) SELECT model, price  
FROM Printer  
WHERE price = (SELECT MAX(price) 
               FROM Printer
               )
11) Найдите среднюю скорость ПК. 

select avg(speed) from PC

12 Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

Select AVG(speed) from laptop where price > 1000


13 Найдите среднюю скорость ПК, выпущенных производителем A.

