select '','Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6';
;-- -. . -..- - / . -. - .-. -.--
with moz_placesWhereTitleIsNull as (select url, title from moz_places where title isnull  and instr(url, '=') <> 0)
Select url,
       substr(url, instr(url, '=') + 1, length(url))                         trimAfterEq,
       instr(substr(url, instr(url, '=') + 1, length(url)), '=')             findNextEq,
       substr(substr(url, instr(url, '=') + 1, length(url)), 1,
              instr(substr(url, instr(url, '=') + 1, length(url)), '=') - 1) findNextNextEq
from moz_placesWhereTitleIsNull;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
     ,filtered as (select url, title from source where instr(url, '=') <> 0 limit 100)




Select url,
       substr(url, instr(url, '=') + 1, length(url))                         trimAfterEq,
       instr(substr(url, instr(url, '=') + 1, length(url)), '=')             findNextEq,
       substr(substr(url, instr(url, '=') + 1, length(url)), 1,
              instr(substr(url, instr(url, '=') + 1, length(url)), '=') - 1) findNextNextEq
from filtered;
;-- -. . -..- - / . -. - .-. -.--
select *
from moz_places
where (select ',' || id || ','
       from (select group_concat(url), title, group_concat(id) id, sum(c) c
             from (select url, group_concat(distinct title) title, group_concat(id) id, count(*) c
                   from moz_places
                   group by url)
             group by title
             order by c desc)
       limit 1) like '%,' || id || ',%';
;-- -. . -..- - / . -. - .-. -.--
select *
from moz_bookmarks;
;-- -. . -..- - / . -. - .-. -.--
select *, (select ',' || id || ','
           from (with mp as (select url, group_concat(distinct title) title, group_concat(id) id, count(*) c
                             from moz_places
                             group by url)
                 select group_concat(url), title, group_concat(id) id, sum(c) c
                 from mp
                 group by title
                 order by c desc)
           limit 1) q
from moz_places
where q like '%,' || id || ',%';
;-- -. . -..- - / . -. - .-. -.--
select * from moz_places where title like '[%';
;-- -. . -..- - / . -. - .-. -.--
select reverse(rev_host) host,* from moz_places where title like '[%';
;-- -. . -..- - / . -. - .-. -.--
select reverse(rev_host) host,substr(title,0,11) time,* from moz_places where title like '[%';
;-- -. . -..- - / . -. - .-. -.--
select reverse(rev_host) host,substr(substr(title,0,11),1) time,* from moz_places where title like '[%';
;-- -. . -..- - / . -. - .-. -.--
select reverse(rev_host) host,substr(substr(title,0,11),2) time,* from moz_places where title like '[%';
;-- -. . -..- - / . -. - .-. -.--
select substr(reverse(rev_host),2) host,substr(substr(title,0,11),2) time,* from moz_places where title like '[%';
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
    ,filter as (select * from source where title like '[%')
select substr(reverse(rev_host),2) host,substr(substr(title,0,11),2) time,substr(title,24,) title from filter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
    ,filter as (select * from source where title like '[%')
select substr(reverse(rev_host),2) host,substr(substr(title,0,11),2) time,substr(title,24) title from filter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
    ,filter as (select * from source where title like '[%')
select substr(reverse(rev_host),2) host,substr(substr(title,0,11),2) time,substr(title,25) title from filter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
    , filtered as (select * from source where title like '[%')
    , withCorrectedTitle(select substr(title,25) title from filtered)
select substr(reverse(rev_host),2) host,substr(substr(title,0,11),2) time from filtered;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
    , filtered as (select * from source where title like '[%')
    --, withCorrectedTitle(select substr(title,25) title from filtered)
select substr(reverse(rev_host),2) host,substr(substr(title,0,11),2) time from filtered;
;-- -. . -..- - / . -. - .-. -.--
select * from moz_bookmarks inner join moz_places mp on moz_bookmarks.title = mp.title;
;-- -. . -..- - / . -. - .-. -.--
select * from moz_bookmarks inner join moz_places mp on moz_bookmarks.fk = mp.id;
;-- -. . -..- - / . -. - .-. -.--
select mb.title,mp.url,fk,parent,mb.id from moz_bookmarks mb
                  inner join moz_places mp on mb.fk = mp.id;
