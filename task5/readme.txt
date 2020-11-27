������������ ������� �� ���� ����������, ����������, ���������� � �����������

1. ����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������.
update users
  set created_at = now()
    , updated_at = now();
commit;    




2. ������� users ���� �������� ��������������. 
   ������ created_at � updated_at ���� ������ ����� VARCHAR � � ��� ������ ����� ���������� �������� � ������� 20.10.2017 8:10. 
   ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.
   
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


3. � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����: 0, 
   ���� ����� ���������� � ���� ����, ���� �� ������ ������� ������. ���������� ������������� ������ ����� 
   �������, ����� ��� ���������� � ������� ���������� �������� value. ������ ������� ������ ������ ���������� � �����, ����� ���� 

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
  
4. (�� �������) 
�� ������� users ���������� ������� �������������, ���������� � ������� � ���. 
������ ������ � ���� ������ ���������� �������� (may, august)

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



5. (�� �������) 
�� ������� catalogs ����������� ������ ��� ������ �������. 
SELECT * FROM catalogs WHERE id IN (5, 1, 2); ������������ ������ � �������, �������� � ������ IN.

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
 
������������ ������� ���� ���������� �������
 
1. ����������� ������� ������� ������������� � ������� users.
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


2. ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. 
������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.
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
  

3.(�� �������) ����������� ������������ ����� � ������� �������.
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
