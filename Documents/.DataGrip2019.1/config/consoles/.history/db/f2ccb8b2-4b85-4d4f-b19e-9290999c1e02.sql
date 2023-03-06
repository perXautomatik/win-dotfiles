SELECT  *,
       RN = ROW_NUMBER()OVER(PARTITION BY title,url order by url.id)
   FROM main.url;
;-- -. . -..- - / . -. - .-. -.--
SELECT  *,
       ROW_NUMBER()OVER(PARTITION BY title,url order by url.id) rn
   FROM main.url;
;-- -. . -..- - / . -. - .-. -.--
SELECT  *,
       ROW_NUMBER()OVER(PARTITION BY title,url order by domain,weight,url.id) rn
   FROM main.url;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT  *,
       ROW_NUMBER()OVER(PARTITION BY title,url order by domain,weight,url.id) rn
   FROM main.url
)
delete FROM CTE WHERE RN > 1;
;-- -. . -..- - / . -. - .-. -.--
select *
   FROM main.url
 WHERE ROW_NUMBER()OVER(PARTITION BY title,url order by domain,weight,url.id) > 1;
;-- -. . -..- - / . -. - .-. -.--
with urls as (select id, url, title name, weight, new_column, Domain from url limit 100)
select distinct id
from (select id, name, url urlw from urls) w
         join (select url, count(z.name) c from urls z group by url) x on urlw = x.url
where x.c > 1
  --and name in ()
--));
and url in (select url from (select url, count(id) c from urls group by url) op  where c > 1);
;-- -. . -..- - / . -. - .-. -.--
with urls as (select id, url, title name, weight, new_column, Domain from url limit 1000)
select distinct id
from (select id, name, url urlw from urls) w
         join (select url, count(z.name) c from urls z group by url) x on urlw = x.url
where x.c > 1
  --and name in ()
--));
and url in (select url from (select url, count(id) c from urls group by url) op  where c > 1);
;-- -. . -..- - / . -. - .-. -.--
with urls as (select id, url, title name, weight, new_column, Domain from url limit 10000)
select distinct id
from (select id, name, url urlw from urls) w
         join (select url, count(z.name) c from urls z group by url) x on urlw = x.url
where x.c > 1
  --and name in ()
--));
and url in (select url from (select url, count(id) c from urls group by url) op  where c > 1);
;-- -. . -..- - / . -. - .-. -.--
select *,(with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split) from url;
;-- -. . -..- - / . -. - .-. -.--
select *,(with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split) from url_dg_tmp;
;-- -. . -..- - / . -. - .-. -.--
select *,(with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split) from url_dg_tmp where instr(str, '/') > 1;
;-- -. . -..- - / . -. - .-. -.--
select *,(with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split) from url_dg_tmp where instr(url, '/') > 1;
;-- -. . -..- - / . -. - .-. -.--
select *,(with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split where word != '') from url_dg_tmp where instr(url, '/') > 1;
;-- -. . -..- - / . -. - .-. -.--
select *,case when instr(url, '/') > 1 then (with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split where word != '') 
                    else case when instr(url, '.') > 1
                        then url end end
from url_dg_tmp;
;-- -. . -..- - / . -. - .-. -.--
select *,

       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then (with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end)