;-- -. . -..- - / . -. - .-. -.--
select mb.title b_Title,mp.url,fk fk_Uid,parent,mb.id from moz_bookmarks mb
                  inner join moz_places mp on mb.fk = mp.id;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
    , filtered as (select * from source where title like '[%')
    --, withCorrectedTitle(select substr(title,25) title from filtered)
select substr(reverse(rev_host),2) host,substr(substr(title,0,11),2) time,substr(title,25) title from filtered;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
    , filtered as (select * from source where title like '[%')
    --, withCorrectedTitle(select substr(title,25) title from filtered)
select substr(reverse(rev_host),2) host,substr(substr(title,0,11),2) time,iif(substr(title,25) != url,substr(title,25),'-') title from filtered;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
    , filtered as (select * from source where title like '[%')
    --, withCorrectedTitle(select substr(title,25) title from filtered)
select substr(reverse(rev_host),2) host,substr(substr(title,0,11),2) time,iif(nullif(substr(title,25),url) ,substr(title,25),'-') title from filtered;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
    , filtered as (select * from source where title like '[%')
    --, withCorrectedTitle(select substr(title,25) title from filtered)
select substr(reverse(rev_host),2) host,substr(substr(title,0,11),2) time,ifnull(nullif(substr(title,25),url),'-') title from filtered;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
    , filtered as (select substr(reverse(rev_host),2) host,* from source where title like '[%')
    --, withCorrectedTitle(select substr(title,25) title from filtered)
select host,substr(substr(title,0,11),2) time,

       ifnull(
           nullif(
           nullif(substr(title,25),url)
               ,host)
           ,'-') title

from filtered;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select substr(reverse(rev_host), 2) host, * from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,CorrectedTitle as (select host,id,url,substr(title, 25) title,rev_host,visit_count,hidden,typed,favicon_id,frecency from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from CorrectedTitle)
   ,withtitleWithNorUrlNorDom as (select *, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from withTime)

select * from withtitleWithNorUrlNorDom;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select substr(reverse(rev_host), 2) host, * from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,CorrectedTitle as (select *, substr(title, 25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from CorrectedTitle)
   ,withtitleWithNorUrlNorDom as (select *, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from withTime)

select * from withtitleWithNorUrlNorDom;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select substr(reverse(rev_host), 2) host, * from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from CorrectedTitle)
   ,CorrectedTitle as (select *, substr(title, 25) title from filtered)
   ,withtitleWithNorUrlNorDom as (select *, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from withTime)

select * from withtitleWithNorUrlNorDom;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select substr(reverse(rev_host), 2) host, * from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from filtered)
   ,CorrectedTitle as (select *, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select *, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)

select * from withtitleWithNorUrlNorDom;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select substr(reverse(rev_host), 2) host,title,url from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from filtered)
   ,CorrectedTitle as (select host, url, time, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select *, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)

select * from withtitleWithNorUrlNorDom;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select substr(reverse(rev_host), 2) host,title,url from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from filtered)
   ,CorrectedTitle as (select host, url, time, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select host,
                                         url,
                                         time,
                                         ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)

select * from withtitleWithNorUrlNorDom;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select substr(reverse(rev_host), 2) host,title,url from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from filtered)
   ,CorrectedTitle as (select host, url, time, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select host,
                                         time,
                                         ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)

select * from withtitleWithNorUrlNorDom;
;-- -. . -..- - / . -. - .-. -.--
select mb.title b_Title,mp.url,fk fk_Uid,parent,mb.id from moz_bookmarks mb
                                                               inner join moz_places mp on mb.fk = mp.id;
