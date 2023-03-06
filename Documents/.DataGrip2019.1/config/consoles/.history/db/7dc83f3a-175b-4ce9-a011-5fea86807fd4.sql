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
                                                group by Title) w;
;-- -. . -..- - / . -. - .-. -.--
create view urls as select * from moz_places;
;-- -. . -..- - / . -. - .-. -.--
with notSuitaableSynonyms as (select lower(word) word from Semantic.notSuitableSynonyms)
select
       --ifnull(nullif(ifnull(
                             (select (with aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                                         , split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                         , q as (select distinct nullif(split.word, notSuitaableSynonyms.word) wordx
                                                 from (select lower(word) word, str, src, orderx from split where orderx > 0) split
                                                          left outer join  notSuitaableSynonyms
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
                                                group by Title) w)
           --) , ''), '')
           ,
          ( select(with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct nullif(split.word, notSuitaableSynonyms.word) wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join  notSuitaableSynonyms using (word))
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
attach 'E:/ToDatabase/Sqlite/db/Semantic_Analysis_Db.sqlite' as Semantic;
;-- -. . -..- - / . -. - .-. -.--
with notSuitaableSynonyms as (select lower(word) word from Semantic.notSuitableSynonyms)
select
       --ifnull(nullif(ifnull(
                             (select (with aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*' union select 'å')
                                         , split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                         , q as (select distinct nullif(split.word, notSuitaableSynonyms.word) wordx
                                                 from (select lower(word) word, str, src, orderx from split where orderx > 0) split
                                                          left outer join  notSuitaableSynonyms
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
                                                group by Title) w)
           --) , ''), '')
           ,
          ( select(with
                aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                ,q as (select distinct nullif(split.word, notSuitaableSynonyms.word) wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join  notSuitaableSynonyms using (word))
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
with notSuitaableSynonyms as (select lower(word) word from Semantic.notSuitableSynonyms)
     select
            --ifnull(nullif(ifnull(
                                  (select (with aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*' union select 'å')
                                              , split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                                              , q as (select distinct nullif(split.word, notSuitaableSynonyms.word) wordx
                                                      from (select lower(word) word, str, src, orderx from split where orderx > 0) split
                                                               left outer join  notSuitaableSynonyms
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
                                                     group by Title) w)
                --) , ''), '')
                ,
               ( select(with
                     aditional as (select ' ' value union select '(' union select ')' union select '-' union select '|' union select '*')
                     ,split(word, str, src, orderx) AS (SELECT '', titlex || ' ', titlex, 0 UNION ALL SELECT lower(trim(substr(str, 0, instr(str, ' ')))),substr(str, instr(str, ' ') + 1),src, orderx + 1 FROM split WHERE str != '')
                     ,q as (select distinct nullif(split.word, notSuitaableSynonyms.word) wordx from (select lower(word) word, str, src, orderx from split where orderx > 0) split left outer join  notSuitaableSynonyms using (word))
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
attach 'E:\ToDatabase\Sqlite\db\4_urlclassifier3\corrupted - urlclassifier3_[65mb68157440b](BD0517EC9CDBB549AF6A81B101AF1F68).sqlite' as q;
;-- -. . -..- - / . -. - .-. -.--
select * from q.moz_classifier;
;-- -. . -..- - / . -. - .-. -.--
select * from q.moz_subs;
;-- -. . -..- - / . -. - .-. -.--
select * from q.sqlite_master;
;-- -. . -..- - / . -. - .-. -.--
select * from q.moz_tables;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\ToDatabase\Sqlite\db\24_places\Corrupted - places_[20mb20971520b](61C487DAF6823C3E9459C733CB1BB56C).sqlite' as z;
;-- -. . -..- - / . -. - .-. -.--
select * from z.sqlite_master;
;-- -. . -..- - / . -. - .-. -.--
select * from z.moz_places;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\ToDatabase\Sqlite\db\5_Webreview\corrupted - webreview_[76mb79429632b](E945899F0A81330807283548542B61D2).sqlite' as t;
;-- -. . -..- - / . -. - .-. -.--
select * from t.sqlite_master;
;-- -. . -..- - / . -. - .-. -.--
select * from t.wr_pages;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\ToDatabase\Sqlite\db\24_places\corrupted - places_[10mb10485760b](D2F0DEF4E5D0E5146F0B30B3FE649A2C).sqlite' as qx;
;-- -. . -..- - / . -. - .-. -.--
select * from qx.sqlite_master;
;-- -. . -..- - / . -. - .-. -.--
select * from qx.moz_places;
;-- -. . -..- - / . -. - .-. -.--
select * from yz;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\ToDatabase\Sqlite\db\24_places\corrupted - places_[20mb20971520b](5E284A3AA753F396C34053DE2E833C81).sqlite' as yz;
;-- -. . -..- - / . -. - .-. -.--
select * from yz.sqlite_master;
;-- -. . -..- - / . -. - .-. -.--
select * from yz.moz_places;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\ToDatabase\Sqlite\db\10_webappsstore\webappsstore_[9mb9404416b].sqlite' as tx;
;-- -. . -..- - / . -. - .-. -.--
select * from tx.sqlite_master;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\ToDatabase\Sqlite\db\5_Webreview\Webreview_[76mb79429632b](D3C06761F599EB62D4A10891D4653BFA).sqlite' as zu;
;-- -. . -..- - / . -. - .-. -.--
select * from zu.sqlite_master;
;-- -. . -..- - / . -. - .-. -.--
select * from zu.wr_pages;