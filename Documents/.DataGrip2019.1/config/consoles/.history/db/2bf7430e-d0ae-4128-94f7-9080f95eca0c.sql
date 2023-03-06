select url,
       title,
       count(title)
from wr_pages group by title, url;
;-- -. . -..- - / . -. - .-. -.--
select url,
       title,
       count(title)+count(url) b
from wr_pages group by title, url order by b desc;
;-- -. . -..- - / . -. - .-. -.--
select url,
       title,
       count(title)+count(url)/(length(title)+length(title)) b
from wr_pages group by title, url order by b desc;
;-- -. . -..- - / . -. - .-. -.--
select url,
       title,
       (count(title)+count(url))*(length(title)+length(title)) b
from wr_pages group by title, url order by b desc;
;-- -. . -..- - / . -. - .-. -.--
select url,
       title,
       (count(title)*length(title))+(count(url)*length(url)) b
from wr_pages group by title, url order by b desc;
;-- -. . -..- - / . -. - .-. -.--
select url,
       title,
       (length(title)/count(title))+(length(url)/count(url)) b
from wr_pages group by title, url order by b desc;
;-- -. . -..- - / . -. - .-. -.--
select max(id),
       url,
       title,
       (length(title)/count(title))+(length(url)/count(url)) b
from wr_pages group by title, url order by b desc;
;-- -. . -..- - / . -. - .-. -.--
create table #url (id int, url varchar(500),title varchar(500),weight int);
;-- -. . -..- - / . -. - .-. -.--
create table #url (id int, url varchar(500),title varchar(500),weight int);
insert into #url
select max(id),
       url,
       title,
       (len(title)/count(title))+(len(url)/count(url)) b
from wr_pages group by title, url order by b desc;

update #url set url = replace(url, 'http://','');
update #url set url = replace(url, '?','/^');
update #url set url = replace(url, '&','^');

with rslt as (
SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)')
  FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from #url ) AS a CROSS APPLY x.nodes('i') AS y(i)
)
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;;
;-- -. . -..- - / . -. - .-. -.--
create table superlist.main.#url (id int, url varchar(500),title varchar(500),weight int);
insert into superlist.main.#url
select max(id),
       url,
       title,
       (len(title)/count(title))+(len(url)/count(url)) b
from wr_pages group by title, url order by b desc;

update superlist.main.#url set url = replace(url, 'http://','');
update superlist.main.#url set url = replace(url, '?','/^');
update superlist.main.#url set url = replace(url, '&','^');

with rslt as (
SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)')
  FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from #url ) AS a CROSS APPLY x.nodes('i') AS y(i)
)
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;;
;-- -. . -..- - / . -. - .-. -.--
create table superlist.main.#url (id int, url varchar(500),title varchar(500),weight int);
insert into superlist.main.#url
select max(id),
       url,
       title,
       (len(title)/count(title))+(len(url)/count(url)) b
from wr_pages group by title, url order by b desc;

update superlist.main.#url set url = replace(url, 'http://','');
update superlist.main.#url set url = replace(url, '?','/^');
update superlist.main.#url set url = replace(url, '&','^');

with rslt as (
SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)')
  FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from superlist.main.#url ) AS a CROSS APPLY x.nodes('i') AS y(i)
)
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;;
;-- -. . -..- - / . -. - .-. -.--
create table [superlist].main.#url (id int, url varchar(500),title varchar(500),weight int);
insert into superlist.main.#url
select max(id),
       url,
       title,
       (len(title)/count(title))+(len(url)/count(url)) b
from wr_pages group by title, url order by b desc;

update superlist.main.#url set url = replace(url, 'http://','');
update superlist.main.#url set url = replace(url, '?','/^');
update superlist.main.#url set url = replace(url, '&','^');

with rslt as (
SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)')
  FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from superlist.main.#url ) AS a CROSS APPLY x.nodes('i') AS y(i)
)
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;;
;-- -. . -..- - / . -. - .-. -.--
create table [superlist].main.#url (id int, url varchar(500),title varchar(500),weight int);
;-- -. . -..- - / . -. - .-. -.--
create table [superlist].main.url (id int, url varchar(500),title varchar(500),weight int);
;-- -. . -..- - / . -. - .-. -.--
create table superlist.main.url (id int, url varchar(500),title varchar(500),weight int);
;-- -. . -..- - / . -. - .-. -.--
create table url (id int, url varchar(500),title varchar(500),weight int);
;-- -. . -..- - / . -. - .-. -.--
insert into url
select max(id),
       url,
       title,
       (len(title)/count(title))+(len(url)/count(url)) b
from wr_pages group by title, url order by b desc;

update url set url = replace(url, 'http://','');
update url set url = replace(url, '?','/^');
update url set url = replace(url, '&','^');

with rslt as (
SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)')
  FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url ) AS a CROSS APPLY x.nodes('i') AS y(i)
)
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;;
;-- -. . -..- - / . -. - .-. -.--
insert into url
select max(id),
       url,
       title,
       (lenght(title)/count(title))+(lenght(url)/count(url)) b
from wr_pages group by title, url order by b desc;

update url set url = replace(url, 'http://','');
update url set url = replace(url, '?','/^');
update url set url = replace(url, '&','^');

with rslt as (
SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)')
  FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url ) AS a CROSS APPLY x.nodes('i') AS y(i)
)
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;;
;-- -. . -..- - / . -. - .-. -.--
insert into url
select max(id),
       url,
       title
from wr_pages group by title, url;

update url set url = replace(url, 'http://','');
update url set url = replace(url, '?','/^');
update url set url = replace(url, '&','^');

with rslt as (
SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)')
  FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url ) AS a CROSS APPLY x.nodes('i') AS y(i)
)
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;;
;-- -. . -..- - / . -. - .-. -.--
insert into url
select max(id),
       url,
       title
        ,1
from wr_pages group by title, url;

update url set url = replace(url, 'http://','');
update url set url = replace(url, '?','/^');
update url set url = replace(url, '&','^');

with rslt as (
SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)')
  FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url ) AS a CROSS APPLY x.nodes('i') AS y(i)
)
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;;
;-- -. . -..- - / . -. - .-. -.--
update url set url = replace(url, 'http://','');
update url set url = replace(url, '?','/^');
update url set url = replace(url, '&','^');

with rslt as (
SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)')
  FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url ) AS a CROSS APPLY x.nodes('i') AS y(i)
)
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;;
;-- -. . -..- - / . -. - .-. -.--
with rslt as (
SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)')
  FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url ) AS a CROSS APPLY x.nodes('i') AS y(i)
)
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;
;-- -. . -..- - / . -. - .-. -.--
SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)') FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url ) AS a CROSS APPLY x.nodes('i') AS y(i);
;-- -. . -..- - / . -. - .-. -.--
insert into url
select max(id),
       url,
       title
        ,1
from wr_pages group by title, url;

update url set url = replace(url, 'http://','');
update url set url = replace(url, '?','/^');
update url set url = replace(url, '&','^');

with rslt as (SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)') FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url ) AS a CROSS APPLY x.nodes('i') AS y(i))
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;;
;-- -. . -..- - / . -. - .-. -.--
update url set url = replace(url, 'http://','');
update url set url = replace(url, '?','/^');
update url set url = replace(url, '&','^');

with rslt as (SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)') FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url ) AS a CROSS APPLY x.nodes('i') AS y(i))
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;;
;-- -. . -..- - / . -. - .-. -.--
with rslt as (SELECT row_number() OVER( partition by id ORDER BY (SELECT 1)) depth, value = y.i.value('.', 'nvarchar(4000)') FROM ( SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url ) AS a CROSS APPLY x.nodes('i') AS y(i))
select case when value like '^%' then 'querystring' when depth= 1 then 'Domain' when depth=2 then 'categories' when depth=3 then 'subcategories' when depth=4 then 'brand' when depth=5 then 'product' end section, case when depth>1 and charindex('.', value)>0 then left(value,charindex('.', value)-1) else value end section from rslt;
;-- -. . -..- - / . -. - .-. -.--
SELECT row_number() OVER ( partition by id ORDER BY (SELECT 1);
;-- -. . -..- - / . -. - .-. -.--
SELECT row_number() OVER ( partition by id ORDER BY (SELECT 1)) depth,
                     value = y.i.value('.', 'nvarchar(4000)')
              FROM (SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url) AS a
                       CROSS APPLY x.nodes('i') AS y(i);
;-- -. . -..- - / . -. - .-. -.--
SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url;
;-- -. . -..- - / . -. - .-. -.--
with rslt as (SELECT row_number() OVER ( partition by id ORDER BY (SELECT 1)) depth,
                     value = y.i.value('.', 'nvarchar(4000)')
              FROM (SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url) AS a
                       CROSS APPLY x.nodes('i') AS y(i))
select case
           when value like '^%' then 'querystring'
           when depth = 1 then 'Domain'
           when depth = 2 then 'categories'
           when depth = 3 then 'subcategories'
           when depth = 4 then 'brand'
           when depth = 5 then 'product' end section,
       case
           when depth > 1 and charindex('.', value) > 0 then left(value, charindex('.', value) - 1)
           else value end                    section
from rslt;
;-- -. . -..- - / . -. - .-. -.--
select case
           when value like '^%' then 'querystring'
           when depth = 1 then 'Domain'
           when depth = 2 then 'categories'
           when depth = 3 then 'subcategories'
           when depth = 4 then 'brand'
           when depth = 5 then 'product' end section,
       case
           when depth > 1 and charindex('.', value) > 0 then left(value, charindex('.', value) - 1)
           else value end                    section
from rslt;
;-- -. . -..- - / . -. - .-. -.--
select case
           when value like '^%' then 'querystring'
           when depth = 1 then 'Domain'
           when depth = 2 then 'categories'
           when depth = 3 then 'subcategories'
           when depth = 4 then 'brand'
           when depth = 5 then 'product' end section,
       case
           when depth > 1 and charindex('.', value) > 0 then left(value, charindex('.', value) - 1)
           else value end                    section
from (SELECT row_number() OVER ( partition by id ORDER BY (SELECT 1)) depth,
             value = y.i.value('.', 'nvarchar(4000)')
      FROM (SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url) AS a
               CROSS APPLY x.nodes('i') AS y(i)) rslt;
;-- -. . -..- - / . -. - .-. -.--
with rslt as (SELECT row_number() OVER ( partition by id ORDER BY (SELECT 1)) depth,
                     value = y.i.value('.', 'nvarchar(4000)')
              FROM (SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url) AS a
                       CROSS APPLY x.nodes('i') AS y(i))
select * from rslt;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id, x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') from url),
     
     rslt as (SELECT row_number() OVER ( partition by id ORDER BY (SELECT 1)) depth,
                     value = y.i.value('.', 'nvarchar(4000)')
              FROM a
                       CROSS APPLY x.nodes('i') AS y(i))
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id, 
                 1 x --= CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.') 
                from url
    ),

     rslt as (SELECT row_number() OVER ( partition by id ORDER BY (SELECT 1)) depth,
                     value = y.i.value('.', 'nvarchar(4000)')
              FROM a
                       CROSS APPLY x.nodes('i') AS y(i))
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
partition by id ORDER BY (SELECT 1;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id,
                 1 x --= CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.')
                from url
    ),

     rslt as (
         SELECT 
                --row_number() OVER ( partition by id ORDER BY (SELECT 1)) 
                   1 depth,
                     value = y.i.value('.', 'nvarchar(4000)')
              FROM a
                       CROSS APPLY x.nodes('i') AS y(i))
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id,
                 1 x --= CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.')
                from url
    ),

     rslt as (
         SELECT
                --row_number() OVER ( partition by id ORDER BY (SELECT 1))
                   1 depth,
                     1 value 
                         --= y.i.value('.', 'nvarchar(4000)')
              FROM a
                       CROSS APPLY x.nodes('i') AS y(i))
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id,
                 1 x --= CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.')
                from url
    ),

     rslt as (
         SELECT
                --row_number() OVER ( partition by id ORDER BY (SELECT 1))
                   1 depth,
                     1 value
                         --= y.i.value('.', 'nvarchar(4000)')
              FROM a
                       --CROSS APPLY x.nodes('i') AS y(i))
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id,
                 1 x --= CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.')
                from url
    ),

     rslt as (
         SELECT
                --row_number() OVER ( partition by id ORDER BY (SELECT 1))
                   1 depth,
                     1 value
                         --= y.i.value('.', 'nvarchar(4000)')
              FROM a
         --              CROSS APPLY x.nodes('i') AS y(i)
         )
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id,
                 1 x --= CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.')
                from url
    ),

     rslt as (
         SELECT
                --row_number() OVER ( partition by id ORDER BY (SELECT 1))
                   1 depth,
                      value
                         = y.i.value('.', 'nvarchar(4000)')
              FROM a
         --              CROSS APPLY x.nodes('i') AS y(i)
         )
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id,
                 1 x --= CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.')
                from url
    ),

     rslt as (
         SELECT
                row_number() OVER ( partition by id ORDER BY (SELECT 1))
                    depth,
                      value
                        -- = y.i.value('.', 'nvarchar(4000)')
              FROM a
         --              CROSS APPLY x.nodes('i') AS y(i)
         )
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id,
                 x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.')
                from url
    ),

     rslt as (
         SELECT
                row_number() OVER ( partition by id ORDER BY (SELECT 1))
                    depth,
                      1 value
                        -- = y.i.value('.', 'nvarchar(4000)')
              FROM a
         --              CROSS APPLY x.nodes('i') AS y(i)
         )
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id,
                 1 x --= CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.')
                from url
    ),

     rslt as (
         SELECT
                row_number() OVER ( partition by id ORDER BY (SELECT 1))
                    depth,
                      1 value
                        -- = y.i.value('.', 'nvarchar(4000)')
              FROM a
                       CROSS APPLY x.nodes('i') AS y(i)
         )
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id,
                 1 x --= CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>').query('.')
                from url
    ),

     rslt as (
         SELECT
                row_number() OVER ( partition by id ORDER BY (SELECT 1))
                    depth,
                      1 value
                        -- = y.i.value('.', 'nvarchar(4000)')
              FROM a
         --              CROSS APPLY x.nodes('i') AS y(i)
         )
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
with a as (SELECT id,
                  x = CONVERT(XML, '<i>' + REPLACE(url, '/', '</i><i>') + '</i>')
                 -- .query('.')
                from url
    ),

     rslt as (
         SELECT
                row_number() OVER ( partition by id ORDER BY (SELECT 1))
                    depth,
                      1 value
                        -- = y.i.value('.', 'nvarchar(4000)')
              FROM a
         --              CROSS APPLY x.nodes('i') AS y(i)
         )
select *
from rslt;
;-- -. . -..- - / . -. - .-. -.--
select * from url x where SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) = ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com');
;-- -. . -..- - / . -. - .-. -.--
select * from url x where SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com');
;-- -. . -..- - / . -. - .-. -.--
select * from url x where SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com') order by x.weight;
;-- -. . -..- - / . -. - .-. -.--
select * from url x where SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com') order by x.weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url x where SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
--'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com') order by x.weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url x where SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com') order by x.weight desc;
;-- -. . -..- - / . -. - .-. -.--
update url set domain = SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) where url <> '' AND url is not null;
;-- -. . -..- - / . -. - .-. -.--
select * from url wher domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com') order by x.weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com') order by x.weight desc;
;-- -. . -..- - / . -. - .-. -.--
update url set
               domain =
                   (case (INSTR(url, '//') <> 0) then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1,INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
                    else then ''
end
)


where url <> '' AND url is not null and (url is null OR url = '');
;-- -. . -..- - / . -. - .-. -.--
update url set
               domain =
                   (case when (INSTR(url, '//') <> 0) then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1,INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
                    else case when 
                        (INSTR(url, '/') <> 0) 
                        then 
                        SUBSTR(url, 1,INSTR(url, '/') - 1) else ''
end end
)


where url <> '' AND url is not null and (url is null OR url = '');
;-- -. . -..- - / . -. - .-. -.--
update url set
               domain =
                   (case when (INSTR(url, '//') <> 0) then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1,INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
                    else case when
                        (INSTR(url, '/') <> 0)
                        then
                        SUBSTR(url, 1,INSTR(url, '/') - 1) 
                        else case when
                            (INSTR(url, '.') <> 0)
                            then
                            url 
                            else ''
end end end
)


where url <> '' AND url is not null and (url is null OR url = '');
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
        (case
             when (INSTR(url, '//') <> 0)
                 then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          SUBSTR(url, 1, INSTR(url, '/') - 1)
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   url
                               else ''
                          end end end
            )


where url <> ''
  AND url is not null
  and (domain is null OR domain = '');
;-- -. . -..- - / . -. - .-. -.--
select url from url where domain = '' OR domain is null group by url;
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
        (case
             when (INSTR(url, 'http') <> 0)
                 then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          SUBSTR(url, 1, INSTR(url, '/') - 1)
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   url
                               else ''
                          end end end
            )


where url <> ''
  AND url is not null
  and (domain is null OR domain = '');
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
        (case
             when (INSTR(url, 'https://') <> 0 OR INSTR(url, 'http://') <> 0)
                 then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          SUBSTR(url, 1, INSTR(url, '/') - 1)
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   url
                               else ''
                          end end end
            )


where url <> ''
  AND url is not null
  and (domain is null OR domain = '');
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
        (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
                 then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          SUBSTR(url, 1, INSTR(url, '/') - 1)
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   url
                               else ''
                          end end end
            )


where url <> ''
  AND url is not null
  and (domain is null OR domain = '');
;-- -. . -..- - / . -. - .-. -.--
select url,SUBSTR(url, 1, INSTR(url, '/') - 1) a from url where domain = '' OR domain is null group by url;
;-- -. . -..- - / . -. - .-. -.--
select url from url where url in (select url,SUBSTR(url, 1, INSTR(url, '/') - 1) a from url where domain = '' OR domain is null group by url);
;-- -. . -..- - / . -. - .-. -.--
select url from url where url in (select url from url where domain = '' OR domain is null group by url);
;-- -. . -..- - / . -. - .-. -.--
select * from url where url in (select url from url where domain = '' OR domain is null group by url);
;-- -. . -..- - / . -. - .-. -.--
select * from url where url in (select url from url where domain = '' OR domain is null group by url) order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url 
    where url in (select x.url from url x where x.domain = '' OR x.domain is null group by x.url) 
        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com') order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com'

                                  ) order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
        (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
                 then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then 
                            case when (INSTR(url, 'ww') = 1) then substring(url, instr(url,'.'),INSTR(url, '/')-instr(url,'.'))
                            else SUBSTR(url, 1, INSTR(url, '/') - 1) end                         
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case when (INSTR(url, 'ww') = 1) then substring(url, instr(url,'.'),len(url))
                                   else url end
                               else ''
                          end end end
            )
where (url <> '' AND url is not null)
  and ((domain is null OR domain = '') OR instr(domain,'w') = 1 OR instr(url,domain) = 2);
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
        (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
                 then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                            case when (INSTR(url, 'ww') = 1) then substr(url, instr(url,'.'),INSTR(url, '/')-instr(url,'.'))
                            else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case when (INSTR(url, 'ww') = 1) then substr(url, instr(url,'.'),len(url))
                                   else url end
                               else ''
                          end end end
            )
where (url <> '' AND url is not null)
  and ((domain is null OR domain = '') OR instr(domain,'w') = 1 OR instr(url,domain) = 2);
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
        (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
                 then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                            case when (INSTR(url, 'ww') = 1) then substr(url, instr(url,'.'),INSTR(url, '/')-instr(url,'.'))
                            else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case when (INSTR(url, 'ww') = 1) then substr(url, instr(url,'.'),lenght(url))
                                   else url end
                               else ''
                          end end end
            )
where (url <> '' AND url is not null)
  and ((domain is null OR domain = '') OR instr(domain,'w') = 1 OR instr(url,domain) = 2);
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
        (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
                 then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                            case when (INSTR(url, 'ww') = 1) then substr(url, instr(url,'.'),INSTR(url, '/')-instr(url,'.'))
                            else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case when (INSTR(url, 'ww') = 1) then substr(url, instr(url,'.'),length(url))
                                   else url end
                               else ''
                          end end end
            )
where (url <> '' AND url is not null)
  and ((domain is null OR domain = '') OR instr(domain,'w') = 1 OR instr(url,domain) = 2);
;-- -. . -..- - / . -. - .-. -.--
select * from url

        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com'

                                  ) order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url

where not(domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com'

                                  ))

        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select max(url),max(title), domain from url
where not(domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com'))
group by domain
        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
        (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
                 then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url, instr(url, '.')+1, INSTR(url, '/') - instr(url, '.'))
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1) then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
            )
where (url <> '' AND url is not null)
  and ((domain is null OR domain = '') OR (instr(domain, 'w') = 1 OR instr(domain, '.') = 1) OR instr(url, domain) = 2);
;-- -. . -..- - / . -. - .-. -.--
select max(url),max(title), domain from url
where not(domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com'
                    
                    
                    ))
group by domain
        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
        (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
                 then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url, instr(url, '.')+1, INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1) then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
            )
where (url <> '' AND url is not null)
  and (
      (
      (domain is null OR domain = '') 
          OR (instr(domain, 'w') = 1 
          OR instr(domain, '.') = 1)  
          OR instr(domain,'/') = length(domain)) OR instr(url, domain) = 2);
;-- -. . -..- - / . -. - .-. -.--
select max(url),max(title), domain from url
where not(domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com'


                    ))
group by domain
        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select max(url),
       
       tile = ( case when max(title) is null then domain else max(title) end) , domain from url
where not(domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com'
,
'x99.nudevista.com'

                    ))
group by domain
        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select max(url),

       tile = max(( case when title is null then domain else title end)) , domain from url
where not(domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com'
,
'x99.nudevista.com'

                    ))
group by domain
        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select max(url),

       title = max(( case when title is null then domain else title end)) , domain from url
where not(domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com'
,
'x99.nudevista.com'

                    ))
group by domain
        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select max(url),

       max((case when title is null then domain else title end)) title , domain from url
where not(domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com'
,
'x99.nudevista.com'

                    ))
group by domain
        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select max(url),

       (case when max(title) is null then domain else max(title) end) title , domain from url
where not(domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
'opera.com',
'pornmd.com',
'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com'
,
'x99.nudevista.com'

                    ))
group by domain
        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com',
'x99.nudevista.com',
'yobt.com',
'yehfun.com',
'xsharebox.com',
'yuvutu.com',
    'yehfun.com',
    'yobt.com',
'xsharebox.com',
'wearehairy.com',
'wankspider.com',
'wanknews.com',
'vidsvidsvids.com',
'videosz.com',
'vid2c.com',
'trinity-productions.com',
    'vaginapageant.com',
'tubemonsoon.com',
'tubebond.com',
'tube.nu',
'sunporno.com',
'submityourtapes.com',
  'spankwire.com',
'slutload.com',
'shufuni.com',
'sextubest.com',
'sextube.com',
'sextasytube.net',
'sexmums.com',
'sexfreedomtube.com',          
'teensoloporn.com',
'teenboat.com'


) order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
--'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com',
'x99.nudevista.com',
'yobt.com',
'yehfun.com',
'xsharebox.com',
'yuvutu.com',
    'yehfun.com',
    'yobt.com',
'xsharebox.com',
'wearehairy.com',
'wankspider.com',
'wanknews.com',
'vidsvidsvids.com',
'videosz.com',
'vid2c.com',
'trinity-productions.com',
    'vaginapageant.com',
'tubemonsoon.com',
'tubebond.com',
'tube.nu',
'sunporno.com',
'submityourtapes.com',
  'spankwire.com',
'slutload.com',
'shufuni.com',
'sextubest.com',
'sextube.com',
'sextasytube.net',
'sexmums.com',
'sexfreedomtube.com',          
'teensoloporn.com',
'teenboat.com'


) order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select max(url),

       (case when max(title) is null then domain else max(title) end) title , domain from url
where not(domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
--'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com',
'x99.nudevista.com',
'yobt.com',
'yehfun.com',
'xsharebox.com',
'yuvutu.com',
    'yehfun.com',
    'yobt.com',
'xsharebox.com',
'wearehairy.com',
'wankspider.com',
'wanknews.com',
'vidsvidsvids.com',
'videosz.com',
'vid2c.com',
'trinity-productions.com',
    'vaginapageant.com',
'tubemonsoon.com',
'tubebond.com',
'tube.nu',
'sunporno.com',
'submityourtapes.com',
  'spankwire.com',
'slutload.com',
'shufuni.com',
'sextubest.com',
'sextube.com',
'sextasytube.net',
'sexmums.com',
'sexfreedomtube.com',          
'teensoloporn.com',
'teenboat.com'

                    ))
group by domain
        order by url desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select count(url) c,max(url) u,

       (case when max(title) is null then domain else max(title) end) title , domain from url
where not(domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
--'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com',
'x99.nudevista.com',
'yobt.com',
'yehfun.com',
'xsharebox.com',
'yuvutu.com',
    'yehfun.com',
    'yobt.com',
'xsharebox.com',
'wearehairy.com',
'wankspider.com',
'wanknews.com',
'vidsvidsvids.com',
'videosz.com',
'vid2c.com',
'trinity-productions.com',
    'vaginapageant.com',
'tubemonsoon.com',
'tubebond.com',
'tube.nu',
'sunporno.com',
'submityourtapes.com',
  'spankwire.com',
'slutload.com',
'shufuni.com',
'sextubest.com',
'sextube.com',
'sextasytube.net',
'sexmums.com',
'sexfreedomtube.com',
'teensoloporn.com',
'teenboat.com'

                    ))
group by domain
        order by c desc,u desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
--'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com',
'x99.nudevista.com',
'yobt.com',
'yehfun.com',
'xsharebox.com',
'yuvutu.com',
    'yehfun.com',
    'yobt.com',
'xsharebox.com',
'wearehairy.com',
'wankspider.com',
'wanknews.com',
'vidsvidsvids.com',
'videosz.com',
'vid2c.com',
'trinity-productions.com',
    'vaginapageant.com',
'tubemonsoon.com',
'tubebond.com',
'tube.nu',
'sunporno.com',
'submityourtapes.com',
  'spankwire.com',