;-- -. . -..- - / . -. - .-. -.--
select PRECEBT_RANK(100) FROM moz_places;
;-- -. . -..- - / . -. - .-. -.--
select PRECENT_RANK(100) FROM moz_places;
;-- -. . -..- - / . -. - .-. -.--
select PRECENT_RANK() FROM moz_places;
;-- -. . -..- - / . -. - .-. -.--
Select id FROM moz_places WHERE rowid = (select last_insert_rowid() from moz_places;
;-- -. . -..- - / . -. - .-. -.--
Select id FROM moz_places WHERE rowid = (select last_insert_rowid() from moz_places);
;-- -. . -..- - / . -. - .-. -.--
select last_insert_rowid() from moz_places;
;-- -. . -..- - / . -. - .-. -.--
SELECT id FROM moz_places ORDER BY id DESC LIMIT 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1;
;-- -. . -..- - / . -. - .-. -.--
select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+1 idz,* from moz_places;
;-- -. . -..- - / . -. - .-. -.--
select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () idz from moz_places;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from filtered)
   ,CorrectedTitle as (select id,host, url, time, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id,host, time, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)

select * from withtitleWithNorUrlNorDom;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from filtered)
   ,CorrectedTitle as (select id,host, url, time, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id,host, time, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () idz,* from withtitleWithNorUrlNorDom)
select * from inserter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from filtered)
   ,CorrectedTitle as (select id,host, url, time, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id,host, time, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () idz,
                        id fk,
                        host,
                        time,
                        titleWithNorUrlNorDom title
                 from withtitleWithNorUrlNorDom)
select * from inserter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from filtered)
   ,CorrectedTitle as (select id,host, url, time, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id,host, time, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,foldersToCreate as (select time, host, titleWithNorUrlNorDom from withtitleWithNorUrlNorDom group by time,host )
   select * from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from filtered)
   ,CorrectedTitle as (select id,host, url, time, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id,host, time, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,foldersToCreate as (select time, host from withtitleWithNorUrlNorDom group by time,host )
   select * from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) time from filtered)
   ,CorrectedTitle as (select id,host, url, time, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id,host, time, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,foldersToCreate as (select time, host from withtitleWithNorUrlNorDom group by time,host )
   select * from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date from filtered)
   ,CorrectedTitle as (select id,host, url, date, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id,host, date, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date,host )
   select * from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date,substr(substr(title, 14, 11), 2) date from filtered)
   select * from withTime;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date,substr(substr(title, 12, 11), 2) date from filtered)
   select * from withTime;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2),1,8) time from filtered)
   select * from withTime;
;-- -. . -..- - / . -. - .-. -.--
SELECT date('now','start of month','+1 month','-1 day');
;-- -. . -..- - / . -. - .-. -.--
select  datetime(dateAdded, 'unixepoch') from moz_bookmarks;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2),1,8) time from filtered)
   select * from withTime
   ,CorrectedTitle as (select id,host, url, date, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id, host, date, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date,host );
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2),1,8) time from filtered)
select *, strftime('%s',date||time) from withTime;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2),1,8) time from filtered)
select *, strftime('%s',date|' '|time) from withTime;
;-- -. . -..- - / . -. - .-. -.--
SELECT (julianday('now') - 2440587.5)*86400.0;
;-- -. . -..- - / . -. - .-. -.--
SELECT strftime('%s','now');
;-- -. . -..- - / . -. - .-. -.--
select  datetime(dateAdded, 'unixepoch', 'localtime') from moz_bookmarks;
;-- -. . -..- - / . -. - .-. -.--
select *, strftime('%s',date|' '|time) from withTime;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2),1,8) time from filtered)

   ,CorrectedTitle as (select id,host, url, date, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id, host, date, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date,host )

select *, strftime('%s',date|' '|time) from withTime;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2),1,8) time from filtered)

   ,CorrectedTitle as (select id,host, url, date, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id, host, date, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date,host )
select * from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2),1,8) time from filtered)

   ,CorrectedTitle as (select id,host, url, date, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id, host, date, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date,host )
select * from withTime;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2),1,8) time from filtered)

   ,CorrectedTitle as (select id,host, url, date, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id, host, date, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date,host )





select *, strftime('%s',date|' '|time) from withTime;
;-- -. . -..- - / . -. - .-. -.--
select dateAdded from moz_bookmarks;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   ,filtered as (select id,substr(reverse(rev_host), 2) host,title,url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   ,withTime as (select *,substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2),1,8) time from filtered)

   ,CorrectedTitle as (select id,host, url, date, substr(title, 25) title from withTime)
   ,withtitleWithNorUrlNorDom as (select id, host, date, ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom from CorrectedTitle)
   ,foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date,host )





