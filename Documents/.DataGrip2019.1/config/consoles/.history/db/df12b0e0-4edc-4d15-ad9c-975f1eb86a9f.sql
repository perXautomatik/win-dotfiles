INSERT INTO NotSuitAbleSynonyms(word) VALUES ('tons');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('stp');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('sidan');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('screenshot');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('satisfied');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('rape');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('quick');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('pretty');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('premium');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('perfect');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('mini');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('massage');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('help');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('hdready');
;-- -. . -..- - / . -. - .-. -.--
select titleq, count(*)c from (SELECT
             (select distinct * from (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0
                                                     UNION ALL
                                                     SELECT lower(substr(str, 0, instr(str, ' '))),
                                                            substr(str, instr(str, ' ') + 1),
                                                            src,
                                                            orderx + 1
                                                     FROM split
                                                     WHERE str != '') select ifnull(nullif(split.word, NotSuitAbleSynonyms.word),' ') wordx
                                                      from (select word, str, src, orderx from split where orderx > 0) split
                                                          left outer join NotSuitAbleSynonyms using (word)) titleY) titleq
       , url
from
    (
    select (
    with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
             aditional as ( select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
         ,AcceptedChars as (select Character char from (select char(number) character, number from (select * from numbers where number between 65 and 90 or number between 97 and 122 union select value from aditional)))
        select z titlex
        from
         (
             with   input as (select title)
             select Title, group_concat(ifnull(char, ' '), '') z
             from
                  (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                          from input
                              cross join numbers where number <= length(Title)) charsWithNr
                      left outer join AcceptedChars using (char) order by Title, number
                  )
         group by Title ) w
    ) titlex,
       title,
       url,id,domain
from urls inner join unSafe_dom using (domain) limit 1000) ) group by titleq order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select titleq, count(*)c from (SELECT
             (select distinct * from (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0
                                                     UNION ALL
                                                     SELECT lower(substr(str, 0, instr(str, ' '))),
                                                            substr(str, instr(str, ' ') + 1),
                                                            src,
                                                            orderx + 1
                                                     FROM split
                                                     WHERE str != '') select ifnull(nullif(split.word, NotSuitAbleSynonyms.word),' ') wordx
                                                      from (select word, str, src, orderx from split where orderx > 0) split
                                                          left outer join NotSuitAbleSynonyms using (word)) titleY) titleq
       , url
from
    (
    select (
    with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
             aditional as ( select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
         ,AcceptedChars as (select Character char from (select char(number) character, number from (select * from numbers where number between 65 and 90 or number between 97 and 122 union select value from aditional)))
        select z titlex
        from
         (
             with   input as (select title)
             select Title, group_concat(ifnull(char, ' '), '') z
             from
                  (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                          from input
                              cross join numbers where number <= length(Title)) charsWithNr
                      left outer join AcceptedChars using (char) order by Title, number
                  )
         group by Title ) w
    ) titlex,
       title,
       url,id,domain
from urls inner join unSafe_dom using (domain) limit 1000) ) group by titleq order by c desc,titleq;
;-- -. . -..- - / . -. - .-. -.--
select titleq, count(*)c from (SELECT
             (select distinct * from (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0
                                                     UNION ALL
                                                     SELECT lower(substr(str, 0, instr(str, ' '))),
                                                            substr(str, instr(str, ' ') + 1),
                                                            src,
                                                            orderx + 1
                                                     FROM split
                                                     WHERE str != '') select ifnull(nullif(split.word, NotSuitAbleSynonyms.word),' ') wordx
                                                      from (select word, str, src, orderx from split where orderx > 0) split
                                                          left outer join NotSuitAbleSynonyms using (word)) titleY) titleq
       , url
from
    (
    select (
    with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
             aditional as ( select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
         ,AcceptedChars as (select Character char from (select char(number) character, number from (select * from numbers where number between 65 and 90 or number between 97 and 122 union select value from aditional)))
        select z titlex
        from
         (
             with   input as (select title)
             select Title, group_concat(ifnull(char, ' '), '') z
             from
                  (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                          from input
                              cross join numbers where number <= length(Title)) charsWithNr
                      left outer join AcceptedChars using (char) order by Title, number
                  )
         group by Title ) w
    ) titlex,
       title,
       url,id,domain
from urls inner join unSafe_dom using (domain) limit 1000) ) group by titleq order by c ,titleq;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('banging');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('bin');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('bitch');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('coming');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('daily');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('damn');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('dirty');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('epic');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('exclusive');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('exposed');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('fav');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('fiance');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('first');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('fucking');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('full');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('gorgeous');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('great');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('guy');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('look');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('love');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('lucky');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('msnovember');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('rough');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('she');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('slave');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('cum');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('skilled');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('very');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('hardcore');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('offer');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('sbb');
;-- -. . -..- - / . -. - .-. -.--
select titleq, count(*)c from (SELECT
             (select distinct * from (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0
                                                     UNION ALL
                                                     SELECT lower(substr(str, 0, instr(str, ' '))),
                                                            substr(str, instr(str, ' ') + 1),
                                                            src,
                                                            orderx + 1
                                                     FROM split
                                                     WHERE str != '') select ifnull(nullif(split.word, NotSuitAbleSynonyms.word),' ') wordx
                                                      from (select word, str, src, orderx from split where orderx > 0) split
                                                          left outer join NotSuitAbleSynonyms using (word)) titleY) titleq
       , url
from
    (
    select (
    with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
             aditional as ( select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
         ,AcceptedChars as (select Character char from (select char(number) character, number from (select * from numbers where number between 65 and 90 or number between 97 and 122 union select value from aditional)))
        select z titlex
        from
         (
             with   input as (select title)
             select Title, group_concat(ifnull(char, ' '), '') z
             from
                  (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                          from input
                              cross join numbers where number <= length(Title)) charsWithNr
                      left outer join AcceptedChars using (char) order by Title, number
                  )
         group by Title ) w
    ) titlex,
       title,
       url,id,domain
from urls inner join unSafe_dom using (domain) limit 2000) ) group by titleq order by c ,titleq;
;-- -. . -..- - / . -. - .-. -.--
select id, title,
       (select trim(group_concat(wordx, ' '))
        from
             (select distinct * from (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0
                                                     UNION ALL
                                                     SELECT lower(substr(str, 0, instr(str, ' '))),
                                                            substr(str, instr(str, ' ') + 1),
                                                            src,
                                                            orderx + 1
                                                     FROM split
                                                     WHERE str != '') select ifnull(nullif(split.word, NotSuitAbleSynonyms.word),' ') wordx
                                                      from (select word, str, src, orderx from split where orderx > 0) split
                                                          left outer join NotSuitAbleSynonyms using (word)) titleY)) titleq
       , url
