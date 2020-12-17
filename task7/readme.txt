-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
select *
  from users u
 where exists (select 1 from orders o where o.user_id = u.id ) 

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

select c.name as catalog_name
       , p.name as product_name
    from products p
         join catalogs c on (c.id = p.catalog_id)
  order by 1,2


-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
      Поля from, to и label содержат английские названия городов, поле name — русское. 
      Выведите список рейсов flights с русскими названиями городов.

select c_from.name as from_city
     , c_to.name as to_city
  from flights f
       join cities c_from on (c_from.label = f.from)
       join cities c_to on (c_to.label = f.to)