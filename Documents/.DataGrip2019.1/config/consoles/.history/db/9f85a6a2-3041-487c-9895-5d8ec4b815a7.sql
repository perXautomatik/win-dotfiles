WITH RECURSIVE rcte AS (SELECT visits.id, visits.url, visits.visit_time, visits.from_visit, urls.url AS URL1
                        FROM visits
                                 LEFT JOIN urls ON visits.url = urls.id
                        WHERE visits.id = 27585
                        UNION ALL
                        SELECT visits.id, visits.url, visits.visit_time, visits.from_visit, urls.url AS URL1
                        FROM rcte
                                 LEFT JOIN urls ON visits.url = urls.id
                                 INNER JOIN visits ON rcte.from_visit = visits.id
                        LIMIT 100)
SELECT *
from rcte
ORDER BY rcte.id;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE rcte AS (SELECT visits.id, visits.url, visits.visit_time, visits.from_visit, urls.url AS URL1
                        FROM visits
                                 LEFT JOIN urls ON visits.url = urls.id
                        WHERE visits.id = 27585
                        UNION ALL
                        SELECT visits.id, visits.url, visits.visit_time, visits.from_visit, urls.url AS URL1
                        FROM rcte
                                 LEFT JOIN urls ON main.visits.url = urls.id
                                 INNER JOIN visits ON rcte.from_visit = visits.id
                        LIMIT 100)
SELECT *
from rcte
ORDER BY rcte.id;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE rcte AS (SELECT visits.id, visits.url, visits.visit_time, visits.from_visit, urls.url AS URL1
                        FROM visits
                                 LEFT JOIN urls ON visits.url = urls.id
                        UNION ALL
                        SELECT visits.id, visits.url, visits.visit_time, visits.from_visit, urls.url AS URL1
                        FROM rcte
                                 LEFT JOIN main.urls ON main.visits.url = urls.id
                                 INNER JOIN visits ON rcte.from_visit = visits.id
                        LIMIT 100)
SELECT *
from rcte
ORDER BY rcte.id;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                        FROM main.visits mv
                                 LEFT JOIN urls ON mv.url = urls.id
                        UNION ALL
                        SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                        FROM rcte
                                 LEFT JOIN main.urls ON url = urls.id
                                 INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                        LIMIT 100)
SELECT *
from rcte
ORDER BY rcte.id;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                        FROM main.visits mv
                                 LEFT JOIN urls ON mv.url = urls.id
                        UNION ALL
                        SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                        FROM rcte
                                 LEFT JOIN main.urls ON rcte.url = urls.id
                                 INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                        LIMIT 100)
SELECT *
from rcte
ORDER BY rcte.id;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                        FROM main.visits mv
                                 LEFT JOIN urls ON mv.url = urls.id
                        UNION ALL
                        SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                        FROM rcte
                                 INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                 LEFT JOIN main.urls ON mv.url = urls.id
                        LIMIT 100)