from url_dg_tmp;
;-- -. . -..- - / . -. - .-. -.--
( select
            case when instr(domx,'.') > 0 then
                case when instr(substr(instr(domx,'.'),length(domx)),'.') = 0
                    then domx
                else
                    domx end
            else
                null
       end 
           from
       (select *,
       (case when instr(url, '/') > 1 then
           (with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
)
               )
from url_dg_tmp;
;-- -. . -..- - / . -. - .-. -.--
select *,


       -- pick the last two words separated with .

       ( select
            case when instr(domx,'.') > 0 then
                case when instr(substr(instr(domx,'.'),length(domx)),'.') = 0
                    then domx
                else
                    domx end
            else
                null
       end
           from
       (select *,
       (case when instr(url, '/') > 1 then
           (with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
)
               )
from url_dg_tmp;
;-- -. . -..- - / . -. - .-. -.--
select *,
       -- pick the last two words separated with .

       (case when instr(url, '/') > 1 then
           (with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp;
;-- -. . -..- - / . -. - .-. -.--
select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp;
;-- -. . -..- - / . -. - .-. -.--
select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '=') > 1;
;-- -. . -..- - / . -. - .-. -.--
select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '=') > 1 limit 1;
;-- -. . -..- - / . -. - .-. -.--
select *,
           (with split(word, str,nr,src) AS (
                    SELECT '', url || '?', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),length(substr(str, instr(str, '?') + 1)),
                    src FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') > 1 limit 1);
;-- -. . -..- - / . -. - .-. -.--
select *, 
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 1
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') > 1 limit 1);
;-- -. . -..- - / . -. - .-. -.--
select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') > 1 limit 1);
;-- -. . -..- - / . -. - .-. -.--
select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') > 1 limit 10);
;-- -. . -..- - / . -. - .-. -.--
select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') > 1 limit 100);
;-- -. . -..- - / . -. - .-. -.--
select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') > 1 limit 1000);
;-- -. . -..- - / . -. - .-. -.--
select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, 'bing') > 1 limit 100 );
;-- -. . -..- - / . -. - .-. -.--
select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, 'bing') > 1 limit 100 );
;-- -. . -..- - / . -. - .-. -.--
select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, 'bing') * instr(url, '=') > 1 limit 100 );
;-- -. . -..- - / . -. - .-. -.--
select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 100 );
;-- -. . -..- - / . -. - .-. -.--
select * from 
(
    select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1)
);
;-- -. . -..- - / . -. - .-. -.--
select *,(with split(word, str) AS (
                    SELECT '', url || '='
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '=')), substr(str, instr(str, '=') + 1)
                  FROM split WHERE str != '' ) select word from split where word != ''
               
               ) from
(
    select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1)
);
;-- -. . -..- - / . -. - .-. -.--
select *,(with split(word, str) AS (
                    SELECT '', url || 'q='
                    UNION ALL
                    SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 1)
                  FROM split WHERE str != '' ) select word from split where word != ''

               ) from
(
    select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1)
);
;-- -. . -..- - / . -. - .-. -.--
select *,(with split(word, str,nr) AS (
                    SELECT '', url || 'q=',0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
                and nr = 2
               ) from
(
    select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1)
);
;-- -. . -..- - / . -. - .-. -.--
select *,
(
    select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str,nr) AS (
                    SELECT '', url || 'q=',0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
                and nr = 2
               ) q,
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1)
)

;
;-- -. . -..- - / . -. - .-. -.--
select *,
(
    select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str,nr) AS (
                    SELECT '', url || 'q=',0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
                and nr = 2
               ) q,
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1)
)
;
;-- -. . -..- - / . -. - .-. -.--
select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ),
           (with split(word, str,nr) AS (
                    SELECT '', url || 'q=',0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
                and nr = 2
               ) q,
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '')
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1);
;-- -. . -..- - / . -. - .-. -.--
select *,
           (with split(word, str,nr) AS (
                    SELECT '', url || '?', 0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
               and nr = 2
               ) [?],
           (with split(word, str,nr) AS (
                    SELECT '', url || 'q=',0
                    UNION ALL
                    SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 1),nr+1
                  FROM split WHERE str != '' ) select word from split where word != ''
                and nr = 2
               ) q,
           (with split(word, str) AS (
                    SELECT '', url || '?'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
                    FROM split WHERE str != '' ) select word from split where word != '') [?2]