select *, strftime('%s','now') - strftime('%s',date|' '|time) from withTime;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) time
                  from filtered)

   , CorrectedTitle as (select id, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date, host)


select *,
from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) time
                  from filtered)

   , CorrectedTitle as (select id, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date, host)


select *
from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) time
                  from filtered)

   , CorrectedTitle as (select id, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date, host)
,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () id,
                        id fk,
                        1 type, parent, row_number() over () position, null keyword_id, null folder_type, strftime('%s','now') - strftime('%s',date|' '|time) dateAdded, strftime('%s','now') - strftime('%s',date|' '|time) lastModified
                        host,
                        time,
                        titleWithNorUrlNorDom title
                 from withtitleWithNorUrlNorDom)
select *
from inserter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) time
                  from filtered)

   , CorrectedTitle as (select id, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date, host)
,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () id,
                        id fk,
                        1 type, parent, row_number() over () position, null keyword_id, null folder_type,(strftime('%s','now') - strftime('%s',date|' '|time)) dateAdded, (strftime('%s','now') - strftime('%s',date|' '|time)) lastModified
                        host,
                        time,
                        titleWithNorUrlNorDom title
                 from withtitleWithNorUrlNorDom)
select *
from inserter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) time
                  from filtered)

   , CorrectedTitle as (select id, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date, host)
,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () id,
                        id fk,
                        1 type, parent, row_number() over () position, null keyword_id, null folder_type,(strftime('%s','now') - strftime('%s',date||' '||time)) dateAdded, (strftime('%s','now') - strftime('%s',date||' '||time)) lastModified
                        host,
                        time,
                        titleWithNorUrlNorDom title
                 from withtitleWithNorUrlNorDom)
select *
from inserter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) time
                  from filtered)

   , CorrectedTitle as (select id, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date, host)
,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () id,
                        id fk,
                        1 type, parent,
                     row_number() over () position,
                     null keyword_id,
                     null folder_type,
                     (strftime('%s','now') - strftime('%s',date||' '||time)) dateAdded,
                     (strftime('%s','now') - strftime('%s',date||' '||time)) lastModified
                        ,host,
                        time,
                        titleWithNorUrlNorDom title
                 from withtitleWithNorUrlNorDom)
select *
from inserter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) time
                  from filtered)

   , CorrectedTitle as (select id, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date, host)
,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () id,
                        id fk,
                        1 type, '' parent,
                     row_number() over () position,
                     null keyword_id,
                     null folder_type,
                     (strftime('%s','now') - strftime('%s',date||' '||time)) dateAdded,
                     (strftime('%s','now') - strftime('%s',date||' '||time)) lastModified
                        ,host,
                        time,
                        titleWithNorUrlNorDom title
                 from withtitleWithNorUrlNorDom)
select *
from inserter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)

   , CorrectedTitle as (select id, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date, host)
,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () id,
                        id fk,
                        1 type, '' parent,
                     row_number() over () position,
                     null keyword_id,
                     null folder_type,
                     (strftime('%s','now') - strftime('%s',date||' '||timex)) dateAdded,
                     (strftime('%s','now') - strftime('%s',date||' '||timex)) lastModified
                        ,host,
                        timex time,
                        titleWithNorUrlNorDom title
                 from withtitleWithNorUrlNorDom)
select *
from inserter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
    select * from withTime;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date, host)
   select * from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date, host from withtitleWithNorUrlNorDom group by date, host)

,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () id,
                        id fk,
                        1 type, '' parent,
                     row_number() over () position,
                     null keyword_id,
                     null folder_type,
                     (strftime('%s','now') - strftime('%s',date||' '||timex)) dateAdded,
                     (strftime('%s','now') - strftime('%s',date||' '||timex)) lastModified
                        ,host,
                        timex time,
                        titleWithNorUrlNorDom title
                 from withtitleWithNorUrlNorDom)
