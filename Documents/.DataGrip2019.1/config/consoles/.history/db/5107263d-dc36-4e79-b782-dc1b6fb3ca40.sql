SELECT t.* FROM urls t
LIMIT 501;
;-- -. . -..- - / . -. - .-. -.--
SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count <= 1
LIMIT 501;
;-- -. . -..- - / . -. - .-. -.--
SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count < 1
LIMIT 501;
;-- -. . -..- - / . -. - .-. -.--
select * from ( SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count < 1 ) inner join (SELECT id,
       url,
       title,
       rev_host,
       visit_count,
       hidden,
       typed,
       favicon_id,
       frecency,
       last_visit_date,
       guid
FROM main.[moz_places] t where visit_count > 0 ) a on url = a.url;
;-- -. . -..- - / . -. - .-. -.--
select * from ( SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count < 1 ) inner join (SELECT id,
       url,
       title,
       rev_host,
       visit_count,
       hidden,
       typed,
       favicon_id,
       frecency,
       last_visit_date,
       guid
FROM main.[FFoxplaces]  where visit_count > 0 ) a on url = a.url;
;-- -. . -..- - / . -. - .-. -.--
select * from ( SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count < 1 ) inner join (SELECT id,
       url,
       title,
       rev_host,
       visit_count,
       hidden,
       typed,
       favicon_id,
       frecency,
       last_visit_date,
       guid
FROM FFoxplaces  where visit_count > 0 ) a on url = a.url;
;-- -. . -..- - / . -. - .-. -.--
select * from ( SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count < 1 ) inner join (SELECT id,
       url,
       title,
       rev_host,
       visit_count,
       hidden,
       typed,
       favicon_id,
       frecency,
       last_visit_date,
       guid
FROM FFoxplaces where visit_count > 0 ) a on url = a.url;
;-- -. . -..- - / . -. - .-. -.--
select * from ( SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count < 1 ) inner join (SELECT id,
       url,
       title,
       rev_host,
       visit_count,
       hidden,
       typed,
       favicon_id,
       frecency,
       last_visit_date,
       guid
FROM main.[moz_places] where visit_count > 0 ) a on url = a.url;
;-- -. . -..- - / . -. - .-. -.--
select * from ( SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count < 1 ) inner join (SELECT id,
       url,
       title,
       rev_host,
       visit_count,
       hidden,
       typed,
       favicon_id,
       frecency,
       last_visit_date,
       guid
FROM ffoxplaces.main.[moz_places] where visit_count > 0 ) a on url = a.url;
;-- -. . -..- - / . -. - .-. -.--
select * from ( SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count < 1 ) inner join (SELECT id,
       url,
       title,
       rev_host,
       visit_count,
       hidden,
       typed,
       favicon_id,
       frecency,
       last_visit_date,
       guid
FROM ffoxplaces.[main].[moz_places] where visit_count > 0 ) a on url = a.url;
;-- -. . -..- - / . -. - .-. -.--
select * from ( SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count < 1 ) inner join (SELECT id,
       url,
       title,
       rev_host,
       visit_count,
       hidden,
       typed,
       favicon_id,
       frecency,
       last_visit_date,
       guid
FROM ffoxplaces.[main.moz_places] where visit_count > 0 ) a on url = a.url;
;-- -. . -..- - / . -. - .-. -.--
select * from ( SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count < 1 ) inner join (SELECT id,
       url,
       title,
       rev_host,
       visit_count,
       hidden,
       typed,
       favicon_id,
       frecency,
       last_visit_date,
       guid
FROM [ffoxplaces].main.moz_places where visit_count > 0 ) a on url = a.url;
;-- -. . -..- - / . -. - .-. -.--
"moz_places";
;-- -. . -..- - / . -. - .-. -.--
select * from ( SELECT id, url, title, visit_count, typed_count, last_visit_time, hidden
FROM urls t where visit_count < 1 ) inner join (SELECT id,
       url,
       title,
       rev_host,
       visit_count,
       hidden,
       typed,
       favicon_id,
       frecency,
       last_visit_date,
       guid
FROM ffoxplaces.main.moz_places where visit_count > 0 ) a on url = a.url;