from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1);
;-- -. . -..- - / . -. - .-. -.--
select *,
            (with split(word, str,nr) AS (
            SELECT '', url || 'q=',0
            UNION ALL
            SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 1),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
               ) q,
            (with split(word, str,nr) AS (
            SELECT '', url || '?', 0
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
            ) [?],

            (with split(word, str) AS (
            SELECT '', url || '?'
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
            FROM split WHERE str != '' ) select word from split where word != '') [?2]
            from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1);
;-- -. . -..- - / . -. - .-. -.--
select *,
            (with split(word, str,nr) AS (
            SELECT '', url || 'q=',0
            UNION ALL
            SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 2),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
               ) q,
            (with split(word, str,nr) AS (
            SELECT '', url || '?', 0
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
            ) [?],

            (with split(word, str) AS (
            SELECT '', url || '?'
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
            FROM split WHERE str != '' ) select word from split where word != '') [?2]
            from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1);
;-- -. . -..- - / . -. - .-. -.--
select *,
                       (with split(word, str,nr) AS (
            SELECT '', (with split(word, str,nr) AS (
            SELECT '', url || 'q=',0
            UNION ALL
            SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 2),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
               ) || 'q=',0
            UNION ALL
            SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 2),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
               )
             q,
            (with split(word, str,nr) AS (
            SELECT '', url || '?', 0
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
            ) [?],

            (with split(word, str) AS (
            SELECT '', url || '?'
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
            FROM split WHERE str != '' ) select word from split where word != '') [?2]
            from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1);
;-- -. . -..- - / . -. - .-. -.--
select *,
                       (with split(word, str,nr) AS (
            SELECT '', (with split(word, str,nr) AS (
            SELECT '', url || 'q=',0
            UNION ALL
            SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 2),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
               ) || '&',0
            UNION ALL
            SELECT substr(str, 0, instr(str, '&')), substr(str, instr(str, '&') + 2),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
               )
             q,
            (with split(word, str,nr) AS (
            SELECT '', url || '?', 0
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
            ) [?],

            (with split(word, str) AS (
            SELECT '', url || '?'
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
            FROM split WHERE str != '' ) select word from split where word != '') [?2]
            from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1);
;-- -. . -..- - / . -. - .-. -.--
select *,
                       (with split(word, str,nr) AS (
            SELECT '', (with split(word, str,nr) AS (
            SELECT '', url || 'q=',0
            UNION ALL
            SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 2),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
               ) || '&',0
            UNION ALL
            SELECT substr(str, 0, instr(str, '&')), substr(str, instr(str, '&') + 2),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
               )
             q,
            (with split(word, str,nr) AS (
            SELECT '', url || '?', 0
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
            ) [?],

            (with split(word, str) AS (
            SELECT '', url || '?'
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
            FROM split WHERE str != '' ) select word from split where word != '') [?2]
            from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp 
--where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1
    );
;-- -. . -..- - / . -. - .-. -.--
select *,
                       (with split(word, str,nr) AS (
            SELECT '', (with split(word, str,nr) AS (
            SELECT '', url || 'q=',0
            UNION ALL
            SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 2),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
               ) || '&',0
            UNION ALL
            SELECT substr(str, 0, instr(str, '&')), substr(str, instr(str, '&') + 2),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
               )
             q,
            (with split(word, str,nr) AS (
            SELECT '', url || '?', 0
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
            ) [?],

            (with split(word, str) AS (
            SELECT '', url || '?'
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
            FROM split WHERE str != '' ) select word from split where word != '') [?2]
            from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp
--where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1
    )
where q is not null;
;-- -. . -..- - / . -. - .-. -.--
select *,
                       (with split(word, str,nr) AS (
                SELECT '', (with split(word, str,nr) AS (
                SELECT '', url || 'q=',0
                UNION ALL
                SELECT substr(str, 0, instr(str, 'q=')), substr(str, instr(str, 'q=') + 2),nr+1
                FROM split WHERE str != '' ) select word from split where word != ''
                and nr = 2
                   ) || '&',0
                UNION ALL
                SELECT substr(str, 0, instr(str, '&')), substr(str, instr(str, '&') + 2),nr+1
                FROM split WHERE str != '' ) select word from split where word != ''
                   )
                 q,
                (with split(word, str,nr) AS (
            SELECT '', url || '?', 0
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1),nr+1
            FROM split WHERE str != '' ) select word from split where word != ''
            and nr = 2
            ) [?],

            (with split(word, str) AS (
            SELECT '', url || '?'
            UNION ALL
            SELECT substr(str, 0, instr(str, '?')), substr(str, instr(str, '?') + 1)
            FROM split WHERE str != '' ) select word from split where word != '') [?2]
            from
(select Url,title,
       -- pick the last two words separated with .
       (case when instr(url, '/') > 1 then
           (with split(word, str) AS (
                    SELECT '', url || '/'
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1)
                     FROM split WHERE str != '' ) select word from split where word != '' and word != 'https:' AND word != 'http:')
                    else case
                        when instr(url, '.') > 1
                            then url end end) domx
from url_dg_tmp
--where instr(url, '?') * instr(url, '=') > 1 and domx = 'www.bing.com' limit 1
    )
where q is not null;
;-- -. . -..- - / . -. - .-. -.--
select url from url_dg_tmp where instr(url,'%')> 0 limit 1;
;-- -. . -..- - / . -. - .-. -.--
select url from url_dg_tmp where instr(url,'%')> 0 limit 10;
;-- -. . -..- - / . -. - .-. -.--
select url from url_dg_tmp where instr(url,'%')> 0 order by length(url) desc limit 10;
;-- -. . -..- - / . -. - .-. -.--
with
     input as       (select url title from url_dg_tmp where instr(url,'%')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char
                                               from input
                                                        cross join numbers
                                               where number <= length(Title))
        select * from a;
;-- -. . -..- - / . -. - .-. -.--
with
     input as       (select url title from url_dg_tmp where instr(url,'%')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char
                                               from input
                                                        cross join numbers
                                               where number <= length(Title))
        select * from charsWithNr;
;-- -. . -..- - / . -. - .-. -.--
with
     input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char
                                               from input
                                                        cross join numbers
                                               where number <= length(Title))
        select * from charsWithNr;