'slutload.com',
'shufuni.com',
'sextubest.com',
'sextube.com',
'sextasytube.net',
'sexmums.com',
'sexfreedomtube.com',          
'teensoloporn.com',
'teenboat.com',
'rule34.paheal.net',
'mrstiff.com',
'gaybeast.com',
'boobpedia.com',
'mrsnake.com',
'richporntube.com',
    'images.google.com',
                                  'fapdu.com',
                                  'ah-me.com',
                                  'video.xnxx.com',
                                  'rawtube.com',
                                  'porn.com',
                                  'grandpabangsgrandma.com',
                                  'freeones.com',
                                  'board.freeones.com',
                                  'scarlettsabet.com',
                                  'nataliedee.com',
                                  'drtuber.com',
                                  'desihoes.com',
                                  'moviesvintage.com',
                                  'nuvid.com',
                                  'hardsextube.com',
                                  'fatmomtube.com',
                                  'adultrental.com',
                                  'jimslip.com',
                                  'fuckthegeek.com',
                                  'eporner.com',
                                  'boomporntube.com',
                                  'audrawolfmann.net',
                                  'amateur-gangbangers.com',
                                  'real-sexxx.com',
                                  'porntubese.com',
'pornoxo.com',
'pornbaytube.com',
'longporntube.com',
'largeporntube.com',
'hottubeclips.com',
'freeporn.com',
'free-vidz.com',
'askforporn.com',
'rude.com',
                                   'ct.adultrental.com',
'agriculteursgay.socialparody.com',
'vodpornos.com',
'utubefat.com',
'sextubster.com',
'retrotubeclips.com',
'rabbitsreviews.com',
'pussyteenporn.com',
'porntubest.com',
'pornstarsjobs.com',
'pornstarnetwork.com',
'pornqik.com',
'oopsmovs.com',
'nudevista.se',
'nastydirectory.com',
'maturetubesite.net',
'lesbiansfromindia.com',
'kenny-glenn.net',
'keezmovies.com',
'interracialexpert.com',
'iafd.com',
'freshteenxxx.com',
'dinotube.com',
'clearclips.com',
'boysfood.com',
'bollywoodhungama.com',
'blackonslut.com',
'badjojo.com',
'africanfucktours.com',
'1teentube.com',
'wild-galls.com',

                                  'keporn.com'

) order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
--'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com',
'x99.nudevista.com',
'yobt.com',
'yehfun.com',
'xsharebox.com',
'yuvutu.com',
    'yehfun.com',
    'yobt.com',
'xsharebox.com',
'wearehairy.com',
'wankspider.com',
'wanknews.com',
'vidsvidsvids.com',
'videosz.com',
'vid2c.com',
'trinity-productions.com',
    'vaginapageant.com',
'tubemonsoon.com',
'tubebond.com',
'tube.nu',
'sunporno.com',
'submityourtapes.com',
  'spankwire.com',
'slutload.com',
'shufuni.com',
'sextubest.com',
'sextube.com',
'sextasytube.net',
'sexmums.com',
'sexfreedomtube.com',          
'teensoloporn.com',
'teenboat.com',
'rule34.paheal.net',
'mrstiff.com',
'gaybeast.com',
'boobpedia.com',
'mrsnake.com',
'richporntube.com',
    'images.google.com',
                                  'fapdu.com',
                                  'ah-me.com',
                                  'video.xnxx.com',
                                  'rawtube.com',
                                  'porn.com',
                                  'grandpabangsgrandma.com',
                                  'freeones.com',
                                  'board.freeones.com',
                                  'scarlettsabet.com',
                                  'nataliedee.com',
                                  'drtuber.com',
                                  'desihoes.com',
                                  'moviesvintage.com',
                                  'nuvid.com',
                                  'hardsextube.com',
                                  'fatmomtube.com',
                                  'adultrental.com',
                                  'jimslip.com',
                                  'fuckthegeek.com',
                                  'eporner.com',
                                  'boomporntube.com',
                                  'audrawolfmann.net',
                                  'amateur-gangbangers.com',
                                  'real-sexxx.com',
                                  'porntubese.com',
'pornoxo.com',
'pornbaytube.com',
'longporntube.com',
'largeporntube.com',
'hottubeclips.com',
'freeporn.com',
'free-vidz.com',
'askforporn.com',
'rude.com',
                                   'ct.adultrental.com',
'agriculteursgay.socialparody.com',
'vodpornos.com',
'utubefat.com',
'sextubster.com',
'retrotubeclips.com',
'rabbitsreviews.com',
'pussyteenporn.com',
'porntubest.com',
'pornstarsjobs.com',
'pornstarnetwork.com',
'pornqik.com',
'oopsmovs.com',
'nudevista.se',
'nastydirectory.com',
'maturetubesite.net',
'lesbiansfromindia.com',
'kenny-glenn.net',
'keezmovies.com',
'interracialexpert.com',
'iafd.com',
'freshteenxxx.com',
'dinotube.com',
'clearclips.com',
'boysfood.com',
'bollywoodhungama.com',
'blackonslut.com',
'badjojo.com',
'africanfucktours.com',
'1teentube.com',
'wild-galls.com',

                                  'keporn.com',
'watch2porn.net',
'vp7.com',
'vintageporn69.com',
'trustedporntube.com',
'spicysextube.com',
'showteensex.com',
'sex2mix.com',
'redtoptube.com',
'porn-wikipedia.com',
'pikdit.com',
'movies.askjolene.com',
'klub.co.in',
'hotxvideos.net',
'hardcoredumper.com',
'gangbangbecky.com',
'freshxxxtube.com'

) order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
--'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com',
'x99.nudevista.com',
'yobt.com',
'yehfun.com',
'xsharebox.com',
'yuvutu.com',
    'yehfun.com',
    'yobt.com',
'xsharebox.com',
'wearehairy.com',
'wankspider.com',
'wanknews.com',
'vidsvidsvids.com',
'videosz.com',
'vid2c.com',
'trinity-productions.com',
    'vaginapageant.com',
'tubemonsoon.com',
'tubebond.com',
'tube.nu',
'sunporno.com',
'submityourtapes.com',
  'spankwire.com',
'slutload.com',
'shufuni.com',
'sextubest.com',
'sextube.com',
'sextasytube.net',
'sexmums.com',
'sexfreedomtube.com',          
'teensoloporn.com',
'teenboat.com',
'rule34.paheal.net',
'mrstiff.com',
'gaybeast.com',
'boobpedia.com',
'mrsnake.com',
'richporntube.com',
    'images.google.com',
                                  'fapdu.com',
                                  'ah-me.com',
                                  'video.xnxx.com',
                                  'rawtube.com',
                                  'porn.com',
                                  'grandpabangsgrandma.com',
                                  'freeones.com',
                                  'board.freeones.com',
                                  'scarlettsabet.com',
                                  'nataliedee.com',
                                  'drtuber.com',
                                  'desihoes.com',
                                  'moviesvintage.com',
                                  'nuvid.com',
                                  'hardsextube.com',
                                  'fatmomtube.com',
                                  'adultrental.com',
                                  'jimslip.com',
                                  'fuckthegeek.com',
                                  'eporner.com',
                                  'boomporntube.com',
                                  'audrawolfmann.net',
                                  'amateur-gangbangers.com',
                                  'real-sexxx.com',
                                  'porntubese.com',
'pornoxo.com',
'pornbaytube.com',
'longporntube.com',
'largeporntube.com',
'hottubeclips.com',
'freeporn.com',
'free-vidz.com',
'askforporn.com',
'rude.com',
                                   'ct.adultrental.com',
'agriculteursgay.socialparody.com',
'vodpornos.com',
'utubefat.com',
'sextubster.com',
'retrotubeclips.com',
'rabbitsreviews.com',
'pussyteenporn.com',
'porntubest.com',
'pornstarsjobs.com',
'pornstarnetwork.com',
'pornqik.com',
'oopsmovs.com',
'nudevista.se',
'nastydirectory.com',
'maturetubesite.net',
'lesbiansfromindia.com',
'kenny-glenn.net',
'keezmovies.com',
'interracialexpert.com',
'iafd.com',
'freshteenxxx.com',
'dinotube.com',
'clearclips.com',
'boysfood.com',
'bollywoodhungama.com',
'blackonslut.com',
'badjojo.com',
'africanfucktours.com',
'1teentube.com',
'wild-galls.com',

                                  'keporn.com',
'watch2porn.net',
'vp7.com',
'vintageporn69.com',
'trustedporntube.com',
'spicysextube.com',
'showteensex.com',
'sex2mix.com',
'redtoptube.com',
'porn-wikipedia.com',
'pikdit.com',
'movies.askjolene.com',
'klub.co.in',
'hotxvideos.net',
'hardcoredumper.com',
'gangbangbecky.com',
'freshxxxtube.com',
'cdn1.public.youporn.phncdn.com',
'amateurfetishclips.com',
'6aa.info',
'tjoob.com',
'shockingtube.com',
'sexyfatgirls.net',
'sexspaghetti.com',
'redcitadel.com',
'racialthumbs.com',
'pornyeah.com',
'pornxix.com',
'porntubesearch.org',
'porntitan.com',
'porngeographic.com',
'porn-w.org',
'popoholic.com',
'peeingshow.com',
'panicporn.com',
'nastyvideotube.com',
'myvideo.de',
'myvaginasite.com',
'mypornbutler.com',
'movieslinksfree.com',
'moofmoof.com',
'mistressdestiny.com',
'mcxtube.com',
'kporno.com',
'juxmovies.com',
'interracialparty.net',
'interracialexposed.com',
'huntmodelz.com',
'hqseek.com',
'hindilinks4u.net',
'hdvirgin.com',
'hairyempire.com',
'grannysex.in',
'freeones.se',
'free.cbttube.com',
'fatalfemdoms.com',
'excaliburfilms.com',
'desitorrents.com',
'desigupshupp.com',
'britishbukkakebabes.com',
'bravomamas.com',
'blacksalamis.com',
'blackmonsterride.com',
'blackbabesboned.com',
'bigcamtube.com',
'beastiality.com',
'azgals.com',
'animalsex-tube.com',
'amateurindex.com',
'africanfucktour.com',
'777xporn.com',
'2shared.com'

) order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
--'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com',
'x99.nudevista.com',
'yobt.com',
'yehfun.com',
'xsharebox.com',
'yuvutu.com',
    'yehfun.com',
    'yobt.com',
'xsharebox.com',
'wearehairy.com',
'wankspider.com',
'wanknews.com',
'vidsvidsvids.com',
'videosz.com',
'vid2c.com',
'trinity-productions.com',
    'vaginapageant.com',
'tubemonsoon.com',
'tubebond.com',
'tube.nu',
'sunporno.com',
'submityourtapes.com',
  'spankwire.com',
'slutload.com',
'shufuni.com',
'sextubest.com',
'sextube.com',
'sextasytube.net',
'sexmums.com',
'sexfreedomtube.com',          
'teensoloporn.com',
'teenboat.com',
'rule34.paheal.net',
'mrstiff.com',
'gaybeast.com',
'boobpedia.com',
'mrsnake.com',
'richporntube.com',
    'images.google.com',
                                  'fapdu.com',
                                  'ah-me.com',
                                  'video.xnxx.com',
                                  'rawtube.com',
                                  'porn.com',
                                  'grandpabangsgrandma.com',
                                  'freeones.com',
                                  'board.freeones.com',
                                  'scarlettsabet.com',
                                  'nataliedee.com',
                                  'drtuber.com',
                                  'desihoes.com',
                                  'moviesvintage.com',
                                  'nuvid.com',
                                  'hardsextube.com',
                                  'fatmomtube.com',
                                  'adultrental.com',
                                  'jimslip.com',
                                  'fuckthegeek.com',
                                  'eporner.com',
                                  'boomporntube.com',
                                  'audrawolfmann.net',
                                  'amateur-gangbangers.com',
                                  'real-sexxx.com',
                                  'porntubese.com',
'pornoxo.com',
'pornbaytube.com',
'longporntube.com',
'largeporntube.com',
'hottubeclips.com',
'freeporn.com',
'free-vidz.com',
'askforporn.com',
'rude.com',
                                   'ct.adultrental.com',
'agriculteursgay.socialparody.com',
'vodpornos.com',
'utubefat.com',
'sextubster.com',
'retrotubeclips.com',
'rabbitsreviews.com',
'pussyteenporn.com',
'porntubest.com',
'pornstarsjobs.com',
'pornstarnetwork.com',
'pornqik.com',
'oopsmovs.com',
'nudevista.se',
'nastydirectory.com',
'maturetubesite.net',
'lesbiansfromindia.com',
'kenny-glenn.net',
'keezmovies.com',
'interracialexpert.com',
'iafd.com',
'freshteenxxx.com',
'dinotube.com',
'clearclips.com',
'boysfood.com',
'bollywoodhungama.com',
'blackonslut.com',
'badjojo.com',
'africanfucktours.com',
'1teentube.com',
'wild-galls.com',

                                  'keporn.com',
'watch2porn.net',
'vp7.com',
'vintageporn69.com',
'trustedporntube.com',
'spicysextube.com',
'showteensex.com',
'sex2mix.com',
'redtoptube.com',
'porn-wikipedia.com',
'pikdit.com',
'movies.askjolene.com',
'klub.co.in',
'hotxvideos.net',
'hardcoredumper.com',
'gangbangbecky.com',
'freshxxxtube.com',
'cdn1.public.youporn.phncdn.com',
'amateurfetishclips.com',
'6aa.info',
'tjoob.com',
'shockingtube.com',
'sexyfatgirls.net',
'sexspaghetti.com',
'redcitadel.com',
'racialthumbs.com',
'pornyeah.com',
'pornxix.com',
'porntubesearch.org',
'porntitan.com',
'porngeographic.com',
'porn-w.org',
'popoholic.com',
'peeingshow.com',
'panicporn.com',
'nastyvideotube.com',
'myvideo.de',
'myvaginasite.com',
'mypornbutler.com',
'movieslinksfree.com',
'moofmoof.com',
'mistressdestiny.com',
'mcxtube.com',
'kporno.com',
'juxmovies.com',
'interracialparty.net',
'interracialexposed.com',
'huntmodelz.com',
'hqseek.com',
'hindilinks4u.net',
'hdvirgin.com',
'hairyempire.com',
'grannysex.in',
'freeones.se',
'free.cbttube.com',
'fatalfemdoms.com',
'excaliburfilms.com',
'desitorrents.com',
'desigupshupp.com',
'britishbukkakebabes.com',
'bravomamas.com',
'blacksalamis.com',
'blackmonsterride.com',
'blackbabesboned.com',
'bigcamtube.com',
'beastiality.com',
'azgals.com',
'animalsex-tube.com',
'amateurindex.com',
'africanfucktour.com',
'777xporn.com',
'2shared.com',
'wtchporn.com',
'wivespornmovies.com',
'widget.clips4sale.com',
'whois.domaintools.com',
'watchmovies7z.blogspot.se',
'violetmonroe.net',
'vintageporntv.com',
'vidgrab.net',
'videos.videomasti.net',
'videomasti.net',
'videofreakz.com',
'twomovies.name',
'thingsmydickdoes.tumblr.com',
'teenpornstreams.com',
'teen-movs.com',
'sxplanet.com',
'start.badults.se',
'shufflecam.net',
'shaggyblossom.com',
'sexylosers.com',
'sextasytube.com',
'sensibleerection.com',
'rexxx.com',
'pussyteentube.com',
'pornwiki.com',
'pornviet.net',
'pornobistro.com',
'planetpornvideos.com',
'pixocafe.com',
'overthumbs.com',
'oldgrannysex.net',
                                  'my.nudevista.se',
'mobile.spankwire.com',
'minkasicklinger.com',
'mb.indecentes-voisines.com',
'keyporntube.com',
'join.wearehairy.com',
'jithuwap.mobie.in',
'jesporn.com',
'interracial-thumbs.org',
'images.arcadja.com',
'hits.britishbukkakebabes.com',
'hilltopads.net',
'h2freeporn.com',
'galleries.videosz.com',
'galleries.hairy-women-pussy.net',
'full-online-movies.blogspot.se',
'fucksia.tumblr.com',
'fuckinghomepage.com',
'freethenipple.com',
'fitgirlsohyeah.tumblr.com',
'fashionista.com',
'fantasti.cc',
'easymovielink.blogspot.se',
'creatives.livejasmin.com',
'cdn1.mobile.spankwire.phncdn.com',
'cams.com',
'blog.youporn.com',
'askaguywholikesfatchicks.tumblr.com',
'adv.h2porn.com',
'88.208.61.4',
'88.208.61.11',
'88.208.58.83',
'88.208.52.191',
'88.208.24.205',
'88.208.24.199',
'213.174.156.59',
'vintage-pinup.com',
'vintage-computer.com',
'royalporntube.com',
'pornostars-collection.ru',
'moviefap.com',
'free-vintage.com',
'vintageporndrawings.porncolection.com',
'vintage.wanknews.com',
'retro-porn.maniacpass.com',
'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc'


) order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select count(url) c,max(url) u,
(case when title is null then domain else title end) title , domain from url

       where domain in('bing.com','one-tab.com', 'google.com', 'google.se')
       GROUP by title
--where not(domain in ( 'xhamster.com', 'routgveriprt.com', 'pornsos.com', 'xvideos.com', 'toesuddenlyon.com', 'pervertslut.com', 'pornhub.com', 'bestialitytaboo.tv', 'riosso.xyz', 'luxuretv.com', 'tnaflix.com', 'femefun.com', 'mylust.com', 'justporno.tv', 'youporn.com', '3animalsextube.com', 'nonamebrdn36.live', 'zooskoolvideos.com', 'ezysl.com', 'empflix.com', 'pornzoovideos.com', 'pornsocket.com', 'pornskirt.com', 'alphaporno.com', 'daily-bbw-porn.com', 'xnxx.com', 'voyeurstyle.com', 'zoofiliavids.com', 'bestialitysextaboo.com', 'adult-empire.com', 'zoofilianet.com', 'eoredi.com', 'nuggitgames.com', 'pornspark.com', 'proporn.com', 'syndicpop.com', 'pornfay.org', 'trueamateurmodels.com', 'fadsoks.com', 'eroprofile.com', 'homemoviestube.com', 'livejasmin.com', 'zoomobileporn.com', 'bestialzoo.org', 'erkiss.org', 'indianpornvideos2.com', 'lifematures.com', 'xhamsterpremium.com', 'ampugi334f.com', 'animalsexfun.com', 'backetrut.pro', 'fadsips.com', 'girlscv.com', 'gotporn.com', 'imagefap.com', 'instantresp.com', 'motherless.com', 'nesaporn.com', 'pornorio.net', 'pornscum.com', 'pornvideoq.com', 'sexuhot.com', 'tumblr.com', 'dirtydoglinks.com', 'forumophilia.com', 'hotpornshow.com', 'image-dreams.com', 'porntopic.com', 'pornvideos.rs', 'spankbang.com', 'tensorflow.org', 'thumbzilla.com', 'tube8.com', 'yahoo.com', 'adxpartner.com', 'bbwfuckpic.com', 'bestialitygirls.com', 'blackbustybabes.com', 'h2porn.com', 'heavy-r.com', 'hotsexyaunty.com', 'k9thumbs.org', 'message-alert.info', 'myzoowife.com', 'nudevista.com', 'opera.com', 'pornmd.com', 'raindrop.io', 'redtube.com', 'sheamateur.com', 'totalav.com', 'usingenglish.com', 'xxgasm.com', 'xxxvogue.net', 'xxvideoclips.us', 'xxxvideoclips.us', 'xxdessert.com', 'xxxdessert.com', 'xxbunker.com', 'xxxbunker.com', 'xvideo.us', 'xxvideo.us', 'xxlmag.com', 'xvideoshome.com', 'xvideosde.com', 'xvideos.com', 'xvideohost.com', 'xtube.com', 'xlgirls.com', 'xixtube.com', 'hamsterpremiumpass.com', 'hamsterhq.com', 'xhamsterhq.com', 'hamster.com', '99.nudevista.com', 'ww.zootube365.com', 'ww.yuvutu.com', 'ww.youporn.com', 'zzztube.com', 'zootube365.com', 'yuppix.com', 'youjizzlive.com', 'youjizz.com', 'xhamsterpremiumpass.com', 'xfreehosting.com', 'x99.nudevista.com', 'yobt.com', 'yehfun.com', 'xsharebox.com', 'yuvutu.com', 'yehfun.com', 'yobt.com', 'xsharebox.com', 'wearehairy.com', 'wankspider.com', 'wanknews.com', 'vidsvidsvids.com', 'videosz.com', 'vid2c.com', 'trinity-productions.com', 'vaginapageant.com', 'tubemonsoon.com', 'tubebond.com', 'tube.nu', 'sunporno.com', 'submityourtapes.com', 'spankwire.com', 'slutload.com', 'shufuni.com', 'sextubest.com', 'sextube.com', 'sextasytube.net', 'sexmums.com', 'sexfreedomtube.com', 'teensoloporn.com', 'teenboat.com', 'rule34.paheal.net', 'mrstiff.com', 'gaybeast.com', 'boobpedia.com', 'mrsnake.com', 'richporntube.com', 'images.google.com', 'fapdu.com', 'ah-me.com', 'video.xnxx.com', 'rawtube.com', 'porn.com', 'grandpabangsgrandma.com', 'freeones.com', 'board.freeones.com', 'scarlettsabet.com', 'nataliedee.com', 'drtuber.com', 'desihoes.com', 'moviesvintage.com', 'nuvid.com', 'hardsextube.com', 'fatmomtube.com', 'adultrental.com', 'jimslip.com', 'fuckthegeek.com', 'eporner.com', 'boomporntube.com', 'audrawolfmann.net', 'amateur-gangbangers.com', 'real-sexxx.com', 'porntubese.com', 'pornoxo.com', 'pornbaytube.com', 'longporntube.com', 'largeporntube.com', 'hottubeclips.com', 'freeporn.com', 'free-vidz.com', 'askforporn.com', 'rude.com', 'ct.adultrental.com', 'agriculteursgay.socialparody.com', 'vodpornos.com', 'utubefat.com', 'sextubster.com', 'retrotubeclips.com', 'rabbitsreviews.com', 'pussyteenporn.com', 'porntubest.com', 'pornstarsjobs.com', 'pornstarnetwork.com', 'pornqik.com', 'oopsmovs.com', 'nudevista.se', 'nastydirectory.com', 'maturetubesite.net', 'lesbiansfromindia.com', 'kenny-glenn.net', 'keezmovies.com', 'interracialexpert.com', 'iafd.com', 'freshteenxxx.com', 'dinotube.com', 'clearclips.com', 'boysfood.com', 'bollywoodhungama.com', 'blackonslut.com', 'badjojo.com', 'africanfucktours.com', '1teentube.com', 'wild-galls.com', 'keporn.com', 'watch2porn.net', 'vp7.com', 'vintageporn69.com', 'trustedporntube.com', 'spicysextube.com', 'showteensex.com', 'sex2mix.com', 'redtoptube.com', 'porn-wikipedia.com', 'pikdit.com', 'movies.askjolene.com', 'klub.co.in', 'hotxvideos.net', 'hardcoredumper.com', 'gangbangbecky.com', 'freshxxxtube.com', 'cdn1.public.youporn.phncdn.com', 'amateurfetishclips.com', '6aa.info', 'tjoob.com', 'shockingtube.com', 'sexyfatgirls.net', 'sexspaghetti.com', 'redcitadel.com', 'racialthumbs.com', 'pornyeah.com', 'pornxix.com', 'porntubesearch.org', 'porntitan.com', 'porngeographic.com', 'porn-w.org', 'popoholic.com', 'peeingshow.com', 'panicporn.com', 'nastyvideotube.com', 'myvideo.de', 'myvaginasite.com', 'mypornbutler.com', 'movieslinksfree.com', 'moofmoof.com', 'mistressdestiny.com', 'mcxtube.com', 'kporno.com', 'juxmovies.com', 'interracialparty.net', 'interracialexposed.com', 'huntmodelz.com', 'hqseek.com', 'hindilinks4u.net', 'hdvirgin.com', 'hairyempire.com', 'grannysex.in', 'freeones.se', 'free.cbttube.com', 'fatalfemdoms.com', 'excaliburfilms.com', 'desitorrents.com', 'desigupshupp.com', 'britishbukkakebabes.com', 'bravomamas.com', 'blacksalamis.com', 'blackmonsterride.com', 'blackbabesboned.com', 'bigcamtube.com', 'beastiality.com', 'azgals.com', 'animalsex-tube.com', 'amateurindex.com', 'africanfucktour.com', '777xporn.com', '2shared.com', 'wtchporn.com', 'wivespornmovies.com', 'widget.clips4sale.com', 'whois.domaintools.com', 'watchmovies7z.blogspot.se', 'violetmonroe.net', 'vintageporntv.com', 'vidgrab.net', 'videos.videomasti.net', 'videomasti.net', 'videofreakz.com', 'twomovies.name', 'thingsmydickdoes.tumblr.com', 'teenpornstreams.com', 'teen-movs.com', 'sxplanet.com', 'start.badults.se', 'shufflecam.net', 'shaggyblossom.com', 'sexylosers.com', 'sextasytube.com', 'sensibleerection.com', 'rexxx.com', 'pussyteentube.com', 'pornwiki.com', 'pornviet.net', 'pornobistro.com', 'planetpornvideos.com', 'pixocafe.com', 'overthumbs.com', 'oldgrannysex.net', 'my.nudevista.se', 'mobile.spankwire.com', 'minkasicklinger.com', 'mb.indecentes-voisines.com', 'keyporntube.com', 'join.wearehairy.com', 'jithuwap.mobie.in', 'jesporn.com', 'interracial-thumbs.org', 'images.arcadja.com', 'hits.britishbukkakebabes.com', 'hilltopads.net', 'h2freeporn.com', 'galleries.videosz.com', 'galleries.hairy-women-pussy.net', 'full-online-movies.blogspot.se', 'fucksia.tumblr.com', 'fuckinghomepage.com', 'freethenipple.com', 'fitgirlsohyeah.tumblr.com', 'fashionista.com', 'fantasti.cc', 'easymovielink.blogspot.se', 'creatives.livejasmin.com', 'cdn1.mobile.spankwire.phncdn.com', 'cams.com', 'blog.youporn.com', 'askaguywholikesfatchicks.tumblr.com', 'adv.h2porn.com', '88.208.61.4', '88.208.61.11', '88.208.58.83', '88.208.52.191', '88.208.24.205', '88.208.24.199', '213.174.156.59', 'vintage-pinup.com', 'vintage-computer.com', 'royalporntube.com', 'pornostars-collection.ru', 'moviefap.com', 'free-vintage.com', 'vintageporndrawings.porncolection.com', 'vintage.wanknews.com', 'retro-porn.maniacpass.com', 'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc' ))
--group by domain 
order by c desc,u desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
--'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com',
'x99.nudevista.com',
'yobt.com',
'yehfun.com',
'xsharebox.com',
'yuvutu.com',
    'yehfun.com',
    'yobt.com',
