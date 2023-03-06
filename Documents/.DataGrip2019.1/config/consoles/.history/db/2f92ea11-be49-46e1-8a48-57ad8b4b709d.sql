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
ORDER BY visit_time;
;-- -. . -..- - / . -. - .-. -.--
select * from visits where from_visit != 0;
;-- -. . -..- - / . -. - .-. -.--
select distinct url,from_visit,count(*) from visits where from_visit != 0;
;-- -. . -..- - / . -. - .-. -.--
select distinct url,from_visit,count(*) from visits where from_visit != 0 group by url,from_visit;
;-- -. . -..- - / . -. - .-. -.--
select * from (select distinct url,from_visit,count(*) from visits where from_visit != 0 group by url,from_visit
    ) q
inner join urls z join visits v on z.url = v.id;
;-- -. . -..- - / . -. - .-. -.--
select * from (select distinct url,from_visit,count(*) from visits where from_visit != 0 group by url,from_visit
    ) q;
;-- -. . -..- - / . -. - .-. -.--
select * from urls order by links_clicked_count desc;
;-- -. . -..- - / . -. - .-. -.--
select * from (select distinct url urlId,from_visit visitId,count(*) from visits where from_visit != 0 group by url,from_visit
    ) q
left outer join urls v on v.id = q.urlId;
;-- -. . -..- - / . -. - .-. -.--
select url,visitId, fromToCount from (select * from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
    ) q
left outer join urls v on v.id = q.urlId);
;-- -. . -..- - / . -. - .-. -.--
select * from (select url,visitId, fromToCount from (select * from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
    ) q
left outer join urls v on v.id = q.urlId)) inner join urls x on id = visitId;
;-- -. . -..- - / . -. - .-. -.--
select * from (select url,visitId, fromToCount from (select * from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
    ) q
left outer join urls v on v.id = q.urlId)) left outer join urls x on id = visitId;
;-- -. . -..- - / . -. - .-. -.--
select * from (select url,visitId, fromToCount from (select * from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
    ) q
left outer join urls v on v.id = q.urlId)) left outer join visits x on id = visitId;
;-- -. . -..- - / . -. - .-. -.--
select t.*,x.url  from (select url,visitId, fromToCount from (select * from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
    ) q
left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId;
;-- -. . -..- - / . -. - .-. -.--
select * from (select t.*,x.url  from (select url,visitId, fromToCount from (select * from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
    ) q
left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId) w
left outer join urls on w.url = urls.id;
;-- -. . -..- - / . -. - .-. -.--
select * from (select t.*,x.url urlx  from (select url,visitId, fromToCount from (select * from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
    ) q
left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId) w
left outer join urls on w.urlx = urls.id;
;-- -. . -..- - / . -. - .-. -.--
select wurl,
       fromToCount,
       urlx
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
left outer join urls on w.urlx = urls.id);
;-- -. . -..- - / . -. - .-. -.--
select wurl,
       fromToCount,
       urlsurl
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
left outer join urls on w.urlx = urls.id);
;-- -. . -..- - / . -. - .-. -.--
select urlsurl,

       fromToCount,
       wurl
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
left outer join urls on w.urlx = urls.id);
;-- -. . -..- - / . -. - .-. -.--
select distinct 
       urlsurl,
       fromToCount,
       wurl
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
left outer join urls on w.urlx = urls.id);
;-- -. . -..- - / . -. - .-. -.--
select group_concat(urlsurl) fromX,
       sum(fromToCount) tot,
       wurl toUrl
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
group by toUrl;
;-- -. . -..- - / . -. - .-. -.--
select fromX, sum(tot), group_concat(toUrl) toUrls
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
group by fromX;
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
from rcte where from_visit != 0
ORDER BY visit_time;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                        FROM main.visits mv
                                 LEFT JOIN urls ON mv.url = urls.id
                        UNION ALL
                        SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                        FROM rcte
                                 INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                 LEFT JOIN main.urls ON mv.url = urls.id
)
SELECT *
from rcte where from_visit != 0
ORDER BY visit_time;
;-- -. . -..- - / . -. - .-. -.--
select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit, URL1
from (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                              FROM main.visits mv
                                 LEFT JOIN urls ON mv.url = urls.id
                              UNION ALL
                              SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                              FROM rcte
                                 INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                 LEFT JOIN main.urls ON mv.url = urls.id
)
      SELECT *
      from rcte where from_visit != 0
      ORDER BY visit_time)
    group by url1,id,url;
