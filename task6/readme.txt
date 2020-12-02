-- ДЗ

-- 1. Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки и/или улучшения (JOIN пока не применять).
-- Думаю, поиск списка друзей пользователя 1 с указанием пола и возраста нужно переписать вот так. Тогда задействуем индексы, выборка будет быстрее
select  
	firstname,
	lastname,
	timestampdiff(year, birthday, now()) as age,
	case(gender)
		when 'm' then 'Мужчина'
		when 'f' then 'Женщина'
	end as 'gender'
from users 
 where id in (
                 select initiator_user_id as friend_id from friend_requests where target_user_id = 1 and status = 'approved'
		 union all
	         select target_user_id as friend_id  from friend_requests where initiator_user_id = 1 and status = 'approved'
              )




-- 2. Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем
select (select concat(firstname, ' ', lastname) from users where id = m.from_user_id) from_user,
       count(*) as total_msg 
  from messages m
 where from_user_id in (
 			select initiator_user_id from friend_requests where target_user_id = 30 and status = 'approved'
			union all
      			select target_user_id from friend_requests where initiator_user_id = 30 and status = 'approved'
                       ) 
group by m.from_user_id 
order by total_msg desc limit 1;

-- 3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
select r.user_id
     , (select timestampdiff(year, birthday, now()) as age from users u where u.id = r.user_id) age
     , r.like_count
  from (
	select p.user_id 
	     , sum((select count(*) from likes_posts lp where lp.post_id = p.id)) as like_count
	  from post p
         group by p.user_id  
       ) r
  order by age limit 10

-- 4. Определить кто больше поставил лайков (всего) - мужчины или женщины?
select k.gender
     , sum(k.like_count) like_count
  from (
	select (select u.gender as age from users u where u.id = r.user_id) gender
	     , r.like_count
	  from (
		select lp.user_id 
		     , count(*) as like_count
		  from likes_posts lp
	         group by lp.user_id  
	       ) r
        ) k
 where k.gender is not null
 group by k.gender
 order by like_count desc limit 1;


-- 4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
select t.user_id
     , sum(t.like_count) as like_count
  from (
	select lp.user_id 
	     , count(*) as like_count
          from likes_posts lp
	 group by p.user_id  

	union all 

        -- Учтем тех, кто вообще не лайкал
	select u.id
	     , 0 like_count
	  from users u
     ) t
  group by t.user_id
  order by r.like_count limit 10