'xsharebox.com',
'wearehairy.com',
'wankspider.com',
'wanknews.com',
'vidsvidsvids.com',
'videosz.com',
'vid2c.com',
'trinity-productions.com',
    'vaginapageant.com',
'tubemonsoon.com',
'tubebond.com',
'tube.nu',
'sunporno.com',
'submityourtapes.com',
  'spankwire.com',
'slutload.com',
'shufuni.com',
'sextubest.com',
'sextube.com',
'sextasytube.net',
'sexmums.com',
'sexfreedomtube.com',          
'teensoloporn.com',
'teenboat.com',
'rule34.paheal.net',
'mrstiff.com',
'gaybeast.com',
'boobpedia.com',
'mrsnake.com',
'richporntube.com',
    'images.google.com',
                                  'fapdu.com',
                                  'ah-me.com',
                                  'video.xnxx.com',
                                  'rawtube.com',
                                  'porn.com',
                                  'grandpabangsgrandma.com',
                                  'freeones.com',
                                  'board.freeones.com',
                                  'scarlettsabet.com',
                                  'nataliedee.com',
                                  'drtuber.com',
                                  'desihoes.com',
                                  'moviesvintage.com',
                                  'nuvid.com',
                                  'hardsextube.com',
                                  'fatmomtube.com',
                                  'adultrental.com',
                                  'jimslip.com',
                                  'fuckthegeek.com',
                                  'eporner.com',
                                  'boomporntube.com',
                                  'audrawolfmann.net',
                                  'amateur-gangbangers.com',
                                  'real-sexxx.com',
                                  'porntubese.com',
'pornoxo.com',
'pornbaytube.com',
'longporntube.com',
'largeporntube.com',
'hottubeclips.com',
'freeporn.com',
'free-vidz.com',
'askforporn.com',
'rude.com',
                                   'ct.adultrental.com',
'agriculteursgay.socialparody.com',
'vodpornos.com',
'utubefat.com',
'sextubster.com',
'retrotubeclips.com',
'rabbitsreviews.com',
'pussyteenporn.com',
'porntubest.com',
'pornstarsjobs.com',
'pornstarnetwork.com',
'pornqik.com',
'oopsmovs.com',
'nudevista.se',
'nastydirectory.com',
'maturetubesite.net',
'lesbiansfromindia.com',
'kenny-glenn.net',
'keezmovies.com',
'interracialexpert.com',
'iafd.com',
'freshteenxxx.com',
'dinotube.com',
'clearclips.com',
'boysfood.com',
'bollywoodhungama.com',
'blackonslut.com',
'badjojo.com',
'africanfucktours.com',
'1teentube.com',
'wild-galls.com',

                                  'keporn.com',
'watch2porn.net',
'vp7.com',
'vintageporn69.com',
'trustedporntube.com',
'spicysextube.com',
'showteensex.com',
'sex2mix.com',
'redtoptube.com',
'porn-wikipedia.com',
'pikdit.com',
'movies.askjolene.com',
'klub.co.in',
'hotxvideos.net',
'hardcoredumper.com',
'gangbangbecky.com',
'freshxxxtube.com',
'cdn1.public.youporn.phncdn.com',
'amateurfetishclips.com',
'6aa.info',
'tjoob.com',
'shockingtube.com',
'sexyfatgirls.net',
'sexspaghetti.com',
'redcitadel.com',
'racialthumbs.com',
'pornyeah.com',
'pornxix.com',
'porntubesearch.org',
'porntitan.com',
'porngeographic.com',
'porn-w.org',
'popoholic.com',
'peeingshow.com',
'panicporn.com',
'nastyvideotube.com',
'myvideo.de',
'myvaginasite.com',
'mypornbutler.com',
'movieslinksfree.com',
'moofmoof.com',
'mistressdestiny.com',
'mcxtube.com',
'kporno.com',
'juxmovies.com',
'interracialparty.net',
'interracialexposed.com',
'huntmodelz.com',
'hqseek.com',
'hindilinks4u.net',
'hdvirgin.com',
'hairyempire.com',
'grannysex.in',
'freeones.se',
'free.cbttube.com',
'fatalfemdoms.com',
'excaliburfilms.com',
'desitorrents.com',
'desigupshupp.com',
'britishbukkakebabes.com',
'bravomamas.com',
'blacksalamis.com',
'blackmonsterride.com',
'blackbabesboned.com',
'bigcamtube.com',
'beastiality.com',
'azgals.com',
'animalsex-tube.com',
'amateurindex.com',
'africanfucktour.com',
'777xporn.com',
'2shared.com',
'wtchporn.com',
'wivespornmovies.com',
'widget.clips4sale.com',
'whois.domaintools.com',
'watchmovies7z.blogspot.se',
'violetmonroe.net',
'vintageporntv.com',
'vidgrab.net',
'videos.videomasti.net',
'videomasti.net',
'videofreakz.com',
'twomovies.name',
'thingsmydickdoes.tumblr.com',
'teenpornstreams.com',
'teen-movs.com',
'sxplanet.com',
'start.badults.se',
'shufflecam.net',
'shaggyblossom.com',
'sexylosers.com',
'sextasytube.com',
'sensibleerection.com',
'rexxx.com',
'pussyteentube.com',
'pornwiki.com',
'pornviet.net',
'pornobistro.com',
'planetpornvideos.com',
'pixocafe.com',
'overthumbs.com',
'oldgrannysex.net',
                                  'my.nudevista.se',
'mobile.spankwire.com',
'minkasicklinger.com',
'mb.indecentes-voisines.com',
'keyporntube.com',
'join.wearehairy.com',
'jithuwap.mobie.in',
'jesporn.com',
'interracial-thumbs.org',
'images.arcadja.com',
'hits.britishbukkakebabes.com',
'hilltopads.net',
'h2freeporn.com',
'galleries.videosz.com',
'galleries.hairy-women-pussy.net',
'full-online-movies.blogspot.se',
'fucksia.tumblr.com',
'fuckinghomepage.com',
'freethenipple.com',
'fitgirlsohyeah.tumblr.com',
'fashionista.com',
'fantasti.cc',
'easymovielink.blogspot.se',
'creatives.livejasmin.com',
'cdn1.mobile.spankwire.phncdn.com',
'cams.com',
'blog.youporn.com',
'askaguywholikesfatchicks.tumblr.com',
'adv.h2porn.com',
'88.208.61.4',
'88.208.61.11',
'88.208.58.83',
'88.208.52.191',
'88.208.24.205',
'88.208.24.199',
'213.174.156.59',
'vintage-pinup.com',
'vintage-computer.com',
'royalporntube.com',
'pornostars-collection.ru',
'moviefap.com',
'free-vintage.com',
'vintageporndrawings.porncolection.com',
'vintage.wanknews.com',
'retro-porn.maniacpass.com',
'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc'


) OR title in(
    'bbw bukkake - Sök på Google',
'busty bbw with nice round butt - Sök på Google',
'bbw with nice round butt pornhubcom 1 pornhub.busty - Sök på Google',
'bbw latina - Sök på Google',
'Bbw with nice round butt pornhubcom 1 pornhub.Busty - Sök på Google',
'Resultat av Googles bildsökning efter http://xxxbunker.com/busty_stacy_adams_is_drilled_balls_deep.jpg',
'Resultat av Googles bildsökning efter http://www.amateurindex.com/galleries/ftv-girls/shyla-pussy-spreads/shyla-pussy-spreads-10.jpg',
'Resultat av Googles bildsökning efter http://www.chrissymarieclub.com/wp-content/uploads/2010/12/ChrissyMarie_42.jpg',
'Resultat av Googles bildsökning efter http://xxxbunker.com/mature_lady_gets_a_creampie.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/nathaly-2/hairy-pussy-nathaly-12.jpg',
'Resultat av Googles bildsökning efter http://www.myvaginasite.com/photos/vix_pussy_jacking_01.jpg',
'Resultat av Googles bildsökning efter http://www.teensoloporn.com/content/Ron%2520Harris%2520Cash/Kara%2520Duhe/Kara%2520bent%2520over%2520in%2520the%2520window%2520sucking%2520her%2520thumb%2520toys%2520her%2520pussy%2520from%2520behind/01.jpg',
'Resultat av Googles bildsökning efter http://shaggyblossom.com/wp-content/uploads/2011/01/lily-cameron-hairy-pussy.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/alexandra-3/hairy-pussy-alexandra-08.jpg',
'Resultat av Googles bildsökning efter http://www.sexyfatgirls.net/Images/2011/fat-pussy.jpg',
'Resultat av Googles bildsökning efter http://www.hairyempire.com/images/hairy-pussy-amateur-upskirt-park.jpg',
'erotic fforum - Sök på Google',
'tubemonsoon latina bbw - Sök på Google',
'bbw latin - Sök på Google',
'Google Image Result for http://cdn.0.gaybeast.com/thumbnails/480x320/2640/guy_with_big_dick_fucks_mare.jpg',
'Google Image Result for http://www.beastiality.com/movies/125/thumbs/125-09.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a036/609/a036609_scene_02.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a012/015/a012015_image4.jpg',
'Google Image Result for http://www.justfortouch.com/bundles/ocioadulto/Imagenes/Pelicula/2442/xxx-blonde-webgirls-4-kelly-dane_cover.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a006/833/a006833_scene_02.jpg',
'Google Image Result for http://cdn3.mrstiff.com/media/4/6/6/8/0/4668013/thumb_small.jpg',
'Google Image Result for http://img.adultrental.com/images/new_images/a019379/a019379_scene_13.jpg',
'Google Image Result for http://www.vodpornos.com/covers/72/72446_large.jpg',
'Google Image Result for http://xxxbunker.com/2449056-3.jpg',
'Google Image Result for http://thumbs.pornbaytube.com/tubegogo.com/2/9/56/56c541fd.jpg',
'Google Image Result for http://images.arcadja.com/gues_alfred_fran%C3%A7ois-the_courting_couple~OM473300~10001_20101115_18399_7021.jpg',
'Google Image Result for http://cdn1.image.youporn.phncdn.com/201010/31/487418/120x90/4.jpg',
'Google Image Result for http://cdn.trustedporntube.com/scj/thumbs/207/077.jpg',
'Google Image Result for http://88.208.61.74/tt/teen-movs.com/1teentube.com.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0-3.jpg',
'Google Image Result for http://xxxbunker.com/fuck_holes_pt2_scene_3_new.jpg',
 )order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
--'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com',
'x99.nudevista.com',
'yobt.com',
'yehfun.com',
'xsharebox.com',
'yuvutu.com',
    'yehfun.com',
    'yobt.com',
'xsharebox.com',
'wearehairy.com',
'wankspider.com',
'wanknews.com',
'vidsvidsvids.com',
'videosz.com',
'vid2c.com',
'trinity-productions.com',
    'vaginapageant.com',
'tubemonsoon.com',
'tubebond.com',
'tube.nu',
'sunporno.com',
'submityourtapes.com',
  'spankwire.com',
'slutload.com',
'shufuni.com',
'sextubest.com',
'sextube.com',
'sextasytube.net',
'sexmums.com',
'sexfreedomtube.com',          
'teensoloporn.com',
'teenboat.com',
'rule34.paheal.net',
'mrstiff.com',
'gaybeast.com',
'boobpedia.com',
'mrsnake.com',
'richporntube.com',
    'images.google.com',
                                  'fapdu.com',
                                  'ah-me.com',
                                  'video.xnxx.com',
                                  'rawtube.com',
                                  'porn.com',
                                  'grandpabangsgrandma.com',
                                  'freeones.com',
                                  'board.freeones.com',
                                  'scarlettsabet.com',
                                  'nataliedee.com',
                                  'drtuber.com',
                                  'desihoes.com',
                                  'moviesvintage.com',
                                  'nuvid.com',
                                  'hardsextube.com',
                                  'fatmomtube.com',
                                  'adultrental.com',
                                  'jimslip.com',
                                  'fuckthegeek.com',
                                  'eporner.com',
                                  'boomporntube.com',
                                  'audrawolfmann.net',
                                  'amateur-gangbangers.com',
                                  'real-sexxx.com',
                                  'porntubese.com',
'pornoxo.com',
'pornbaytube.com',
'longporntube.com',
'largeporntube.com',
'hottubeclips.com',
'freeporn.com',
'free-vidz.com',
'askforporn.com',
'rude.com',
                                   'ct.adultrental.com',
'agriculteursgay.socialparody.com',
'vodpornos.com',
'utubefat.com',
'sextubster.com',
'retrotubeclips.com',
'rabbitsreviews.com',
'pussyteenporn.com',
'porntubest.com',
'pornstarsjobs.com',
'pornstarnetwork.com',
'pornqik.com',
'oopsmovs.com',
'nudevista.se',
'nastydirectory.com',
'maturetubesite.net',
'lesbiansfromindia.com',
'kenny-glenn.net',
'keezmovies.com',
'interracialexpert.com',
'iafd.com',
'freshteenxxx.com',
'dinotube.com',
'clearclips.com',
'boysfood.com',
'bollywoodhungama.com',
'blackonslut.com',
'badjojo.com',
'africanfucktours.com',
'1teentube.com',
'wild-galls.com',

                                  'keporn.com',
'watch2porn.net',
'vp7.com',
'vintageporn69.com',
'trustedporntube.com',
'spicysextube.com',
'showteensex.com',
'sex2mix.com',
'redtoptube.com',
'porn-wikipedia.com',
'pikdit.com',
'movies.askjolene.com',
'klub.co.in',
'hotxvideos.net',
'hardcoredumper.com',
'gangbangbecky.com',
'freshxxxtube.com',
'cdn1.public.youporn.phncdn.com',
'amateurfetishclips.com',
'6aa.info',
'tjoob.com',
'shockingtube.com',
'sexyfatgirls.net',
'sexspaghetti.com',
'redcitadel.com',
'racialthumbs.com',
'pornyeah.com',
'pornxix.com',
'porntubesearch.org',
'porntitan.com',
'porngeographic.com',
'porn-w.org',
'popoholic.com',
'peeingshow.com',
'panicporn.com',
'nastyvideotube.com',
'myvideo.de',
'myvaginasite.com',
'mypornbutler.com',
'movieslinksfree.com',
'moofmoof.com',
'mistressdestiny.com',
'mcxtube.com',
'kporno.com',
'juxmovies.com',
'interracialparty.net',
'interracialexposed.com',
'huntmodelz.com',
'hqseek.com',
'hindilinks4u.net',
'hdvirgin.com',
'hairyempire.com',
'grannysex.in',
'freeones.se',
'free.cbttube.com',
'fatalfemdoms.com',
'excaliburfilms.com',
'desitorrents.com',
'desigupshupp.com',
'britishbukkakebabes.com',
'bravomamas.com',
'blacksalamis.com',
'blackmonsterride.com',
'blackbabesboned.com',
'bigcamtube.com',
'beastiality.com',
'azgals.com',
'animalsex-tube.com',
'amateurindex.com',
'africanfucktour.com',
'777xporn.com',
'2shared.com',
'wtchporn.com',
'wivespornmovies.com',
'widget.clips4sale.com',
'whois.domaintools.com',
'watchmovies7z.blogspot.se',
'violetmonroe.net',
'vintageporntv.com',
'vidgrab.net',
'videos.videomasti.net',
'videomasti.net',
'videofreakz.com',
'twomovies.name',
'thingsmydickdoes.tumblr.com',
'teenpornstreams.com',
'teen-movs.com',
'sxplanet.com',
'start.badults.se',
'shufflecam.net',
'shaggyblossom.com',
'sexylosers.com',
'sextasytube.com',
'sensibleerection.com',
'rexxx.com',
'pussyteentube.com',
'pornwiki.com',
'pornviet.net',
'pornobistro.com',
'planetpornvideos.com',
'pixocafe.com',
'overthumbs.com',
'oldgrannysex.net',
                                  'my.nudevista.se',
'mobile.spankwire.com',
'minkasicklinger.com',
'mb.indecentes-voisines.com',
'keyporntube.com',
'join.wearehairy.com',
'jithuwap.mobie.in',
'jesporn.com',
'interracial-thumbs.org',
'images.arcadja.com',
'hits.britishbukkakebabes.com',
'hilltopads.net',
'h2freeporn.com',
'galleries.videosz.com',
'galleries.hairy-women-pussy.net',
'full-online-movies.blogspot.se',
'fucksia.tumblr.com',
'fuckinghomepage.com',
'freethenipple.com',
'fitgirlsohyeah.tumblr.com',
'fashionista.com',
'fantasti.cc',
'easymovielink.blogspot.se',
'creatives.livejasmin.com',
'cdn1.mobile.spankwire.phncdn.com',
'cams.com',
'blog.youporn.com',
'askaguywholikesfatchicks.tumblr.com',
'adv.h2porn.com',
'88.208.61.4',
'88.208.61.11',
'88.208.58.83',
'88.208.52.191',
'88.208.24.205',
'88.208.24.199',
'213.174.156.59',
'vintage-pinup.com',
'vintage-computer.com',
'royalporntube.com',
'pornostars-collection.ru',
'moviefap.com',
'free-vintage.com',
'vintageporndrawings.porncolection.com',
'vintage.wanknews.com',
'retro-porn.maniacpass.com',
'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc'


) OR title in(
    'bbw bukkake - Sök på Google',
'busty bbw with nice round butt - Sök på Google',
'bbw with nice round butt pornhubcom 1 pornhub.busty - Sök på Google',
'bbw latina - Sök på Google',
'Bbw with nice round butt pornhubcom 1 pornhub.Busty - Sök på Google',
'Resultat av Googles bildsökning efter http://xxxbunker.com/busty_stacy_adams_is_drilled_balls_deep.jpg',
'Resultat av Googles bildsökning efter http://www.amateurindex.com/galleries/ftv-girls/shyla-pussy-spreads/shyla-pussy-spreads-10.jpg',
'Resultat av Googles bildsökning efter http://www.chrissymarieclub.com/wp-content/uploads/2010/12/ChrissyMarie_42.jpg',
'Resultat av Googles bildsökning efter http://xxxbunker.com/mature_lady_gets_a_creampie.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/nathaly-2/hairy-pussy-nathaly-12.jpg',
'Resultat av Googles bildsökning efter http://www.myvaginasite.com/photos/vix_pussy_jacking_01.jpg',
'Resultat av Googles bildsökning efter http://www.teensoloporn.com/content/Ron%2520Harris%2520Cash/Kara%2520Duhe/Kara%2520bent%2520over%2520in%2520the%2520window%2520sucking%2520her%2520thumb%2520toys%2520her%2520pussy%2520from%2520behind/01.jpg',
'Resultat av Googles bildsökning efter http://shaggyblossom.com/wp-content/uploads/2011/01/lily-cameron-hairy-pussy.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/alexandra-3/hairy-pussy-alexandra-08.jpg',
'Resultat av Googles bildsökning efter http://www.sexyfatgirls.net/Images/2011/fat-pussy.jpg',
'Resultat av Googles bildsökning efter http://www.hairyempire.com/images/hairy-pussy-amateur-upskirt-park.jpg',
'erotic fforum - Sök på Google',
'tubemonsoon latina bbw - Sök på Google',
'bbw latin - Sök på Google',
'Google Image Result for http://cdn.0.gaybeast.com/thumbnails/480x320/2640/guy_with_big_dick_fucks_mare.jpg',
'Google Image Result for http://www.beastiality.com/movies/125/thumbs/125-09.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a036/609/a036609_scene_02.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a012/015/a012015_image4.jpg',
'Google Image Result for http://www.justfortouch.com/bundles/ocioadulto/Imagenes/Pelicula/2442/xxx-blonde-webgirls-4-kelly-dane_cover.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a006/833/a006833_scene_02.jpg',
'Google Image Result for http://cdn3.mrstiff.com/media/4/6/6/8/0/4668013/thumb_small.jpg',
'Google Image Result for http://img.adultrental.com/images/new_images/a019379/a019379_scene_13.jpg',
'Google Image Result for http://www.vodpornos.com/covers/72/72446_large.jpg',
'Google Image Result for http://xxxbunker.com/2449056-3.jpg',
'Google Image Result for http://thumbs.pornbaytube.com/tubegogo.com/2/9/56/56c541fd.jpg',
'Google Image Result for http://images.arcadja.com/gues_alfred_fran%C3%A7ois-the_courting_couple~OM473300~10001_20101115_18399_7021.jpg',
'Google Image Result for http://cdn1.image.youporn.phncdn.com/201010/31/487418/120x90/4.jpg',
'Google Image Result for http://cdn.trustedporntube.com/scj/thumbs/207/077.jpg',
'Google Image Result for http://88.208.61.74/tt/teen-movs.com/1teentube.com.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0-3.jpg',
'Google Image Result for http://xxxbunker.com/fuck_holes_pt2_scene_3_new.jpg',
 ) order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
'xhamster.com',
'routgveriprt.com',
'pornsos.com',
'one-tab.com',
--'google.com',
'xvideos.com',
'toesuddenlyon.com',
'pervertslut.com',
'pornhub.com',
--'google.se',
'bestialitytaboo.tv',
'riosso.xyz',
'luxuretv.com',
'tnaflix.com',
'femefun.com',
'mylust.com',
'justporno.tv',
--'mozilla.org',
'youporn.com',
'3animalsextube.com',
'nonamebrdn36.live',
'zooskoolvideos.com',
'ezysl.com',
'empflix.com',
'pornzoovideos.com',
'pornsocket.com',
'pornskirt.com',
'alphaporno.com',
'daily-bbw-porn.com',
'xnxx.com',
'voyeurstyle.com',
'zoofiliavids.com',
'bestialitysextaboo.com',
'adult-empire.com',
'zoofilianet.com',
'eoredi.com',
'nuggitgames.com',
'pornspark.com',
'proporn.com',
--'reddit.com',
'syndicpop.com',
'pornfay.org',
'trueamateurmodels.com',
'fadsoks.com',
'eroprofile.com',
--'github.com',
'homemoviestube.com',
'livejasmin.com',
'zoomobileporn.com',
'bestialzoo.org',
'erkiss.org',
'indianpornvideos2.com',
'lifematures.com',
'xhamsterpremium.com',
'ampugi334f.com',
'animalsexfun.com',
'backetrut.pro',
'fadsips.com',
'girlscv.com',
'gotporn.com',
'imagefap.com',
'instantresp.com',
'motherless.com',
'nesaporn.com',
'pornorio.net',
'pornscum.com',
'pornvideoq.com',
'sexuhot.com',
--'tumblr.com',
'dirtydoglinks.com',
'forumophilia.com',
'hotpornshow.com',
'image-dreams.com',
'porntopic.com',
'pornvideos.rs',
'spankbang.com',
'tensorflow.org',
'thumbzilla.com',
'tube8.com',
--'yahoo.com',
'adxpartner.com',
'bbwfuckpic.com',
'bestialitygirls.com',
'blackbustybabes.com',
'h2porn.com',
'heavy-r.com',
'hotsexyaunty.com',
'k9thumbs.org',
'message-alert.info',
'myzoowife.com',
'nudevista.com',
--'opera.com',
'pornmd.com',
--'raindrop.io',
'redtube.com',
'sheamateur.com',
'totalav.com',
'usingenglish.com',
'xxgasm.com',
'xxxvogue.net',
'xxvideoclips.us',
'xxxvideoclips.us',
'xxdessert.com',
'xxxdessert.com',
'xxbunker.com',
'xxxbunker.com',
'xvideo.us',
'xxvideo.us',
'xxlmag.com',
'xvideoshome.com',
'xvideosde.com',
'xvideos.com',
'xvideohost.com',
'xtube.com',
'xlgirls.com',
'xixtube.com',
'hamsterpremiumpass.com',
'hamsterhq.com',
'xhamsterhq.com',
'hamster.com',
'99.nudevista.com',
'ww.zootube365.com',
'ww.yuvutu.com',
'ww.youporn.com',
'zzztube.com',
'zootube365.com',
'yuppix.com',
'youjizzlive.com',
'youjizz.com',
'xhamsterpremiumpass.com',
'xfreehosting.com',
'x99.nudevista.com',
'yobt.com',
'yehfun.com',
'xsharebox.com',
'yuvutu.com',
    'yehfun.com',
    'yobt.com',
'xsharebox.com',
'wearehairy.com',
'wankspider.com',
'wanknews.com',
'vidsvidsvids.com',
'videosz.com',
'vid2c.com',
'trinity-productions.com',
    'vaginapageant.com',
'tubemonsoon.com',
'tubebond.com',
'tube.nu',
'sunporno.com',
'submityourtapes.com',
  'spankwire.com',
'slutload.com',
'shufuni.com',
'sextubest.com',
'sextube.com',
'sextasytube.net',
'sexmums.com',
'sexfreedomtube.com',          
'teensoloporn.com',
'teenboat.com',
'rule34.paheal.net',
'mrstiff.com',
'gaybeast.com',
'boobpedia.com',
'mrsnake.com',
'richporntube.com',
    'images.google.com',
                                  'fapdu.com',
                                  'ah-me.com',
                                  'video.xnxx.com',
                                  'rawtube.com',
                                  'porn.com',
                                  'grandpabangsgrandma.com',
                                  'freeones.com',
                                  'board.freeones.com',
                                  'scarlettsabet.com',
                                  'nataliedee.com',
                                  'drtuber.com',
                                  'desihoes.com',
                                  'moviesvintage.com',
                                  'nuvid.com',
                                  'hardsextube.com',
                                  'fatmomtube.com',
                                  'adultrental.com',
                                  'jimslip.com',
                                  'fuckthegeek.com',
                                  'eporner.com',
                                  'boomporntube.com',
                                  'audrawolfmann.net',
                                  'amateur-gangbangers.com',
                                  'real-sexxx.com',
                                  'porntubese.com',
'pornoxo.com',
'pornbaytube.com',
'longporntube.com',
'largeporntube.com',
'hottubeclips.com',
'freeporn.com',
'free-vidz.com',
'askforporn.com',
'rude.com',
                                   'ct.adultrental.com',
'agriculteursgay.socialparody.com',
'vodpornos.com',
'utubefat.com',
'sextubster.com',
'retrotubeclips.com',
'rabbitsreviews.com',
'pussyteenporn.com',
'porntubest.com',
'pornstarsjobs.com',
'pornstarnetwork.com',
'pornqik.com',
'oopsmovs.com',
'nudevista.se',
'nastydirectory.com',
'maturetubesite.net',
'lesbiansfromindia.com',
'kenny-glenn.net',
'keezmovies.com',
'interracialexpert.com',
'iafd.com',
'freshteenxxx.com',
'dinotube.com',
'clearclips.com',
'boysfood.com',
'bollywoodhungama.com',
'blackonslut.com',
'badjojo.com',
'africanfucktours.com',
'1teentube.com',
'wild-galls.com',

                                  'keporn.com',