from
    (
    select (
    with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series),
             aditional as ( select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
         ,AcceptedChars as (select Character char from (select char(number) character, number from (select * from numbers where number between 65 and 90 or number between 97 and 122 union select value from aditional)))
        select z titlex
        from
         (
             with   input as (select title)
             select Title, group_concat(ifnull(char, ' '), '') z
             from
                  (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                          from input
                              cross join numbers where number <= length(Title)) charsWithNr
                      left outer join AcceptedChars using (char) order by Title, number
                  )
         group by Title ) w
    ) titlex,
       title,
       url,id
from urls)
where titleq ='' or titleq is null;
;-- -. . -..- - / . -. - .-. -.--
select distinct url from (
                  select id,url,
                         (select trim(group_concat(wordx, ' '))
                          from (select distinct *
                                from (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0
                                                                             UNION ALL
                                                                             SELECT lower(substr(str, 0, instr(str, ' '))),
                                                                                    substr(str, instr(str, ' ') + 1),
                                                                                    src,
                                                                                    orderx + 1
                                                                             FROM split
                                                                             WHERE str != '')
                                      select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx
                                      from (select word, str, src, orderx from split where orderx > 0) split
                                               left outer join NotSuitAbleSynonyms using (word)) titleY)) titleq
                  from (
                           select (
                                      with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1
                                                                                                 UNION ALL
                                                                                                 SELECT value + 1
                                                                                                 FROM generate_series
                                                                                                 WHERE value + 1 <= 4000)
                                                       select value number
                                                       from generate_series),
                                           aditional as (select ' ' value
                                                         union
                                                         select '('
                                                         union
                                                         select ')'
                                                         union
                                                         select '-'
                                                         union
                                                         select '|'
                                                         union
                                                         select '*')
                                              ,
                                           AcceptedChars as (select Character char
                                                             from (select char(number) character, number
                                                                   from (select *
                                                                         from numbers
                                                                         where number between 65 and 90
                                                                            or number between 97 and 122
                                                                         union
                                                                         select value
                                                                         from aditional)))
                                      select z titlex
                                      from (
                                               with input as (select title)
                                               select Title, group_concat(ifnull(char, ' '), '') z
                                               from (select Title, AcceptedChars.char
                                                     from (select Title, number, substr(Title, number, 1) char
                                                           from input
                                                                    cross join numbers
                                                           where number <= length(Title)) charsWithNr
                                                              left outer join AcceptedChars using (char)
                                                     order by Title, number
                                                    )
                                               group by Title) w
                                  ) titlex,
                                  title,
                                  url,
                                  id
                           from urls)
                  where titleq = ''
                     or titleq is null
              );
;-- -. . -..- - / . -. - .-. -.--
select 
        
         (
           with split(src,word, str,ordning) AS
                       (SELECT url,'', url || '/',0  
                        UNION ALL
                            SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                       FROM split WHERE str != '')
            SELECT word from split where not(word = '') order by src,ordning
) dom , url
       
from 
(select distinct url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1) url;
;-- -. . -..- - / . -. - .-. -.--
select

         (
           with split(src,word, str,ordning) AS
                       (SELECT url,'', url || '/',0  
                        UNION ALL
                            SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                       FROM split WHERE str != '')
            SELECT word from split where not(word = '') order by src,ordning
) dom , url

from
(select url from urls where instr(url,'/') > 0  limit 1) url;
;-- -. . -..- - / . -. - .-. -.--
select

         (
           with split(src,word, str,ordning) AS
                       (SELECT url,'', url || '/',0
                        UNION ALL
                            SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                       FROM split WHERE str != '')
            SELECT word from split where not(word = '') order by src,ordning
) dom , url

from
(select url from urls where instr(url,'/') > 0  limit 2) url;
;-- -. . -..- - / . -. - .-. -.--
select

         (
           with split(src,word, str,ordning) AS
                       (SELECT url,'', url || '/',0
                        UNION ALL
                            SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                       FROM split WHERE str != '')
            SELECT word from split where not(word = '') order by src,ordning
) dom , url

from
(select url from urls where instr(url,'/') > 0  limit 3) url;
;-- -. . -..- - / . -. - .-. -.--
select

         (
           with split(src,word, str,ordning) AS
                       (SELECT url,'', url || '/',0
                        UNION ALL
                            SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                       FROM split WHERE str != '')
            SELECT word from split where not(word = '') order by src,ordning
) dom , url

from
(select url from urls where instr(url,'/') > 0  limit 4) url;
;-- -. . -..- - / . -. - .-. -.--
select

         (
           with split(src,word, str,ordning) AS
                       (SELECT url,'', url || '/',0
                        UNION ALL
                            SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                       FROM split WHERE str != '')
            SELECT word from split where not(word = '') order by src,ordning
) dom , url

from
(select url from urls where instr(url,'/') > 0  limit 500) url;
;-- -. . -..- - / . -. - .-. -.--
select

         (
           with split(src,word, str,ordning) AS
                       (SELECT url,'', url || '/',0
                        UNION ALL
                            SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                       FROM split WHERE instr(str,'/') > 0)
            SELECT word from split where not(word = '') order by src,ordning
) dom , url

from
(select url from urls where instr(url,'/') > 0  limit 500) url;
;-- -. . -..- - / . -. - .-. -.--
select

         (
           with split(src,word, str,ordning) AS
                       (SELECT url,'', url || '/',0
                        UNION ALL
                            SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                       FROM split WHERE instr(str,'/') > 0)
            SELECT word from split where not(word = '') order by src,ordning
) dom , url

from
(select url from urls where instr(url,'/') > 0  limit 100) url;
;-- -. . -..- - / . -. - .-. -.--
select

         (
           with split(word, str,ordning) AS
                       (SELECT '', url || '/',0
                        UNION ALL
                            SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                       FROM split WHERE instr(str,'/') > 0)
            SELECT word from split 
           where not(word = '') 
) dom , url

from
(select url from urls where instr(url,'/') > 0  limit 100) url;
;-- -. . -..- - / . -. - .-. -.--
select

         (
           with split(word, str) AS
                       (
                           SELECT '', url || '/'
                        UNION ALL
                            SELECT substr(str, 0, instr(str, '/')) ,substr(str, instr(str, '/') + 1)
                       FROM split
                       
                           WHERE instr(str,'/') > 0)
            SELECT word from split
           where not(word = '') 
) dom , url

from
(select url from urls where instr(url,'/') > 0  limit 100) url;
;-- -. . -..- - / . -. - .-. -.--
with split(word, str) AS
                       (
                           SELECT '', url || '/' from (select url from urls where instr(url,'/') > 0  limit 100) url
                        UNION ALL
                            SELECT substr(str, 0, instr(str, '/')) ,substr(str, instr(str, '/') + 1)
                       FROM split

                           WHERE instr(str,'/') > 0)
            SELECT word from split
           where not(word = '');
;-- -. . -..- - / . -. - .-. -.--
with split(word, str,src) AS
                       (
                           SELECT '', url || '/',url from (select url from urls where instr(url,'/') > 0  limit 100) url
                        UNION ALL
                            SELECT substr(str, 0, instr(str, '/')) ,substr(str, instr(str, '/') + 1),src
                       FROM split

                           WHERE instr(str,'/') > 0)
            SELECT word,src from split
           where not(word = '');
