insert into NotSuitAbleSynonyms values
 (' '),
(''),
('fucked'),
('you'),
('image'),
('up'),
( 'give'),
( 'extreme'),
( 'into'),
( 'lets'),
( 'cap'),
( 'before'),
( 'does'),
( 'want'),
( 'more'),
( 'new'),
('sex'),
( 'fuck'),
( 'my'),
( 'cock'),
( 'fucking'),
( 'video'),
( 'efter'),
( 'have'),
( 'resultat'),
( 'search'),
( 'clip'),
( 'he'),
( 'out'),
( 'so'),
( 'super'),
( 'be'),
( 'one'),
( 'https'),
( 'being'),
( 'play'),
( 'rare'),
( 'back'),
( 'xvideos'),
( 'are'),
( 'no'),
( 'when'),
( 'your'),
( 'action'),
( 'xxxbunker'),
( '9'),
( 'boss'),
( 'hd'),
( 'n'),
( 'www'),
( 'but'),
( 'de'),
( 'do'),
( 'made'),
('av'),
('googles'),
('bildsökning'),
('xxx'),
('off'),
('xhamster'),
('result'),
('&'),
('http'),
('got'),
('google'),
('this'),
( 'for'),
( 'his'),
( 'man'),
( 'as'),
( 'like'),
( 'i'),
( 'get'),
('an'),
('her'),
('girl'),
('or'),
('and'),
( 'com'),
( 'dot'),
( 'yahoo'),
( 'by'),
( 'with'),
( '|'),
( ')'),
( '('),
( 'in'),
( 'a'),
( '*'),
( 'gets'),
( 'on'),
( 'hot'),
( 'of'),
( '2'),
( 'the'),
( 'to'),
( 'reddit'),
( 'is'),
( 'it'),
( 'time'),
( 'view'),
( '3'),
( 'amazing'),
( 'at'),
( 'from'),
( 'how'),
( 'tells');
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
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Enjoys');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Por');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('likesyr');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Having');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Makes');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Rough');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('oldgf');
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
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select * from url.moz_places),
     initial as (select min(url) url, substr(title, 1, instr(title, ' Tube ')) titlex,
                        substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx from urls where instr(url, 'nudevista') * instr(title, 'videos') > 0 group by titlex),
     Trimmed as (select url,replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc from initial where cc <> 0),
     tosplit as (select titlex from Trimmed),
     split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
     FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
     Wordlist as (select word, sum(x) x from FilterWords group by word),
     ReAssosiateWords as (select url, titlex, cc, word, x from Trimmed xyz cross join Wordlist abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
     clusterRelevantWords as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
     GroupByWordCluster as (select min(title) t, sum(xsum) xsum, words from clusterRelevantWords group by words),
     NrGroups as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from GroupByWordCluster),
     wordsCrossGroups as (select title, xsum, words, rnr, word, x from NrGroups xyz cross join Wordlist abs where instr(lower(xyz.words), lower(abs.word)) order by words, x desc)
     ,DefineInheritance as (select azx.rnr x,wordsCrossGroups.rnr y,length(max(wordsCrossGroups.words)) lRwo,length(group_concat(azx.word)) lsr from wordsCrossGroups azx LEFT OUTER JOIN wordsCrossGroups on (azx.word = wordsCrossGroups.word and azx.rnr <> wordsCrossGroups.rnr) and azx.xsum >= wordsCrossGroups.x and azx.xsum >= wordsCrossGroups.xsum where wordsCrossGroups.title is not null group by azx.title, wordsCrossGroups.title)
     ,groupByInheritance as (select referens.x, coalesce(referens.words, agroup.words) words, y from NrGroups agroup left outer join(select x, y, title, xsum, words, rnr from (select max(x) x, y from (select x, y from DefineInheritance where lRwo = lsr) group by y) referens inner join NrGroups on referens.x = NrGroups.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words) order by length(coalesce(referens.words, agroup.words)) desc)