SELECT *
from rcte
ORDER BY rcte.id;
;-- -. . -..- - / . -. - .-. -.--
select fromX, sum(tot) tots, group_concat(toUrl) toUrls
from (select group_concat(urlsurl) fromX,
             sum(fromToCount)      tot,
             wurl                  toUrl
      from (select w.url wurl,
                   visitId,
                   fromToCount,
                   urlx,
                   id,
                   urls.url urlsurl,
                   title,
                   visit_count,
                   typed_count,
                   last_visit_time,
                   hidden,
                   activity_time,
                   display_time,
                   open_time,
                   last_display,
                   display_count,
                   links_clicked_count
            from (select t.*,x.url urlx from (select url,visitId, fromToCount from (select *from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
                                                                                                 ) q
                                                                                                     left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId) w
                     left outer join urls on w.urlx = urls.id)
      group by toUrl)
group by fromX order by tots desc;
;-- -. . -..- - / . -. - .-. -.--
select fromX, sum(tot) tots, group_concat(toUrl) toUrls
from (select group_concat(urlsurl) fromX,
             sum(fromToCount)      tot,
             wurl                  toUrl
      from (select w.url wurl,
                   visitId,
                   fromToCount,
                   urlx,
                   id,
                   urls.url urlsurl

            from (select t.*,x.url urlx from (select url,visitId, fromToCount from (select *from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
                                                                                                 ) q
                                                                                                     left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId) w
                     left outer join urls on w.urlx = urls.id)
      group by toUrl)
group by fromX order by tots desc;
;-- -. . -..- - / . -. - .-. -.--
select * from urls where links_clicked_count > 1 order by links_clicked_count desc;
;-- -. . -..- - / . -. - .-. -.--
select fromX, sum(tot) tots, group_concat(toUrl) toUrls
from (select group_concat(urlsurl) fromX,
             sum(fromToCount)      tot,
             wurl                  toUrl
      from (select w.url wurl,
                   fromToCount,
                   urls.url urlsurl

            from (select t.*,x.url urlx from (select url,visitId, fromToCount from (select *from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
                                                                                                 ) q
                                                                                                     left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId) w
                     left outer join urls on w.urlx = urls.id)
      group by toUrl)
group by fromX order by tots desc;
;-- -. . -..- - / . -. - .-. -.--
select fromX, sum(tot) tots, group_concat(toUrl) toUrls
from (select group_concat(urlsurl) fromX,
             sum(fromToCount)      tot,
             wurl                  toUrl
      from (select distinct 
                   w.url wurl,
                   fromToCount,
                   urls.url urlsurl

            from (select t.*,x.url urlx from (select url,visitId, fromToCount from (select *from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
                                                                                                 ) q
                                                                                                     left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId) w
                     left outer join urls on w.urlx = urls.id)
      group by toUrl)
group by fromX order by tots desc;
;-- -. . -..- - / . -. - .-. -.--
select fromX, sum(tot) tots, group_concat(toUrl) toUrls
from (select group_concat(urlsurl) fromX,
             sum(fromToCount)      tot,
             wurl                  toUrl
      from (select distinct
                   w.url wurl,
                   fromToCount,
                   urls.url urlsurl

            from (select t.*,x.url urlx from (select url,visitId, fromToCount from (select *from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
                                                                                                 ) q
                                                                                                     left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId) w
                     left outer join urls on w.urlx = urls.id)
      group by toUrl)
group by fromX order by length(toUrls) desc, tots desc;
;-- -. . -..- - / . -. - .-. -.--
select fromX, sum(tot) tots, group_concat(toUrl) toUrls
from (select group_concat(urlsurl) fromX,
             sum(fromToCount)      tot,
             wurl                  toUrl
      from (select distinct
                   w.url wurl,
                   fromToCount,
                   urls.url urlsurl

            from (select t.*,x.url urlx from (select url,visitId, fromToCount from (select *from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
                                                                                                 ) q
                                                                                                     left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId) w
                     left outer join urls on w.urlx = urls.id)
      group by toUrl)
group by fromX order by tots desc,length(toUrls) desc;
;-- -. . -..- - / . -. - .-. -.--
select fromX, sum(tot) tots, group_concat(toUrl) toUrls
from (select group_concat(urlsurl) fromX,
             sum(fromToCount)      tot,
             wurl                  toUrl
      from (select distinct
                   w.url wurl,
                   fromToCount,
                   urls.url urlsurl

            from (select t.*,x.url urlx from (select url,visitId, fromToCount from (select *from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
                                                                                                 ) q
                                                                                                     left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId) w
                     left outer join urls on w.urlx = urls.id)
      group by toUrl)
where length(fromX) < length(toUrls)
group by fromX

order by tots desc,length(toUrls) desc;
;-- -. . -..- - / . -. - .-. -.--
select fromX, sum(tot) tots, group_concat(toUrl) toUrls
from (select group_concat(urlsurl) fromX,
             sum(fromToCount)      tot,
             wurl                  toUrl
      from (select distinct
                   w.url wurl,
                   fromToCount,
                   urls.url urlsurl

            from (select t.*,x.url urlx from (select url,visitId, fromToCount from (select *from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
                                                                                                 ) q
                                                                                                     left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId) w
                     left outer join urls on w.urlx = urls.id)
      group by toUrl)
group by fromX
having length(fromX) < length(toUrls)
order by tots desc,length(toUrls) desc;
;-- -. . -..- - / . -. - .-. -.--
select * from urls where title = 'LiveJasmin.com - Hot Live Sex Shows!';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'LiveJasmin.com - Hot Live Sex Shows!';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Träffa sexiga tjejer 25+';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Video was deleted - {main li a} - {main li:nth-child(2) a} _ {main li:nth-child(3) a} _ {main li:nth-child(4) a} _ {main li:nth-child(5) a} _ {main li:nth-child(6) a} _ {main li:nth-child(7) a} _ {main li:nth-child(8) a} _ {main li:nth-child(9) a} _ {main li:nth-child(10) a}';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Rate limit · GitHub';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Login | Last.fm';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Logga in på Facebook';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Sign in to GitHub · GitHub';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'SEX';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'removed.png (161×81)';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Visual bookmarks';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Video was deleted';
;-- -. . -..- - / . -. - .-. -.--
select * from urls where title like '%{%';
;-- -. . -..- - / . -. - .-. -.--
select instr(title,'{') from urls where title like '%{%';
;-- -. . -..- - / . -. - .-. -.--
select leftstr(title,instr(title,'{'))
        from urls where title like '%{%';
;-- -. . -..- - / . -. - .-. -.--
update urls
set title = leftstr(title,instr(title,'{')-1)
         where title like '%{%';
;-- -. . -..- - / . -. - .-. -.--
select title name, count(url) count
                                   from urls
                                   group by name
                                   having/* where count < 800*/name is not null /*and instr(name,' | ') = 0*/
                                      and count > 2
                                   order by count desc;
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Video deleted - XVIDEOS.COM - [';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Security Center';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Bing';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = '';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Oops!';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Tumblr: Image';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = 'Press Allow to watch the video';
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = '(1) New Message!';
;-- -. . -..- - / . -. - .-. -.--
select *,
       title                                                                                           name,
       substr(url, instr(url, SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1,
                                     INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)), length(url)) domain
from urls;
;-- -. . -..- - / . -. - .-. -.--
with q as (select *,
       title                                                                                           name,
       substr(url, instr(url, SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1,
                                     INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)), length(url)) domain
from urls)
select leftstr(domain,instr(domain,'/')) d from q;
;-- -. . -..- - / . -. - .-. -.--
with q as (select *,
       title                                                                                           name,
       substr(url, instr(url, SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1,
                                     INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)), length(url)) domain
from urls)
select leftstr(domain,instr(domain,'/')-1) d from q;
;-- -. . -..- - / . -. - .-. -.--
with q as (select *,
       title                                                                                           name,
       substr(url, instr(url, SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1,
                                     INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)), length(url)) domain
from urls)
,d as (select leftstr(domain,instr(domain,'/')-1) d from q)

select count(d) x,d from d group by d
order by x desc;
;-- -. . -..- - / . -. - .-. -.--
delete from urls
 where title = '(1) New Message!' OR url like '%github%';
;-- -. . -..- - / . -. - .-. -.--
select * from urls where url like '%github%';
;-- -. . -..- - / . -. - .-. -.--
select * from urls where title like '%github%';