'watch2porn.net',
'vp7.com',
'vintageporn69.com',
'trustedporntube.com',
'spicysextube.com',
'showteensex.com',
'sex2mix.com',
'redtoptube.com',
'porn-wikipedia.com',
'pikdit.com',
'movies.askjolene.com',
'klub.co.in',
'hotxvideos.net',
'hardcoredumper.com',
'gangbangbecky.com',
'freshxxxtube.com',
'cdn1.public.youporn.phncdn.com',
'amateurfetishclips.com',
'6aa.info',
'tjoob.com',
'shockingtube.com',
'sexyfatgirls.net',
'sexspaghetti.com',
'redcitadel.com',
'racialthumbs.com',
'pornyeah.com',
'pornxix.com',
'porntubesearch.org',
'porntitan.com',
'porngeographic.com',
'porn-w.org',
'popoholic.com',
'peeingshow.com',
'panicporn.com',
'nastyvideotube.com',
'myvideo.de',
'myvaginasite.com',
'mypornbutler.com',
'movieslinksfree.com',
'moofmoof.com',
'mistressdestiny.com',
'mcxtube.com',
'kporno.com',
'juxmovies.com',
'interracialparty.net',
'interracialexposed.com',
'huntmodelz.com',
'hqseek.com',
'hindilinks4u.net',
'hdvirgin.com',
'hairyempire.com',
'grannysex.in',
'freeones.se',
'free.cbttube.com',
'fatalfemdoms.com',
'excaliburfilms.com',
'desitorrents.com',
'desigupshupp.com',
'britishbukkakebabes.com',
'bravomamas.com',
'blacksalamis.com',
'blackmonsterride.com',
'blackbabesboned.com',
'bigcamtube.com',
'beastiality.com',
'azgals.com',
'animalsex-tube.com',
'amateurindex.com',
'africanfucktour.com',
'777xporn.com',
'2shared.com',
'wtchporn.com',
'wivespornmovies.com',
'widget.clips4sale.com',
'whois.domaintools.com',
'watchmovies7z.blogspot.se',
'violetmonroe.net',
'vintageporntv.com',
'vidgrab.net',
'videos.videomasti.net',
'videomasti.net',
'videofreakz.com',
'twomovies.name',
'thingsmydickdoes.tumblr.com',
'teenpornstreams.com',
'teen-movs.com',
'sxplanet.com',
'start.badults.se',
'shufflecam.net',
'shaggyblossom.com',
'sexylosers.com',
'sextasytube.com',
'sensibleerection.com',
'rexxx.com',
'pussyteentube.com',
'pornwiki.com',
'pornviet.net',
'pornobistro.com',
'planetpornvideos.com',
'pixocafe.com',
'overthumbs.com',
'oldgrannysex.net',
                                  'my.nudevista.se',
'mobile.spankwire.com',
'minkasicklinger.com',
'mb.indecentes-voisines.com',
'keyporntube.com',
'join.wearehairy.com',
'jithuwap.mobie.in',
'jesporn.com',
'interracial-thumbs.org',
'images.arcadja.com',
'hits.britishbukkakebabes.com',
'hilltopads.net',
'h2freeporn.com',
'galleries.videosz.com',
'galleries.hairy-women-pussy.net',
'full-online-movies.blogspot.se',
'fucksia.tumblr.com',
'fuckinghomepage.com',
'freethenipple.com',
'fitgirlsohyeah.tumblr.com',
'fashionista.com',
'fantasti.cc',
'easymovielink.blogspot.se',
'creatives.livejasmin.com',
'cdn1.mobile.spankwire.phncdn.com',
'cams.com',
'blog.youporn.com',
'askaguywholikesfatchicks.tumblr.com',
'adv.h2porn.com',
'88.208.61.4',
'88.208.61.11',
'88.208.58.83',
'88.208.52.191',
'88.208.24.205',
'88.208.24.199',
'213.174.156.59',
'vintage-pinup.com',
'vintage-computer.com',
'royalporntube.com',
'pornostars-collection.ru',
'moviefap.com',
'free-vintage.com',
'vintageporndrawings.porncolection.com',
'vintage.wanknews.com',
'retro-porn.maniacpass.com',
'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc'


) OR title in(
    'bbw bukkake - Sök på Google',
'busty bbw with nice round butt - Sök på Google',
'bbw with nice round butt pornhubcom 1 pornhub.busty - Sök på Google',
'bbw latina - Sök på Google',
'Bbw with nice round butt pornhubcom 1 pornhub.Busty - Sök på Google',
'Resultat av Googles bildsökning efter http://xxxbunker.com/busty_stacy_adams_is_drilled_balls_deep.jpg',
'Resultat av Googles bildsökning efter http://www.amateurindex.com/galleries/ftv-girls/shyla-pussy-spreads/shyla-pussy-spreads-10.jpg',
'Resultat av Googles bildsökning efter http://www.chrissymarieclub.com/wp-content/uploads/2010/12/ChrissyMarie_42.jpg',
'Resultat av Googles bildsökning efter http://xxxbunker.com/mature_lady_gets_a_creampie.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/nathaly-2/hairy-pussy-nathaly-12.jpg',
'Resultat av Googles bildsökning efter http://www.myvaginasite.com/photos/vix_pussy_jacking_01.jpg',
'Resultat av Googles bildsökning efter http://www.teensoloporn.com/content/Ron%2520Harris%2520Cash/Kara%2520Duhe/Kara%2520bent%2520over%2520in%2520the%2520window%2520sucking%2520her%2520thumb%2520toys%2520her%2520pussy%2520from%2520behind/01.jpg',
'Resultat av Googles bildsökning efter http://shaggyblossom.com/wp-content/uploads/2011/01/lily-cameron-hairy-pussy.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/alexandra-3/hairy-pussy-alexandra-08.jpg',
'Resultat av Googles bildsökning efter http://www.sexyfatgirls.net/Images/2011/fat-pussy.jpg',
'Resultat av Googles bildsökning efter http://www.hairyempire.com/images/hairy-pussy-amateur-upskirt-park.jpg',
'erotic fforum - Sök på Google',
'tubemonsoon latina bbw - Sök på Google',
'bbw latin - Sök på Google',
'Google Image Result for http://cdn.0.gaybeast.com/thumbnails/480x320/2640/guy_with_big_dick_fucks_mare.jpg',
'Google Image Result for http://www.beastiality.com/movies/125/thumbs/125-09.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a036/609/a036609_scene_02.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a012/015/a012015_image4.jpg',
'Google Image Result for http://www.justfortouch.com/bundles/ocioadulto/Imagenes/Pelicula/2442/xxx-blonde-webgirls-4-kelly-dane_cover.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a006/833/a006833_scene_02.jpg',
'Google Image Result for http://cdn3.mrstiff.com/media/4/6/6/8/0/4668013/thumb_small.jpg',
'Google Image Result for http://img.adultrental.com/images/new_images/a019379/a019379_scene_13.jpg',
'Google Image Result for http://www.vodpornos.com/covers/72/72446_large.jpg',
'Google Image Result for http://xxxbunker.com/2449056-3.jpg',
'Google Image Result for http://thumbs.pornbaytube.com/tubegogo.com/2/9/56/56c541fd.jpg',
'Google Image Result for http://images.arcadja.com/gues_alfred_fran%C3%A7ois-the_courting_couple~OM473300~10001_20101115_18399_7021.jpg',
'Google Image Result for http://cdn1.image.youporn.phncdn.com/201010/31/487418/120x90/4.jpg',
'Google Image Result for http://cdn.trustedporntube.com/scj/thumbs/207/077.jpg',
'Google Image Result for http://88.208.61.74/tt/teen-movs.com/1teentube.com.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0-3.jpg',
'Google Image Result for http://xxxbunker.com/fuck_holes_pt2_scene_3_new.jpg'
 ) order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
--'github.com',
--'google.com',
--'google.se',
--'mozilla.org',
--'opera.com',
--'raindrop.io',
--'reddit.com',
--'tumblr.com',
--'yahoo.com',
'1teentube.com',
'213.174.156.59',
'2shared.com',
'3animalsextube.com',
'6aa.info',
'777xporn.com',
'88.208.24.199',
'88.208.24.205',
'88.208.52.191',
'88.208.58.83',
'88.208.61.11',
'88.208.61.4',
'99.nudevista.com',
'adult-empire.com',
'adultrental.com',
'adv.h2porn.com',
'adxpartner.com',
'africanfucktour.com',
'africanfucktours.com',
'agriculteursgay.socialparody.com',
'ah-me.com',
'alphaporno.com',
'amateur-gangbangers.com',
'amateurfetishclips.com',
'amateurindex.com',
'ampugi334f.com',
'animalsex-tube.com',
'animalsexfun.com',
'askaguywholikesfatchicks.tumblr.com',
'askforporn.com',
'audrawolfmann.net',
'azgals.com',
'backetrut.pro',
'badjojo.com',
'bbwfuckpic.com',
'beastiality.com',
'bestialitygirls.com',
'bestialitysextaboo.com',
'bestialitytaboo.tv',
'bestialzoo.org',
'bigcamtube.com',
'blackbabesboned.com',
'blackbustybabes.com',
'blackmonsterride.com',
'blackonslut.com',
'blacksalamis.com',
'blog.youporn.com',
'board.freeones.com',
'bollywoodhungama.com',
'boobpedia.com',
'boomporntube.com',
'boysfood.com',
'bravomamas.com',
'britishbukkakebabes.com',
'cams.com',
'cdn1.mobile.spankwire.phncdn.com',
'cdn1.public.youporn.phncdn.com',
'clearclips.com',
'creatives.livejasmin.com',
'ct.adultrental.com',
'daily-bbw-porn.com',
'desigupshupp.com',
'desihoes.com',
'desitorrents.com',
'dinotube.com',
'dirtydoglinks.com',
'drtuber.com',
'easymovielink.blogspot.se',
'empflix.com',
'eoredi.com',
'eporner.com',
'erkiss.org',
'eroprofile.com',
'excaliburfilms.com',
'ezysl.com',
'fadsips.com',
'fadsoks.com',
'fantasti.cc',
'fapdu.com',
'fashionista.com',
'fatalfemdoms.com',
'fatmomtube.com',
'femefun.com',
'fitgirlsohyeah.tumblr.com',
'forumophilia.com',
'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc',
'free-vidz.com',
'free-vintage.com',
'free.cbttube.com',
'freeones.com',
'freeones.se',
'freeporn.com',
'freethenipple.com',
'freshteenxxx.com',
'freshxxxtube.com',
'fuckinghomepage.com',
'fucksia.tumblr.com',
'fuckthegeek.com',
'full-online-movies.blogspot.se',
'galleries.hairy-women-pussy.net',
'galleries.videosz.com',
'gangbangbecky.com',
'gaybeast.com',
'girlscv.com',
'gotporn.com',
'grandpabangsgrandma.com',
'grannysex.in',
'h2freeporn.com',
'h2porn.com',
'hairyempire.com',
'hamster.com',
'hamsterhq.com',
'hamsterpremiumpass.com',
'hardcoredumper.com',
'hardsextube.com',
'hdvirgin.com',
'heavy-r.com',
'hilltopads.net',
'hindilinks4u.net',
'hits.britishbukkakebabes.com',
'homemoviestube.com',
'hotpornshow.com',
'hotsexyaunty.com',
'hottubeclips.com',
'hotxvideos.net',
'hqseek.com',
'huntmodelz.com',
'iafd.com',
'image-dreams.com',
'imagefap.com',
'images.arcadja.com',
'indianpornvideos2.com',
'instantresp.com',
'interracial-thumbs.org',
'interracialexpert.com',
'interracialexposed.com',
'interracialparty.net',
'jesporn.com',
'jimslip.com',
'jithuwap.mobie.in',
'join.wearehairy.com',
'justporno.tv',
'juxmovies.com',
'k9thumbs.org',
'keezmovies.com',
'kenny-glenn.net',
'keporn.com',
'keyporntube.com',
'klub.co.in',
'kporno.com',
'largeporntube.com',
'lesbiansfromindia.com',
'lifematures.com',
'livejasmin.com',
'longporntube.com',
'luxuretv.com',
'maturetubesite.net',
'mb.indecentes-voisines.com',
'mcxtube.com',
'message-alert.info',
'minkasicklinger.com',
'mistressdestiny.com',
'mobile.spankwire.com',
'moofmoof.com',
'motherless.com',
'moviefap.com',
'movies.askjolene.com',
'movieslinksfree.com',
'moviesvintage.com',
'mrsnake.com',
'mrstiff.com',
'my.nudevista.se',
'mylust.com',
'mypornbutler.com',
'myvaginasite.com',
'myvideo.de',
'myzoowife.com',
'nastydirectory.com',
'nastyvideotube.com',
'nataliedee.com',
'nesaporn.com',
'nonamebrdn36.live',
'nudevista.com',
'nudevista.se',
'nuggitgames.com',
'nuvid.com',
'oldgrannysex.net',
'one-tab.com',
'oopsmovs.com',
'overthumbs.com',
'panicporn.com',
'peeingshow.com',
'pervertslut.com',
'pikdit.com',
'pixocafe.com',
'planetpornvideos.com',
'popoholic.com',
'porn-w.org',
'porn-wikipedia.com',
'porn.com',
'pornbaytube.com',
'pornfay.org',
'porngeographic.com',
'pornhub.com',
'pornmd.com',
'pornobistro.com',
'pornorio.net',
'pornostars-collection.ru',
'pornoxo.com',
'pornqik.com',
'pornscum.com',
'pornskirt.com',
'pornsocket.com',
'pornsos.com',
'pornspark.com',
'pornstarnetwork.com',
'pornstarsjobs.com',
'porntitan.com',
'porntopic.com',
'porntubese.com',
'porntubesearch.org',
'porntubest.com',
'pornvideoq.com',
'pornvideos.rs',
'pornviet.net',
'pornwiki.com',
'pornxix.com',
'pornyeah.com',
'pornzoovideos.com',
'proporn.com',
'pussyteenporn.com',
'pussyteentube.com',
'rabbitsreviews.com',
'racialthumbs.com',
'rawtube.com',
'real-sexxx.com',
'redcitadel.com',
'redtoptube.com',
'redtube.com',
'retro-porn.maniacpass.com',
'retrotubeclips.com',
'rexxx.com',
'richporntube.com',
'riosso.xyz',
'routgveriprt.com',
'royalporntube.com',
'rude.com',
'rule34.paheal.net',
'scarlettsabet.com',
'sensibleerection.com',
'sex2mix.com',
'sexfreedomtube.com',
'sexmums.com',
'sexspaghetti.com',
'sextasytube.com',
'sextasytube.net',
'sextube.com',
'sextubest.com',
'sextubster.com',
'sexuhot.com',
'sexyfatgirls.net',
'sexylosers.com',
'shaggyblossom.com',
'sheamateur.com',
'shockingtube.com',
'showteensex.com',
'shufflecam.net',
'shufuni.com',
'slutload.com',
'spankbang.com',
'spankwire.com',
'spicysextube.com',
'start.badults.se',
'submityourtapes.com',
'sunporno.com',
'sxplanet.com',
'syndicpop.com',
'teen-movs.com',
'teenboat.com',
'teenpornstreams.com',
'teensoloporn.com',
'tensorflow.org',
'thingsmydickdoes.tumblr.com',
'thumbzilla.com',
'tjoob.com',
'tnaflix.com',
'toesuddenlyon.com',
'totalav.com',
'trinity-productions.com',
'trueamateurmodels.com',
'trustedporntube.com',
'tube.nu',
'tube8.com',
'tubebond.com',
'tubemonsoon.com',
'twomovies.name',
'usingenglish.com',
'utubefat.com',
'vaginapageant.com',
'vid2c.com',
'video.xnxx.com',
'videofreakz.com',
'videomasti.net',
'videos.videomasti.net',
'videosz.com',
'vidgrab.net',
'vidsvidsvids.com',
'vintage-computer.com',
'vintage-pinup.com',
'vintage.wanknews.com',
'vintageporn69.com',
'vintageporndrawings.porncolection.com',
'vintageporntv.com',
'violetmonroe.net',
'vodpornos.com',
'voyeurstyle.com',
'vp7.com',
'wanknews.com',
'wankspider.com',
'watch2porn.net',
'watchmovies7z.blogspot.se',
'wearehairy.com',
'whois.domaintools.com',
'widget.clips4sale.com',
'wild-galls.com',
'wivespornmovies.com',
'wtchporn.com',
'ww.youporn.com',
'ww.yuvutu.com',
'ww.zootube365.com',
'x99.nudevista.com',
'xfreehosting.com',
'xhamster.com',
'xhamsterhq.com',
'xhamsterpremium.com',
'xhamsterpremiumpass.com',
'xixtube.com',
'xlgirls.com',
'xnxx.com',
'xsharebox.com',
'xsharebox.com',
'xtube.com',
'xvideo.us',
'xvideohost.com',
'xvideos.com',
'xvideos.com',
'xvideosde.com',
'xvideoshome.com',
'xxbunker.com',
'xxdessert.com',
'xxgasm.com',
'xxlmag.com',
'xxvideo.us',
'xxvideoclips.us',
'xxxbunker.com',
'xxxdessert.com',
'xxxvideoclips.us',
'xxxvogue.net',
'yehfun.com',
'yehfun.com',
'yobt.com',
'yobt.com',
'youjizz.com',
'youjizzlive.com',
'youporn.com',
'yuppix.com',
'yuvutu.com',
'zoofilianet.com',
'zoofiliavids.com',
'zoomobileporn.com',
'zooskoolvideos.com',
'zootube365.com',
'zzztube.com'


) OR title in(
    'bbw bukkake - Sök på Google',
'busty bbw with nice round butt - Sök på Google',
'bbw with nice round butt pornhubcom 1 pornhub.busty - Sök på Google',
'bbw latina - Sök på Google',
'Bbw with nice round butt pornhubcom 1 pornhub.Busty - Sök på Google',
'Resultat av Googles bildsökning efter http://xxxbunker.com/busty_stacy_adams_is_drilled_balls_deep.jpg',
'Resultat av Googles bildsökning efter http://www.amateurindex.com/galleries/ftv-girls/shyla-pussy-spreads/shyla-pussy-spreads-10.jpg',
'Resultat av Googles bildsökning efter http://www.chrissymarieclub.com/wp-content/uploads/2010/12/ChrissyMarie_42.jpg',
'Resultat av Googles bildsökning efter http://xxxbunker.com/mature_lady_gets_a_creampie.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/nathaly-2/hairy-pussy-nathaly-12.jpg',
'Resultat av Googles bildsökning efter http://www.myvaginasite.com/photos/vix_pussy_jacking_01.jpg',
'Resultat av Googles bildsökning efter http://www.teensoloporn.com/content/Ron%2520Harris%2520Cash/Kara%2520Duhe/Kara%2520bent%2520over%2520in%2520the%2520window%2520sucking%2520her%2520thumb%2520toys%2520her%2520pussy%2520from%2520behind/01.jpg',
'Resultat av Googles bildsökning efter http://shaggyblossom.com/wp-content/uploads/2011/01/lily-cameron-hairy-pussy.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/alexandra-3/hairy-pussy-alexandra-08.jpg',
'Resultat av Googles bildsökning efter http://www.sexyfatgirls.net/Images/2011/fat-pussy.jpg',
'Resultat av Googles bildsökning efter http://www.hairyempire.com/images/hairy-pussy-amateur-upskirt-park.jpg',
'erotic fforum - Sök på Google',
'tubemonsoon latina bbw - Sök på Google',
'bbw latin - Sök på Google',
'Google Image Result for http://cdn.0.gaybeast.com/thumbnails/480x320/2640/guy_with_big_dick_fucks_mare.jpg',
'Google Image Result for http://www.beastiality.com/movies/125/thumbs/125-09.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a036/609/a036609_scene_02.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a012/015/a012015_image4.jpg',
'Google Image Result for http://www.justfortouch.com/bundles/ocioadulto/Imagenes/Pelicula/2442/xxx-blonde-webgirls-4-kelly-dane_cover.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a006/833/a006833_scene_02.jpg',
'Google Image Result for http://cdn3.mrstiff.com/media/4/6/6/8/0/4668013/thumb_small.jpg',
'Google Image Result for http://img.adultrental.com/images/new_images/a019379/a019379_scene_13.jpg',
'Google Image Result for http://www.vodpornos.com/covers/72/72446_large.jpg',
'Google Image Result for http://xxxbunker.com/2449056-3.jpg',
'Google Image Result for http://thumbs.pornbaytube.com/tubegogo.com/2/9/56/56c541fd.jpg',
'Google Image Result for http://images.arcadja.com/gues_alfred_fran%C3%A7ois-the_courting_couple~OM473300~10001_20101115_18399_7021.jpg',
'Google Image Result for http://cdn1.image.youporn.phncdn.com/201010/31/487418/120x90/4.jpg',
'Google Image Result for http://cdn.trustedporntube.com/scj/thumbs/207/077.jpg',
'Google Image Result for http://88.208.61.74/tt/teen-movs.com/1teentube.com.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0-3.jpg',
'Google Image Result for http://xxxbunker.com/fuck_holes_pt2_scene_3_new.jpg'
 ) order by weight desc;
;-- -. . -..- - / . -. - .-. -.--
select count(url) c,max(url) u,
(case when title is null then domain else title end) title , domain from url

where title in (
'google.se',
'Google Custom Search',
'Redirecting')
group by url
       --where domain in('bing.com','one-tab.com', 'google.com', 'google.se')
        --       GROUP by title