;-- -. . -..- - / . -. - .-. -.--
select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit, URL1
from (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                              FROM main.visits mv
                                 LEFT JOIN urls ON mv.url = urls.id
                              UNION ALL
                              SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                              FROM rcte
                                 INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                 LEFT JOIN main.urls ON mv.url = urls.id
)
      SELECT *
      from rcte where from_visit != 0 )
    group by url1,id,url
    order by countVisit desc;
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
select * from urls where links_clicked_count > 1 order by links_clicked_count desc;
;-- -. . -..- - / . -. - .-. -.--
select * from (select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit, URL1
from (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                              FROM main.visits mv
                                 LEFT JOIN urls ON mv.url = urls.id
                              UNION ALL
                              SELECT mv.id, mv.url, mv.visit_time, mv.from_visit, urls.url AS URL1
                              FROM rcte
                                 INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                 LEFT JOIN main.urls ON mv.url = urls.id
)
      SELECT *
      from rcte where from_visit != 0 )
    group by url1,id,url);
;-- -. . -..- - / . -. - .-. -.--
with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM main.visits mv
                                     UNION ALL
                                     SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
from ctx
    group by id,url;
;-- -. . -..- - / . -. - .-. -.--
with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM main.visits mv
                                     UNION ALL
                                     SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
from ctx
    group by from_visit,url;
;-- -. . -..- - / . -. - .-. -.--
select url,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM main.visits mv
                                     UNION ALL
                                     SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
from ctx
    group by from_visit,url);
;-- -. . -..- - / . -. - .-. -.--
select url,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM main.visits mv
                                     UNION ALL
                                     SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
from ctx
    group by from_visit,url)

    LEFT JOIN urls ON url = urls.id;
;-- -. . -..- - / . -. - .-. -.--
select from_visit,url from(select url urlid,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM main.visits mv
                                     UNION ALL
                                     SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
from ctx
    group by from_visit,url))
    LEFT JOIN urls ON urlid = urls.id;
;-- -. . -..- - / . -. - .-. -.--
select url from_url,toUrl from (select from_visit,url toUrl from(select url urlid,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM main.visits mv
                                     UNION ALL
                                     SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
from ctx
    group by from_visit,url))
    LEFT JOIN urls ON urlid = urls.id)
                  LEFT JOIN urls ON from_visit = urls.id;
;-- -. . -..- - / . -. - .-. -.--
select url from_url,toUrl from (select from_visit,url toUrl from(select url urlid,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM main.visits mv
                                     UNION ALL
                                     SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
from ctx
    group by from_visit,url))
    LEFT JOIN urls ON urlid = urls.id)
                  LEFT JOIN visits ON from_visit = visits.id;
;-- -. . -..- - / . -. - .-. -.--
select url from_url,toUrl from (select from_visit visitId,url toUrl from(select url urlid,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM main.visits mv
                                     UNION ALL
                                     SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
from ctx
    group by from_visit,url))
    LEFT JOIN urls ON urlid = urls.id)
                  LEFT JOIN visits ON visitId = visits.id;
;-- -. . -..- - / . -. - .-. -.--
select * from (select url from_url,toUrl from (select from_visit visitId,url toUrl from(select url urlid,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM main.visits mv
                                     UNION ALL
                                     SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
from ctx
    group by from_visit,url))
    LEFT JOIN urls ON urlid = urls.id)
                  LEFT JOIN visits ON visitId = visits.id)
                  LEFT JOIN urls ON from_url = urls.id;