;-- -. . -..- - / . -. - .-. -.--
with split(word, str,src) AS
                       (
                           SELECT '', url || '/',url from (select url from urls where instr(url,'/') > 0  limit 100) url
                        UNION ALL
                            SELECT substr(str, 0, instr(str, '/')) ,substr(str, instr(str, '/') + 1),src
                       FROM split

                           WHERE instr(str,'/') > 0)
            SELECT word,src from split
           where not(word = '')
        order by src,word;
;-- -. . -..- - / . -. - .-. -.--
with split(word, str,src,orderX) AS
                       (
                           SELECT '', url || '/',url,0                                                        from (select url from urls where instr(url,'/') > 0  limit 100) url
                        UNION ALL
                            SELECT substr(str, 0, instr(str, '/')) ,substr(str, instr(str, '/') + 1),src,orderX+1
                       FROM split

                           WHERE instr(str,'/') > 0)
            SELECT word,src from split
           where not(word = '')
        order by src,orderX;
;-- -. . -..- - / . -. - .-. -.--
with split(word1,word2, str,src,orderX) AS
                       (
                           SELECT '','', url || '/',url,0                                                        from (select url from urls where instr(url,'/') > 0  limit 100) url
                        UNION ALL
                            SELECT 
                                   substr(str, 0, instr(str, '/')),
                                    substr((substr(str, instr(str, '/') + 1)), 0, instr((substr(str, instr(str, '/') + 1)), '/')) ,
                                     (substr(str, instr(str, '/') + 1)),src,orderX+1
                       FROM split

                           WHERE instr(str,'/') > 0)
            SELECT word,src from split
           where not(word = '')
        order by src,orderX;
;-- -. . -..- - / . -. - .-. -.--
with split(word1,word2, str,src,orderX) AS
                       (
                           SELECT '','', url || '/',url,0                                                        from (select url from urls where instr(url,'/') > 0  limit 100) url
                        UNION ALL
                            SELECT
                                   substr(str, 0, instr(str, '/')),
                                    substr((substr(str, instr(str, '/') + 1)), 0, instr((substr(str, instr(str, '/') + 1)), '/')) ,
                                     (substr(str, instr(str, '/') + 1)),src,orderX+1
                       FROM split

                           WHERE instr(str,'/') > 0)
            SELECT word1||' '||word2,src from split
           where not(word1 = '' AND word2 = '')
        order by src,orderX;
;-- -. . -..- - / . -. - .-. -.--
with split(word, str,src,orderX) AS
                       (
                           SELECT '','', url || '/',url,0                                                        from (select url from urls where instr(url,'/') > 0  limit 100) url
                        UNION ALL
                            SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),src,orderX+1
                       FROM split

                           WHERE instr(str,'/') > 0)
            SELECT word,src from split
           where not(word = '')
        order by src,orderX;
;-- -. . -..- - / . -. - .-. -.--
with split(word,str,src,orderX) AS
                       (
                           SELECT '', url || '/',url,0                                                        from (select url from urls where instr(url,'/') > 0  limit 100) url
                        UNION ALL
                            SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),src,orderX+1
                       FROM split

                           WHERE instr(str,'/') > 0)
            SELECT word,src from split
           where not(word = '')
        order by src,orderX;
;-- -. . -..- - / . -. - .-. -.--
select * from  (with split(word,str,src,orderX) AS (SELECT '', url || '/',url,0                                                        from (select url from urls where instr(url,'/') > 0  limit 100) url UNION ALL SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),src,orderX+1 FROM split WHERE instr(str,'/') > 0)SELECT word,src from split where not(word = '')order by src,orderX);
;-- -. . -..- - / . -. - .-. -.--
select * from  (with split(word,str,src,orderX) AS (SELECT '', url || '/',url,0  from (select url from urls where instr(url,'/') > 0  limit 100) url UNION ALL SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),src,orderX+1 FROM split WHERE instr(str,'/') > 0)SELECT word,src from split where not(word = '')order by src,orderX);
;-- -. . -..- - / . -. - .-. -.--
select *
from (with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0
                                             from (select url from urls where instr(url, '/') > 0 limit 100) url
                                             UNION ALL
                                             SELECT substr(str, 0, instr(str, '/')),
                                                    substr(str, instr(str, '/') + 1),
                                                    src,
                                                    orderX + 1
                                             FROM split
                                             WHERE instr(str, '/') > 0)
      SELECT word, src,orderX
      from split
      where not (word = '')
      order by src, orderX);
;-- -. . -..- - / . -. - .-. -.--
with
    q as (

            with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0
             from (select url from urls where instr(url, '/') > 0 limit 100) url
             UNION ALL
             SELECT substr(str, 0, instr(str, '/')),
                    substr(str, instr(str, '/') + 1),
                    src, orderX + 1
             FROM split
             WHERE instr(str, '/') > 0)
          SELECT word, src,orderX
          from split where not (word = '') order by src, orderX
        )
select word,(select word from q where q.orderX > xz.orderX limit 1 order by q.orderX) from q Xz;
;-- -. . -..- - / . -. - .-. -.--
with
    q as (

            with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0
             from (select url from urls where instr(url, '/') > 0 limit 100) url
             UNION ALL
             SELECT substr(str, 0, instr(str, '/')),
                    substr(str, instr(str, '/') + 1),
                    src, orderX + 1
             FROM split
             WHERE instr(str, '/') > 0)
          SELECT word, src,orderX
          from split where not (word = '') order by src, orderX
        )
select word,(select word from q where q.orderX > xz.orderX limit 1 order by xz.orderX) from q Xz;
;-- -. . -..- - / . -. - .-. -.--
with
    q as (

            with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0
             from (select url from urls where instr(url, '/') > 0 limit 100) url
             UNION ALL
             SELECT substr(str, 0, instr(str, '/')),
                    substr(str, instr(str, '/') + 1),
                    src, orderX + 1
             FROM split
             WHERE instr(str, '/') > 0)
          SELECT word, src,orderX
          from split where not (word = '') order by src, orderX
        )
select word,(select word from q where q.orderX > xz.orderX limit 1 order by orderX) from q Xz;
;-- -. . -..- - / . -. - .-. -.--
with
    q as (

            with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0
             from (select url from urls where instr(url, '/') > 0 limit 100) url
             UNION ALL
             SELECT substr(str, 0, instr(str, '/')),
                    substr(str, instr(str, '/') + 1),
                    src, orderX + 1
             FROM split
             WHERE instr(str, '/') > 0)
          SELECT word, src,orderX
          from split where not (word = '') order by src, orderX
        )