select *
from inserter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date||substr(timex,0,2), host from withtitleWithNorUrlNorDom group by date||substr(timex,0,2), host)
select * from;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date||substr(timex,0,2), host from withtitleWithNorUrlNorDom group by date||substr(timex,0,2), host)
select * from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select  date||substr(timex,0,2),timex, host from withtitleWithNorUrlNorDom group by date||substr(timex,0,2), host)
select * from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select  date||substr(timex,0,2)||host,timex from withtitleWithNorUrlNorDom group by date||substr(timex,0,2), host)
select * from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select host||date||substr(timex,0,2),timex from withtitleWithNorUrlNorDom group by date||substr(timex,0,2), host)
select * from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date||substr(timex,0,2),host,timex from withtitleWithNorUrlNorDom group by date||substr(timex,0,2),host)
select * from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date||substr(timex,0,2) q,host,timex from withtitleWithNorUrlNorDom group by date||substr(timex,0,2),host)
select * from foldersToCreate order by q,host;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date,substr(timex,0,2) q,host,timex from withtitleWithNorUrlNorDom group by date||substr(timex,0,2),host)
select * from foldersToCreate order by q,host;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, substr(reverse(rev_host), 2) host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date,substr(timex,0,3) q,host,timex from withtitleWithNorUrlNorDom group by date||substr(timex,0,2),host)
select * from foldersToCreate order by q,host;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, replace(replace(substr(reverse(rev_host), 2),'www.',''),'.com','') host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date,substr(timex,0,3) q,host,timex from withtitleWithNorUrlNorDom group by date||substr(timex,0,2),host)
select * from foldersToCreate order by q,host
,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () id,
                        id fk,
                        1 type, '' parent,
                     row_number() over () position,
                     null keyword_id,
                     null folder_type,
                     (strftime('%s','now') - strftime('%s',date||' '||timex)) dateAdded,
                     (strftime('%s','now') - strftime('%s',date||' '||timex)) lastModified
                        ,host,
                        timex time,
                        titleWithNorUrlNorDom title
                 from withtitleWithNorUrlNorDom);
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, replace(replace(substr(reverse(rev_host), 2),'www.',''),'.com','') host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date,substr(timex,0,3) q,host,timex from withtitleWithNorUrlNorDom group by date||substr(timex,0,2),host)
select * from foldersToCreate order by q,host;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, replace(replace(substr(reverse(rev_host), 2),'www.',''),'.com','') host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select date,substr(timex,0,3) q,host from withtitleWithNorUrlNorDom group by date,substr(timex,0,3),host)
select * from foldersToCreate order by q,host;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, replace(replace(substr(reverse(rev_host), 2),'www.',''),'.com','') host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select distinct date,substr(timex,0,3) q,host from withtitleWithNorUrlNorDom group by date,substr(timex,0,3),host)
,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () id,
                        id fk,
                        1 type, '' parent,
                     row_number() over () position,
                     null keyword_id,
                     null folder_type,
                     (strftime('%s','now') - strftime('%s',date||' '||timex)) dateAdded,
                     (strftime('%s','now') - strftime('%s',date||' '||timex)) lastModified
                        ,host,
                        timex time,
                        titleWithNorUrlNorDom title
                 from withtitleWithNorUrlNorDom)
select *
from inserter;
;-- -. . -..- - / . -. - .-. -.--
with source as (select * from moz_places)
   , filtered as (select id, replace(replace(substr(reverse(rev_host), 2),'www.',''),'.com','') host, title, url from source where title like '[2%')
   --, withCorrectedTitle(select substr(title,25) title from filtered)
   , withTime as (select *, substr(substr(title, 0, 11), 2) date, substr(substr(substr(title, 12, 11), 2), 1, 8) timex
                  from filtered)
   , CorrectedTitle as (select id,timex, host, url, date, substr(title, 25) title from withTime)
   , withtitleWithNorUrlNorDom as (select id,
                                          timex,
                                          host,
                                          date,
                                          ifnull(nullif(nullif(title, url), host), '-') titleWithNorUrlNorDom
                                   from CorrectedTitle)
   , foldersToCreate as (select distinct date,substr(timex,0,3) q,host from withtitleWithNorUrlNorDom group by date,substr(timex,0,3),host)