;-- -. . -..- - / . -. - .-. -.--
select url fromUrl,toUrl from (select url from_url,toUrl from (select from_visit visitId,url toUrl from(select url urlid,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM main.visits mv
                                     UNION ALL
                                     SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
from ctx
    group by from_visit,url))
    LEFT JOIN urls ON urlid = urls.id)
                  LEFT JOIN visits ON visitId = visits.id)
                  LEFT JOIN urls ON from_url = urls.id;
;-- -. . -..- - / . -. - .-. -.--
select url fromUrl,toUrl,* from (select url from_url,toUrl from (select from_visit visitId,url toUrl from(select url urlid,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM main.visits mv
                                     UNION ALL
                                     SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                     FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
from ctx
    group by from_visit,url))
    LEFT JOIN urls ON urlid = urls.id)
                  LEFT JOIN visits ON visitId = visits.id)
                  LEFT JOIN urls ON from_url = urls.id;
;-- -. . -..- - / . -. - .-. -.--
select url fromUrl,toUrl
from (select url from_url,toUrl from (select from_visit visitId,url toUrl from (select url urlid,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                                                                                                                       FROM main.visits mv
                                                                                                                                                       UNION ALL
                                                                                                                                                       SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                                                                                                                       FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

                                                                                                                  select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
                                                                                                                  from ctx
                                                                                                                  group by from_visit,url))
    LEFT JOIN urls ON urlid = urls.id)
                  LEFT JOIN visits ON visitId = visits.id)

                  LEFT JOIN urls ON from_url = urls.id;
;-- -. . -..- - / . -. - .-. -.--
select * from
(select url fromUrl,length(url) lu,toUrl,length(toUrl) ltu
from (select url from_url,toUrl from (select from_visit visitId,url toUrl from (select url urlid,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                                                                                                                       FROM main.visits mv
                                                                                                                                                       UNION ALL
                                                                                                                                                       SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                                                                                                                       FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

                                                                                                                  select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
                                                                                                                  from ctx
                                                                                                                  group by from_visit,url))
    LEFT JOIN urls ON urlid = urls.id)
                  LEFT JOIN visits ON visitId = visits.id)

                  LEFT JOIN urls ON from_url = urls.id);
;-- -. . -..- - / . -. - .-. -.--
select iif(lu>ltu,toUrl) q,iif(lu>ltu,fromUrl) t from
(select url fromUrl,length(url) lu,toUrl,length(toUrl) ltu
from (select url from_url,toUrl from (select from_visit visitId,url toUrl from (select url urlid,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                                                                                                                       FROM main.visits mv
                                                                                                                                                       UNION ALL
                                                                                                                                                       SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                                                                                                                       FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

                                                                                                                  select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
                                                                                                                  from ctx
                                                                                                                  group by from_visit,url))
    LEFT JOIN urls ON urlid = urls.id)
                  LEFT JOIN visits ON visitId = visits.id)

                  LEFT JOIN urls ON from_url = urls.id);
;-- -. . -..- - / . -. - .-. -.--
select iif(lu>ltu,toUrl,fromUrl) q,iif(lu>ltu,fromUrl,toUrl) t from
(select url fromUrl,length(url) lu,toUrl,length(toUrl) ltu
from (select url from_url,toUrl from (select from_visit visitId,url toUrl from (select url urlid,from_visit from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                                                                                                                       FROM main.visits mv
                                                                                                                                                       UNION ALL
                                                                                                                                                       SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                                                                                                                       FROM rcte
                                              INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                              )SELECT *from rcte where from_visit != 0 )

                                                                                                                  select id, url, max(visit_time) maxVisit,count(visit_time) countVisit , from_visit
                                                                                                                  from ctx
                                                                                                                  group by from_visit,url))
    LEFT JOIN urls ON urlid = urls.id)
                  LEFT JOIN visits ON visitId = visits.id)

                  LEFT JOIN urls ON from_url = urls.id);
;-- -. . -..- - / . -. - .-. -.--
with urlIdsOnly as (select url urlid, from_visit
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                    )
                                       SELECT *
                                       from rcte
                                       where from_visit != 0)

                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx
                          group by from_visit, url))