--where not(domain in ( 'xhamster.com', 'routgveriprt.com', 'pornsos.com', 'xvideos.com', 'toesuddenlyon.com', 'pervertslut.com', 'pornhub.com', 'bestialitytaboo.tv', 'riosso.xyz', 'luxuretv.com', 'tnaflix.com', 'femefun.com', 'mylust.com', 'justporno.tv', 'youporn.com', '3animalsextube.com', 'nonamebrdn36.live', 'zooskoolvideos.com', 'ezysl.com', 'empflix.com', 'pornzoovideos.com', 'pornsocket.com', 'pornskirt.com', 'alphaporno.com', 'daily-bbw-porn.com', 'xnxx.com', 'voyeurstyle.com', 'zoofiliavids.com', 'bestialitysextaboo.com', 'adult-empire.com', 'zoofilianet.com', 'eoredi.com', 'nuggitgames.com', 'pornspark.com', 'proporn.com', 'syndicpop.com', 'pornfay.org', 'trueamateurmodels.com', 'fadsoks.com', 'eroprofile.com', 'homemoviestube.com', 'livejasmin.com', 'zoomobileporn.com', 'bestialzoo.org', 'erkiss.org', 'indianpornvideos2.com', 'lifematures.com', 'xhamsterpremium.com', 'ampugi334f.com', 'animalsexfun.com', 'backetrut.pro', 'fadsips.com', 'girlscv.com', 'gotporn.com', 'imagefap.com', 'instantresp.com', 'motherless.com', 'nesaporn.com', 'pornorio.net', 'pornscum.com', 'pornvideoq.com', 'sexuhot.com', 'tumblr.com', 'dirtydoglinks.com', 'forumophilia.com', 'hotpornshow.com', 'image-dreams.com', 'porntopic.com', 'pornvideos.rs', 'spankbang.com', 'tensorflow.org', 'thumbzilla.com', 'tube8.com', 'yahoo.com', 'adxpartner.com', 'bbwfuckpic.com', 'bestialitygirls.com', 'blackbustybabes.com', 'h2porn.com', 'heavy-r.com', 'hotsexyaunty.com', 'k9thumbs.org', 'message-alert.info', 'myzoowife.com', 'nudevista.com', 'opera.com', 'pornmd.com', 'raindrop.io', 'redtube.com', 'sheamateur.com', 'totalav.com', 'usingenglish.com', 'xxgasm.com', 'xxxvogue.net', 'xxvideoclips.us', 'xxxvideoclips.us', 'xxdessert.com', 'xxxdessert.com', 'xxbunker.com', 'xxxbunker.com', 'xvideo.us', 'xxvideo.us', 'xxlmag.com', 'xvideoshome.com', 'xvideosde.com', 'xvideos.com', 'xvideohost.com', 'xtube.com', 'xlgirls.com', 'xixtube.com', 'hamsterpremiumpass.com', 'hamsterhq.com', 'xhamsterhq.com', 'hamster.com', '99.nudevista.com', 'ww.zootube365.com', 'ww.yuvutu.com', 'ww.youporn.com', 'zzztube.com', 'zootube365.com', 'yuppix.com', 'youjizzlive.com', 'youjizz.com', 'xhamsterpremiumpass.com', 'xfreehosting.com', 'x99.nudevista.com', 'yobt.com', 'yehfun.com', 'xsharebox.com', 'yuvutu.com', 'yehfun.com', 'yobt.com', 'xsharebox.com', 'wearehairy.com', 'wankspider.com', 'wanknews.com', 'vidsvidsvids.com', 'videosz.com', 'vid2c.com', 'trinity-productions.com', 'vaginapageant.com', 'tubemonsoon.com', 'tubebond.com', 'tube.nu', 'sunporno.com', 'submityourtapes.com', 'spankwire.com', 'slutload.com', 'shufuni.com', 'sextubest.com', 'sextube.com', 'sextasytube.net', 'sexmums.com', 'sexfreedomtube.com', 'teensoloporn.com', 'teenboat.com', 'rule34.paheal.net', 'mrstiff.com', 'gaybeast.com', 'boobpedia.com', 'mrsnake.com', 'richporntube.com', 'images.google.com', 'fapdu.com', 'ah-me.com', 'video.xnxx.com', 'rawtube.com', 'porn.com', 'grandpabangsgrandma.com', 'freeones.com', 'board.freeones.com', 'scarlettsabet.com', 'nataliedee.com', 'drtuber.com', 'desihoes.com', 'moviesvintage.com', 'nuvid.com', 'hardsextube.com', 'fatmomtube.com', 'adultrental.com', 'jimslip.com', 'fuckthegeek.com', 'eporner.com', 'boomporntube.com', 'audrawolfmann.net', 'amateur-gangbangers.com', 'real-sexxx.com', 'porntubese.com', 'pornoxo.com', 'pornbaytube.com', 'longporntube.com', 'largeporntube.com', 'hottubeclips.com', 'freeporn.com', 'free-vidz.com', 'askforporn.com', 'rude.com', 'ct.adultrental.com', 'agriculteursgay.socialparody.com', 'vodpornos.com', 'utubefat.com', 'sextubster.com', 'retrotubeclips.com', 'rabbitsreviews.com', 'pussyteenporn.com', 'porntubest.com', 'pornstarsjobs.com', 'pornstarnetwork.com', 'pornqik.com', 'oopsmovs.com', 'nudevista.se', 'nastydirectory.com', 'maturetubesite.net', 'lesbiansfromindia.com', 'kenny-glenn.net', 'keezmovies.com', 'interracialexpert.com', 'iafd.com', 'freshteenxxx.com', 'dinotube.com', 'clearclips.com', 'boysfood.com', 'bollywoodhungama.com', 'blackonslut.com', 'badjojo.com', 'africanfucktours.com', '1teentube.com', 'wild-galls.com', 'keporn.com', 'watch2porn.net', 'vp7.com', 'vintageporn69.com', 'trustedporntube.com', 'spicysextube.com', 'showteensex.com', 'sex2mix.com', 'redtoptube.com', 'porn-wikipedia.com', 'pikdit.com', 'movies.askjolene.com', 'klub.co.in', 'hotxvideos.net', 'hardcoredumper.com', 'gangbangbecky.com', 'freshxxxtube.com', 'cdn1.public.youporn.phncdn.com', 'amateurfetishclips.com', '6aa.info', 'tjoob.com', 'shockingtube.com', 'sexyfatgirls.net', 'sexspaghetti.com', 'redcitadel.com', 'racialthumbs.com', 'pornyeah.com', 'pornxix.com', 'porntubesearch.org', 'porntitan.com', 'porngeographic.com', 'porn-w.org', 'popoholic.com', 'peeingshow.com', 'panicporn.com', 'nastyvideotube.com', 'myvideo.de', 'myvaginasite.com', 'mypornbutler.com', 'movieslinksfree.com', 'moofmoof.com', 'mistressdestiny.com', 'mcxtube.com', 'kporno.com', 'juxmovies.com', 'interracialparty.net', 'interracialexposed.com', 'huntmodelz.com', 'hqseek.com', 'hindilinks4u.net', 'hdvirgin.com', 'hairyempire.com', 'grannysex.in', 'freeones.se', 'free.cbttube.com', 'fatalfemdoms.com', 'excaliburfilms.com', 'desitorrents.com', 'desigupshupp.com', 'britishbukkakebabes.com', 'bravomamas.com', 'blacksalamis.com', 'blackmonsterride.com', 'blackbabesboned.com', 'bigcamtube.com', 'beastiality.com', 'azgals.com', 'animalsex-tube.com', 'amateurindex.com', 'africanfucktour.com', '777xporn.com', '2shared.com', 'wtchporn.com', 'wivespornmovies.com', 'widget.clips4sale.com', 'whois.domaintools.com', 'watchmovies7z.blogspot.se', 'violetmonroe.net', 'vintageporntv.com', 'vidgrab.net', 'videos.videomasti.net', 'videomasti.net', 'videofreakz.com', 'twomovies.name', 'thingsmydickdoes.tumblr.com', 'teenpornstreams.com', 'teen-movs.com', 'sxplanet.com', 'start.badults.se', 'shufflecam.net', 'shaggyblossom.com', 'sexylosers.com', 'sextasytube.com', 'sensibleerection.com', 'rexxx.com', 'pussyteentube.com', 'pornwiki.com', 'pornviet.net', 'pornobistro.com', 'planetpornvideos.com', 'pixocafe.com', 'overthumbs.com', 'oldgrannysex.net', 'my.nudevista.se', 'mobile.spankwire.com', 'minkasicklinger.com', 'mb.indecentes-voisines.com', 'keyporntube.com', 'join.wearehairy.com', 'jithuwap.mobie.in', 'jesporn.com', 'interracial-thumbs.org', 'images.arcadja.com', 'hits.britishbukkakebabes.com', 'hilltopads.net', 'h2freeporn.com', 'galleries.videosz.com', 'galleries.hairy-women-pussy.net', 'full-online-movies.blogspot.se', 'fucksia.tumblr.com', 'fuckinghomepage.com', 'freethenipple.com', 'fitgirlsohyeah.tumblr.com', 'fashionista.com', 'fantasti.cc', 'easymovielink.blogspot.se', 'creatives.livejasmin.com', 'cdn1.mobile.spankwire.phncdn.com', 'cams.com', 'blog.youporn.com', 'askaguywholikesfatchicks.tumblr.com', 'adv.h2porn.com', '88.208.61.4', '88.208.61.11', '88.208.58.83', '88.208.52.191', '88.208.24.205', '88.208.24.199', '213.174.156.59', 'vintage-pinup.com', 'vintage-computer.com', 'royalporntube.com', 'pornostars-collection.ru', 'moviefap.com', 'free-vintage.com', 'vintageporndrawings.porncolection.com', 'vintage.wanknews.com', 'retro-porn.maniacpass.com', 'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc' ))
--group by domain 
order by c desc,u desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
select * from url where domain in ('bing.com',
--'github.com',
--'google.com',
--'google.se',
--'mozilla.org',
--'opera.com',
--'raindrop.io',
--'reddit.com',
--'tumblr.com',
--'yahoo.com',
'1teentube.com',
'213.174.156.59',
'2shared.com',
'3animalsextube.com',
'6aa.info',
'777xporn.com',
'88.208.24.199',
'88.208.24.205',
'88.208.52.191',
'88.208.58.83',
'88.208.61.11',
'88.208.61.4',
'99.nudevista.com',
'adult-empire.com',
'adultrental.com',
'adv.h2porn.com',
'adxpartner.com',
'africanfucktour.com',
'africanfucktours.com',
'agriculteursgay.socialparody.com',
'ah-me.com',
'alphaporno.com',
'amateur-gangbangers.com',
'amateurfetishclips.com',
'amateurindex.com',
'ampugi334f.com',
'animalsex-tube.com',
'animalsexfun.com',
'askaguywholikesfatchicks.tumblr.com',
'askforporn.com',
'audrawolfmann.net',
'azgals.com',
'backetrut.pro',
'badjojo.com',
'bbwfuckpic.com',
'beastiality.com',
'bestialitygirls.com',
'bestialitysextaboo.com',
'bestialitytaboo.tv',
'bestialzoo.org',
'bigcamtube.com',
'blackbabesboned.com',
'blackbustybabes.com',
'blackmonsterride.com',
'blackonslut.com',
'blacksalamis.com',
'blog.youporn.com',
'board.freeones.com',
'bollywoodhungama.com',
'boobpedia.com',
'boomporntube.com',
'boysfood.com',
'bravomamas.com',
'britishbukkakebabes.com',
'cams.com',
'cdn1.mobile.spankwire.phncdn.com',
'cdn1.public.youporn.phncdn.com',
'clearclips.com',
'creatives.livejasmin.com',
'ct.adultrental.com',
'daily-bbw-porn.com',
'desigupshupp.com',
'desihoes.com',
'desitorrents.com',
'dinotube.com',
'dirtydoglinks.com',
'drtuber.com',
'easymovielink.blogspot.se',
'empflix.com',
'eoredi.com',
'eporner.com',
'erkiss.org',
'eroprofile.com',
'excaliburfilms.com',
'ezysl.com',
'fadsips.com',
'fadsoks.com',
'fantasti.cc',
'fapdu.com',
'fashionista.com',
'fatalfemdoms.com',
'fatmomtube.com',
'femefun.com',
'fitgirlsohyeah.tumblr.com',
'forumophilia.com',
'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc',
'free-vidz.com',
'free-vintage.com',
'free.cbttube.com',
'freeones.com',
'freeones.se',
'freeporn.com',
'freethenipple.com',
'freshteenxxx.com',
'freshxxxtube.com',
'fuckinghomepage.com',
'fucksia.tumblr.com',
'fuckthegeek.com',
'full-online-movies.blogspot.se',
'galleries.hairy-women-pussy.net',
'galleries.videosz.com',
'gangbangbecky.com',
'gaybeast.com',
'girlscv.com',
'gotporn.com',
'grandpabangsgrandma.com',
'grannysex.in',
'h2freeporn.com',
'h2porn.com',
'hairyempire.com',
'hamster.com',
'hamsterhq.com',
'hamsterpremiumpass.com',
'hardcoredumper.com',
'hardsextube.com',
'hdvirgin.com',
'heavy-r.com',
'hilltopads.net',
'hindilinks4u.net',
'hits.britishbukkakebabes.com',
'homemoviestube.com',
'hotpornshow.com',
'hotsexyaunty.com',
'hottubeclips.com',
'hotxvideos.net',
'hqseek.com',
'huntmodelz.com',
'iafd.com',
'image-dreams.com',
'imagefap.com',
'images.arcadja.com',
'indianpornvideos2.com',
'instantresp.com',
'interracial-thumbs.org',
'interracialexpert.com',
'interracialexposed.com',
'interracialparty.net',
'jesporn.com',
'jimslip.com',
'jithuwap.mobie.in',
'join.wearehairy.com',
'justporno.tv',
'juxmovies.com',
'k9thumbs.org',
'keezmovies.com',
'kenny-glenn.net',
'keporn.com',
'keyporntube.com',
'klub.co.in',
'kporno.com',
'largeporntube.com',
'lesbiansfromindia.com',
'lifematures.com',
'livejasmin.com',
'longporntube.com',
'luxuretv.com',
'maturetubesite.net',
'mb.indecentes-voisines.com',
'mcxtube.com',
'message-alert.info',
'minkasicklinger.com',
'mistressdestiny.com',
'mobile.spankwire.com',
'moofmoof.com',
'motherless.com',
'moviefap.com',
'movies.askjolene.com',
'movieslinksfree.com',
'moviesvintage.com',
'mrsnake.com',
'mrstiff.com',
'my.nudevista.se',
'mylust.com',
'mypornbutler.com',
'myvaginasite.com',
'myvideo.de',
'myzoowife.com',
'nastydirectory.com',
'nastyvideotube.com',
'nataliedee.com',
'nesaporn.com',
'nonamebrdn36.live',
'nudevista.com',
'nudevista.se',
'nuggitgames.com',
'nuvid.com',
'oldgrannysex.net',
'one-tab.com',
'oopsmovs.com',
'overthumbs.com',
'panicporn.com',
'peeingshow.com',
'pervertslut.com',
'pikdit.com',
'pixocafe.com',
'planetpornvideos.com',
'popoholic.com',
'porn-w.org',
'porn-wikipedia.com',
'porn.com',
'pornbaytube.com',
'pornfay.org',
'porngeographic.com',
'pornhub.com',
'pornmd.com',
'pornobistro.com',
'pornorio.net',
'pornostars-collection.ru',
'pornoxo.com',
'pornqik.com',
'pornscum.com',
'pornskirt.com',
'pornsocket.com',
'pornsos.com',
'pornspark.com',
'pornstarnetwork.com',
'pornstarsjobs.com',
'porntitan.com',
'porntopic.com',
'porntubese.com',
'porntubesearch.org',
'porntubest.com',
'pornvideoq.com',
'pornvideos.rs',
'pornviet.net',
'pornwiki.com',
'pornxix.com',
'pornyeah.com',
'pornzoovideos.com',
'proporn.com',
'pussyteenporn.com',
'pussyteentube.com',
'rabbitsreviews.com',
'racialthumbs.com',
'rawtube.com',
'real-sexxx.com',
'redcitadel.com',
'redtoptube.com',
'redtube.com',
'retro-porn.maniacpass.com',
'retrotubeclips.com',
'rexxx.com',
'richporntube.com',
'riosso.xyz',
'routgveriprt.com',
'royalporntube.com',
'rude.com',
'rule34.paheal.net',
'scarlettsabet.com',
'sensibleerection.com',
'sex2mix.com',
'sexfreedomtube.com',
'sexmums.com',
'sexspaghetti.com',
'sextasytube.com',
'sextasytube.net',
'sextube.com',
'sextubest.com',
'sextubster.com',
'sexuhot.com',
'sexyfatgirls.net',
'sexylosers.com',
'shaggyblossom.com',
'sheamateur.com',
'shockingtube.com',
'showteensex.com',
'shufflecam.net',
'shufuni.com',
'slutload.com',
'spankbang.com',
'spankwire.com',
'spicysextube.com',
'start.badults.se',
'submityourtapes.com',
'sunporno.com',
'sxplanet.com',
'syndicpop.com',
'teen-movs.com',
'teenboat.com',
'teenpornstreams.com',
'teensoloporn.com',
'tensorflow.org',
'thingsmydickdoes.tumblr.com',
'thumbzilla.com',
'tjoob.com',
'tnaflix.com',
'toesuddenlyon.com',
'totalav.com',
'trinity-productions.com',
'trueamateurmodels.com',
'trustedporntube.com',
'tube.nu',
'tube8.com',
'tubebond.com',
'tubemonsoon.com',
'twomovies.name',
'usingenglish.com',
'utubefat.com',
'vaginapageant.com',
'vid2c.com',
'video.xnxx.com',
'videofreakz.com',
'videomasti.net',
'videos.videomasti.net',
'videosz.com',
'vidgrab.net',
'vidsvidsvids.com',
'vintage-computer.com',
'vintage-pinup.com',
'vintage.wanknews.com',
'vintageporn69.com',
'vintageporndrawings.porncolection.com',
'vintageporntv.com',
'violetmonroe.net',
'vodpornos.com',
'voyeurstyle.com',
'vp7.com',
'wanknews.com',
'wankspider.com',
'watch2porn.net',
'watchmovies7z.blogspot.se',
'wearehairy.com',
'whois.domaintools.com',
'widget.clips4sale.com',
'wild-galls.com',
'wivespornmovies.com',
'wtchporn.com',
'ww.youporn.com',
'ww.yuvutu.com',
'ww.zootube365.com',
'x99.nudevista.com',
'xfreehosting.com',
'xhamster.com',
'xhamsterhq.com',
'xhamsterpremium.com',
'xhamsterpremiumpass.com',
'xixtube.com',
'xlgirls.com',
'xnxx.com',
'xsharebox.com',
'xsharebox.com',
'xtube.com',
'xvideo.us',
'xvideohost.com',
'xvideos.com',
'xvideos.com',
'xvideosde.com',
'xvideoshome.com',
'xxbunker.com',
'xxdessert.com',
'xxgasm.com',
'xxlmag.com',
'xxvideo.us',
'xxvideoclips.us',
'xxxbunker.com',
'xxxdessert.com',
'xxxvideoclips.us',
'xxxvogue.net',
'yehfun.com',
'yehfun.com',
'yobt.com',
'yobt.com',
'youjizz.com',
'youjizzlive.com',
'youporn.com',
'yuppix.com',
'yuvutu.com',
'zoofilianet.com',
'zoofiliavids.com',
'zoomobileporn.com',
'zooskoolvideos.com',
'zootube365.com',
'zzztube.com'


) OR title in(
    'bbw bukkake - Sök på Google',
'busty bbw with nice round butt - Sök på Google',
'bbw with nice round butt pornhubcom 1 pornhub.busty - Sök på Google',
'bbw latina - Sök på Google',
'Bbw with nice round butt pornhubcom 1 pornhub.Busty - Sök på Google',
'Resultat av Googles bildsökning efter http://xxxbunker.com/busty_stacy_adams_is_drilled_balls_deep.jpg',
'Resultat av Googles bildsökning efter http://www.amateurindex.com/galleries/ftv-girls/shyla-pussy-spreads/shyla-pussy-spreads-10.jpg',
'Resultat av Googles bildsökning efter http://www.chrissymarieclub.com/wp-content/uploads/2010/12/ChrissyMarie_42.jpg',
'Resultat av Googles bildsökning efter http://xxxbunker.com/mature_lady_gets_a_creampie.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/nathaly-2/hairy-pussy-nathaly-12.jpg',
'Resultat av Googles bildsökning efter http://www.myvaginasite.com/photos/vix_pussy_jacking_01.jpg',
'Resultat av Googles bildsökning efter http://www.teensoloporn.com/content/Ron%2520Harris%2520Cash/Kara%2520Duhe/Kara%2520bent%2520over%2520in%2520the%2520window%2520sucking%2520her%2520thumb%2520toys%2520her%2520pussy%2520from%2520behind/01.jpg',
'Resultat av Googles bildsökning efter http://shaggyblossom.com/wp-content/uploads/2011/01/lily-cameron-hairy-pussy.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/alexandra-3/hairy-pussy-alexandra-08.jpg',
'Resultat av Googles bildsökning efter http://www.sexyfatgirls.net/Images/2011/fat-pussy.jpg',
'Resultat av Googles bildsökning efter http://www.hairyempire.com/images/hairy-pussy-amateur-upskirt-park.jpg',
'erotic fforum - Sök på Google',
'tubemonsoon latina bbw - Sök på Google',
'bbw latin - Sök på Google',
'Google Image Result for http://cdn.0.gaybeast.com/thumbnails/480x320/2640/guy_with_big_dick_fucks_mare.jpg',
'Google Image Result for http://www.beastiality.com/movies/125/thumbs/125-09.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a036/609/a036609_scene_02.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a012/015/a012015_image4.jpg',
'Google Image Result for http://www.justfortouch.com/bundles/ocioadulto/Imagenes/Pelicula/2442/xxx-blonde-webgirls-4-kelly-dane_cover.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a006/833/a006833_scene_02.jpg',
'Google Image Result for http://cdn3.mrstiff.com/media/4/6/6/8/0/4668013/thumb_small.jpg',
'Google Image Result for http://img.adultrental.com/images/new_images/a019379/a019379_scene_13.jpg',
'Google Image Result for http://www.vodpornos.com/covers/72/72446_large.jpg',
'Google Image Result for http://xxxbunker.com/2449056-3.jpg',
'Google Image Result for http://thumbs.pornbaytube.com/tubegogo.com/2/9/56/56c541fd.jpg',
'Google Image Result for http://images.arcadja.com/gues_alfred_fran%C3%A7ois-the_courting_couple~OM473300~10001_20101115_18399_7021.jpg',
'Google Image Result for http://cdn1.image.youporn.phncdn.com/201010/31/487418/120x90/4.jpg',
'Google Image Result for http://cdn.trustedporntube.com/scj/thumbs/207/077.jpg',
'Google Image Result for http://88.208.61.74/tt/teen-movs.com/1teentube.com.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0-3.jpg',
'Google Image Result for http://xxxbunker.com/fuck_holes_pt2_scene_3_new.jpg'
 ) order by Title,domain,url;
;-- -. . -..- - / . -. - .-. -.--
select  distinct * from url where domain in ('bing.com',
--'github.com',
--'google.com',
--'google.se',
--'mozilla.org',
--'opera.com',
--'raindrop.io',
--'reddit.com',
--'tumblr.com',
--'yahoo.com',
'1teentube.com',
'213.174.156.59',
'2shared.com',
'3animalsextube.com',
'6aa.info',
'777xporn.com',
'88.208.24.199',
'88.208.24.205',
'88.208.52.191',
'88.208.58.83',
'88.208.61.11',
'88.208.61.4',
'99.nudevista.com',
'adult-empire.com',
'adultrental.com',
'adv.h2porn.com',
'adxpartner.com',
'africanfucktour.com',
'africanfucktours.com',
'agriculteursgay.socialparody.com',
'ah-me.com',
'alphaporno.com',
'amateur-gangbangers.com',
'amateurfetishclips.com',
'amateurindex.com',
'ampugi334f.com',
'animalsex-tube.com',
'animalsexfun.com',
'askaguywholikesfatchicks.tumblr.com',
'askforporn.com',
'audrawolfmann.net',
'azgals.com',
'backetrut.pro',
'badjojo.com',
'bbwfuckpic.com',
'beastiality.com',
'bestialitygirls.com',
'bestialitysextaboo.com',
'bestialitytaboo.tv',
'bestialzoo.org',
'bigcamtube.com',
'blackbabesboned.com',
'blackbustybabes.com',
'blackmonsterride.com',
'blackonslut.com',
'blacksalamis.com',
'blog.youporn.com',
'board.freeones.com',
'bollywoodhungama.com',
'boobpedia.com',
'boomporntube.com',
'boysfood.com',
'bravomamas.com',
'britishbukkakebabes.com',
'cams.com',
'cdn1.mobile.spankwire.phncdn.com',
'cdn1.public.youporn.phncdn.com',
'clearclips.com',
'creatives.livejasmin.com',
'ct.adultrental.com',
'daily-bbw-porn.com',
'desigupshupp.com',
'desihoes.com',
'desitorrents.com',
'dinotube.com',
'dirtydoglinks.com',
'drtuber.com',
'easymovielink.blogspot.se',
'empflix.com',
'eoredi.com',
'eporner.com',
'erkiss.org',
'eroprofile.com',
'excaliburfilms.com',
'ezysl.com',
'fadsips.com',
'fadsoks.com',
'fantasti.cc',
'fapdu.com',
'fashionista.com',
'fatalfemdoms.com',
'fatmomtube.com',
'femefun.com',
'fitgirlsohyeah.tumblr.com',
'forumophilia.com',
'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc',
'free-vidz.com',
'free-vintage.com',
'free.cbttube.com',
'freeones.com',
'freeones.se',
'freeporn.com',
'freethenipple.com',
'freshteenxxx.com',
'freshxxxtube.com',
'fuckinghomepage.com',
'fucksia.tumblr.com',
'fuckthegeek.com',
'full-online-movies.blogspot.se',
'galleries.hairy-women-pussy.net',
'galleries.videosz.com',
'gangbangbecky.com',
'gaybeast.com',
'girlscv.com',
'gotporn.com',
'grandpabangsgrandma.com',
'grannysex.in',
'h2freeporn.com',
'h2porn.com',
'hairyempire.com',
'hamster.com',
'hamsterhq.com',
'hamsterpremiumpass.com',
'hardcoredumper.com',
'hardsextube.com',
'hdvirgin.com',
'heavy-r.com',
'hilltopads.net',
'hindilinks4u.net',
'hits.britishbukkakebabes.com',
'homemoviestube.com',
'hotpornshow.com',
'hotsexyaunty.com',
'hottubeclips.com',
'hotxvideos.net',
'hqseek.com',
'huntmodelz.com',
'iafd.com',
'image-dreams.com',
'imagefap.com',
'images.arcadja.com',
'indianpornvideos2.com',
'instantresp.com',
'interracial-thumbs.org',
'interracialexpert.com',
'interracialexposed.com',
'interracialparty.net',
'jesporn.com',
'jimslip.com',
'jithuwap.mobie.in',
'join.wearehairy.com',
'justporno.tv',
'juxmovies.com',
'k9thumbs.org',
'keezmovies.com',
'kenny-glenn.net',
'keporn.com',
'keyporntube.com',
'klub.co.in',
'kporno.com',
'largeporntube.com',
'lesbiansfromindia.com',
'lifematures.com',
'livejasmin.com',
'longporntube.com',
'luxuretv.com',
'maturetubesite.net',
'mb.indecentes-voisines.com',
'mcxtube.com',
'message-alert.info',
'minkasicklinger.com',
'mistressdestiny.com',
'mobile.spankwire.com',
'moofmoof.com',
'motherless.com',
'moviefap.com',
'movies.askjolene.com',
'movieslinksfree.com',
'moviesvintage.com',
'mrsnake.com',
'mrstiff.com',
'my.nudevista.se',
'mylust.com',
'mypornbutler.com',
'myvaginasite.com',
'myvideo.de',
'myzoowife.com',
'nastydirectory.com',
'nastyvideotube.com',
'nataliedee.com',
'nesaporn.com',
'nonamebrdn36.live',
'nudevista.com',
'nudevista.se',
'nuggitgames.com',
'nuvid.com',
'oldgrannysex.net',
'one-tab.com',
'oopsmovs.com',
'overthumbs.com',
'panicporn.com',
'peeingshow.com',
'pervertslut.com',
'pikdit.com',
'pixocafe.com',
'planetpornvideos.com',
'popoholic.com',
'porn-w.org',
'porn-wikipedia.com',
'porn.com',
'pornbaytube.com',
'pornfay.org',
'porngeographic.com',
'pornhub.com',
'pornmd.com',
'pornobistro.com',
'pornorio.net',
'pornostars-collection.ru',
'pornoxo.com',
'pornqik.com',
'pornscum.com',
'pornskirt.com',
'pornsocket.com',
'pornsos.com',
'pornspark.com',
'pornstarnetwork.com',
'pornstarsjobs.com',
'porntitan.com',
'porntopic.com',
'porntubese.com',
'porntubesearch.org',
'porntubest.com',
'pornvideoq.com',
'pornvideos.rs',
'pornviet.net',
'pornwiki.com',
'pornxix.com',
'pornyeah.com',
'pornzoovideos.com',
'proporn.com',
'pussyteenporn.com',
'pussyteentube.com',
'rabbitsreviews.com',
'racialthumbs.com',
'rawtube.com',
'real-sexxx.com',
'redcitadel.com',
'redtoptube.com',
'redtube.com',
'retro-porn.maniacpass.com',
'retrotubeclips.com',
'rexxx.com',
'richporntube.com',
'riosso.xyz',
'routgveriprt.com',
'royalporntube.com',
'rude.com',
'rule34.paheal.net',
'scarlettsabet.com',
'sensibleerection.com',
'sex2mix.com',
'sexfreedomtube.com',
'sexmums.com',
'sexspaghetti.com',
'sextasytube.com',
'sextasytube.net',
'sextube.com',
'sextubest.com',
'sextubster.com',
'sexuhot.com',
'sexyfatgirls.net',
'sexylosers.com',
'shaggyblossom.com',
'sheamateur.com',
'shockingtube.com',
'showteensex.com',
'shufflecam.net',
'shufuni.com',
'slutload.com',
'spankbang.com',
'spankwire.com',
'spicysextube.com',
'start.badults.se',
'submityourtapes.com',
'sunporno.com',
'sxplanet.com',
'syndicpop.com',
'teen-movs.com',
'teenboat.com',
'teenpornstreams.com',
'teensoloporn.com',
'tensorflow.org',
'thingsmydickdoes.tumblr.com',
'thumbzilla.com',
'tjoob.com',
'tnaflix.com',
'toesuddenlyon.com',
'totalav.com',
'trinity-productions.com',
'trueamateurmodels.com',
'trustedporntube.com',
'tube.nu',
'tube8.com',
'tubebond.com',
'tubemonsoon.com',
'twomovies.name',
'usingenglish.com',
'utubefat.com',
'vaginapageant.com',
'vid2c.com',
'video.xnxx.com',
'videofreakz.com',
'videomasti.net',
'videos.videomasti.net',
'videosz.com',
'vidgrab.net',
'vidsvidsvids.com',
'vintage-computer.com',
'vintage-pinup.com',
'vintage.wanknews.com',
'vintageporn69.com',
'vintageporndrawings.porncolection.com',
'vintageporntv.com',
'violetmonroe.net',
'vodpornos.com',
'voyeurstyle.com',
'vp7.com',
'wanknews.com',
'wankspider.com',
'watch2porn.net',
'watchmovies7z.blogspot.se',
'wearehairy.com',
'whois.domaintools.com',
'widget.clips4sale.com',
'wild-galls.com',
'wivespornmovies.com',
'wtchporn.com',
'ww.youporn.com',
'ww.yuvutu.com',
'ww.zootube365.com',
'x99.nudevista.com',
'xfreehosting.com',
'xhamster.com',
'xhamsterhq.com',
'xhamsterpremium.com',
'xhamsterpremiumpass.com',
'xixtube.com',
'xlgirls.com',
'xnxx.com',
'xsharebox.com',
'xsharebox.com',
'xtube.com',
'xvideo.us',
'xvideohost.com',
'xvideos.com',
'xvideos.com',
'xvideosde.com',
'xvideoshome.com',
'xxbunker.com',
'xxdessert.com',
'xxgasm.com',
'xxlmag.com',
'xxvideo.us',
'xxvideoclips.us',
'xxxbunker.com',
'xxxdessert.com',
'xxxvideoclips.us',
'xxxvogue.net',
'yehfun.com',
'yehfun.com',
'yobt.com',
'yobt.com',
'youjizz.com',
'youjizzlive.com',
'youporn.com',
'yuppix.com',
'yuvutu.com',
'zoofilianet.com',
'zoofiliavids.com',
'zoomobileporn.com',
'zooskoolvideos.com',
'zootube365.com',
'zzztube.com'


) OR title in(
    'bbw bukkake - Sök på Google',
'busty bbw with nice round butt - Sök på Google',
'bbw with nice round butt pornhubcom 1 pornhub.busty - Sök på Google',
'bbw latina - Sök på Google',
'Bbw with nice round butt pornhubcom 1 pornhub.Busty - Sök på Google',
'Resultat av Googles bildsökning efter http://xxxbunker.com/busty_stacy_adams_is_drilled_balls_deep.jpg',
'Resultat av Googles bildsökning efter http://www.amateurindex.com/galleries/ftv-girls/shyla-pussy-spreads/shyla-pussy-spreads-10.jpg',
'Resultat av Googles bildsökning efter http://www.chrissymarieclub.com/wp-content/uploads/2010/12/ChrissyMarie_42.jpg',
'Resultat av Googles bildsökning efter http://xxxbunker.com/mature_lady_gets_a_creampie.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/nathaly-2/hairy-pussy-nathaly-12.jpg',
'Resultat av Googles bildsökning efter http://www.myvaginasite.com/photos/vix_pussy_jacking_01.jpg',
'Resultat av Googles bildsökning efter http://www.teensoloporn.com/content/Ron%2520Harris%2520Cash/Kara%2520Duhe/Kara%2520bent%2520over%2520in%2520the%2520window%2520sucking%2520her%2520thumb%2520toys%2520her%2520pussy%2520from%2520behind/01.jpg',
'Resultat av Googles bildsökning efter http://shaggyblossom.com/wp-content/uploads/2011/01/lily-cameron-hairy-pussy.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/alexandra-3/hairy-pussy-alexandra-08.jpg',
'Resultat av Googles bildsökning efter http://www.sexyfatgirls.net/Images/2011/fat-pussy.jpg',
'Resultat av Googles bildsökning efter http://www.hairyempire.com/images/hairy-pussy-amateur-upskirt-park.jpg',
'erotic fforum - Sök på Google',
'tubemonsoon latina bbw - Sök på Google',
'bbw latin - Sök på Google',
'Google Image Result for http://cdn.0.gaybeast.com/thumbnails/480x320/2640/guy_with_big_dick_fucks_mare.jpg',
'Google Image Result for http://www.beastiality.com/movies/125/thumbs/125-09.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a036/609/a036609_scene_02.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a012/015/a012015_image4.jpg',
'Google Image Result for http://www.justfortouch.com/bundles/ocioadulto/Imagenes/Pelicula/2442/xxx-blonde-webgirls-4-kelly-dane_cover.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a006/833/a006833_scene_02.jpg',
'Google Image Result for http://cdn3.mrstiff.com/media/4/6/6/8/0/4668013/thumb_small.jpg',
'Google Image Result for http://img.adultrental.com/images/new_images/a019379/a019379_scene_13.jpg',
'Google Image Result for http://www.vodpornos.com/covers/72/72446_large.jpg',
'Google Image Result for http://xxxbunker.com/2449056-3.jpg',
'Google Image Result for http://thumbs.pornbaytube.com/tubegogo.com/2/9/56/56c541fd.jpg',
'Google Image Result for http://images.arcadja.com/gues_alfred_fran%C3%A7ois-the_courting_couple~OM473300~10001_20101115_18399_7021.jpg',
'Google Image Result for http://cdn1.image.youporn.phncdn.com/201010/31/487418/120x90/4.jpg',
'Google Image Result for http://cdn.trustedporntube.com/scj/thumbs/207/077.jpg',
'Google Image Result for http://88.208.61.74/tt/teen-movs.com/1teentube.com.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0-3.jpg',
'Google Image Result for http://xxxbunker.com/fuck_holes_pt2_scene_3_new.jpg'
 ) order by Title,domain,url;
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
        (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
                 then SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url, instr(url, '.')+1, INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1) then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
            )