select word,(select word from q where q.orderX > xz.orderX order by orderX limit 1 ) from q Xz;
;-- -. . -..- - / . -. - .-. -.--
with
    q as (

            with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0
             from (select url from urls where instr(url, '/') > 0 limit 100) url
             UNION ALL
             SELECT substr(str, 0, instr(str, '/')),
                    substr(str, instr(str, '/') + 1),
                    src, orderX + 1
             FROM split
             WHERE instr(str, '/') > 0)
          SELECT word, src,orderX
          from split where not (word = '') order by src, orderX
        )
select word,(select word from q where q.orderX > xz.orderX order by orderX limit 1 ) word2 from q Xz;
;-- -. . -..- - / . -. - .-. -.--
with
    q as (

            with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0
             from (select url from urls where instr(url, '/') > 0 limit 100) url
             UNION ALL
             SELECT substr(str, 0, instr(str, '/')),
                    substr(str, instr(str, '/') + 1),
                    src, orderX + 1
             FROM split
             WHERE instr(str, '/') > 0)
          SELECT word, src,orderX
          from split where not (word = '') order by src, orderX
        )
select word,(select word from q where q.orderX > xz.orderX order by orderX limit 1 ) word2,src from q Xz;
;-- -. . -..- - / . -. - .-. -.--
select * from 
    (
        with
         q as (
             with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0 from (select url from urls where instr(url, '/') > 0 limit 100) url UNION ALL SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1), src, orderX + 1 FROM split WHERE instr(str, '/') > 0)
             SELECT word, src,orderX from split where not (word = '') order by src, orderX)
        select word ,(select word from q where q.orderX > xz.orderX order by orderX limit 1 ) word2,src from q Xz
        )
where word2 is not null;
;-- -. . -..- - / . -. - .-. -.--
select * from
    (
        with
         q as (
             with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0 from (select url from urls where instr(url, '/') > 0 limit 100) url UNION ALL SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1), src, orderX + 1 FROM split WHERE instr(str, '/') > 0)
             SELECT word, src,orderX from split where not (word = '') order by src, orderX)
        select word ,(select word from q where q.src = xz.src and q.orderX > xz.orderX order by orderX limit 1 ) word2,src from q Xz
        )
where word2 is not null;
;-- -. . -..- - / . -. - .-. -.--
select word||' '||word2 from
    (
        with
         q as (
             with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0 from (select url from urls where instr(url, '/') > 0 limit 100) url UNION ALL SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1), src, orderX + 1 FROM split WHERE instr(str, '/') > 0)
             SELECT word, src,orderX from split where not (word = '') order by src, orderX)
        select word ,(select word from q where q.src = xz.src and q.orderX > xz.orderX order by orderX limit 1 ) word2,src from q Xz
        )
where word2 is not null;
;-- -. . -..- - / . -. - .-. -.--
select 

(select word||' '||word2 from
    (
        with
         q as (
             with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0  UNION ALL SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1), src, orderX + 1 FROM split WHERE instr(str, '/') > 0)
             SELECT word, src,orderX from split where not (word = '') order by src, orderX)
        select word ,(select word from q where q.src = xz.src and q.orderX > xz.orderX order by orderX limit 1 ) word2,src from q Xz
        )
where word2 is not null
    ) TwoWords
from urls where instr(url, '/') > 0 limit 100;
;-- -. . -..- - / . -. - .-. -.--
select (
    
    select group_concat(q) from
    (select word || ' ' || word2 q
        from (
                 with q as (
                     with split(word, str, src, orderX) AS (SELECT '', url || '/', url, 0
                                                            UNION ALL
                                                            SELECT substr(str, 0, instr(str, '/')),
                                                                   substr(str, instr(str, '/') + 1),
                                                                   src,
                                                                   orderX + 1
                                                            FROM split
                                                            WHERE instr(str, '/') > 0)
                     SELECT word, src, orderX
                     from split
                     where not (word = '')
                     order by src, orderX)
                 select word,
                        (select word
                         from q
                         where q.src = xz.src and q.orderX > xz.orderX
                         order by orderX
                         limit 1) word2,
                        src
                 from q Xz
             )
        where word2 is not null
       )
    
    
    ) TwoWords
from urls where instr(url, '/') > 0 limit 100;
;-- -. . -..- - / . -. - .-. -.--
select
       q.title,
       XenuExporTabExport.Title
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url;
;-- -. . -..- - / . -. - .-. -.--
select
       q.title,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url;
;-- -. . -..- - / . -. - .-. -.--
select 
       Title,count(*) c from 
       (select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url)
group by Title
order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select
       Title,count(*) c from
       (select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
         'Title',
'duration',
'tubes',
'Xvideos embed video',
'pornSOS /',
'2',
'YouPorn - Recommended to You',
'&laquo; Prev',
'YouTube',
'<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e',
'OneDrive',
'- YouTube',
'3',
'redir',
'<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d',
'Path of Exile',
'Passive Skill Tree - Path of Exile',
'popularity',
'4',
'<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c',
'1',
'Whoops!',
'5',
'Browse ReverbNation',
'Spinner',
'OneTab shared tabs',
'Facebook',
'7',
'6'
  ))

           )
group by Title
order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
         'Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'));
;-- -. . -..- - / . -. - .-. -.--
select
       Title,count(*) c from
       (
           select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
         'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))

           )
group by Title
order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
         'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'));
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
        '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'));
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
        'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'));
;-- -. . -..- - / . -. - .-. -.--
select
       Title,count(*) c from
       (
           select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
      'Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))

           )
