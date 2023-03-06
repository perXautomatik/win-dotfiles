attach 'SQLite - webvisum.sqlite' as webvisum;
;-- -. . -..- - / . -. - .-. -.--
with files as (select * from webvisum.files)
    select * from files;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files)
    ,split(name,rest,parrent,lvl)
AS (SELECT '', title || '/', title, 0 from files
                                                            UNION ALL
                                                            SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
                                                            FROM split
                                                            WHERE instr(rest, '/') > 0)
                     SELECT * from split where not (name = '') order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '/', title, 0 from files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '/') > 0)
        SELECT * from split,files where not (name = '') order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files limit 100)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '/', title, 0 from files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '/') > 0)
        SELECT * from split,files where not (name = '') order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files limit 100)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '/', title, 0 
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '/') > 0)
        SELECT * from split,files where not (name = '') order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:/ToDatabase/Sqlite/db/FileList-Webvisum.sqlite' as webvisum;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files limit 100)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '/', title, 0
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '/') != 0)
        SELECT * from split,files where not (name = '') order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files limit 100)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '/', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '/') != 0)
        SELECT * from split,files where not (name = '') order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files limit 1)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '/', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '/') != 0)
        SELECT * from split,files where not (name = '') order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files limit 1)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '/', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '/') != 0)
        SELECT * from split where not (name = '') order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files limit 1)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '/', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '/')),substr(rest, instr(rest, '/') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '/') != 0)
        SELECT * from split  order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files limit 1)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
        SELECT * from split  order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files limit 1)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
        SELECT lvl,name,parrent from split  order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from webvisum.files limit 1)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
        SELECT lvl,name,parrent from split where name != '' order by parrent, lvl;