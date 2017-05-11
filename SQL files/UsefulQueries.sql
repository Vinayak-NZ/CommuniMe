
-- These are some good Sample queries 
select p.place_name_text,s.suburb_name_text, place_information_type_text, pi.place_information_text 
from suburb s
JOIN place_suburb ps on  s.suburb_id= ps.suburb_id
JOIN place p on ps.place_id= p.place_id
JOIN place_information pi on p.place_id = pi.place_id
JOIN place_information_type pit on pi.place_information_type_id = pit.place_information_type_id
WHERE place_type_id=9
order by p.place_id
;

select p.place_name_text,s.suburb_name_text, pi.place_information_text 
from suburb s
JOIN place_suburb ps on  s.suburb_id= ps.suburb_id
JOIN place p on ps.place_id= p.place_id
JOIN place_information pi on p.place_id = pi.place_id
JOIN place_information_type pit on pi.place_information_type_id = pit.place_information_type_id
WHERE place_information_type_text ='reserve type'
;



select suburb_name_text
,Place_type_text
      ,count(*)
from suburb s
JOIN place_suburb ps on  s.suburb_id= ps.suburb_id
JOIN place p on ps.place_id= p.place_id
JOIN place_type pt on p.place_type_id =pt.place_type_id 
group by suburb_name_text,Place_type_text
order by suburb_name_text;


select suburb_name_text
,classification_text
      ,count(*) as 'count'
from suburb s
JOIN place_suburb ps on  s.suburb_id= ps.suburb_id
JOIN place p on ps.place_id= p.place_id
JOIN place_type pt on p.place_type_id =pt.place_type_id 
JOIN place_type_classification ptc on pt.place_type_id =ptc.place_type_id
JOIN classification c on ptc.classification_id = c.classification_id 
group by suburb_name_text,classification_text
order by suburb_name_text;



SELECT * FROM place p
where not exists (select 1 from 
suburb s
JOIN place_suburb ps on  s.suburb_id= ps.suburb_id
where ps.place_id= p.place_id);