group by Title
order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
      'Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))
        and not (q.title = XenuExporTabExport.Title);
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
      'Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))
        and not ( ifnull(q.title,'') = XenuExporTabExport.Title);
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
      'Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))
        and not ( ifnull(q.title,'') = XenuExporTabExport.Title)
           and not (instr(XenuExporTabExport.Title,q.title) > 0);
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
      'Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))
        and not ( ifnull(q.title,'') = XenuExporTabExport.Title)
           and not (instr(q.title,XenuExporTabExport.Title) > 0);
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
      '','Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))
        and not ( ifnull(q.title,'') = XenuExporTabExport.Title)
           and not (instr(q.title,XenuExporTabExport.Title) > 0)
           );
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       XenuExporTabExport.Title,
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (XenuExporTabExport.Title in (
      '','Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))
        and not ( ifnull(q.title,'') = XenuExporTabExport.Title)
           and not (instr(q.title,XenuExporTabExport.Title) > 0);
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       trim(XenuExporTabExport.Title),
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (trim(XenuExporTabExport.Title) in (
      '','Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))
        and not ( ifnull(q.title,'') = XenuExporTabExport.Title)
           and not (instr(q.title,XenuExporTabExport.Title) > 0)
           );
;-- -. . -..- - / . -. - .-. -.--
select
       q.title qtitle,
       trim(XenuExporTabExport.Title),
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (trim(XenuExporTabExport.Title) in (
      '','Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))
        and not ( ifnull(q.title,'') = XenuExporTabExport.Title)
           and not (instr(q.title,XenuExporTabExport.Title) > 0);
;-- -. . -..- - / . -. - .-. -.--
select
       group_concat(qtitle),count(*) c from
       (
           select
       q.title qtitle,
       trim(XenuExporTabExport.Title),
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (trim(XenuExporTabExport.Title) in (
      '','Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))
        and not ( ifnull(q.title,'') = XenuExporTabExport.Title)
           and not (instr(q.title,XenuExporTabExport.Title) > 0)
           )
group by Title
order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select
       group_concat(qtitle),count(*) c from
       (
           select
       q.title qtitle,
       trim(XenuExporTabExport.Title),
       domain,
       url
from (SELECT *FRom urls inner join ToTitleWithXenoFromFFplaces using (url)) q inner join XenuExporTabExport on XenuExporTabExport.Address = url
       where not (trim(XenuExporTabExport.Title) in (
      '','Imgur', 'LOG IN', 'Site Error', '8', 'Omdirigeringsmeddelande','Title', 'duration', 'tubes', 'Xvideos embed video', 'pornSOS /', '2', 'YouPorn - Recommended to You', '&laquo; Prev', 'YouTube', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://e', 'OneDrive', '- YouTube', '3', 'redir', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://d', 'Path of Exile', 'Passive Skill Tree - Path of Exile', 'popularity', '4', '<img                     src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"                     data-thumb_url = "https://c', '1', 'Whoops!', '5', 'Browse ReverbNation', 'Spinner', 'OneTab shared tabs', 'Facebook', '7', '6'))
        and not ( ifnull(q.title,'') = XenuExporTabExport.Title)
           and not (instr(q.title,XenuExporTabExport.Title) > 0)
           )
group by qtitle
order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select id,url,
                         ( --filter by word
                             select trim(group_concat(titleY, ' ')) from 
                            (select distinct (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))), substr(str, instr(str, ' ') + 1),src,orderx + 1 FROM split WHERE str != '')
                                      select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx from 
                                          (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word)
                                    ) titleY
                                    from (
                               select ( --filter by letter
                                          with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000) select value number from generate_series),
                                               aditional as (select ' ' value union select '('union select ')'union select '-'union select '|'union select '*')
                                                  ,
                                               AcceptedChars as (select Character char
                                                                 from (select char(number) character, number
                                                                       from (select *
                                                                             from numbers
                                                                             where number between 65 and 90
                                                                                or number between 97 and 122
                                                                             union
                                                                             select value
                                                                             from aditional)))
                                          select z titlex
                                          from (
                                                   with input as (select title)
                                                   select Title, group_concat(ifnull(char, ' '), '') z
                                                   from (select Title, AcceptedChars.char
                                                         from (select Title, number, substr(Title, number, 1) char
                                                               from input
                                                                        cross join numbers
                                                               where number <= length(Title)) charsWithNr
                                                                  left outer join AcceptedChars using (char)
                                                         order by Title, number
                                                        )
                                                   group by Title) w
                                      ) titlex
                                  )       )
                                 )titleq
                                  ,
                                  title
                                  url,
                                  id
                           from urls;
;-- -. . -..- - / . -. - .-. -.--
select distinct url from (
                  select id,url,
                         (
                             select trim(group_concat(titleY, ' ')) from  --filter by word
                            (select distinct (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))), substr(str, instr(str, ' ') + 1),src,orderx + 1 FROM split WHERE str != '')
                                      select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx from
                                          (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word)
                                    ) titleY
                                    from (--filter by letter
                                          with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000) select value number from generate_series),
                                               aditional as (select ' ' value union select '('union select ')'union select '-'union select '|'union select '*')
                                                ,AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from aditional)))
                                          select z titlex
                                          from (
                                                   with input as (select title)
                                                   select Title, group_concat(ifnull(char, ' '), '') z
                                                   from (select Title, AcceptedChars.char
                                                         from (select Title, number, substr(Title, number, 1) char
                                                               from input
                                                                        cross join numbers
                                                               where number <= length(Title)) charsWithNr
                                                                  left outer join AcceptedChars using (char)
                                                         order by Title, number
                                                        )
                                                   group by Title) w
                                      ) titlex
                                    )
                                 )titleq
                                  ,
                                  title
                                  url,
                                  id
                           from urls;
;-- -. . -..- - / . -. - .-. -.--
select id,url,
                         (
                             select trim(group_concat(titleY, ' ')) from  --filter by word
                            (select distinct (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))), substr(str, instr(str, ' ') + 1),src,orderx + 1 FROM split WHERE str != '')
                                      select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx from
                                          (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word)
                                    ) titleY
                                    from (--filter by letter
                                          with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000) select value number from generate_series),
                                               aditional as (select ' ' value union select '('union select ')'union select '-'union select '|'union select '*')
                                                ,AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from aditional)))
                                          select z titlex
                                          from (
                                                   with input as (select title)
                                                   select Title, group_concat(ifnull(char, ' '), '') z
                                                   from (select Title, AcceptedChars.char
                                                         from (select Title, number, substr(Title, number, 1) char
                                                               from input
                                                                        cross join numbers
                                                               where number <= length(Title)) charsWithNr
                                                                  left outer join AcceptedChars using (char)
                                                         order by Title, number
                                                        )
                                                   group by Title) w
                                      ) titlex
                                    )
                                 )titleq
                                  ,
                                  title
                                  url,
                                  id
                           from urls;
;-- -. . -..- - / . -. - .-. -.--
select distinct url
from (
         select id,
                url,
                (
                    select trim(srcMaterial)
                    from --filter by word
                         (select distinct
                                              (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx
                                                        from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(wordx)
                                               from q                            
                                                            ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               ) titlex
                         )
                ) titleq
                 ,
                title
                  url,
                id
         from urls

         where titleq = ''
            or titleq is null
     );
;-- -. . -..- - / . -. - .-. -.--
select distinct url
from (
         select id,
                url,
                (
                    select trim(srcMaterial)
                    from --filter by word
                         (select distinct
                                              (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx
                                                        from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(wordx)
                                               from q
                                                            ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               ) titlex
                         )
                ) titleq
                 ,
                title
                  url,
                id
         from urls

         where titleq = ''
            or titleq is null
     );
;-- -. . -..- - / . -. - .-. -.--
select trim(srcMaterial)
                    from --filter by word
                         (
                             select distinct
                                              (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx
                                                        from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(wordx)
                                               from q
                                                            ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               ) titlex
                         );
