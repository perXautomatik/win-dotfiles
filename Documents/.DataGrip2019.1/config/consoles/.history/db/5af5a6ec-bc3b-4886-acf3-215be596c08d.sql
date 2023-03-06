select count(name), * from urls;
;-- -. . -..- - / . -. - .-. -.--
select * from urls;
;-- -. . -..- - / . -. - .-. -.--
select * from urls q order by count(select x.name from urls x where x.title = q.title group by x.title);
;-- -. . -..- - / . -. - .-. -.--
select *,count(select x.name from urls x where x.title = q.title group by x.title) a from urls q order by a;
;-- -. . -..- - / . -. - .-. -.--
select *, count(
    select name from urls a
    where name = q.name
    group by name) a from urls q order by a;
;-- -. . -..- - / . -. - .-. -.--
select name from urls a
    
    group by name;
;-- -. . -..- - / . -. - .-. -.--
select count(name) count,name from urls a
    
    group by name;
;-- -. . -..- - / . -. - .-. -.--
select count(name) count,name from urls a

    group by name order by count desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       parent,
       urls.name,
       url,
       description,
       status,
       scandate,
       starred,
       date_added,
       username,
       password,
       favicon,
       tags
from (select count(name) count,name from urls a group by name) a
left inner join urls y a.name = y.name

order by count desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       parent,
       urls.name,
       url,
       description,
       status,
       scandate,
       starred,
       date_added,
       username,
       password,
       favicon,
       tags
from (select count(name) count,name from urls a group by name) a
left join urls y on a.name = y.name

order by count desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       parent,
       name,
       url,
       description,
       status,
       scandate,
       starred,
       date_added,
       username,
       password,
       favicon,
       tags
from (select count(name) count,name from urls a group by name) a
left join urls y on a.name = y.name

order by count desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       parent,
       a.name,
       url,
       description,
       status,
       scandate,
       starred,
       date_added,
       username,
       password,
       favicon,
       tags
from (select count(name) count,name from urls a group by name) a
left join urls y on a.name = y.name

order by count desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       parent,
       a.name,
       url,
       description,
       status,
       scandate,
       starred,
       date_added,
       username,
       password,
       favicon,
       tags
from (select count(name) count,name from urls a group by name) a
left join urls y on a.name = y.name

order by count desc,name,url;
;-- -. . -..- - / . -. - .-. -.--
select id,
       parent,
       a.name,
       url,
       description,
       status,
       scandate,
       starred,
       date_added,
       username,
       password,
       favicon,
       tags
from (select count(name) count,name from urls a group by name) a
left join urls y on a.name = y.name

order by count desc,a.name,url;
;-- -. . -..- - / . -. - .-. -.--
select id,
       parent,
       a.name,
       url,
       description,
       status,
       scandate,
       starred,
       date_added,
       username,
       password,
       favicon,
       tags,
       (select count(name) from urls a where a.name = y.name group by name limit 1) count
from
urls y

order by count desc,a.name,url;
;-- -. . -..- - / . -. - .-. -.--
select id,
       parent,
       name,
       url,
       description,
       status,
       scandate,
       starred,
       date_added,
       username,
       password,
       favicon,
       tags,
       (select count(name) from urls a where a.name = y.name group by name limit 1) count
from
urls y

order by count desc,a.name,url;
;-- -. . -..- - / . -. - .-. -.--
select id,
       parent,
       name,
       url,
       description,
       status,
       scandate,
       starred,
       date_added,
       username,
       password,
       favicon,
       tags,
       (select count(name) from urls a where a.name = y.name group by name limit 1) count
from
urls y

order by count desc,name,url;
;-- -. . -..- - / . -. - .-. -.--
select id,
       parent,
       name,
       url,
       description,
       status,
       scandate,
       starred,
       date_added,
       username,
       password,
       favicon,
       tags,
       (select count(name) from urls a where a.name = y.name group by name limit 1) countTitle,
       (select count(url) from urls a where a.url = y.url group by url limit 1) countUrl
from
urls y

order by countTitle desc,name,countUrl,url;
;-- -. . -..- - / . -. - .-. -.--
select 
       name,
       url,
       (select count(name) from urls a where a.name = y.name group by name limit 1) countTitle,
       (select count(url) from urls a where a.url = y.url group by url limit 1) countUrl
from
urls y

order by countTitle desc,name,countUrl desc,url;
;-- -. . -..- - / . -. - .-. -.--
select
       --name,
       --url,
       --(select count(name) from urls a where a.name = y.name group by name limit 1) countTitle
       --,(select count(url) from urls a where a.url = y.url group by url limit 1) countUrl
--from
--urls y

--order by countTitle desc,name
       --,countUrl desc,url
* from urls where name = 'likes';
;-- -. . -..- - / . -. - .-. -.--
update urls set name = 'likes |' & SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) where name = 'likes';
;-- -. . -..- - / . -. - .-. -.--
select
       name,
       url,
       (select count(name) from urls a where a.name = y.name group by name limit 1) countTitle
       --,(select count(url) from urls a where a.url = y.url group by url limit 1) countUrl
from
urls y

order by countTitle desc,name;