select * from DefineInheritance;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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



          ,title,url,id from urls
         ),



     tosplit as (select titlex from Trimmed),
     split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
     FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
     Wordlist as (select word, sum(x) x from FilterWords group by word),
     ReAssosiateWords as (select url, titlex, cc, word, x from Trimmed xyz cross join Wordlist abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
     clusterRelevantWords as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
     GroupByWordCluster as (select min(title) t, sum(xsum) xsum, words from clusterRelevantWords group by words),
     NrGroups as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from GroupByWordCluster),
     wordsCrossGroups as (select title, xsum, words, rnr, word, x from NrGroups xyz cross join Wordlist abs where instr(lower(xyz.words), lower(abs.word)) order by words, x desc)
     ,DefineInheritance as (select azx.rnr x,wordsCrossGroups.rnr y,length(max(wordsCrossGroups.words)) lRwo,length(group_concat(azx.word)) lsr from wordsCrossGroups azx LEFT OUTER JOIN wordsCrossGroups on (azx.word = wordsCrossGroups.word and azx.rnr <> wordsCrossGroups.rnr) and azx.xsum >= wordsCrossGroups.x and azx.xsum >= wordsCrossGroups.xsum where wordsCrossGroups.title is not null group by azx.title, wordsCrossGroups.title)
     ,groupByInheritance as (select referens.x, coalesce(referens.words, agroup.words) words, y from NrGroups agroup left outer join(select x, y, title, xsum, words, rnr from (select max(x) x, y from (select x, y from DefineInheritance where lRwo = lsr) group by y) referens inner join NrGroups on referens.x = NrGroups.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words) order by length(coalesce(referens.words, agroup.words)) desc)

select * from DefineInheritance;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex



          ,title,url,id from urls
         ),



     tosplit as (select titlex from Trimmed),
     split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
     FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
     Wordlist as (select word, sum(x) x from FilterWords group by word),
     ReAssosiateWords as (select url, titlex, cc, word, x from Trimmed xyz cross join Wordlist abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
     clusterRelevantWords as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
     GroupByWordCluster as (select min(title) t, sum(xsum) xsum, words from clusterRelevantWords group by words),
     NrGroups as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from GroupByWordCluster),
     wordsCrossGroups as (select title, xsum, words, rnr, word, x from NrGroups xyz cross join Wordlist abs where instr(lower(xyz.words), lower(abs.word)) order by words, x desc)
     ,DefineInheritance as (select azx.rnr x,wordsCrossGroups.rnr y,length(max(wordsCrossGroups.words)) lRwo,length(group_concat(azx.word)) lsr from wordsCrossGroups azx LEFT OUTER JOIN wordsCrossGroups on (azx.word = wordsCrossGroups.word and azx.rnr <> wordsCrossGroups.rnr) and azx.xsum >= wordsCrossGroups.x and azx.xsum >= wordsCrossGroups.xsum where wordsCrossGroups.title is not null group by azx.title, wordsCrossGroups.title)
     ,groupByInheritance as (select referens.x, coalesce(referens.words, agroup.words) words, y from NrGroups agroup left outer join(select x, y, title, xsum, words, rnr from (select max(x) x, y from (select x, y from DefineInheritance where lRwo = lsr) group by y) referens inner join NrGroups on referens.x = NrGroups.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words) order by length(coalesce(referens.words, agroup.words)) desc)