;-- -. . -..- - / . -. - .-. -.--
with
     input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))
        
                          select title from input
                                                  left outer join
                                             charsWithNr
                                                 on (substr(Title, number, 9) = a."Windows-1252" OR substr(Title, number, 6) = a."Windows-1252" OR substr(Title, number, 3) = a."Windows-1252")
                                                  OR (substr(Title, number, 3) = a."UTF-8" And (substr(Title, number-3, 1) != '%'));
;-- -. . -..- - / . -. - .-. -.--
with
     input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))

                          select title from charsWithNr
                                                  left outer join
                                             a
                                                 on (substr(Title, number, 9) = a."Windows-1252" OR substr(Title, number, 6) = a."Windows-1252" OR substr(Title, number, 3) = a."Windows-1252")
                                                  OR (substr(Title, number, 3) = a."UTF-8" And (substr(Title, number-3, 1) != '%'));
;-- -. . -..- - / . -. - .-. -.--
with
     input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))

                          select * from charsWithNr
                                                  left outer join
                                             a
                                                 on (substr(Title, number, 9) = a."Windows-1252" OR substr(Title, number, 6) = a."Windows-1252" OR substr(Title, number, 3) = a."Windows-1252")
                                                  OR (substr(Title, number, 3) = a."UTF-8" And (substr(Title, number-3, 1) != '%'));
;-- -. . -..- - / . -. - .-. -.--
with
     input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))

                          select *,length("UTF-8"),length("Windows-1252") from charsWithNr
                                                  left outer join
                                             a
                                                 on (substr(Title, number, 9) = a."Windows-1252" OR substr(Title, number, 6) = a."Windows-1252" OR substr(Title, number, 3) = a."Windows-1252")
                                                  OR (substr(Title, number, 3) = a."UTF-8" And (substr(Title, number-3, 1) != '%'));