;-- -. . -..- - / . -. - .-. -.--
select distinct
                                              (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx
                                                        from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(wordx)
                                               from q
                                                            ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w;
;-- -. . -..- - / . -. - .-. -.--
select distinct
                                              (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx
                                                        from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(wordx)
                                               from q
                                                            ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               ) titlex;
;-- -. . -..- - / . -. - .-. -.--
select id,
                url,
                (

                             select distinct
                                              (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx
                                                        from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(wordx)
                                               from q
                                                            ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               ) titlex

                ) titleq
                 ,
                title
                  url,
                id
         from urls;
;-- -. . -..- - / . -. - .-. -.--
select
                (

                             select distinct
                                              (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx
                                                        from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(wordx)
                                               from q
                                                            ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               ) titlex

                ) titleq
                 ,
                title
                  url,
                id
         from urls;
;-- -. . -..- - / . -. - .-. -.--
select
                (

                             select distinct
                                              (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx
                                                        from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(wordx)
                                               from q
                                                            ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               ) titlex

                ) titleq
                 ,
                title,
                url,
                id
         from urls;
;-- -. . -..- - / . -. - .-. -.--
select
                (

                             select 
                                              (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx
                                                        from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(distinct wordx)
                                               from q
                                                            ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               ) 

                ) titleq
                 ,
                title,
                url,
                id
         from urls;
;-- -. . -..- - / . -. - .-. -.--
select
                trim(

                             select
                                              (with split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), ' ') wordx
                                                        from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(distinct wordx)
                                               from q
                                                            ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               )

                ) titleq
                 ,
                title,
                url,
                id
         from urls;
;-- -. . -..- - / . -. - .-. -.--
select
                                              (with split(word, str, src, orderx) 
                                                  AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(distinct wordx)
                                               from q  ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               )

                ) titleq
                 ,
                title,
                url,
                id
         from urls;
;-- -. . -..- - / . -. - .-. -.--
select
                (

                             select
                                              (with split(word, str, src, orderx)
                                                  AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select word, str, src, orderx from split where orderx > 0) split left outer join NotSuitAbleSynonyms using (word))
                                               select group_concat(distinct wordx)
                                               from q  ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               )

                ) titleq
                 ,
                title,
                url,
                id
         from urls;
;-- -. . -..- - / . -. - .-. -.--
select
                (

                             select
                                              (with split(word, str, src, orderx)
                                                  AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word), str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
                                               select group_concat(distinct wordx)
                                               from q  ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               )

                ) titleq
                 ,
                title,
                url,
                id
         from urls;
;-- -. . -..- - / . -. - .-. -.--
select
                (

                             select
                                              (with split(word, str, src, orderx)
                                                  AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                                    ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
                                               select group_concat(distinct wordx)
                                               from q  ) srcMaterial

                          from (--filter by letter
                                   with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                                                    select value number
                                                    from generate_series),
                                        aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                           ,
                                        AcceptedChars as (select Character char
                                                          from (select char(number) character, number
                                                                from (select *
                                                                      from numbers
                                                                      where number between 65 and 90
                                                                         or number between 97 and 122
                                                                      union
                                                                      select value
                                                                      from aditional)))
                                   select z titlex
                                   from (
                                            with input as (select title)
                                            select Title, group_concat(ifnull(char, ' '), '') z
                                            from (select Title, AcceptedChars.char
                                                  from (select Title, number, substr(Title, number, 1) char
                                                        from input
                                                                 cross join numbers
                                                        where number <= length(Title)) charsWithNr
                                                           left outer join AcceptedChars using (char)
                                                  order by Title, number
                                                 )
                                            group by Title) w
                               )

                ) titleq
                 ,
                title,
                url,
                id
         from urls;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('bddc');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('viewkey');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('at');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('by');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('pussy');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('amp');
;-- -. . -..- - / . -. - .-. -.--
select
(

     select
          (with split(word, str, src, orderx)
              AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select group_concat(distinct wordx)  from q  ) srcMaterial

  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                            select value number
                            from generate_series),
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                   ,
                AcceptedChars as (select Character char
                                  from (select char(number) character, number
                                        from (select *
                                              from numbers
                                              where number between 65 and 90
                                                 or number between 97 and 122
                                              union
                                              select value
                                              from aditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          order by Title, number
                         )
                    group by Title) w
       )

) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
(

     select
          (with split(word, str, src, orderx)
              AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select group_concat(wordx, ' ')  from q  ) srcMaterial

  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                            select value number
                            from generate_series),
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                   ,
                AcceptedChars as (select Character char
                                  from (select char(number) character, number
                                        from (select *
                                              from numbers
                                              where number between 65 and 90
                                                 or number between 97 and 122
                                              union
                                              select value
                                              from aditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          order by Title, number
                         )
                    group by Title) w
       )

) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
(

     select
          (with split(word, str, src, orderx)
              AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select group_concat(wordx, ' ')  from q  ) srcMaterial

  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                            select value number
                            from generate_series),
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                   ,
                AcceptedChars as (select Character char
                                  from (select char(number) character, number
                                        from (select *
                                              from numbers
                                              where number between 65 and 90
                                                 or number between 97 and 122
                                              union
                                              select value
                                              from aditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          order by Title, number
                         )
                    group by Title) w
       )

) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
(

     select
          (with split(word, str, src, orderx)
              AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(wordx, ' '))  from q  ) srcMaterial

  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                            select value number
                            from generate_series),
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                   ,
                AcceptedChars as (select Character char
                                  from (select char(number) character, number
                                        from (select *
                                              from numbers
                                              where number between 65 and 90
                                                 or number between 97 and 122
                                              union
                                              select value
                                              from aditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          order by Title, number
                         )
                    group by Title) w
       )

) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
(

     select
          (with split(word, str, src, orderx)
              AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select group_concat(trim(wordx), ' ')  from q  ) srcMaterial

  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                            select value number
                            from generate_series),
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                   ,
                AcceptedChars as (select Character char
                                  from (select char(number) character, number
                                        from (select *
                                              from numbers
                                              where number between 65 and 90
                                                 or number between 97 and 122
                                              union
                                              select value
                                              from aditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          order by Title, number
                         )
                    group by Title) w
       )

) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
          (with split(word, str, src, orderx)
              AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(trim(wordx), ' '))  from q  ) srcMaterial

  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                            select value number
                            from generate_series),
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                   ,
                AcceptedChars as (select Character char
                                  from (select char(number) character, number
                                        from (select *
                                              from numbers
                                              where number between 65 and 90
                                                 or number between 97 and 122
                                              union
                                              select value
                                              from aditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          order by Title, number
                         )
                    group by Title) w
       )

) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
(

     select
          (with split(word, str, src, orderx)
              AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(trim(wordx), ' '))  from q  ) srcMaterial

  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)
                            select value number
                            from generate_series),
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                   ,
                AcceptedChars as (select Character char
                                  from (select char(number) character, number
                                        from (select *
                                              from numbers
                                              where number between 65 and 90
                                                 or number between 97 and 122
                                              union
                                              select value
                                              from aditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          order by Title, number
                         )
                    group by Title) w
       )

) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with split(word, str, src, orderx)
              AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(trim(wordx), ' '))  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from aditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('and');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('but');
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(trim(wordx), ''))  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from aditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('into');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('washingtonpost');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('with');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('resampled');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('abusing');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('accused');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('relationship');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('resume');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('says');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('wants');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES (' porno comments');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('for');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('him');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('vid');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('hard');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('fun');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('net');
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='group';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('comments');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('mlrelated');
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='open';
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='party';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('vdvvxx');
;-- -. . -..- - / . -. - .-. -.--
select * from NotSuitAbleSynonyms order by word;
;-- -. . -..- - / . -. - .-. -.--
select * from NotSuitAbleSynonyms order by word DESC;
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(trim(wordx), ' '))  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from aditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='compilation';
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='blowjob';
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='pic';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('does');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('porno');
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='Rule34';
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='rule34';
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='rule';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('fucker');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('cof');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('forid');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('results');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('videox');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('ygv');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('siteurl');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('vidohe');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('time');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('length');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('rating');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('any');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('date');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('anytime');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('channels');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('start');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('day');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('featured');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('aadb');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('dvdvvxx');
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='or';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('sourceid');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('mozilla');
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(trim(wordx), ' '))  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from aditional )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('xvideos|');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('dhdrsc');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('aaa');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('debb');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('bisch');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('blnms');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('bvtgo');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('cazbmy');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('dlahvmkoskhyrjbygq');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('dpr');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('ense');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('imgrc');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('pml');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('rlz');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('ugt');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('dkold');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('hdrsc');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('kold');
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='red';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('viewtopic');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('aca');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('gra');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('nny');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('bdetail');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('bvrdgar');
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='deleted';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('deleted');
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='autistic';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('fafa');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('their');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('vicious');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('hye');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('give');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('half');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('hour');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('decbba');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('pleasing');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('bfbd');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('fbeff');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('abf');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('eab');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('b*');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('rcvr');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('bby');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('bboy');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('drcvr');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('accb');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('gets');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('near');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('fdace');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('fdac');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('dfa');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('daae');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('ok');
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(wordx||' ', ''))  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(' '||wordx||' ', ''))  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(trim(wordx)||' ', ''))  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(substr(str, 0, instr(str, ' '))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(trim(wordx), ' '))  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct ifnull(nullif(split.word, NotSuitAbleSynonyms.word), '') wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(wordx, ' '))  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(group_concat(wordx, ' '))  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(trim(group_concat(wordx, ' ')),'-')  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select
( select
          (with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(trim(trim(group_concat(wordx, ' '),'|'),'-'),' ')  from q  ) srcMaterial
  from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         )
                    group by Title) w
       )
) titleq,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='msnovember';
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='spikespen';
;-- -. . -..- - / . -. - .-. -.--
select

       nullif(ifnull(
       (select(with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(trim(trim(group_concat(wordx, ' '),'|'),'-'),' ')  from q  ) srcMaterial from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with input as (select title)
                    select Title, group_concat(ifnull(char, ' '), '') z
                    from (select Title, AcceptedChars.char
                          from (select Title, number, substr(Title, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(Title)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         ) group by Title) w )) 
           ,''),'')
           
           
           titleq
     
     
     
     ,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