where (url <> '' AND url is not null)
  and (
      (
      (domain is null OR domain = '')
          OR (instr(domain, 'w') = 1
          OR instr(domain, '.') = 1)
          OR instr(domain,'/') = length(domain)) OR instr(url, domain) = 2);
;-- -. . -..- - / . -. - .-. -.--
create view ToMoveToHistoryX as select  distinct * from url where domain in ('bing.com',
--'github.com',
--'google.com',
--'google.se',
--'mozilla.org',
--'opera.com',
--'raindrop.io',
--'reddit.com',
--'tumblr.com',
--'yahoo.com',
'1teentube.com',
'213.174.156.59',
'2shared.com',
'3animalsextube.com',
'6aa.info',
'777xporn.com',
'88.208.24.199',
'88.208.24.205',
'88.208.52.191',
'88.208.58.83',
'88.208.61.11',
'88.208.61.4',
'99.nudevista.com',
'adult-empire.com',
'adultrental.com',
'adv.h2porn.com',
'adxpartner.com',
'africanfucktour.com',
'africanfucktours.com',
'agriculteursgay.socialparody.com',
'ah-me.com',
'alphaporno.com',
'amateur-gangbangers.com',
'amateurfetishclips.com',
'amateurindex.com',
'ampugi334f.com',
'animalsex-tube.com',
'animalsexfun.com',
'askaguywholikesfatchicks.tumblr.com',
'askforporn.com',
'audrawolfmann.net',
'azgals.com',
'backetrut.pro',
'badjojo.com',
'bbwfuckpic.com',
'beastiality.com',
'bestialitygirls.com',
'bestialitysextaboo.com',
'bestialitytaboo.tv',
'bestialzoo.org',
'bigcamtube.com',
'blackbabesboned.com',
'blackbustybabes.com',
'blackmonsterride.com',
'blackonslut.com',
'blacksalamis.com',
'blog.youporn.com',
'board.freeones.com',
'bollywoodhungama.com',
'boobpedia.com',
'boomporntube.com',
'boysfood.com',
'bravomamas.com',
'britishbukkakebabes.com',
'cams.com',
'cdn1.mobile.spankwire.phncdn.com',
'cdn1.public.youporn.phncdn.com',
'clearclips.com',
'creatives.livejasmin.com',
'ct.adultrental.com',
'daily-bbw-porn.com',
'desigupshupp.com',
'desihoes.com',
'desitorrents.com',
'dinotube.com',
'dirtydoglinks.com',
'drtuber.com',
'easymovielink.blogspot.se',
'empflix.com',
'eoredi.com',
'eporner.com',
'erkiss.org',
'eroprofile.com',
'excaliburfilms.com',
'ezysl.com',
'fadsips.com',
'fadsoks.com',
'fantasti.cc',
'fapdu.com',
'fashionista.com',
'fatalfemdoms.com',
'fatmomtube.com',
'femefun.com',
'fitgirlsohyeah.tumblr.com',
'forumophilia.com',
'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc',
'free-vidz.com',
'free-vintage.com',
'free.cbttube.com',
'freeones.com',
'freeones.se',
'freeporn.com',
'freethenipple.com',
'freshteenxxx.com',
'freshxxxtube.com',
'fuckinghomepage.com',
'fucksia.tumblr.com',
'fuckthegeek.com',
'full-online-movies.blogspot.se',
'galleries.hairy-women-pussy.net',
'galleries.videosz.com',
'gangbangbecky.com',
'gaybeast.com',
'girlscv.com',
'gotporn.com',
'grandpabangsgrandma.com',
'grannysex.in',
'h2freeporn.com',
'h2porn.com',
'hairyempire.com',
'hamster.com',
'hamsterhq.com',
'hamsterpremiumpass.com',
'hardcoredumper.com',
'hardsextube.com',
'hdvirgin.com',
'heavy-r.com',
'hilltopads.net',
'hindilinks4u.net',
'hits.britishbukkakebabes.com',
'homemoviestube.com',
'hotpornshow.com',
'hotsexyaunty.com',
'hottubeclips.com',
'hotxvideos.net',
'hqseek.com',
'huntmodelz.com',
'iafd.com',
'image-dreams.com',
'imagefap.com',
'images.arcadja.com',
'indianpornvideos2.com',
'instantresp.com',
'interracial-thumbs.org',
'interracialexpert.com',
'interracialexposed.com',
'interracialparty.net',
'jesporn.com',
'jimslip.com',
'jithuwap.mobie.in',
'join.wearehairy.com',
'justporno.tv',
'juxmovies.com',
'k9thumbs.org',
'keezmovies.com',
'kenny-glenn.net',
'keporn.com',
'keyporntube.com',
'klub.co.in',
'kporno.com',
'largeporntube.com',
'lesbiansfromindia.com',
'lifematures.com',
'livejasmin.com',
'longporntube.com',
'luxuretv.com',
'maturetubesite.net',
'mb.indecentes-voisines.com',
'mcxtube.com',
'message-alert.info',
'minkasicklinger.com',
'mistressdestiny.com',
'mobile.spankwire.com',
'moofmoof.com',
'motherless.com',
'moviefap.com',
'movies.askjolene.com',
'movieslinksfree.com',
'moviesvintage.com',
'mrsnake.com',
'mrstiff.com',
'my.nudevista.se',
'mylust.com',
'mypornbutler.com',
'myvaginasite.com',
'myvideo.de',
'myzoowife.com',
'nastydirectory.com',
'nastyvideotube.com',
'nataliedee.com',
'nesaporn.com',
'nonamebrdn36.live',
'nudevista.com',
'nudevista.se',
'nuggitgames.com',
'nuvid.com',
'oldgrannysex.net',
'one-tab.com',
'oopsmovs.com',
'overthumbs.com',
'panicporn.com',
'peeingshow.com',
'pervertslut.com',
'pikdit.com',
'pixocafe.com',
'planetpornvideos.com',
'popoholic.com',
'porn-w.org',
'porn-wikipedia.com',
'porn.com',
'pornbaytube.com',
'pornfay.org',
'porngeographic.com',
'pornhub.com',
'pornmd.com',
'pornobistro.com',
'pornorio.net',
'pornostars-collection.ru',
'pornoxo.com',
'pornqik.com',
'pornscum.com',
'pornskirt.com',
'pornsocket.com',
'pornsos.com',
'pornspark.com',
'pornstarnetwork.com',
'pornstarsjobs.com',
'porntitan.com',
'porntopic.com',
'porntubese.com',
'porntubesearch.org',
'porntubest.com',
'pornvideoq.com',
'pornvideos.rs',
'pornviet.net',
'pornwiki.com',
'pornxix.com',
'pornyeah.com',
'pornzoovideos.com',
'proporn.com',
'pussyteenporn.com',
'pussyteentube.com',
'rabbitsreviews.com',
'racialthumbs.com',
'rawtube.com',
'real-sexxx.com',
'redcitadel.com',
'redtoptube.com',
'redtube.com',
'retro-porn.maniacpass.com',
'retrotubeclips.com',
'rexxx.com',
'richporntube.com',
'riosso.xyz',
'routgveriprt.com',
'royalporntube.com',
'rude.com',
'rule34.paheal.net',
'scarlettsabet.com',
'sensibleerection.com',
'sex2mix.com',
'sexfreedomtube.com',
'sexmums.com',
'sexspaghetti.com',
'sextasytube.com',
'sextasytube.net',
'sextube.com',
'sextubest.com',
'sextubster.com',
'sexuhot.com',
'sexyfatgirls.net',
'sexylosers.com',
'shaggyblossom.com',
'sheamateur.com',
'shockingtube.com',
'showteensex.com',
'shufflecam.net',
'shufuni.com',
'slutload.com',
'spankbang.com',
'spankwire.com',
'spicysextube.com',
'start.badults.se',
'submityourtapes.com',
'sunporno.com',
'sxplanet.com',
'syndicpop.com',
'teen-movs.com',
'teenboat.com',
'teenpornstreams.com',
'teensoloporn.com',
'tensorflow.org',
'thingsmydickdoes.tumblr.com',
'thumbzilla.com',
'tjoob.com',
'tnaflix.com',
'toesuddenlyon.com',
'totalav.com',
'trinity-productions.com',
'trueamateurmodels.com',
'trustedporntube.com',
'tube.nu',
'tube8.com',
'tubebond.com',
'tubemonsoon.com',
'twomovies.name',
'usingenglish.com',
'utubefat.com',
'vaginapageant.com',
'vid2c.com',
'video.xnxx.com',
'videofreakz.com',
'videomasti.net',
'videos.videomasti.net',
'videosz.com',
'vidgrab.net',
'vidsvidsvids.com',
'vintage-computer.com',
'vintage-pinup.com',
'vintage.wanknews.com',
'vintageporn69.com',
'vintageporndrawings.porncolection.com',
'vintageporntv.com',
'violetmonroe.net',
'vodpornos.com',
'voyeurstyle.com',
'vp7.com',
'wanknews.com',
'wankspider.com',
'watch2porn.net',
'watchmovies7z.blogspot.se',
'wearehairy.com',
'whois.domaintools.com',
'widget.clips4sale.com',
'wild-galls.com',
'wivespornmovies.com',
'wtchporn.com',
'ww.youporn.com',
'ww.yuvutu.com',
'ww.zootube365.com',
'x99.nudevista.com',
'xfreehosting.com',
'xhamster.com',
'xhamsterhq.com',
'xhamsterpremium.com',
'xhamsterpremiumpass.com',
'xixtube.com',
'xlgirls.com',
'xnxx.com',
'xsharebox.com',
'xsharebox.com',
'xtube.com',
'xvideo.us',
'xvideohost.com',
'xvideos.com',
'xvideos.com',
'xvideosde.com',
'xvideoshome.com',
'xxbunker.com',
'xxdessert.com',
'xxgasm.com',
'xxlmag.com',
'xxvideo.us',
'xxvideoclips.us',
'xxxbunker.com',
'xxxdessert.com',
'xxxvideoclips.us',
'xxxvogue.net',
'yehfun.com',
'yehfun.com',
'yobt.com',
'yobt.com',
'youjizz.com',
'youjizzlive.com',
'youporn.com',
'yuppix.com',
'yuvutu.com',
'zoofilianet.com',
'zoofiliavids.com',
'zoomobileporn.com',
'zooskoolvideos.com',
'zootube365.com',
'zzztube.com'


) OR title in(
    'bbw bukkake - Sök på Google',
'busty bbw with nice round butt - Sök på Google',
'bbw with nice round butt pornhubcom 1 pornhub.busty - Sök på Google',
'bbw latina - Sök på Google',
'Bbw with nice round butt pornhubcom 1 pornhub.Busty - Sök på Google',
'Resultat av Googles bildsökning efter http://xxxbunker.com/busty_stacy_adams_is_drilled_balls_deep.jpg',
'Resultat av Googles bildsökning efter http://www.amateurindex.com/galleries/ftv-girls/shyla-pussy-spreads/shyla-pussy-spreads-10.jpg',
'Resultat av Googles bildsökning efter http://www.chrissymarieclub.com/wp-content/uploads/2010/12/ChrissyMarie_42.jpg',
'Resultat av Googles bildsökning efter http://xxxbunker.com/mature_lady_gets_a_creampie.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/nathaly-2/hairy-pussy-nathaly-12.jpg',
'Resultat av Googles bildsökning efter http://www.myvaginasite.com/photos/vix_pussy_jacking_01.jpg',
'Resultat av Googles bildsökning efter http://www.teensoloporn.com/content/Ron%2520Harris%2520Cash/Kara%2520Duhe/Kara%2520bent%2520over%2520in%2520the%2520window%2520sucking%2520her%2520thumb%2520toys%2520her%2520pussy%2520from%2520behind/01.jpg',
'Resultat av Googles bildsökning efter http://shaggyblossom.com/wp-content/uploads/2011/01/lily-cameron-hairy-pussy.jpg',
'Resultat av Googles bildsökning efter http://galleries.hairy-women-pussy.net/atk-hairy-2/alexandra-3/hairy-pussy-alexandra-08.jpg',
'Resultat av Googles bildsökning efter http://www.sexyfatgirls.net/Images/2011/fat-pussy.jpg',
'Resultat av Googles bildsökning efter http://www.hairyempire.com/images/hairy-pussy-amateur-upskirt-park.jpg',
'erotic fforum - Sök på Google',
'tubemonsoon latina bbw - Sök på Google',
'bbw latin - Sök på Google',
'Google Image Result for http://cdn.0.gaybeast.com/thumbnails/480x320/2640/guy_with_big_dick_fucks_mare.jpg',
'Google Image Result for http://www.beastiality.com/movies/125/thumbs/125-09.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a036/609/a036609_scene_02.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a012/015/a012015_image4.jpg',
'Google Image Result for http://www.justfortouch.com/bundles/ocioadulto/Imagenes/Pelicula/2442/xxx-blonde-webgirls-4-kelly-dane_cover.jpg',
'Google Image Result for http://cdn1.imgs.adultrental.com/images/contents/a006/833/a006833_scene_02.jpg',
'Google Image Result for http://cdn3.mrstiff.com/media/4/6/6/8/0/4668013/thumb_small.jpg',
'Google Image Result for http://img.adultrental.com/images/new_images/a019379/a019379_scene_13.jpg',
'Google Image Result for http://www.vodpornos.com/covers/72/72446_large.jpg',
'Google Image Result for http://xxxbunker.com/2449056-3.jpg',
'Google Image Result for http://thumbs.pornbaytube.com/tubegogo.com/2/9/56/56c541fd.jpg',
'Google Image Result for http://images.arcadja.com/gues_alfred_fran%C3%A7ois-the_courting_couple~OM473300~10001_20101115_18399_7021.jpg',
'Google Image Result for http://cdn1.image.youporn.phncdn.com/201010/31/487418/120x90/4.jpg',
'Google Image Result for http://cdn.trustedporntube.com/scj/thumbs/207/077.jpg',
'Google Image Result for http://88.208.61.74/tt/teen-movs.com/1teentube.com.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0.jpg',
'Google Image Result for http://cdn.nudevector.com/t/176/853/0-3.jpg',
'Google Image Result for http://xxxbunker.com/fuck_holes_pt2_scene_3_new.jpg'
 ) order by Title,domain,url;
;-- -. . -..- - / . -. - .-. -.--
select * from url where id in(select id from toMoveToHistotyX);
;-- -. . -..- - / . -. - .-. -.--
select * from url where id in(select id from toMoveToHistoryX);
;-- -. . -..- - / . -. - .-. -.--
select max(id),max(url),max(title) from url where not(id in(select id from toMoveToHistoryX)) group by domain;
;-- -. . -..- - / . -. - .-. -.--
select max(id),max(url),max(title) from url where not(id in(select id from toMoveToHistoryX)) group by domain order by count(url) desc;
;-- -. . -..- - / . -. - .-. -.--
update url
set domain =
                                                               (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1) then case
                when (INSTR(url, 'ww') < 10 AND INSTR(url, 'ww') <> 0)
                    then SUBSTR(SUBSTR(url, INSTR(url, '.') + 1), 1, INSTR(SUBSTR(url, INSTR(url, '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url, instr(url, '.')+1, INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1) then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
            )

where (url <> '' AND url is not null);
;-- -. . -..- - / . -. - .-. -.--
select 
       max(id) id, url, max(title) title, max(weight) weight, max(new_column) new_column, max(Domain) Domain from 
from url
    group by url;
;-- -. . -..- - / . -. - .-. -.--
select
       max(id) id, url, max(title) title, max(weight) weight, max(new_column) new_column, max(Domain) Domain from url
    group by url;
;-- -. . -..- - / . -. - .-. -.--
select
       max(id) id, url, max(title) title, sum(weight) weight, max(new_column) new_column, max(Domain) Domain from url
    group by url;
;-- -. . -..- - / . -. - .-. -.--
select
       max(id) id, url, max(title) title, sum(weight) weight, max(new_column) new_column, max(Domain) Domain from url
        where not(domain in (select domain from ToMoveToHistoryX))    
group by url order by domain;
;-- -. . -..- - / . -. - .-. -.--
select
       max(id) id, url, max(title) title, sum(weight) weight, avg(weight) new_column, max(Domain) Domain from url
        where not(domain in (select domain from ToMoveToHistoryX))
group by url order by domain;
;-- -. . -..- - / . -. - .-. -.--
select
       max(id) id, url, max(title) title, sum(weight) weight, avg(weight) new_column, max(Domain) Domain from url
        where not(domain in (select domain from ToMoveToHistoryX))
group by url order by new_column, Domain;
;-- -. . -..- - / . -. - .-. -.--
select
       max(id) id, url, max(title) title, sum(weight) weight, avg(weight) new_column, max(Domain) Domain from url
        where not(domain in (select domain from ToMoveToHistoryX))
group by url order by new_column desc, Domain;
;-- -. . -..- - / . -. - .-. -.--
select max(id) id, max(url), max(title) title, sum(weight) weight, avg(weight) new_column, Domain from (select
       max(id) id, url, max(title) title, sum(weight) weight, avg(weight) new_column, max(Domain) Domain from url
        where not(domain in (select domain from ToMoveToHistoryX))
group by url ) s group by Domain order by new_column desc, Domain;
;-- -. . -..- - / . -. - .-. -.--
with
     oneWay as (select
                    max(case when name = url then null else name end ) name,
                    replace(case when url = '' then name else url end,'http:','https:') url
                        from main.urls
                                    group by
                                                replace(case when url = '' then name else url end,'http:','https:')),

    groupedNames as (select name, max(url) url from urls group by name),

    faulty as (select * from groupedNames where url = '' OR instr(url, ' ') <> 0 OR instr(url, '/') = 1 OR instr(url,'.') <> 0 )

    select urls.name,urls.url from faulty
        join urls
            on instr(urls.url,rtrim(faulty.url))
            where urls.url <> faulty.url
                group by urls.name, urls.url;
;-- -. . -..- - / . -. - .-. -.--
with urls as (select * from url)
select asb.title = fav.title
from (select title from urls where id = 291296) asb
         cross join (select title from urls where id = 71321) fav;
;-- -. . -..- - / . -. - .-. -.--
with urlsWithLength as (select url,title name,length(url) urlL from url)
select substr(url, length('https://www.hentai-foundry.com/pictures/ '),urlL) a, *
from urlsWithLength
where name = 'like www.hentai-foundry.com';
;-- -. . -..- - / . -. - .-. -.--
with urlsWithHost as (select title name,* from url) ,hostAmongTitles as (
select max(name),url,count(*) count,substr(name, instr(url, SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)), length(url)) namex
from urlsWithHost where
     substr(url,
            instr(url, SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)),
            length(url)) = namex
         or
             name in ('Google Translate',
                      'Amateur video',
                      'Last Chart! - See the Music',
                      'Last.fm’s Playground',
                      'Redirect Notice'
             )
    group by url)
select * from hostAmongTitles
order by count desc,url;
;-- -. . -..- - / . -. - .-. -.--
with urlsWithName as (select title name,* from url)

select substr(name, instr(url, host) + length(host) + 1, length(url)) a,
       host,
       name,
       url
from (select SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) host,
             name,
             url
      from urlsWithName
      where name = url)
where host <> ''
order by a desc, host;
;-- -. . -..- - / . -. - .-. -.--
with urlsWithDomain as (select domain,url from url)
select x.domain notInDomain,x.c,z.domain likeDomain,z.c from
(select domain, count(url) c from urlsWithDomain where instr(url,'https://www') = 1 group by domain ) x
inner join
(select domain,  count(url) c from urlsWithDomain where instr(url,'https://www') <> 1 group by domain ) z on x.domain = z.domain;
;-- -. . -..- - / . -. - .-. -.--
with urlsWithDomain as (select * from urlsWithDomain) , urls as (select *,0 visit_count  from url)

