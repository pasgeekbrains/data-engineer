Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»

1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
update users
  set created_at = now()
    , updated_at = now();
commit;    




2. Таблица users была неудачно спроектирована. 
   Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
   Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
   
create table t (created_at varchar(20),  updated_at varchar(20));

insert into t(created_at, updated_at ) values ('20.10.2017 8:10', '20.10.2020 3:10');
alter table t ADD d_created_at TIMESTAMP;
alter table t ADD d_updated_at TIMESTAMP;
update t 
  set d_created_at = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i')
    , d_updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i');
    
ALTER TABLE t DROP COLUMN created_at;    
ALTER TABLE t DROP COLUMN updated_at;    
ALTER TABLE t CHANGE d_created_at created_at TIMESTAMP;
ALTER TABLE t CHANGE d_updated_at updated_at TIMESTAMP;   


3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
   если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким 
   образом, чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех 

select r.*     
  from (
        select 0 as value 
        union all 
        select 2500
        union all 
        select 0
        union all 
        select 30
        union all 
        select 500
        union all 
        select 1500
      ) r
  order by IF(r.value = 0, 99999999, r.value)
  
4. (по желанию) 
Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
Месяцы заданы в виде списка английских названий (may, august)

select r.*
  from (
        select str_to_date('01.03.1980', '%d.%m.%Y') birthday
        union all 
        select str_to_date('12.08.1973', '%d.%m.%Y') 
        union all 
        select str_to_date('03.05.1986', '%d.%m.%Y') 
        union all 
        select str_to_date('17.08.2000', '%d.%m.%Y') 
        union all 
        select str_to_date('25.07.2003', '%d.%m.%Y') 
       ) r
 where lower(DATE_FORMAT(birthday, '%M')) in ('may', 'august')



5. (по желанию) 
Из таблицы catalogs извлекаются записи при помощи запроса. 
SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.

select *
  from (
        select 1 id
        union all
        select 5 id
        union all
        select 2 id
        union all
        select 3 id
      ) r
 where r.id in (5, 1, 2)    
 order by IF(r.id = 5, 0, r.id); 
 
 
 
 -------------------------------------------
 
Практическое задание теме «Агрегация данных»
 
1. Подсчитайте средний возраст пользователей в таблице users.
select avg
      (
         (YEAR(CURRENT_DATE) - YEAR(birthday)) -                            
         (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthday, '%m%d'))
       ) AS avg_age
  from (
        select str_to_date('01.03.1980', '%d.%m.%Y') birthday
        union all 
        select str_to_date('12.08.1973', '%d.%m.%Y') 
        union all 
        select str_to_date('03.05.1986', '%d.%m.%Y') 
        union all 
        select str_to_date('17.08.2000', '%d.%m.%Y') 
        union all 
        select str_to_date('25.07.2003', '%d.%m.%Y') 
       ) r


2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, а не года рождения.
select count(*)
     , dayofweek
      (
         str_to_date(
           CONCAT(CONCAT(CONCAT(CONCAT(DAY(birthday), '.'), MONTH(birthday)), '.'), YEAR(CURRENT_DATE)), '%d.%m.%Y')
       ) day_of_week
  from (
        select str_to_date('01.03.1980', '%d.%m.%Y') birthday
        union all 
        select str_to_date('12.08.1973', '%d.%m.%Y') 
        union all 
        select str_to_date('03.05.1986', '%d.%m.%Y') 
        union all 
        select str_to_date('17.08.2000', '%d.%m.%Y') 
        union all 
        select str_to_date('25.07.2003', '%d.%m.%Y') 
       ) r
  group by day_of_week
  

3.(по желанию) Подсчитайте произведение чисел в столбце таблицы.
select round(exp(sum(ln(r.id))), 0)
  from (
        select 1 id
        union all
        select 5 id
        union all
        select 2 id
        union all
        select 3 id
      ) r  