,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) q, iif(lu > ltu, fromUrl, toUrl) t
from (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
      from (select url from_url, toUrl
            from (select from_visit visitId, url toUrl
                  from urlIdsOnly
                           LEFT JOIN urls ON urlid = urls.id)
                     LEFT JOIN visits ON visitId = visits.id)

               LEFT JOIN urls ON from_url = urls.id))

               select * from urlIdsOnly;
;-- -. . -..- - / . -. - .-. -.--
with urlIdsOnly as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                    )
                                       SELECT *
                                       from rcte
                                       where from_visit != 0)

                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx
                          group by from_visit, url))
   ,qrz as ( select from_visit , url toUrl
             from urlIdsOnly
                 LEFT JOIN visits ON visitId = visits.id
                   )
,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) q, iif(lu > ltu, fromUrl, toUrl) t
from (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
      from (select url from_url, toUrl
            from onlyUrls

                           LEFT JOIN urls ON urlid = urls.id
                     )

               LEFT JOIN urls ON from_url = urls.id))

               select * from qrz;
;-- -. . -..- - / . -. - .-. -.--
with urlIdsOnly as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   ,qrz as ( select urlid , url toUrl
             from urlIdsOnly
                 LEFT JOIN visits ON visitId = visits.id
                   )

,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) q, iif(lu > ltu, fromUrl, toUrl) t
from (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
      from (select url from_url, toUrl
            from onlyUrls  LEFT JOIN urls ON urlid = urls.id)
               LEFT JOIN urls ON from_url = urls.id))

               select * from qrz;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)

,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) q, iif(lu > ltu, fromUrl, toUrl) t
        from (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
          from (select url from_url, toUrl
                from UrlIdOnly  LEFT JOIN urls ON urlid = urls.id)
                   LEFT JOIN urls ON from_url = urls.id))

select urlid,count(*) c from (
               select urlid from UrlIdOnly
                union
                select toUrl from UrlIdOnly
    ) group by urlid;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)

,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) q, iif(lu > ltu, fromUrl, toUrl) t
        from (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
          from (select url from_url, toUrl
                from UrlIdOnly  LEFT JOIN urls ON urlid = urls.id)
                   LEFT JOIN urls ON from_url = urls.id))

select urlid,count(*) c  from (
               select urlid from UrlIdOnly
                union
                select toUrl from UrlIdOnly
    ) group by urlid order by c desc;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)

,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) q, iif(lu > ltu, fromUrl, toUrl) t
        from (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
          from (select url from_url, toUrl
                from UrlIdOnly  LEFT JOIN urls ON urlid = urls.id)
                   LEFT JOIN urls ON from_url = urls.id))

select urlid,count(*) c  from (
               select urlid from UrlIdOnly
                union all
                select toUrl from UrlIdOnly
    ) group by urlid order by c desc;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (
                                                           select urlid from UrlIdOnly
                                                           union all
                                                           select toUrl from UrlIdOnly
                                                       ) group by urlid)

   ,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) q, iif(lu > ltu, fromUrl, toUrl) t
        from (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
          from (select url from_url, toUrl
                from UrlIdOnly  LEFT JOIN urls ON urlid = urls.id)
                   LEFT JOIN urls ON from_url = urls.id))

select urlid, toUrl, c
from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (
                                                           select urlid from UrlIdOnly
                                                           union all
                                                           select toUrl from UrlIdOnly
                                                       ) group by urlid)

   ,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) q, iif(lu > ltu, fromUrl, toUrl) t
        from (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
          from (select url from_url, toUrl
                from UrlIdOnly  LEFT JOIN urls ON urlid = urls.id)
                   LEFT JOIN urls ON from_url = urls.id))

select urlid, toUrl, c urlid_c
from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (
                                                           select urlid from UrlIdOnly
                                                           union all
                                                           select toUrl from UrlIdOnly
                                                       ) group by urlid)

   ,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) q, iif(lu > ltu, fromUrl, toUrl) t
        from (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
          from (select url from_url, toUrl
                from UrlIdOnly  LEFT JOIN urls ON urlid = urls.id)
                   LEFT JOIN urls ON from_url = urls.id))