select

       ifnull(nullif(ifnull(
                             (select (with aditional as (select ' ' value
                                                         union
                                                         select '('
                                                         union
                                                         select ')'
                                                         union
                                                         select '-'
                                                         union
                                                         select '|'
                                                         union
                                                         select '*')
                                         , split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0
                                                                             UNION ALL
                                                                             SELECT lower(trim(substr(str, 0, instr(str, ' ')))),
                                                                                    substr(str, instr(str, ' ') + 1),
                                                                                    src,
                                                                                    orderx + 1
                                                                             FROM split
                                                                             WHERE str != '')
                                         , q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx
                                                 from (select lower(word) word, str, src, orderx from split where orderx > 0) split
                                                          left outer join (select lower(word) word from NotSuitAbleSynonyms) NotSuitAbleSynonyms
                                                                          using (word))
                                      select trim(trim(trim(group_concat(wordx, ' '), '|'), '-'), ' ')
                                      from q) srcMaterial
                              from (--filter by letter
                                       with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1
                                                                                                  UNION ALL
                                                                                                  SELECT value + 1
                                                                                                  FROM generate_series
                                                                                                  WHERE value + 1 <= 4000)
                                                        select value number
                                                        from generate_series)
                                          , SegmentChars as (select ' ' value
                                                             union
                                                             select '('
                                                             union
                                                             select ')'
                                                             union
                                                             select '-'
                                                             union
                                                             select '|'
                                                             union
                                                             select '*')
                                          , nrOfAditional as (select unicode(value) value from SegmentChars)
                                          , AcceptedChars as (select Character char
                                                              from (select char(number) character, number
                                                                    from (select *
                                                                          from numbers
                                                                          where number between 65 and 90
                                                                             or number between 97 and 122
                                                                          union
                                                                          select value
                                                                          from nrOfAditional)))
                                       select z titlex
                                       from (
                                                with input as (select title)
                                                select Title, group_concat(ifnull(char, ' '), '') z
                                                from (select Title, AcceptedChars.char
                                                      from (select Title, number, substr(Title, number, 1) char
                                                            from input
                                                                     cross join numbers
                                                            where number <= length(Title)) charsWithNr
                                                               left outer join AcceptedChars using (char)
                                                         --order by Title, number
                                                     )
                                                group by Title) w))
                         , ''), ''),
          ( select(with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(trim(trim(group_concat(wordx, ' '),'|'),'-'),' ')  from q  ) srcMaterial from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with input as (select url)
                    select url, group_concat(ifnull(char, ' '), '') z
                    from (select url, AcceptedChars.char
                          from (select url, number, substr(url, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(url)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         ) group by url) w ))
           )


           titleq



     ,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('embedframe');
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='pussy';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('(ok)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('nid');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('aspx');
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='sexiga';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('default');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('request)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('(forbidden');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('(gws)');
;-- -. . -..- - / . -. - .-. -.--
select
       ifnull(nullif(ifnull(
                             (select (with aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                         , split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0
                                                                             UNION ALL
                                                                             SELECT lower(trim(substr(str, 0, instr(str, ' ')))),
                                                                                    substr(str, instr(str, ' ') + 1),
                                                                                    src,
                                                                                    orderx + 1
                                                                             FROM split
                                                                             WHERE str != '')
                                         , q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx
                                                 from (select lower(word) word, str, src, orderx from split where orderx > 0) split
                                                          left outer join (select lower(word) word from NotSuitAbleSynonyms) NotSuitAbleSynonyms
                                                                          using (word))
                                      select trim(trim(trim(group_concat(wordx, ' '), '|'), '-'), ' ')
                                      from q) srcMaterial
                              from (--filter by letter
                                       with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1
                                                                                                  UNION ALL
                                                                                                  SELECT value + 1
                                                                                                  FROM generate_series
                                                                                                  WHERE value + 1 <= 4000)
                                                        select value number
                                                        from generate_series)
                                          , SegmentChars as (select ' ' value
                                                             union
                                                             select '('
                                                             union
                                                             select ')'
                                                             union
                                                             select '-'
                                                             union
                                                             select '|'
                                                             union
                                                             select '*')
                                          , nrOfAditional as (select unicode(value) value from SegmentChars)
                                          , AcceptedChars as (select Character char
                                                              from (select char(number) character, number
                                                                    from (select *
                                                                          from numbers
                                                                          where number between 65 and 90
                                                                             or number between 97 and 122
                                                                          union
                                                                          select value
                                                                          from nrOfAditional)))
                                       select z titlex
                                       from (
                                                with input as (select title)
                                                select Title, group_concat(ifnull(char, ' '), '') z
                                                from (select Title, AcceptedChars.char
                                                      from (select Title, number, substr(Title, number, 1) char
                                                            from input
                                                                     cross join numbers
                                                            where number <= length(Title)) charsWithNr
                                                               left outer join AcceptedChars using (char)
                                                         --order by Title, number
                                                     )
                                                group by Title) w))
                         , ''), ''),
          ( select(with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(trim(trim(group_concat(wordx, ' '),'|'),'-'),' ')  from q  ) srcMaterial from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with q as (select substr(url,0,instr(url,'=utf')) url),
                         input as (select url from q)
                    select url, group_concat(ifnull(char, ' '), '') z
                    from (select url, AcceptedChars.char
                          from (select url, number, substr(url, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(url)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         ) group by url) w ))
           )
           titleq



     ,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='blackbustybabes';