;-- -. . -..- - / . -. - .-. -.--
with
     input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))

                          select *,max(length("UTF-8"),length("Windows-1252")) from charsWithNr
                                                  left outer join
                                             a
                                                 on (substr(Title, number, 9) = a."Windows-1252" OR substr(Title, number, 6) = a."Windows-1252" OR substr(Title, number, 3) = a."Windows-1252")
                                                  OR (substr(Title, number, 3) = a."UTF-8" And (substr(Title, number-3, 1) != '%'));
;-- -. . -..- - / . -. - .-. -.--
with
     input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))

                          select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
                                                  left outer join
                                             a
                                                 on (substr(Title, number, 9) = a."Windows-1252" OR substr(Title, number, 6) = a."Windows-1252" OR substr(Title, number, 3) = a."Windows-1252")
                                                  OR (substr(Title, number, 3) = a."UTF-8" And (substr(Title, number-3, 1) != '%'));
;-- -. . -..- - / . -. - .-. -.--
select group_concat(char) from (
with
     input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))

                          select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
                                                  left outer join
                                             a
                                                 on (substr(Title, number, 9) = a."UTF-8" OR substr(Title, number, 6) = a."UTF-8" OR substr(Title, number, 3) = a."UTF-8")
                                                  OR (substr(Title, number, 3) = a."Windows-1252" And (substr(Title, number-3, 1) != '%'))

    );
;-- -. . -..- - / . -. - .-. -.--
select group_concat(char,'') from (
with
     input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))

                          select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
                                                  left outer join
                                             a
                                                 on (substr(Title, number, 9) = a."UTF-8" OR substr(Title, number, 6) = a."UTF-8" OR substr(Title, number, 3) = a."UTF-8")
                                                  OR (substr(Title, number, 3) = a."Windows-1252" And (substr(Title, number-3, 1) != '%'))

    );
;-- -. . -..- - / . -. - .-. -.--
with
     input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
                a as (select * from a_dg_tmp)
                                ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))

                          select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
                                                  left outer join
                                             a
                                                 on (substr(Title, number, 9) = a."UTF-8" OR substr(Title, number, 6) = a."UTF-8" OR substr(Title, number, 3) = a."UTF-8")
                                                  OR (substr(Title, number, 3) = a."Windows-1252" And (substr(Title, number-3, 1) != '%'));
;-- -. . -..- - / . -. - .-. -.--
with 
       input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
        htmlRepl as (select * from a_dg_tmp)
        ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))
     ,beforeConcat as (
        select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
              left outer join
         htmlRepl
             on (substr(Title, number, 9) = htmlRepl."UTF-8" OR substr(Title, number, 6) = htmlRepl."UTF-8" OR substr(Title, number, 3) = htmlRepl."UTF-8")
              OR (substr(Title, number, 3) = htmlRepl."Windows-1252" And (substr(Title, number-3, 1) != '%')))

,afterConcat as (select group_concat(char,'')from (select char from beforeConcat))

   /*
recursive
    for each row
            take nr of chars according to column
                Move cursor according ot column, push ressulting location to ressult
    */

,pickRessult (title,pointerContent,pointer,pointerLength) as (
    select title,'',0,1 from beforeConcat
    union
    select title,coalesce(Character,char) ,pointer+pointerLength,ifnull(m,1) from pickRessult inner join beforeConcat using (title)
    where pointer <= number

)
select * from pickRessult;
;-- -. . -..- - / . -. - .-. -.--
with 
       input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
        htmlRepl as (select * from a_dg_tmp)
        ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))
     ,beforeConcat as (
        select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
              left outer join
         htmlRepl
             on (substr(Title, number, 9) = htmlRepl."UTF-8" OR substr(Title, number, 6) = htmlRepl."UTF-8" OR substr(Title, number, 3) = htmlRepl."UTF-8")
              OR (substr(Title, number, 3) = htmlRepl."Windows-1252" And (substr(Title, number-3, 1) != '%')))