select urlid, toUrl, urlid_c, c toUrl_c
from
   (select urlid, toUrl, c urlid_c
from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid
    ) q
       inner join urlidByOccurance on q.toUrl = urlidByOccurance.uid;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (
                                                           select urlid from UrlIdOnly
                                                           union all
                                                           select toUrl from UrlIdOnly
                                                       ) group by urlid)
,cu as (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
        from (select url from_url, toUrl
              from UrlIdOnly  LEFT JOIN urls ON urlid = urls.id)
                 LEFT JOIN urls ON from_url = urls.id)
    ,withOccurance as (select urlid fromUrl, toUrl, urlid_c lu, c ltu from (select urlid, toUrl, c urlid_c from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid) q inner join urlidByOccurance on q.toUrl = urlidByOccurance.uid)

   ,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) q, iif(lu > ltu, fromUrl, toUrl) t
                 from withOccurance);
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (
                                                           select urlid from UrlIdOnly
                                                           union all
                                                           select toUrl from UrlIdOnly
                                                       ) group by urlid)
,cu as (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
        from (select url from_url, toUrl
              from UrlIdOnly  LEFT JOIN urls ON urlid = urls.id)
                 LEFT JOIN urls ON from_url = urls.id)
    ,withOccurance as (select urlid fromUrl, toUrl, urlid_c lu, c ltu from (select urlid, toUrl, c urlid_c from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid) q inner join urlidByOccurance on q.toUrl = urlidByOccurance.uid)

   ,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) q, iif(lu > ltu, fromUrl, toUrl) t
                 from withOccurance)

select * from onlyUrls;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (
                                                           select urlid from UrlIdOnly
                                                           union all
                                                           select toUrl from UrlIdOnly
                                                       ) group by urlid)

    ,withOccurance as (select urlid fromUrl, toUrl, urlid_c lu, c ltu from (select urlid, toUrl, c urlid_c from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid) q inner join urlidByOccurance on q.toUrl = urlidByOccurance.uid)

   ,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) fromUrl, iif(lu > ltu, fromUrl, toUrl) toUrl
                 from withOccurance)

   ,cu as (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
           from (select url from_url, toUrl
                 from onlyUrls  LEFT JOIN urls ON toUrl = urls.id)
                    LEFT JOIN urls ON from_url = urls.id)

select * from cu;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (
                                                           select urlid from UrlIdOnly
                                                           union all
                                                           select toUrl from UrlIdOnly
                                                       ) group by urlid)

    ,withOccurance as (select urlid fromUrl, toUrl, urlid_c lu, c ltu from (select urlid, toUrl, c urlid_c from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid) q inner join urlidByOccurance on q.toUrl = urlidByOccurance.uid)

   ,onlyUrls as (select iif(lu > ltu, toUrl, fromUrl) fromUrl, iif(lu > ltu, fromUrl, toUrl) toUrl
                 from withOccurance)

   ,cu as (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
           from (select fromUrl,
                        url toUrl
                 from onlyUrls  LEFT JOIN urls ON toUrl = urls.id)
                    LEFT JOIN urls ON fromUrl = urls.id)

select * from cu;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (
                                                           select urlid from UrlIdOnly
                                                           union all
                                                           select toUrl from UrlIdOnly
                                                       ) group by urlid)

    ,withOccurance as (select urlid fromUrl, toUrl, urlid_c lu, c ltu from (select urlid, toUrl, c urlid_c from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid) q inner join urlidByOccurance on q.toUrl = urlidByOccurance.uid)

   ,onlyUrls as (select iif(lu < ltu, toUrl, fromUrl) fromUrl, iif(lu < ltu, fromUrl, toUrl) toUrl
                 from withOccurance)

   ,cu as (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
           from (select fromUrl,
                        url toUrl
                 from onlyUrls  LEFT JOIN urls ON toUrl = urls.id)
                    LEFT JOIN urls ON fromUrl = urls.id)