select  *                 from urls where not((case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1) then case
                when (INSTR(url, 'ww') <> 0)
                    then SUBSTR(SUBSTR(url, INSTR(url, '.') + 1), 1, INSTR(SUBSTR(url, INSTR(url, '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url, instr(url, '.')+1, INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1) then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
            )
 in ('bing.com',
'github.com',
'google.com',
'google.se',
'mozilla.org',
'opera.com',
'raindrop.io',
'reddit.com',
--'tumblr.com',
'3animalsextube.com',
'xhamster.com',
'1teentube.com',
'213.174.156.59',
'2shared.com',
'3animalsextube.com',
'6aa.info',
'777xporn.com',
'88.208.24.199',
'88.208.24.205',
'88.208.52.191',
'88.208.58.83',
'88.208.61.11',
'88.208.61.4',
'99.nudevista.com',
'adult-empire.com',
'adultrental.com',
'adv.h2porn.com',
'adxpartner.com',
'africanfucktour.com',
'africanfucktours.com',
'agriculteursgay.socialparody.com',
'ah-me.com',
'alphaporno.com',
'amateur-gangbangers.com',
'amateurfetishclips.com',
'amateurindex.com',
'ampugi334f.com',
'animalsex-tube.com',
'animalsexfun.com',
'askaguywholikesfatchicks.tumblr.com',
'askforporn.com',
'audrawolfmann.net',
'azgals.com',
'backetrut.pro',
'badjojo.com',
'bbwfuckpic.com',
'beastiality.com',
'bestialitygirls.com',
'bestialitysextaboo.com',
'bestialitytaboo.tv',
'bestialzoo.org',
'bigcamtube.com',
'blackbabesboned.com',
'blackbustybabes.com',
'blackmonsterride.com',
'blackonslut.com',
'blacksalamis.com',
'blog.youporn.com',
'board.freeones.com',
'bollywoodhungama.com',
'boobpedia.com',
'boomporntube.com',
'boysfood.com',
'bravomamas.com',
'britishbukkakebabes.com',
'cams.com',
'cdn1.mobile.spankwire.phncdn.com',
'cdn1.public.youporn.phncdn.com',
'clearclips.com',
'creatives.livejasmin.com',
'ct.adultrental.com',
'daily-bbw-porn.com',
'desigupshupp.com',
'desihoes.com',
'desitorrents.com',
'dinotube.com',
'dirtydoglinks.com',
'drtuber.com',
'easymovielink.blogspot.se',
'empflix.com',
'eoredi.com',
'eporner.com',
'erkiss.org',
'eroprofile.com',
'excaliburfilms.com',
'ezysl.com',
'fadsips.com',
'fadsoks.com',
'fantasti.cc',
'fapdu.com',
'fashionista.com',
'fatalfemdoms.com',
'fatmomtube.com',
'femefun.com',
'fitgirlsohyeah.tumblr.com',
'forumophilia.com',
'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc',
'free-vidz.com',
'free-vintage.com',
'free.cbttube.com',
'freeones.com',
'freeones.se',
'freeporn.com',
'freethenipple.com',
'freshteenxxx.com',
'freshxxxtube.com',
'fuckinghomepage.com',
'fucksia.tumblr.com',
'fuckthegeek.com',
'full-online-movies.blogspot.se',
'galleries.hairy-women-pussy.net',
'galleries.videosz.com',
'gangbangbecky.com',
'gaybeast.com',
'girlscv.com',
'gotporn.com',
'grandpabangsgrandma.com',
'grannysex.in',
'h2freeporn.com',
'h2porn.com',
'hairyempire.com',
'hamster.com',
'hamsterhq.com',
'hamsterpremiumpass.com',
'hardcoredumper.com',
'hardsextube.com',
'hdvirgin.com',
'heavy-r.com',
'hilltopads.net',
'hindilinks4u.net',
'hits.britishbukkakebabes.com',
'homemoviestube.com',
'hotpornshow.com',
'hotsexyaunty.com',
'hottubeclips.com',
'hotxvideos.net',
'hqseek.com',
'huntmodelz.com',
'iafd.com',
'image-dreams.com',
'imagefap.com',
'images.arcadja.com',
'indianpornvideos2.com',
'instantresp.com',
'interracial-thumbs.org',
'interracialexpert.com',
'interracialexposed.com',
'interracialparty.net',
'jesporn.com',
'jimslip.com',
'jithuwap.mobie.in',
'join.wearehairy.com',
'justporno.tv',
'juxmovies.com',
'k9thumbs.org',
'keezmovies.com',
'kenny-glenn.net',
'keporn.com',
'keyporntube.com',
'klub.co.in',
'kporno.com',
'largeporntube.com',
'lesbiansfromindia.com',
'lifematures.com',
'livejasmin.com',
'longporntube.com',
'luxuretv.com',
'maturetubesite.net',
'mb.indecentes-voisines.com',
'mcxtube.com',
'message-alert.info',
'minkasicklinger.com',
'mistressdestiny.com',
'mobile.spankwire.com',
'moofmoof.com',
'motherless.com',
'moviefap.com',
'movies.askjolene.com',
'movieslinksfree.com',
'moviesvintage.com',
'mrsnake.com',
'mrstiff.com',
'my.nudevista.se',
'mylust.com',
'mypornbutler.com',
'myvaginasite.com',
'myvideo.de',
'myzoowife.com',
'nastydirectory.com',
'nastyvideotube.com',
'nataliedee.com',
'nesaporn.com',
'nonamebrdn36.live',
'nudevista.com',
'nudevista.se',
'nuggitgames.com',
'nuvid.com',
'oldgrannysex.net',
'one-tab.com',
'oopsmovs.com',
'overthumbs.com',
'panicporn.com',
'peeingshow.com',
'pervertslut.com',
'pikdit.com',
'pixocafe.com',
'planetpornvideos.com',
'popoholic.com',
'porn-w.org',
'porn-wikipedia.com',
'porn.com',
'pornbaytube.com',
'pornfay.org',
'porngeographic.com',
'pornhub.com',
'pornmd.com',
'pornobistro.com',
'pornorio.net',
'pornostars-collection.ru',
'pornoxo.com',
'pornqik.com',
'pornscum.com',
'pornskirt.com',
'pornsocket.com',
'pornsos.com',
'pornspark.com',
'pornstarnetwork.com',
'pornstarsjobs.com',
'porntitan.com',
'porntopic.com',
'porntubese.com',
'porntubesearch.org',
'porntubest.com',
'pornvideoq.com',
'pornvideos.rs',
'pornviet.net',
'pornwiki.com',
'pornxix.com',
'pornyeah.com',
'pornzoovideos.com',
'proporn.com',
'pussyteenporn.com',
'pussyteentube.com',
'rabbitsreviews.com',
'racialthumbs.com',
'rawtube.com',
'real-sexxx.com',
'redcitadel.com',
'redtoptube.com',
'redtube.com',
'retro-porn.maniacpass.com',
'retrotubeclips.com',
'rexxx.com',
'richporntube.com',
'riosso.xyz',
'routgveriprt.com',
'royalporntube.com',
'rude.com',
'rule34.paheal.net',
'scarlettsabet.com',
'sensibleerection.com',
'sex2mix.com',
'sexfreedomtube.com',
'sexmums.com',
'sexspaghetti.com',
'sextasytube.com',
'sextasytube.net',
'sextube.com',
'sextubest.com',
'sextubster.com',
'sexuhot.com',
'sexyfatgirls.net',
'sexylosers.com',
'shaggyblossom.com',
'sheamateur.com',
'shockingtube.com',
'showteensex.com',
'shufflecam.net',
'shufuni.com',
'slutload.com',
'spankbang.com',
'spankwire.com',
'spicysextube.com',
'start.badults.se',
'submityourtapes.com',
'sunporno.com',
'sxplanet.com',
'syndicpop.com',
'teen-movs.com',
'teenboat.com',
'teenpornstreams.com',
'teensoloporn.com',
'tensorflow.org',
'thingsmydickdoes.tumblr.com',
'thumbzilla.com',
'tjoob.com',
'tnaflix.com',
'toesuddenlyon.com',
'totalav.com',
'trinity-productions.com',
'trueamateurmodels.com',
'trustedporntube.com',
'tube.nu',
'tube8.com',
'tubebond.com',
'tubemonsoon.com',
'twomovies.name',
'usingenglish.com',
'utubefat.com',
'vaginapageant.com',
'vid2c.com',
'video.xnxx.com',
'videofreakz.com',
'videomasti.net',
'videos.videomasti.net',
'videosz.com',
'vidgrab.net',
'vidsvidsvids.com',
'vintage-computer.com',
'vintage-pinup.com',
'vintage.wanknews.com',
'vintageporn69.com',
'vintageporndrawings.porncolection.com',
'vintageporntv.com',
'violetmonroe.net',
'vodpornos.com',
'voyeurstyle.com',
'vp7.com',
'wanknews.com',
'wankspider.com',
'watch2porn.net',
'watchmovies7z.blogspot.se',
'wearehairy.com',
'whois.domaintools.com',
'widget.clips4sale.com',
'wild-galls.com',
'wivespornmovies.com',
'wtchporn.com',
'ww.youporn.com',
'ww.yuvutu.com',
'ww.zootube365.com',
'x99.nudevista.com',
'xfreehosting.com',
'xhamster.com',
'xhamsterhq.com',
'xhamsterpremium.com',
'xhamsterpremiumpass.com',
'xixtube.com',
'xlgirls.com',
'xnxx.com',
'xsharebox.com',
'xsharebox.com',
'xtube.com',
'xvideo.us',
'xvideohost.com',
'xvideos.com',
'xvideos.com',
'xvideosde.com',
'xvideoshome.com',
'xxbunker.com',
'xxdessert.com',
'xxgasm.com',
'xxlmag.com',
'xxvideo.us',
'xxvideoclips.us',
'xxxbunker.com',
'xxxdessert.com',
'xxxvideoclips.us',
'xxxvogue.net',
'yehfun.com',
'yehfun.com',
'yobt.com',
'yobt.com',
'youjizz.com',
'youjizzlive.com',
'youporn.com',
'yuppix.com',
'yuvutu.com',
'zoofilianet.com',
'zoofiliavids.com',
'zoomobileporn.com',
'zooskoolvideos.com',
'zootube365.com',
'zzztube.com')) order by visit_count desc;
;-- -. . -..- - / . -. - .-. -.--
with urlsWithDomain as (select *,domain from url)

    select * from urlsWithDomain
    where domain in('bing.com','one-tab.com', 'google.com', 'google.se') GROUP by title;
;-- -. . -..- - / . -. - .-. -.--
select * from urlsWithDomain
where not(domain in ( 'xhamster.com', 'routgveriprt.com', 'pornsos.com', 'xvideos.com', 'toesuddenlyon.com', 'pervertslut.com', 'pornhub.com', 'bestialitytaboo.tv', 'riosso.xyz', 'luxuretv.com', 'tnaflix.com', 'femefun.com', 'mylust.com', 'justporno.tv', 'youporn.com', '3animalsextube.com', 'nonamebrdn36.live', 'zooskoolvideos.com', 'ezysl.com', 'empflix.com', 'pornzoovideos.com', 'pornsocket.com', 'pornskirt.com', 'alphaporno.com', 'daily-bbw-porn.com', 'xnxx.com', 'voyeurstyle.com', 'zoofiliavids.com', 'bestialitysextaboo.com', 'adult-empire.com', 'zoofilianet.com', 'eoredi.com', 'nuggitgames.com', 'pornspark.com', 'proporn.com', 'syndicpop.com', 'pornfay.org', 'trueamateurmodels.com', 'fadsoks.com', 'eroprofile.com', 'homemoviestube.com', 'livejasmin.com', 'zoomobileporn.com', 'bestialzoo.org', 'erkiss.org', 'indianpornvideos2.com', 'lifematures.com', 'xhamsterpremium.com', 'ampugi334f.com', 'animalsexfun.com', 'backetrut.pro', 'fadsips.com', 'girlscv.com', 'gotporn.com', 'imagefap.com', 'instantresp.com', 'motherless.com', 'nesaporn.com', 'pornorio.net', 'pornscum.com', 'pornvideoq.com', 'sexuhot.com', 'tumblr.com', 'dirtydoglinks.com', 'forumophilia.com', 'hotpornshow.com', 'image-dreams.com', 'porntopic.com', 'pornvideos.rs', 'spankbang.com', 'tensorflow.org', 'thumbzilla.com', 'tube8.com', 'yahoo.com', 'adxpartner.com', 'bbwfuckpic.com', 'bestialitygirls.com', 'blackbustybabes.com', 'h2porn.com', 'heavy-r.com', 'hotsexyaunty.com', 'k9thumbs.org', 'message-alert.info', 'myzoowife.com', 'nudevista.com', 'opera.com', 'pornmd.com', 'raindrop.io', 'redtube.com', 'sheamateur.com', 'totalav.com', 'usingenglish.com', 'xxgasm.com', 'xxxvogue.net', 'xxvideoclips.us', 'xxxvideoclips.us', 'xxdessert.com', 'xxxdessert.com', 'xxbunker.com', 'xxxbunker.com', 'xvideo.us', 'xxvideo.us', 'xxlmag.com', 'xvideoshome.com', 'xvideosde.com', 'xvideos.com', 'xvideohost.com', 'xtube.com', 'xlgirls.com', 'xixtube.com', 'hamsterpremiumpass.com', 'hamsterhq.com', 'xhamsterhq.com', 'hamster.com', '99.nudevista.com', 'ww.zootube365.com', 'ww.yuvutu.com', 'ww.youporn.com', 'zzztube.com', 'zootube365.com', 'yuppix.com', 'youjizzlive.com', 'youjizz.com', 'xhamsterpremiumpass.com', 'xfreehosting.com', 'x99.nudevista.com', 'yobt.com', 'yehfun.com', 'xsharebox.com', 'yuvutu.com', 'yehfun.com', 'yobt.com', 'xsharebox.com', 'wearehairy.com', 'wankspider.com', 'wanknews.com', 'vidsvidsvids.com', 'videosz.com', 'vid2c.com', 'trinity-productions.com', 'vaginapageant.com', 'tubemonsoon.com', 'tubebond.com', 'tube.nu', 'sunporno.com', 'submityourtapes.com', 'spankwire.com', 'slutload.com', 'shufuni.com', 'sextubest.com', 'sextube.com', 'sextasytube.net', 'sexmums.com', 'sexfreedomtube.com', 'teensoloporn.com', 'teenboat.com', 'rule34.paheal.net', 'mrstiff.com', 'gaybeast.com', 'boobpedia.com', 'mrsnake.com', 'richporntube.com', 'images.google.com', 'fapdu.com', 'ah-me.com', 'video.xnxx.com', 'rawtube.com', 'porn.com', 'grandpabangsgrandma.com', 'freeones.com', 'board.freeones.com', 'scarlettsabet.com', 'nataliedee.com', 'drtuber.com', 'desihoes.com', 'moviesvintage.com', 'nuvid.com', 'hardsextube.com', 'fatmomtube.com', 'adultrental.com', 'jimslip.com', 'fuckthegeek.com', 'eporner.com', 'boomporntube.com', 'audrawolfmann.net', 'amateur-gangbangers.com', 'real-sexxx.com', 'porntubese.com', 'pornoxo.com', 'pornbaytube.com', 'longporntube.com', 'largeporntube.com', 'hottubeclips.com', 'freeporn.com', 'free-vidz.com', 'askforporn.com', 'rude.com', 'ct.adultrental.com', 'agriculteursgay.socialparody.com', 'vodpornos.com', 'utubefat.com', 'sextubster.com', 'retrotubeclips.com', 'rabbitsreviews.com', 'pussyteenporn.com', 'porntubest.com', 'pornstarsjobs.com', 'pornstarnetwork.com', 'pornqik.com', 'oopsmovs.com', 'nudevista.se', 'nastydirectory.com', 'maturetubesite.net', 'lesbiansfromindia.com', 'kenny-glenn.net', 'keezmovies.com', 'interracialexpert.com', 'iafd.com', 'freshteenxxx.com', 'dinotube.com', 'clearclips.com', 'boysfood.com', 'bollywoodhungama.com', 'blackonslut.com', 'badjojo.com', 'africanfucktours.com', '1teentube.com', 'wild-galls.com', 'keporn.com', 'watch2porn.net', 'vp7.com', 'vintageporn69.com', 'trustedporntube.com', 'spicysextube.com', 'showteensex.com', 'sex2mix.com', 'redtoptube.com', 'porn-wikipedia.com', 'pikdit.com', 'movies.askjolene.com', 'klub.co.in', 'hotxvideos.net', 'hardcoredumper.com', 'gangbangbecky.com', 'freshxxxtube.com', 'cdn1.public.youporn.phncdn.com', 'amateurfetishclips.com', '6aa.info', 'tjoob.com', 'shockingtube.com', 'sexyfatgirls.net', 'sexspaghetti.com', 'redcitadel.com', 'racialthumbs.com', 'pornyeah.com', 'pornxix.com', 'porntubesearch.org', 'porntitan.com', 'porngeographic.com', 'porn-w.org', 'popoholic.com', 'peeingshow.com', 'panicporn.com', 'nastyvideotube.com', 'myvideo.de', 'myvaginasite.com', 'mypornbutler.com', 'movieslinksfree.com', 'moofmoof.com', 'mistressdestiny.com', 'mcxtube.com', 'kporno.com', 'juxmovies.com', 'interracialparty.net', 'interracialexposed.com', 'huntmodelz.com', 'hqseek.com', 'hindilinks4u.net', 'hdvirgin.com', 'hairyempire.com', 'grannysex.in', 'freeones.se', 'free.cbttube.com', 'fatalfemdoms.com', 'excaliburfilms.com', 'desitorrents.com', 'desigupshupp.com', 'britishbukkakebabes.com', 'bravomamas.com', 'blacksalamis.com', 'blackmonsterride.com', 'blackbabesboned.com', 'bigcamtube.com', 'beastiality.com', 'azgals.com', 'animalsex-tube.com', 'amateurindex.com', 'africanfucktour.com', '777xporn.com', '2shared.com', 'wtchporn.com', 'wivespornmovies.com', 'widget.clips4sale.com', 'whois.domaintools.com', 'watchmovies7z.blogspot.se', 'violetmonroe.net', 'vintageporntv.com', 'vidgrab.net', 'videos.videomasti.net', 'videomasti.net', 'videofreakz.com', 'twomovies.name', 'thingsmydickdoes.tumblr.com', 'teenpornstreams.com', 'teen-movs.com', 'sxplanet.com', 'start.badults.se', 'shufflecam.net', 'shaggyblossom.com', 'sexylosers.com', 'sextasytube.com', 'sensibleerection.com', 'rexxx.com', 'pussyteentube.com', 'pornwiki.com', 'pornviet.net', 'pornobistro.com', 'planetpornvideos.com', 'pixocafe.com', 'overthumbs.com', 'oldgrannysex.net', 'my.nudevista.se', 'mobile.spankwire.com', 'minkasicklinger.com', 'mb.indecentes-voisines.com', 'keyporntube.com', 'join.wearehairy.com', 'jithuwap.mobie.in', 'jesporn.com', 'interracial-thumbs.org', 'images.arcadja.com', 'hits.britishbukkakebabes.com', 'hilltopads.net', 'h2freeporn.com', 'galleries.videosz.com', 'galleries.hairy-women-pussy.net', 'full-online-movies.blogspot.se', 'fucksia.tumblr.com', 'fuckinghomepage.com', 'freethenipple.com', 'fitgirlsohyeah.tumblr.com', 'fashionista.com', 'fantasti.cc', 'easymovielink.blogspot.se', 'creatives.livejasmin.com', 'cdn1.mobile.spankwire.phncdn.com', 'cams.com', 'blog.youporn.com', 'askaguywholikesfatchicks.tumblr.com', 'adv.h2porn.com', '88.208.61.4', '88.208.61.11', '88.208.58.83', '88.208.52.191', '88.208.24.205', '88.208.24.199', '213.174.156.59', 'vintage-pinup.com', 'vintage-computer.com', 'royalporntube.com', 'pornostars-collection.ru', 'moviefap.com', 'free-vintage.com', 'vintageporndrawings.porncolection.com', 'vintage.wanknews.com', 'retro-porn.maniacpass.com', 'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc' ))
group by domain 
order by c desc,u desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
with urlsWithDomain as (select *,0 c,0 u,domain from url)

    select * from urlsWithDomain
where not(domain in ( 'xhamster.com', 'routgveriprt.com', 'pornsos.com', 'xvideos.com', 'toesuddenlyon.com', 'pervertslut.com', 'pornhub.com', 'bestialitytaboo.tv', 'riosso.xyz', 'luxuretv.com', 'tnaflix.com', 'femefun.com', 'mylust.com', 'justporno.tv', 'youporn.com', '3animalsextube.com', 'nonamebrdn36.live', 'zooskoolvideos.com', 'ezysl.com', 'empflix.com', 'pornzoovideos.com', 'pornsocket.com', 'pornskirt.com', 'alphaporno.com', 'daily-bbw-porn.com', 'xnxx.com', 'voyeurstyle.com', 'zoofiliavids.com', 'bestialitysextaboo.com', 'adult-empire.com', 'zoofilianet.com', 'eoredi.com', 'nuggitgames.com', 'pornspark.com', 'proporn.com', 'syndicpop.com', 'pornfay.org', 'trueamateurmodels.com', 'fadsoks.com', 'eroprofile.com', 'homemoviestube.com', 'livejasmin.com', 'zoomobileporn.com', 'bestialzoo.org', 'erkiss.org', 'indianpornvideos2.com', 'lifematures.com', 'xhamsterpremium.com', 'ampugi334f.com', 'animalsexfun.com', 'backetrut.pro', 'fadsips.com', 'girlscv.com', 'gotporn.com', 'imagefap.com', 'instantresp.com', 'motherless.com', 'nesaporn.com', 'pornorio.net', 'pornscum.com', 'pornvideoq.com', 'sexuhot.com', 'tumblr.com', 'dirtydoglinks.com', 'forumophilia.com', 'hotpornshow.com', 'image-dreams.com', 'porntopic.com', 'pornvideos.rs', 'spankbang.com', 'tensorflow.org', 'thumbzilla.com', 'tube8.com', 'yahoo.com', 'adxpartner.com', 'bbwfuckpic.com', 'bestialitygirls.com', 'blackbustybabes.com', 'h2porn.com', 'heavy-r.com', 'hotsexyaunty.com', 'k9thumbs.org', 'message-alert.info', 'myzoowife.com', 'nudevista.com', 'opera.com', 'pornmd.com', 'raindrop.io', 'redtube.com', 'sheamateur.com', 'totalav.com', 'usingenglish.com', 'xxgasm.com', 'xxxvogue.net', 'xxvideoclips.us', 'xxxvideoclips.us', 'xxdessert.com', 'xxxdessert.com', 'xxbunker.com', 'xxxbunker.com', 'xvideo.us', 'xxvideo.us', 'xxlmag.com', 'xvideoshome.com', 'xvideosde.com', 'xvideos.com', 'xvideohost.com', 'xtube.com', 'xlgirls.com', 'xixtube.com', 'hamsterpremiumpass.com', 'hamsterhq.com', 'xhamsterhq.com', 'hamster.com', '99.nudevista.com', 'ww.zootube365.com', 'ww.yuvutu.com', 'ww.youporn.com', 'zzztube.com', 'zootube365.com', 'yuppix.com', 'youjizzlive.com', 'youjizz.com', 'xhamsterpremiumpass.com', 'xfreehosting.com', 'x99.nudevista.com', 'yobt.com', 'yehfun.com', 'xsharebox.com', 'yuvutu.com', 'yehfun.com', 'yobt.com', 'xsharebox.com', 'wearehairy.com', 'wankspider.com', 'wanknews.com', 'vidsvidsvids.com', 'videosz.com', 'vid2c.com', 'trinity-productions.com', 'vaginapageant.com', 'tubemonsoon.com', 'tubebond.com', 'tube.nu', 'sunporno.com', 'submityourtapes.com', 'spankwire.com', 'slutload.com', 'shufuni.com', 'sextubest.com', 'sextube.com', 'sextasytube.net', 'sexmums.com', 'sexfreedomtube.com', 'teensoloporn.com', 'teenboat.com', 'rule34.paheal.net', 'mrstiff.com', 'gaybeast.com', 'boobpedia.com', 'mrsnake.com', 'richporntube.com', 'images.google.com', 'fapdu.com', 'ah-me.com', 'video.xnxx.com', 'rawtube.com', 'porn.com', 'grandpabangsgrandma.com', 'freeones.com', 'board.freeones.com', 'scarlettsabet.com', 'nataliedee.com', 'drtuber.com', 'desihoes.com', 'moviesvintage.com', 'nuvid.com', 'hardsextube.com', 'fatmomtube.com', 'adultrental.com', 'jimslip.com', 'fuckthegeek.com', 'eporner.com', 'boomporntube.com', 'audrawolfmann.net', 'amateur-gangbangers.com', 'real-sexxx.com', 'porntubese.com', 'pornoxo.com', 'pornbaytube.com', 'longporntube.com', 'largeporntube.com', 'hottubeclips.com', 'freeporn.com', 'free-vidz.com', 'askforporn.com', 'rude.com', 'ct.adultrental.com', 'agriculteursgay.socialparody.com', 'vodpornos.com', 'utubefat.com', 'sextubster.com', 'retrotubeclips.com', 'rabbitsreviews.com', 'pussyteenporn.com', 'porntubest.com', 'pornstarsjobs.com', 'pornstarnetwork.com', 'pornqik.com', 'oopsmovs.com', 'nudevista.se', 'nastydirectory.com', 'maturetubesite.net', 'lesbiansfromindia.com', 'kenny-glenn.net', 'keezmovies.com', 'interracialexpert.com', 'iafd.com', 'freshteenxxx.com', 'dinotube.com', 'clearclips.com', 'boysfood.com', 'bollywoodhungama.com', 'blackonslut.com', 'badjojo.com', 'africanfucktours.com', '1teentube.com', 'wild-galls.com', 'keporn.com', 'watch2porn.net', 'vp7.com', 'vintageporn69.com', 'trustedporntube.com', 'spicysextube.com', 'showteensex.com', 'sex2mix.com', 'redtoptube.com', 'porn-wikipedia.com', 'pikdit.com', 'movies.askjolene.com', 'klub.co.in', 'hotxvideos.net', 'hardcoredumper.com', 'gangbangbecky.com', 'freshxxxtube.com', 'cdn1.public.youporn.phncdn.com', 'amateurfetishclips.com', '6aa.info', 'tjoob.com', 'shockingtube.com', 'sexyfatgirls.net', 'sexspaghetti.com', 'redcitadel.com', 'racialthumbs.com', 'pornyeah.com', 'pornxix.com', 'porntubesearch.org', 'porntitan.com', 'porngeographic.com', 'porn-w.org', 'popoholic.com', 'peeingshow.com', 'panicporn.com', 'nastyvideotube.com', 'myvideo.de', 'myvaginasite.com', 'mypornbutler.com', 'movieslinksfree.com', 'moofmoof.com', 'mistressdestiny.com', 'mcxtube.com', 'kporno.com', 'juxmovies.com', 'interracialparty.net', 'interracialexposed.com', 'huntmodelz.com', 'hqseek.com', 'hindilinks4u.net', 'hdvirgin.com', 'hairyempire.com', 'grannysex.in', 'freeones.se', 'free.cbttube.com', 'fatalfemdoms.com', 'excaliburfilms.com', 'desitorrents.com', 'desigupshupp.com', 'britishbukkakebabes.com', 'bravomamas.com', 'blacksalamis.com', 'blackmonsterride.com', 'blackbabesboned.com', 'bigcamtube.com', 'beastiality.com', 'azgals.com', 'animalsex-tube.com', 'amateurindex.com', 'africanfucktour.com', '777xporn.com', '2shared.com', 'wtchporn.com', 'wivespornmovies.com', 'widget.clips4sale.com', 'whois.domaintools.com', 'watchmovies7z.blogspot.se', 'violetmonroe.net', 'vintageporntv.com', 'vidgrab.net', 'videos.videomasti.net', 'videomasti.net', 'videofreakz.com', 'twomovies.name', 'thingsmydickdoes.tumblr.com', 'teenpornstreams.com', 'teen-movs.com', 'sxplanet.com', 'start.badults.se', 'shufflecam.net', 'shaggyblossom.com', 'sexylosers.com', 'sextasytube.com', 'sensibleerection.com', 'rexxx.com', 'pussyteentube.com', 'pornwiki.com', 'pornviet.net', 'pornobistro.com', 'planetpornvideos.com', 'pixocafe.com', 'overthumbs.com', 'oldgrannysex.net', 'my.nudevista.se', 'mobile.spankwire.com', 'minkasicklinger.com', 'mb.indecentes-voisines.com', 'keyporntube.com', 'join.wearehairy.com', 'jithuwap.mobie.in', 'jesporn.com', 'interracial-thumbs.org', 'images.arcadja.com', 'hits.britishbukkakebabes.com', 'hilltopads.net', 'h2freeporn.com', 'galleries.videosz.com', 'galleries.hairy-women-pussy.net', 'full-online-movies.blogspot.se', 'fucksia.tumblr.com', 'fuckinghomepage.com', 'freethenipple.com', 'fitgirlsohyeah.tumblr.com', 'fashionista.com', 'fantasti.cc', 'easymovielink.blogspot.se', 'creatives.livejasmin.com', 'cdn1.mobile.spankwire.phncdn.com', 'cams.com', 'blog.youporn.com', 'askaguywholikesfatchicks.tumblr.com', 'adv.h2porn.com', '88.208.61.4', '88.208.61.11', '88.208.58.83', '88.208.52.191', '88.208.24.205', '88.208.24.199', '213.174.156.59', 'vintage-pinup.com', 'vintage-computer.com', 'royalporntube.com', 'pornostars-collection.ru', 'moviefap.com', 'free-vintage.com', 'vintageporndrawings.porncolection.com', 'vintage.wanknews.com', 'retro-porn.maniacpass.com', 'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc' ))
group by domain 
order by c desc,u desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
CREATE temp TABLE t1(a INTEGER PRIMARY KEY, b, c);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO t1 VALUES   (1, 'A', 'one'  ),
                        (2, 'B', 'two'  ),
                        (3, 'C', 'three'),
                        (4, 'D', 'one'  ),
                        (5, 'E', 'two'  ),
                        (6, 'F', 'three'),
                        (7, 'G', 'one'  );
;-- -. . -..- - / . -. - .-. -.--
SELECT c, a, b, group_concat(b, '.') OVER (
  ORDER BY c, a ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
) AS group_concat
FROM t1 ORDER BY c, a;
;-- -. . -..- - / . -. - .-. -.--
CREATE temp TABLE t0(x INTEGER PRIMARY KEY, y TEXT);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO t0 VALUES (1, 'aaa'), (2, 'ccc'), (3, 'bbb');
;-- -. . -..- - / . -. - .-. -.--
SELECT x, y, row_number() OVER win1, rank() OVER win2
FROM t0 
WINDOW win1 AS (ORDER BY y RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
       win2 AS (PARTITION BY y ORDER BY x)
ORDER BY x;
;-- -. . -..- - / . -. - .-. -.--
with domainz as (
    select 
    'bing' q
    union select 
    'nudevista'
    union select 
    'pornsos'
    union select 
    'xhamster'
    union select 
    'youporn'
    union select 
    'yandex'
    
)


select * from url inner join domainz
 on url.domain like domainz.q || '%';
;-- -. . -..- - / . -. - .-. -.--
select Domain, count(*) c from url where instr(url,'categor')+instr(title,'categor') > 0 group by Domain order by c desc;
;-- -. . -..- - / . -. - .-. -.--
with domainz as (
    select
    'bing' q
    union select
    'nudevista'
    union select
    'pornsos'
    union select
    'xhamster'
    union select
    'youporn'
    union select
    'yandex'
    union select
    'moc.tsulym.'
    'redtoptube.com'
    union select
'hotxvideos.net'
       union select

'moc.8nropflim.'
   union select

    'moc.serutamdlokcuc.'
   union select

        'moc.tsihsitefruetama.'
'moc.xestcele.'
   union select

'moc.nropatem.www.'
   union select

    'moc.kcidq.'
   union select

        'moc.rebutrd.www.'
   union select

            'es.kitoresitarg.'
   union select

                'wearehairy.com'
   union select

                    'turbohud.freeforums.net'
   union select

                        'sempreatualizado.com'
   union select

                            'moc.ebutnnh.'
   union select

                                'hottubeclips.com'
   union select

                                    'moc.sebutdnif.www.'
   union select

'1teentube.com'
   union select

    'swedensexshop.com'
   union select

        'moc.nroptaferutam.'
   union select

            'moc.soedivx.www.'
   union select

                'moc.serutamefil.www.'
   union select

                    'moc.retsmahx.'
   union select

                        'moc.ebuterutam.www.'
   union select

                            'moc.spilcxebut.www.'
   union select

                                'moc.ebut-xes-toh.'
   union select

                                    'moc.ebut-xes-toh.www.'
   union select

                                        'moc.tohuxes.'
   union select
 'moc.buhnrop.www.'
   union select
 'moc.cipkcufwbb.www.'
   union select
 'moc.xesorfa.'
   union select
 'moc.esebutnrop.www.'

   union select
 'moc.ebutonid.www.'
   union select
 'rule34.paheal.net'
   union select
 'moc.zzijuoy.www.'
   union select
 'moc.xesdlrowebut.www.'
   union select
 'tube8.com'
   union select
 'moc.erolagebut.www.'
   union select
 'moc.tulstrevrep.'
   union select
 'youporn.com'
   union select
 'moc.erolagynobe.www.'
   union select
 'moc.ebutoedivytsan.'
   union select
 'moc.elgoog.www.'
   union select
 'moc.vtnropegatniv.'
   union select
 'ten.ebutovarb.www.'
   union select
 'moc.ebutoedivytsan.www.'
   union select
 'ten.eugovxxx.www.'
   union select
 'moc.nrop.www.'

)


select * from url inner join domainz
 on url.domain like domainz.q || '%'
or instr(url,q) > 0;
;-- -. . -..- - / . -. - .-. -.--
with domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select 
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select 
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from url inner join domainz
         on url.domain like domainz.q || '%'
             or instr(url, q) > 0
group by url;
;-- -. . -..- - / . -. - .-. -.--
with domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from url inner join domainz
         on url.domain like domainz.q || '%'
             or instr(url, q) > 0
group by url, ORDER Domain;
;-- -. . -..- - / . -. - .-. -.--
with domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from url inner join domainz
         on url.domain like domainz.q || '%'
             or instr(url, q) > 0
group by url ORDER Domain;
;-- -. . -..- - / . -. - .-. -.--
with domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from url inner join domainz
         on url.domain like domainz.q || '%'
             or instr(url, q) > 0
group by url ORDER max(Domain);
;-- -. . -..- - / . -. - .-. -.--
with domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from url inner join domainz
         on url.domain like domainz.q || '%'
             or instr(url, q) > 0
group by url ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--
with domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from url inner join domainz
         on url.domain like domainz.q || '%'
             or instr(url, q) > 0
group by trim(url,'/') ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--
with domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from url inner join domainz
         on url.domain like domainz.q || '%'
             or instr(url, q) > 0
group by trim(
    substr(
            url,0,
            ifnull(nullif(
                           instr(url, 'url='), 0), length(url) + 1)
        ),'/') ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--
with urlx as (select id, trim(
    substr(
            url,0,
            ifnull(nullif(
                           instr(url, 'url='), 0), length(url) + 1)
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from urlX inner join domainz
         on url.domain like domainz.q || '%'
             or instr(url, q) > 0
group by url ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--
with urlx as (select id, trim(
    substr(
            url,0,
            ifnull(nullif(
                           instr(url, 'url='), 0), length(url) + 1)
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from urlX inner join domainz
         on urlx.domain like domainz.q || '%'
             or instr(url, q) > 0
group by url ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--
with urlx as (select id, trim(
    substr(
            url,
            
                           instr(url, 'url=')
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from urlX inner join domainz
         on urlx.domain like domainz.q || '%'
             or instr(url, q) > 0
group by url ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--
with urlx as (select id, trim(
    substr(
            url,

                           instr(url, 'uri=')
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from urlX inner join domainz
         on urlx.domain like domainz.q || '%'
             or instr(url, q) > 0
group by url ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--
with urlx as (select id, trim(
    substr(
            url,

                           max(instr(url, 'uri='),instr(url, 'url='))
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from urlX inner join domainz
         on urlx.domain like domainz.q || '%'
             or instr(url, q) > 0
group by url ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--
select Domain,max(url),max(title), count(*) c from url where instr(url,'categor')+instr(title,'categor') > 0 group by Domain order by c desc;
;-- -. . -..- - / . -. - .-. -.--
with urlx as (select id, trim(
    substr(
            url,

                           max(instr(url, 'uri='),instr(url, 'url='))
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from urlX inner join domainz
         on iif(
             not(Domain
is null or domain = 
'gkanajabecodojkoikjkljnccekbiblk.'
or domain = '')
,
             urlx.domain like domainz.q || '%',
             instr(url, q) > 0)
group by url ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--
with urlx as (select id, trim(
    substr(
            url,

                           max(instr(url, 'uri='),instr(url, 'url='))
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (
    select 'bing' q
    union
    select 'nudevista'
    union
    select 'pornsos'
    union
    select 'xhamster'
    union
    select 'youporn'
    union
    select 'yandex'
    union
    select 'moc.tsulym.'
union
    select
               'redtoptube.com'
    union
    select 'hotxvideos.net'
    union
    select 'moc.8nropflim.'
    union
    select 'moc.serutamdlokcuc.'
    union
    select 'moc.tsihsitefruetama.'
        union
    select
               'moc.xestcele.'
    union
    select 'moc.nropatem.www.'
    union
    select 'moc.kcidq.'
    union
    select 'moc.rebutrd.www.'
    union
    select 'es.kitoresitarg.'
    union
    select 'wearehairy.com'
    union
    select 'turbohud.freeforums.net'
    union
    select 'sempreatualizado.com'
    union
    select 'moc.ebutnnh.'
    union
    select 'hottubeclips.com'
    union
    select 'moc.sebutdnif.www.'
    union
    select '1teentube.com'
    union
    select 'swedensexshop.com'
    union
    select 'moc.nroptaferutam.'
    union
    select 'moc.soedivx.www.'
    union
    select 'moc.serutamefil.www.'
    union
    select 'moc.retsmahx.'
    union
    select 'moc.ebuterutam.www.'
    union
    select 'moc.spilcxebut.www.'
    union
    select 'moc.ebut-xes-toh.'
    union
    select 'moc.ebut-xes-toh.www.'
    union
    select 'moc.tohuxes.'
    union
    select 'moc.buhnrop.www.'
    union
    select 'moc.cipkcufwbb.www.'
    union
    select 'moc.xesorfa.'
    union
    select 'moc.esebutnrop.www.'

    union
    select 'moc.ebutonid.www.'
    union
    select 'rule34.paheal.net'
    union
    select 'moc.zzijuoy.www.'
    union
    select 'moc.xesdlrowebut.www.'
    union
    select 'tube8.com'
    union
    select 'moc.erolagebut.www.'
    union
    select 'moc.tulstrevrep.'
    union
    select 'youporn.com'
    union
    select 'moc.erolagynobe.www.'
    union
    select 'moc.ebutoedivytsan.'
    union
    select 'moc.elgoog.www.'
    union
    select 'moc.vtnropegatniv.'
    union
    select 'ten.ebutovarb.www.'
    union
    select 'moc.ebutoedivytsan.www.'
    union
    select 'ten.eugovxxx.www.'
    union
    select 'moc.nrop.www.'
)
    select url,max(title) from urlX inner join domainz
         on iff(
             not(Domain
is null or domain =
'gkanajabecodojkoikjkljnccekbiblk.'
or domain = '')
,
             urlx.domain like domainz.q || '%',
             instr(url, q) > 0)
group by url ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--
with urlx as (select id, trim(
    substr(
            url,

                           max(instr(url, 'uri='),instr(url, 'url='))
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (select 'bing' q union select 'nudevista' union select 'pornsos' union select 'xhamster' union select 'youporn' union select 'yandex' union select 'moc.tsulym.' union select 'redtoptube.com' union select 'hotxvideos.net' union select 'moc.8nropflim.' union select 'moc.serutamdlokcuc.' union select 'moc.tsihsitefruetama.' union select 'moc.xestcele.' union select 'moc.nropatem.www.' union select 'moc.kcidq.' union select 'moc.rebutrd.www.' union select 'es.kitoresitarg.' union select 'wearehairy.com' union select 'turbohud.freeforums.net' union select 'sempreatualizado.com' union select 'moc.ebutnnh.' union select 'hottubeclips.com' union select 'moc.sebutdnif.www.' union select '1teentube.com' union select 'swedensexshop.com' union select 'moc.nroptaferutam.' union select 'moc.soedivx.www.' union select 'moc.serutamefil.www.' union select 'moc.retsmahx.' union select 'moc.ebuterutam.www.' union select 'moc.spilcxebut.www.' union select 'moc.ebut-xes-toh.' union select 'moc.ebut-xes-toh.www.' union select 'moc.tohuxes.' union select 'moc.buhnrop.www.' union select 'moc.cipkcufwbb.www.' union select 'moc.xesorfa.' union select 'moc.esebutnrop.www.' union select 'moc.ebutonid.www.' union select 'rule34.paheal.net' union select 'moc.zzijuoy.www.' union select 'moc.xesdlrowebut.www.' union select 'tube8.com' union select 'moc.erolagebut.www.' union select 'moc.tulstrevrep.' union select 'youporn.com' union select 'moc.erolagynobe.www.' union select 'moc.ebutoedivytsan.' union select 'moc.elgoog.www.' union select 'moc.vtnropegatniv.' union select 'ten.ebutovarb.www.' union select 'moc.ebutoedivytsan.www.' union select 'ten.eugovxxx.www.' union select 'moc.nrop.www.')
    select url,max(title) from urlX inner join domainz
         on iif(
             not(Domain
is null or domain =
'gkanajabecodojkoikjkljnccekbiblk.'
or domain = '');
;-- -. . -..- - / . -. - .-. -.--
with urlx as (select id, trim(
    substr(
            url,

                           max(instr(url, 'uri='),instr(url, 'url='))
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (select 'bing' q union select 'nudevista' union select 'pornsos' union select 'xhamster' union select 'youporn' union select 'yandex' union select 'moc.tsulym.' union select 'redtoptube.com' union select 'hotxvideos.net' union select 'moc.8nropflim.' union select 'moc.serutamdlokcuc.' union select 'moc.tsihsitefruetama.' union select 'moc.xestcele.' union select 'moc.nropatem.www.' union select 'moc.kcidq.' union select 'moc.rebutrd.www.' union select 'es.kitoresitarg.' union select 'wearehairy.com' union select 'turbohud.freeforums.net' union select 'sempreatualizado.com' union select 'moc.ebutnnh.' union select 'hottubeclips.com' union select 'moc.sebutdnif.www.' union select '1teentube.com' union select 'swedensexshop.com' union select 'moc.nroptaferutam.' union select 'moc.soedivx.www.' union select 'moc.serutamefil.www.' union select 'moc.retsmahx.' union select 'moc.ebuterutam.www.' union select 'moc.spilcxebut.www.' union select 'moc.ebut-xes-toh.' union select 'moc.ebut-xes-toh.www.' union select 'moc.tohuxes.' union select 'moc.buhnrop.www.' union select 'moc.cipkcufwbb.www.' union select 'moc.xesorfa.' union select 'moc.esebutnrop.www.' union select 'moc.ebutonid.www.' union select 'rule34.paheal.net' union select 'moc.zzijuoy.www.' union select 'moc.xesdlrowebut.www.' union select 'tube8.com' union select 'moc.erolagebut.www.' union select 'moc.tulstrevrep.' union select 'youporn.com' union select 'moc.erolagynobe.www.' union select 'moc.ebutoedivytsan.' union select 'moc.elgoog.www.' union select 'moc.vtnropegatniv.' union select 'ten.ebutovarb.www.' union select 'moc.ebutoedivytsan.www.' union select 'ten.eugovxxx.www.' union select 'moc.nrop.www.')
    select url,max(title) from urlX inner join domainz
         on iif(
             not(Domain
is null or domain =
'gkanajabecodojkoikjkljnccekbiblk.'
or domain = '')
             , urlx.domain like domainz.q || '%', instr(url, q) > 0)group by url ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--

 */



with urlx as (select id, trim(
    substr(
            url,

                           max(instr(url, 'uri='),instr(url, 'url='))
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (select 'bing' q union select 'nudevista' union select 'pornsos' union select 'xhamster' union select 'youporn' union select 'yandex' union select 'moc.tsulym.' union select 'redtoptube.com' union select 'hotxvideos.net' union select 'moc.8nropflim.' union select 'moc.serutamdlokcuc.' union select 'moc.tsihsitefruetama.' union select 'moc.xestcele.' union select 'moc.nropatem.www.' union select 'moc.kcidq.' union select 'moc.rebutrd.www.' union select 'es.kitoresitarg.' union select 'wearehairy.com' union select 'turbohud.freeforums.net' union select 'sempreatualizado.com' union select 'moc.ebutnnh.' union select 'hottubeclips.com' union select 'moc.sebutdnif.www.' union select '1teentube.com' union select 'swedensexshop.com' union select 'moc.nroptaferutam.' union select 'moc.soedivx.www.' union select 'moc.serutamefil.www.' union select 'moc.retsmahx.' union select 'moc.ebuterutam.www.' union select 'moc.spilcxebut.www.' union select 'moc.ebut-xes-toh.' union select 'moc.ebut-xes-toh.www.' union select 'moc.tohuxes.' union select 'moc.buhnrop.www.' union select 'moc.cipkcufwbb.www.' union select 'moc.xesorfa.' union select 'moc.esebutnrop.www.' union select 'moc.ebutonid.www.' union select 'rule34.paheal.net' union select 'moc.zzijuoy.www.' union select 'moc.xesdlrowebut.www.' union select 'tube8.com' union select 'moc.erolagebut.www.' union select 'moc.tulstrevrep.' union select 'youporn.com' union select 'moc.erolagynobe.www.' union select 'moc.ebutoedivytsan.' union select 'moc.elgoog.www.' union select 'moc.vtnropegatniv.' union select 'ten.ebutovarb.www.' union select 'moc.ebutoedivytsan.www.' union select 'ten.eugovxxx.www.' union select 'moc.nrop.www.')
    select url,max(title) from urlX inner join domainz
         on case when 
             not(Domain
is null or domain =
'gkanajabecodojkoikjkljnccekbiblk.'
or domain = '')
             then urlx.domain like domainz.q || '%'
             else
             instr(url, q) > 0
end 

group by url ORDER by max(Domain)
;;
;-- -. . -..- - / . -. - .-. -.--
with urlx as (select id, trim(
    substr(
            url,

                           max(instr(url, 'uri='),instr(url, 'url='))
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (select 'bing' q union select 'nudevista' union select 'pornsos' union select 'xhamster' union select 'youporn' union select 'yandex' union select 'moc.tsulym.' union select 'redtoptube.com' union select 'hotxvideos.net' union select 'moc.8nropflim.' union select 'moc.serutamdlokcuc.' union select 'moc.tsihsitefruetama.' union select 'moc.xestcele.' union select 'moc.nropatem.www.' union select 'moc.kcidq.' union select 'moc.rebutrd.www.' union select 'es.kitoresitarg.' union select 'wearehairy.com' union select 'turbohud.freeforums.net' union select 'sempreatualizado.com' union select 'moc.ebutnnh.' union select 'hottubeclips.com' union select 'moc.sebutdnif.www.' union select '1teentube.com' union select 'swedensexshop.com' union select 'moc.nroptaferutam.' union select 'moc.soedivx.www.' union select 'moc.serutamefil.www.' union select 'moc.retsmahx.' union select 'moc.ebuterutam.www.' union select 'moc.spilcxebut.www.' union select 'moc.ebut-xes-toh.' union select 'moc.ebut-xes-toh.www.' union select 'moc.tohuxes.' union select 'moc.buhnrop.www.' union select 'moc.cipkcufwbb.www.' union select 'moc.xesorfa.' union select 'moc.esebutnrop.www.' union select 'moc.ebutonid.www.' union select 'rule34.paheal.net' union select 'moc.zzijuoy.www.' union select 'moc.xesdlrowebut.www.' union select 'tube8.com' union select 'moc.erolagebut.www.' union select 'moc.tulstrevrep.' union select 'youporn.com' union select 'moc.erolagynobe.www.' union select 'moc.ebutoedivytsan.' union select 'moc.elgoog.www.' union select 'moc.vtnropegatniv.' union select 'ten.ebutovarb.www.' union select 'moc.ebutoedivytsan.www.' union select 'ten.eugovxxx.www.' union select 'moc.nrop.www.')
    select url,max(title) from urlX inner join domainz
         on 
             case 
                 when
             not(Domain is null or domain = 'gkanajabecodojkoikjkljnccekbiblk.' or domain = '')
             then 
             urlx.domain like domainz.q || '%'
             else
             instr(url, q) > 0 end

group by url ORDER by max(Domain);
;-- -. . -..- - / . -. - .-. -.--
with     
     domainz as (select 'bing' domain union select 'nudevista' union select 'pornsos' union select 'xhamster' union select 'youporn' union select 'yandex' union select 'moc.tsulym.' union select 'redtoptube.com' union select 'hotxvideos.net' union select 'moc.8nropflim.' union select 'moc.serutamdlokcuc.' union select 'moc.tsihsitefruetama.' union select 'moc.xestcele.' union select 'moc.nropatem.www.' union select 'moc.kcidq.' union select 'moc.rebutrd.www.' union select 'es.kitoresitarg.' union select 'wearehairy.com' union select 'turbohud.freeforums.net' union select 'sempreatualizado.com' union select 'moc.ebutnnh.' union select 'hottubeclips.com' union select 'moc.sebutdnif.www.' union select '1teentube.com' union select 'swedensexshop.com' union select 'moc.nroptaferutam.' union select 'moc.soedivx.www.' union select 'moc.serutamefil.www.' union select 'moc.retsmahx.' union select 'moc.ebuterutam.www.' union select 'moc.spilcxebut.www.' union select 'moc.ebut-xes-toh.' union select 'moc.ebut-xes-toh.www.' union select 'moc.tohuxes.' union select 'moc.buhnrop.www.' union select 'moc.cipkcufwbb.www.' union select 'moc.xesorfa.' union select 'moc.esebutnrop.www.' union select 'moc.ebutonid.www.' union select 'rule34.paheal.net' union select 'moc.zzijuoy.www.' union select 'moc.xesdlrowebut.www.' union select 'tube8.com' union select 'moc.erolagebut.www.' union select 'moc.tulstrevrep.' union select 'youporn.com' union select 'moc.erolagynobe.www.' union select 'moc.ebutoedivytsan.' union select 'moc.elgoog.www.' union select 'moc.vtnropegatniv.' union select 'ten.ebutovarb.www.' union select 'moc.ebutoedivytsan.www.' union select 'ten.eugovxxx.www.' union select 'moc.nrop.www.')
select Domain,max(url),max(title), count(*) c from url left join domainz using (Domain) 
where 
      domainz.domain is null and
      instr(url,'categor')+instr(title,'categor') > 0 group by Domain order by c desc;
;-- -. . -..- - / . -. - .-. -.--
with urlx as (select id, trim(
    substr(
            url,

                           max(instr(url, 'uri='),instr(url, 'url='))
        ),'/') url, title, weight, new_column, Domain from url)
     ,domainz as (select 'bing' q union select 'nudevista' union select 'pornsos' union select 'xhamster' union select 'youporn' union select 'yandex' union select 'moc.tsulym.' union select 'redtoptube.com' union select 'hotxvideos.net' union select 'moc.8nropflim.' union select 'moc.serutamdlokcuc.' union select 'moc.tsihsitefruetama.' union select 'moc.xestcele.' union select 'moc.nropatem.www.' union select 'moc.kcidq.' union select 'moc.rebutrd.www.' union select 'es.kitoresitarg.' union select 'wearehairy.com' union select 'turbohud.freeforums.net' union select 'sempreatualizado.com' union select 'moc.ebutnnh.' union select 'hottubeclips.com' union select 'moc.sebutdnif.www.' union select '1teentube.com' union select 'swedensexshop.com' union select 'moc.nroptaferutam.' union select 'moc.soedivx.www.' union select 'moc.serutamefil.www.' union select 'moc.retsmahx.' union select 'moc.ebuterutam.www.' union select 'moc.spilcxebut.www.' union select 'moc.ebut-xes-toh.' union select 'moc.ebut-xes-toh.www.' union select 'moc.tohuxes.' union select 'moc.buhnrop.www.' union select 'moc.cipkcufwbb.www.' union select 'moc.xesorfa.' union select 'moc.esebutnrop.www.' union select 'moc.ebutonid.www.' union select 'rule34.paheal.net' union select 'moc.zzijuoy.www.' union select 'moc.xesdlrowebut.www.' union select 'tube8.com' union select 'moc.erolagebut.www.' union select 'moc.tulstrevrep.' union select 'youporn.com' union select 'moc.erolagynobe.www.' union select 'moc.ebutoedivytsan.' union select 'moc.elgoog.www.' union select 'moc.vtnropegatniv.' union select 'ten.ebutovarb.www.' union select 'moc.ebutoedivytsan.www.' union select 'ten.eugovxxx.www.' union select 'moc.nrop.www.' union select 'mylust.com' union select 'cuckoldmatures.com' union select 'amateurfetishist.com' union select 'metaporn.com' union select 'thumbzilla.com' union select 'pornvideoq.com' union select 'drtuber.com' union select 'findtubes.com' union select 'pornovivat.com' union select 'maturefatporn.com' union select 'lifematures.com' union select 'xhamster.com' union select 'maturetube.com' union select 'tubexclips.com' union select 'hot-sex-tube.com' union select 'sexuhot.com' union select 'pornhub.com' union select 'bbwfuckpic.com' union select 'xhamsterpremium.com' union select 'afrosex.com' union select 'gratiserotik.se' union select 'youjizz.com' union select 'dinotube.com' union select 'animalxclips.com' union select 'bravotube.net' union select 'ebonygalore.com' union select 'hnntube.com' union select 'qdick.com' union select 'nastyvideotube.com' union select 'pornsos.com' union select 'vintageporntv.com' union select 'porn.com')


select url,max(title) from urlX inner join domainz
         on
             case
                 when
             not(Domain is null or domain = 'gkanajabecodojkoikjkljnccekbiblk.' or domain = '')
             then
             urlx.domain like domainz.q || '%'
             else
             instr(url, q) > 0 end

group by url ORDER by max(Domain);