,afterConcat as (select group_concat(char,'')from (select char from beforeConcat))

   /*
recursive
    for each row
            take nr of chars according to column
                Move cursor according ot column, push ressulting location to ressult
    */

,pickRessult (title,pointerContent,pointer,pointerLength,Character,char,m,number) as (
    select title,'',0,1 from beforeConcat
    union
    select title,coalesce(Character,char) ,pointer+pointerLength,ifnull(m,1) from pickRessult
    where pointer <= number

)
select * from pickRessult;
;-- -. . -..- - / . -. - .-. -.--
with 
       input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
        htmlRepl as (select * from a_dg_tmp)
        ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))
     ,beforeConcat as (
        select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
              left outer join
         htmlRepl
             on (substr(Title, number, 9) = htmlRepl."UTF-8" OR substr(Title, number, 6) = htmlRepl."UTF-8" OR substr(Title, number, 3) = htmlRepl."UTF-8")
              OR (substr(Title, number, 3) = htmlRepl."Windows-1252" And (substr(Title, number-3, 1) != '%')))

,afterConcat as (select group_concat(char,'')from (select char from beforeConcat))

   /*
recursive
    for each row
            take nr of chars according to column
                Move cursor according ot column, push ressulting location to ressult
    */

,pickRessult (title,pointerContent,pointer,pointerLength,Character,char,m,number) as (
    select title,'',0,1,Character,char,m,number from beforeConcat
    union
    select title,coalesce(Character,char) ,pointer+pointerLength,ifnull(m,1) from pickRessult
    where pointer <= number

)
select * from pickRessult;
;-- -. . -..- - / . -. - .-. -.--
with 
       input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
        htmlRepl as (select * from a_dg_tmp)
        ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))
     ,beforeConcat as (
        select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
              left outer join
         htmlRepl
             on (substr(Title, number, 9) = htmlRepl."UTF-8" OR substr(Title, number, 6) = htmlRepl."UTF-8" OR substr(Title, number, 3) = htmlRepl."UTF-8")
              OR (substr(Title, number, 3) = htmlRepl."Windows-1252" And (substr(Title, number-3, 1) != '%')))

,afterConcat as (select group_concat(char,'')from (select char from beforeConcat))

   /*
recursive
    for each row
            take nr of chars according to column
                Move cursor according ot column, push ressulting location to ressult
    */

,pickRessult (title,pointerContent,pointer,pointerLength,Character,char,m,number) as (
    select title,'',0,1,Character,char,m,number from beforeConcat
    union
    select title,coalesce(Character,char) ,pointer+pointerLength,ifnull(m,1),Character,char,m,number  from pickRessult
    where pointer <= number

)
select * from pickRessult;
;-- -. . -..- - / . -. - .-. -.--
with 
       input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
        htmlRepl as (select * from a_dg_tmp)
        ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))
     ,beforeConcat as (
        select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
              left outer join
         htmlRepl
             on (substr(Title, number, 9) = htmlRepl."UTF-8" OR substr(Title, number, 6) = htmlRepl."UTF-8" OR substr(Title, number, 3) = htmlRepl."UTF-8")
              OR (substr(Title, number, 3) = htmlRepl."Windows-1252" And (substr(Title, number-3, 1) != '%')))

,afterConcat as (select group_concat(char,'')from (select char from beforeConcat))

   /*
recursive
    for each row
            take nr of chars according to column
                Move cursor according ot column, push ressulting location to ressult
    */