select * from cu;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId
                    from (with ctx as (WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM main.visits mv
                                                               UNION ALL
                                                               SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
                                                               FROM rcte
                                                                        INNER JOIN main.visits mv ON rcte.from_visit = mv.id
                                                                  )SELECT *from rcte where from_visit != 0)
                          select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
                          from ctx group by from_visit, url))
   , UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (
                                                           select urlid from UrlIdOnly
                                                           union all
                                                           select toUrl from UrlIdOnly
                                                       ) group by urlid)

    ,withOccurance as (select urlid fromUrl, toUrl, urlid_c lu, c ltu from (select urlid, toUrl, c urlid_c from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid) q inner join urlidByOccurance on q.toUrl = urlidByOccurance.uid)

   ,onlyUrls as (select iif(lu < ltu, toUrl, fromUrl) fromUrl, iif(lu < ltu, fromUrl, toUrl) toUrl
                 from withOccurance)

   ,cu as (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu
           from (select fromUrl,
                        url toUrl
                 from onlyUrls  LEFT JOIN urls ON toUrl = urls.id)
                    LEFT JOIN urls ON fromUrl = urls.id)

select * from cu order by fromUrl;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId from (
    with ctx as (
        WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
            FROM main.visits mv UNION ALL
        SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
            FROM rcte INNER JOIN main.visits mv ON rcte.from_visit = mv.id)
        SELECT * from rcte where from_visit != 0)
        select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
            from ctx group by from_visit, url))
   ,UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (select urlid from UrlIdOnly union all select toUrl from UrlIdOnly) group by urlid)
    ,withOccurance as (select urlid fromUrl, toUrl, urlid_c lu, c ltu from (select urlid, toUrl, c urlid_c from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid) q inner join urlidByOccurance on q.toUrl = urlidByOccurance.uid)
   ,onlyUrls as (select iif(lu < ltu, toUrl, fromUrl) fromUrl, iif(lu < ltu, fromUrl, toUrl) toUrl from withOccurance)
   ,cu as (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu from (select fromUrl, url toUrl from onlyUrls  LEFT JOIN urls ON toUrl = urls.id)LEFT JOIN urls ON fromUrl = urls.id)

select distinct * from cu order by fromUrl;
;-- -. . -..- - / . -. - .-. -.--
with intialUrlAndVi as (select url urlid, from_visit visitId from (
    with ctx as (
        WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
            FROM main.visits mv UNION ALL
        SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
            FROM rcte INNER JOIN main.visits mv ON rcte.from_visit = mv.id)
        SELECT * from rcte where from_visit != 0)
        select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
            from ctx group by from_visit, url))
   ,UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (select urlid from UrlIdOnly union all select toUrl from UrlIdOnly) group by urlid)
    ,withOccurance as (select urlid fromUrl, toUrl, urlid_c lu, c ltu from (select urlid, toUrl, c urlid_c from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid) q inner join urlidByOccurance on q.toUrl = urlidByOccurance.uid)
   ,onlyUrls as (select iif(lu < ltu, toUrl, fromUrl) fromUrl, iif(lu < ltu, fromUrl, toUrl) toUrl from withOccurance)
   ,cu as (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu from (select fromUrl, url toUrl from onlyUrls  LEFT JOIN urls ON toUrl = urls.id)LEFT JOIN urls ON fromUrl = urls.id)

select distinct '' domain,* from cu order by fromUrl;
;-- -. . -..- - / . -. - .-. -.--
Select * from urls where url like '%spotify.open%';
;-- -. . -..- - / . -. - .-. -.--
Select * from urls where url like '%spotify%';
;-- -. . -..- - / . -. - .-. -.--
attach 'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Profile 5\History' as Profile5Spotify;
;-- -. . -..- - / . -. - .-. -.--
select * from Profile5Spotify.urls;
;-- -. . -..- - / . -. - .-. -.--
insert into Profile5Spotify.urls
Select * from urls where url like '%spotify%';
;-- -. . -..- - / . -. - .-. -.--
insert into Profile5Spotify.urls
Select id,url,title,visit_count,typed_count,last_visit_time,hidden from urls where url like '%spotify%';
;-- -. . -..- - / . -. - .-. -.--
delete from urls where url like '%spotify%';