select * from DefineInheritance;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         ),



     tosplit as (select titlex from Trimmed),
     split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
     FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
     Wordlist as (select word, sum(x) x from FilterWords group by word),
     ReAssosiateWords as (select url, titlex, cc, word, x from Trimmed xyz cross join Wordlist abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
     clusterRelevantWords as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
     GroupByWordCluster as (select min(title) t, sum(xsum) xsum, words from clusterRelevantWords group by words),
     NrGroups as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from GroupByWordCluster),
     wordsCrossGroups as (select title, xsum, words, rnr, word, x from NrGroups xyz cross join Wordlist abs where instr(lower(xyz.words), lower(abs.word)) order by words, x desc)
     ,DefineInheritance as (select azx.rnr x,wordsCrossGroups.rnr y,length(max(wordsCrossGroups.words)) lRwo,length(group_concat(azx.word)) lsr from wordsCrossGroups azx LEFT OUTER JOIN wordsCrossGroups on (azx.word = wordsCrossGroups.word and azx.rnr <> wordsCrossGroups.rnr) and azx.xsum >= wordsCrossGroups.x and azx.xsum >= wordsCrossGroups.xsum where wordsCrossGroups.title is not null group by azx.title, wordsCrossGroups.title)
     ,groupByInheritance as (select referens.x, coalesce(referens.words, agroup.words) words, y from NrGroups agroup left outer join(select x, y, title, xsum, words, rnr from (select max(x) x, y from (select x, y from DefineInheritance where lRwo = lsr) group by y) referens inner join NrGroups on referens.x = NrGroups.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words) order by length(coalesce(referens.words, agroup.words)) desc)

select * from DefineInheritance;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' '
                                                       from (select titlex from Trimmed) tosplit
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split
        )

     select * from wordlist;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places limit 1000),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' '
                                                       from (select titlex from Trimmed) tosplit
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split
        )

     select * from wordlist;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places limit 1000),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' '
                                                       from (select titlex from Trimmed) tosplit
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '' and str!= ' ' And str is not null)
                             select *
                             from split
        )

     select * from wordlist;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places limit 1000),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' '
                                                       from (select titlex from Trimmed) tosplit
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split where word != ' ' And word is not null
        )

     select * from wordlist;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places limit 1000),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' '
                                                       from (select titlex from Trimmed) tosplit
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split where word != ' ' And word is not null and word = ''
        )

     select * from wordlist;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places limit 1000),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' '
                                                       from (select titlex from Trimmed) tosplit
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split where word != ' ' And word is not null and word = ''
        )

     select word, count(word) cc from wordlist group by word order by cc desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places limit 1000),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' ' from  Trimmed
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split 
                        cross join Trimmed
                     where word != ' ' And word is not null and word = ''
        )

     select word, count(word) cc from wordlist group by word order by cc desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places limit 1000),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' ' from  Trimmed
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split
                        
                     where word != ' ' And word is not null and word = ''
        )

     select word, count(word) cc from wordlist
cross join Trimmed
group by word order by cc desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places limit 1000),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' ' from  Trimmed
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split
        )

     select word, count(word) cc from wordlist
cross join Trimmed
group by word order by cc desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places limit 1000),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' ' from  Trimmed
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split
        where word != ''
        )

     select word, count(word) cc from wordlist
cross join Trimmed
group by word order by cc desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%' + mature + '%' 
    
    limit 1000
        
        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' ' from  Trimmed
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split
        where word != ''
        )

     select word, count(word) cc from wordlist
cross join Trimmed
group by word order by cc desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%mature%'

    limit 1000

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' ' from  Trimmed
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split
        where word != ''
        )

     select word, count(word) cc from wordlist
cross join Trimmed
group by word order by cc desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 1000

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

     ,
    Wordlist as (
                     with split(word, str) AS (SELECT '', titlex || ' ' from  Trimmed
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1)
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split
        where word != ''
        )

     select word, count(word) cc from wordlist
cross join Trimmed
group by word order by cc desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 1000

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

    

     select word, titleX from (
                     with split(word, str,orderx) AS (SELECT '', titlex || ' ',1 from  Trimmed
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1),orderx+1
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split
        where word != ''
        )
        cross join Trimmed;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 1000

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )



     select titleX, (
                     with split(word, str,orderx) AS (SELECT '', titlex || ' ',1 
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1),orderx+1
                                                       FROM split
                                                       WHERE str != '')
                             select *
                             from split
        where word != ''
        ) as word
         from Trimmed;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 1000

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )



     select titleX, (
                     with split(word, str,orderx) AS (SELECT '', titlex || ' ',1
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1),orderx+1
                                                       FROM split
                                                       WHERE str != '')
                             select word
                             from split
        where word != ''
        ) as word
         from Trimmed;
