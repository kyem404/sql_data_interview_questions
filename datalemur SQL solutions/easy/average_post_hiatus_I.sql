select user_id,
max(post_date::date) - min(post_date::date) as days_between
from posts
where date_part('year', post_date::date) = 2021
group by user_id
having count(post_id)>1;