,pickRessult (title,pointerContent,pointer,pointerLength,Character,char,m,number) as (
    select title,'',0,1,Character,char,m,number from beforeConcat
    union
    select title,coalesce(Character,char) ,pointer+pointerLength,ifnull(m,1),Character,char,m,number  from pickRessult
    where pointer <= number

)
select * from pickRessult order by number desc,pointer limit 500;
;-- -. . -..- - / . -. - .-. -.--
with 
       input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
        htmlRepl as (select * from a_dg_tmp)
        ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))
     ,beforeConcat as (
        select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
              left outer join
         htmlRepl
             on (substr(Title, number, 9) = htmlRepl."UTF-8" OR substr(Title, number, 6) = htmlRepl."UTF-8" OR substr(Title, number, 3) = htmlRepl."UTF-8")
              OR (substr(Title, number, 3) = htmlRepl."Windows-1252" And (substr(Title, number-3, 1) != '%')))

,afterConcat as (select group_concat(char,'')from (select char from beforeConcat))

   /*
recursive
    for each row
            take nr of chars according to column
                Move cursor according ot column, push ressulting location to ressult
    */

,pickRessult (title,pointerContent,pointer,pointerLength,Character,char,m,number) as (
    select title,'',0,1,Character,char,m,number from beforeConcat
    union
    select title,coalesce(Character,char) ,pointer+pointerLength,ifnull(m,1),Character,char,m,number  from pickRessult
    where pointer <= number

)
select * from pickRessult where length(title) = number;
;-- -. . -..- - / . -. - .-. -.--
with 
       input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
        htmlRepl as (select * from a_dg_tmp)
        ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))
     ,beforeConcat as (
        select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
              left outer join
         htmlRepl
             on (substr(Title, number, 9) = htmlRepl."UTF-8" OR substr(Title, number, 6) = htmlRepl."UTF-8" OR substr(Title, number, 3) = htmlRepl."UTF-8")
              OR (substr(Title, number, 3) = htmlRepl."Windows-1252" And (substr(Title, number-3, 1) != '%')))

,afterConcat as (select group_concat(char,'')from (select char from beforeConcat))

   /*
recursive
    for each row
            take nr of chars according to column
                Move cursor according ot column, push ressulting location to ressult
    */

,pickRessult (title,pointerContent,pointer,pointerLength) as (
    select title,'',0,1 from beforeConcat
    union
    select title,coalesce(Character,char) ,pointer+pointerLength,ifnull(m,1),Character,char,m  from pickRessult inner join beforeConcat
    using (title) where pointer <= length(title)

)
select * from pickRessult where length(title) = pointer;
;-- -. . -..- - / . -. - .-. -.--
with 
       input as       (select url title from url_dg_tmp where instr(url,'%A0')> 0 order by length(url) desc limit 1 )
      ,numbers as   (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
        htmlRepl as (select * from a_dg_tmp)
        ,charsWithNr as (select Title, number, substr(Title, number, 1) char from input cross join numbers where number <= length(Title))
     ,beforeConcat as (
        select *,max(length("UTF-8"),length("Windows-1252")) m from charsWithNr
              left outer join
         htmlRepl
             on (substr(Title, number, 9) = htmlRepl."UTF-8" OR substr(Title, number, 6) = htmlRepl."UTF-8" OR substr(Title, number, 3) = htmlRepl."UTF-8")
              OR (substr(Title, number, 3) = htmlRepl."Windows-1252" And (substr(Title, number-3, 1) != '%')))

,afterConcat as (select group_concat(char,'')from (select char from beforeConcat))

   /*
recursive
    for each row
            take nr of chars according to column
                Move cursor according ot column, push ressulting location to ressult
    */

,pickRessult (title,pointerContent,pointer,pointerLength) as (
    select title,'',0,1 from beforeConcat
    union
    select title,coalesce(Character,char) ,pointer+pointerLength,ifnull(m,1)  from pickRessult inner join beforeConcat
    using (title) where pointer <= length(title)

)
select * from pickRessult where length(title) = pointer;