;-- -. . -..- - / . -. - .-. -.--
select * from Trimmed cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series);
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 1000

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
         
         select * from Trimmed cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series);
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 1000

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)

         select * from Trimmed cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series);
;-- -. . -..- - / . -. - .-. -.--
select * from urls cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series) where length(urls.title) > number;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 1000

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )

select * from trimmed cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series) where length(Trimmed.titlex) > number;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 1000

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )



     select titleX, (
                     with split(word, str,orderx) AS (SELECT '', titlex || ' ',1
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1),orderx+1
                                                       FROM split
                                                       WHERE str != '')
                             select word
                             from split
        where word != '' and orderx = number
        ) as word
from trimmed cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series) where length(Trimmed.titlex) > number and word is not null and word != '';
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 1000

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )



     select titleX, (
                     with split(word, str,orderx) AS (SELECT '', titlex || ' ',1
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1),orderx+1
                                                       FROM split
                                                       WHERE str != '')
                             select word
                             from split
        where word != '' and orderx = number
        ) as word
from trimmed cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series) where length(Trimmed.titlex) > number and word is not null and word != ''
limit 100;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 100

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )



     select titleX, (
                     with split(word, str,orderx) AS (SELECT '', titlex || ' ',1
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1),orderx+1
                                                       FROM split
                                                       WHERE str != '')
                             select word
                             from split
        where word != '' and orderx = number
        ) as word
from trimmed cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000)select value number from generate_series) where length(Trimmed.titlex) > number and word is not null and word != ''
limit 100;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\PortableApps\9. browser Network Database\PortableApps\WaterfoxPortable\Data\profile\places.sqlite' as url;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 100

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )



     select titleX, (
                     with split(word, str,orderx) AS (SELECT '', titlex || ' ',1
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1),orderx+1
                                                       FROM split
                                                       WHERE str != '')
                             select word
                             from split
        where word != '' and orderx = number
        ) as word
from trimmed cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 400)select value number from generate_series) where length(Trimmed.titlex)/2 > number and word is not null and word != ''
limit 100;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 100

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )



     select titleX, (
                     with split(word, str,orderx) AS (SELECT '', titlex || ' ',1
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1),orderx+1
                                                       FROM split
                                                       WHERE str != '')
                             select word
                             from split
        where word != '' and orderx = number
        ) as word
from trimmed cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 400)select value number from generate_series) where length(Trimmed.titlex)/3 > number and word is not null and word != ''
limit 100;
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 100

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )



     select titleX, (
                     with split(word, str,orderx) AS (SELECT '', titlex || ' ',1
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1),orderx+1
                                                       FROM split
                                                       WHERE str != '')
                             select word
                             from split
        where word != '' and orderx = number
        ) as word
from trimmed cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 400)select value number from generate_series) where length(Trimmed.titlex)/3 > number and word is not null and word != '';
;-- -. . -..- - / . -. - .-. -.--
WITH
    urls as (select title,url,id from url.moz_places
    where title like '%beach%'

    limit 100

        ),
     Trimmed as (
         with notSuitaableSynonyms as (select lower(word) word from notSuitableSynonyms)
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
                titlex
          ,title,url,id, 0 as cc from urls
         )




select word, count(*) cc  from (
     select titleX, (
                     with split(word, str,orderx) AS (SELECT '', titlex || ' ',1
                                                       UNION ALL
                                                       SELECT substr(str, 0, instr(str, ' ')),
                                                              substr(str, instr(str, ' ') + 1),orderx+1
                                                       FROM split
                                                       WHERE str != '')
                             select word
                             from split
        where word != '' and orderx = number
        ) as word
from trimmed cross join (WITH RECURSIVE generate_series(value) AS (SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 400)select value number from generate_series) where length(Trimmed.titlex)/3 > number and word is not null and word != ''
    )
group by word
order by cc desc;