,inserter as (select (SELECT id FROM moz_bookmarks ORDER BY id DESC LIMIT 1)+row_number() over () id,
                        id fk,
                        1 type, '' parent,
                     row_number() over () position,
                     null keyword_id,
                     null folder_type,
                     (strftime('%s','now') - strftime('%s',date||' '||timex)) dateAdded,
                     (strftime('%s','now') - strftime('%s',date||' '||timex)) lastModified
                        ,host,
                        timex time,
                        titleWithNorUrlNorDom title
                 from withtitleWithNorUrlNorDom)
select *
from foldersToCreate;
;-- -. . -..- - / . -. - .-. -.--
attach 'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Default\History' as DefaultHistory;
;-- -. . -..- - / . -. - .-. -.--
attach 'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Profile 3\History' as YoutubeHistory;
;-- -. . -..- - / . -. - .-. -.--
attach 'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Profile 5\History' as SpotifyHistory;
;-- -. . -..- - / . -. - .-. -.--
attach 'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Profile 2\History' as JuicyHistory;
;-- -. . -..- - / . -. - .-. -.--
attach 'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Profile 4\History' as GistGithubHistory;
;-- -. . -..- - / . -. - .-. -.--
select id, url, title, visit_count, typed_count, last_visit_time, hidden
from  DefaultHistory.urls;
;-- -. . -..- - / . -. - .-. -.--
select *
from moz_places;
;-- -. . -..- - / . -. - .-. -.--
select url,title,visit_count,typed
from moz_places;
;-- -. . -..- - / . -. - .-. -.--
select url, title, visit_count, typed_count
from  DefaultHistory.urls;
;-- -. . -..- - / . -. - .-. -.--
Select url,title,visit_count,typed from moz_places where url like '%github%';
;-- -. . -..- - / . -. - .-. -.--
insert into githubGistHistory.urls (url, title, visit_count, typed_count)
Select url,title,visit_count,typed from moz_places where url like '%github%';
;-- -. . -..- - / . -. - .-. -.--
insert into GistGithubHistory.urls (url, title, visit_count, typed_count)
Select url,title,visit_count,typed from moz_places where url like '%github%';
;-- -. . -..- - / . -. - .-. -.--
Select url,title,visit_count,typed,vist_date from moz_places left outer join moz_historyvisits using (id)  where url like '%github%';
;-- -. . -..- - / . -. - .-. -.--
Select url,title,visit_count,typed,visit_date from moz_places left outer join moz_historyvisits using (id)  where url like '%github%';
;-- -. . -..- - / . -. - .-. -.--
insert into GistGithubHistory.urls (url, title, visit_count, typed_count,last_visit_time)
Select url,title,visit_count,typed,visit_date from moz_places left outer join moz_historyvisits using (id)  where url like '%github%';
;-- -. . -..- - / . -. - .-. -.--
insert into GistGithubHistory.urls (url, title, visit_count, typed_count,last_visit_time)

Select url,title,visit_count,typed,coalesce(visit_date,date()) from moz_places left outer join moz_historyvisits using (id)  where url like '%github%';
;-- -. . -..- - / . -. - .-. -.--
Select url,title,visit_count,typed,coalesce(visit_date,date()) from moz_places left outer join moz_historyvisits using (id)  where url like '%github%';
;-- -. . -..- - / . -. - .-. -.--
delete from moz_places where url like '%github%';
;-- -. . -..- - / . -. - .-. -.--
insert into SpotifyHistory.urls (url, title, visit_count, typed_count,last_visit_time)
Select url,title,visit_count,typed,coalesce(visit_date,date()) from moz_places left outer join moz_historyvisits using (id)  where url like '%spotify%';
;-- -. . -..- - / . -. - .-. -.--
;
delete from moz_places where url like '%spotify%';;
;-- -. . -..- - / . -. - .-. -.--
insert into YoutubeHistory.urls (url, title, visit_count, typed_count,last_visit_time)
Select url,title,visit_count,typed,coalesce(visit_date,date()) from moz_places left outer join moz_historyvisits using (id)  where url like '%youtube%';
;-- -. . -..- - / . -. - .-. -.--
delete from moz_places where url like '%youtube%';