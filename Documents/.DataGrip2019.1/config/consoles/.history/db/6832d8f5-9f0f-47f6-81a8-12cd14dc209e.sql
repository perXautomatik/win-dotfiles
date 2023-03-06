select * from applications;
;-- -. . -..- - / . -. - .-. -.--
select path, name, online_app_id
from applications group by path, name, online_app_id order by name,online_app_id,path;
;-- -. . -..- - / . -. - .-. -.--
with files as (select path title, name, online_app_id
               from applications group by path, name, online_app_id order by name,online_app_id,path)
   ,split(name,rest,parrent,lvl)
    AS (SELECT '', title || '\', title, 0 from  files
        UNION ALL
        SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
        FROM split
        WHERE instr(rest, '\') != 0)
SELECT lvl,name,parrent from split where name != '' order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select path title, name, online_app_id
               from applications group by path, name, online_app_id order by name,online_app_id,path)
   ,split(name,rest,parrent,lvl)
    AS (SELECT '', title || '/', title, 0 from  files
        UNION ALL
        SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
        FROM split
        WHERE instr(rest, '/') != 0)
SELECT lvl,name,parrent from split where name != '' order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select path title
               from applications group by path)
   ,split(name,rest,parrent,lvl)
    AS (SELECT '', title || '/', title, 0 from  files
        UNION ALL
        SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
        FROM split
        WHERE instr(rest, '/') != 0)
SELECT lvl,name,parrent from split where name != '' order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select path title
               from applications group by path)
   ,split(name,rest,parrent,lvl)
    AS (SELECT '', title || '/', title, 0 from  files
        UNION ALL
        SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
        FROM split
        WHERE instr(rest, '/') != 0)
SELECT lvl,name,parrent from split where name != '' And instr(name,'.')> 0 order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select path title
               from applications group by path)
   ,split(name,rest,parrent,lvl)
    AS (SELECT '', title || '/', title, 0 from  files
        UNION ALL
        SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
        FROM split
        WHERE instr(rest, '/') != 0)
    ,splitz as (SELECT lvl,name,parrent from split where name != '')
    select max(lvl) maxlvl,parrent from splitz group by parrent;
;-- -. . -..- - / . -. - .-. -.--
with files as (select path title
               from applications group by path)
   ,split(name,rest,parrent,lvl)
    AS (SELECT '', title || '/', title, 0 from  files
        UNION ALL
        SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
        FROM split
        WHERE instr(rest, '/') != 0)
    ,splitz as (SELECT lvl,name,parrent from split where name != '')
    ,maxLvl as (select max(lvl) lvl,parrent from splitz group by parrent)
select * from splitz inner join maxLvl using (lvl, parrent);
;-- -. . -..- - / . -. - .-. -.--
with files as (select path title
               from applications group by path)
   ,split(name,rest,parrent,lvl)
    AS (SELECT '', title || '/', title, 0 from  files
        UNION ALL
        SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
        FROM split
        WHERE instr(rest, '/') != 0)
    ,splitz as (SELECT lvl,name,parrent from split where name != '')
    ,maxLvl as (select max(lvl) lvl,parrent from splitz group by parrent)
select name, lvl, iif(instr(parrent,'//') = 0,replace(parrent,'/','\'),parrent)
from splitz inner join maxLvl using (lvl, parrent);
;-- -. . -..- - / . -. - .-. -.--
with files as (select path title
               from applications group by path)
   ,split(name,rest,parrent,lvl)
    AS (SELECT '', title || '/', title, 0 from  files
        UNION ALL
        SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
        FROM split
        WHERE instr(rest, '/') != 0)
    ,splitz as (SELECT lvl,name,parrent from split where name != '')
    ,maxLvl as (select max(lvl) lvl,parrent from splitz group by parrent)
select name, lvl, iif(instr(parrent,'//') = 0,replace(parrent,'/','\'),parrent) path
from splitz inner join maxLvl using (lvl, parrent);
;-- -. . -..- - / . -. - .-. -.--
with files as (select path title
               from applications group by path)
   ,split(name,rest,parrent,lvl)
    AS (SELECT '', title || '/', title, 0 from  files
        UNION ALL
        SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
        FROM split
        WHERE instr(rest, '/') != 0)
    ,splitz as (SELECT lvl,name,parrent from split where name != '')
    ,maxLvl as (select max(lvl) lvl,parrent from splitz group by parrent)
select name, lvl, iif(instr(parrent,'//') = 0,replace(parrent,'/','\'),parrent) path
from splitz inner join maxLvl using (lvl, parrent)
order by path;