;-- -. . -..- - / . -. - .-. -.--
select
       ifnull(nullif(ifnull(
                             (select (with aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                         , split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0
                                                                             UNION ALL
                                                                             SELECT lower(trim(substr(str, 0, instr(str, ' ')))),
                                                                                    substr(str, instr(str, ' ') + 1),
                                                                                    src,
                                                                                    orderx + 1
                                                                             FROM split
                                                                             WHERE str != '')
                                         , q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx
                                                 from (select lower(word) word, str, src, orderx from split where orderx > 0) split
                                                          left outer join (select lower(word) word from NotSuitAbleSynonyms) NotSuitAbleSynonyms
                                                                          using (word))
                                      select trim(trim(trim(group_concat(wordx, ' '), '|'), '-'), ' ')
                                      from q) srcMaterial
                              from (--filter by letter
                                       with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1
                                                                                                  UNION ALL
                                                                                                  SELECT value + 1
                                                                                                  FROM generate_series
                                                                                                  WHERE value + 1 <= 4000)
                                                        select value number
                                                        from generate_series)
                                          , SegmentChars as (select ' ' value
                                                             union
                                                             select '('
                                                             union
                                                             select ')'
                                                             union
                                                             select '-'
                                                             union
                                                             select '|'
                                                             union
                                                             select '*')
                                          , nrOfAditional as (select unicode(value) value from SegmentChars)
                                          , AcceptedChars as (select Character char
                                                              from (select char(number) character, number
                                                                    from (select *
                                                                          from numbers
                                                                          where number between 65 and 90
                                                                             or number between 97 and 122
                                                                          union
                                                                          select value
                                                                          from nrOfAditional)))
                                       select z titlex
                                       from (
                                                with input as (select title)
                                                select Title, group_concat(ifnull(char, ' '), '') z
                                                from (select Title, AcceptedChars.char
                                                      from (select Title, number, substr(Title, number, 1) char
                                                            from input
                                                                     cross join numbers
                                                            where number <= length(Title)) charsWithNr
                                                               left outer join AcceptedChars using (char)
                                                         --order by Title, number
                                                     )
                                                group by Title) w))
                         , ''), ''),
          ( select(with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(trim(trim(group_concat(wordx, ' '),'|'),'-'),' ')  from q  ) srcMaterial from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with q as (select substr(url,0,ifnull(nullif(instr(url,'=utf'),0),length(url))) url),
                         input as (select url from q)
                    select url, group_concat(ifnull(char, ' '), '') z
                    from (select url, AcceptedChars.char
                          from (select url, number, substr(url, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(url)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         ) group by url) w ))
           )
           titleq



     ,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='imgurl';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('videos)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('ahead');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('isn');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('looking');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('htm');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('(not');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('found)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('youporn');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('xxxbunker');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('query');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('org)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('src');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('qcat');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('movies');
;-- -. . -..- - / . -. - .-. -.--
select
       ifnull(nullif(ifnull(
                             (select (with aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                         , split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                         , q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx
                                                 from (select lower(word) word, str, src, orderx from split where orderx > 0) split
                                                          left outer join (select lower(word) word from NotSuitAbleSynonyms) NotSuitAbleSynonyms
                                                                          using (word))
                                      select trim(trim(trim(group_concat(wordx, ' '), '|'), '-'), ' ')
                                      from q) srcMaterial
                              from (--filter by letter
                                       with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1
                                                                                                  UNION ALL
                                                                                                  SELECT value + 1
                                                                                                  FROM generate_series
                                                                                                  WHERE value + 1 <= 4000)
                                                        select value number
                                                        from generate_series)
                                          , SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                          , nrOfAditional as (select unicode(value) value from SegmentChars)
                                          , AcceptedChars as (select Character char
                                                              from (select char(number) character, number
                                                                    from (select *
                                                                          from numbers
                                                                          where number between 65 and 90
                                                                             or number between 97 and 122
                                                                          union
                                                                          select value
                                                                          from nrOfAditional)))
                                       select z titlex
                                       from (
                                                with input as (select title)
                                                select Title, group_concat(ifnull(char, ' '), '') z
                                                from (select Title, AcceptedChars.char
                                                      from (select Title, number, substr(Title, number, 1) char
                                                            from input
                                                                     cross join numbers
                                                            where number <= length(Title)) charsWithNr
                                                               left outer join AcceptedChars using (char)
                                                         --order by Title, number
                                                     )
                                                group by Title) w))
                         , ''), ''),
          ( select(with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct nullif(split.word, NotSuitAbleSynonyms.word) wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join (select lower(word) word from NotSuitAbleSynonyms)NotSuitAbleSynonyms using (word))
           select trim(trim(trim(group_concat(wordx, ' '),'|'),'-'),' ')  from q  ) srcMaterial from (--filter by letter
           with numbers as (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series)
              ,SegmentChars as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
              ,nrOfAditional as (select unicode(value) value from SegmentChars )
              , AcceptedChars as (select Character char from (select char(number) character, number from (select *from numbers where number between 65 and 90 or number between 97 and 122 union select value from nrOfAditional)))
           select z titlex
           from (
                    with q as (select substr(url,0,ifnull(nullif(instr(url,'=utf'),0),length(url)+1)) url),
                         input as (select url from q)
                    select url, group_concat(ifnull(char, ' '), '') z
                    from (select url, AcceptedChars.char
                          from (select url, number, substr(url, number, 1) char
                                from input
                                         cross join numbers
                                where number <= length(url)) charsWithNr
                                   left outer join AcceptedChars using (char)
                          --order by Title, number
                         ) group by url) w ))
           )
           titleq



     ,title,url,id from urls;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('(error');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('utf-');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('gtmrydyda');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('sftwulxxn');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('sei');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('ubuntu');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('channel');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('twupdekkag');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('gszkygyag');
;-- -. . -..- - / . -. - .-. -.--
delete from NotSuitAbleSynonyms where lower(word) ='man';