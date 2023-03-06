with
            intialZ as (select distinct titlex from initial limit 500),
            --intialZ as (select distinct initial.* from initial cross join TitleTrimReplaceWith where instr(initial.titlex, replaceY) > 0  limit 50),
            --    intialZ as (select ' or ' titlex),
            q (source,x,rowNr) as
           (
               select distinct titlex, titlex, 1 from intialZ
               union

               select source, ifnull(replace(x, replaceY, withX),x), rowNr + 1
               from
                    q
                              inner join TitleTrimReplaceWith on instr(q.x, replaceY) > 0
                                  --on rowNr = rowid

               --where rowNr < 26
           )
        ,qz as(select source,max(rowNr) mx from q
           group by source)

        select
            qz.source,
            x,
            rowNr from qz inner join q on q.source = qz.source and q.rowNr = qz.mx;
;-- -. . -..- - / . -. - .-. -.--
with
            intialZ as (select distinct titlex,url from initial limit 500),
            --intialZ as (select distinct initial.* from initial cross join TitleTrimReplaceWith where instr(initial.titlex, replaceY) > 0  limit 50),
            --    intialZ as (select ' or ' titlex),
            q (source,x,rowNr) as
           (
               select distinct titlex, titlex, 1 from intialZ
               union

               select source, ifnull(replace(x, replaceY, withX),x), rowNr + 1
               from
                    q
                              inner join TitleTrimReplaceWith on instr(q.x, replaceY) > 0
                                  --on rowNr = rowid

               --where rowNr < 26
           )
        ,qz as(select source,max(rowNr) mx from q
           group by source)

        select
            qz.source,
            x,
            rowNr from qz inner join q on q.source = qz.source and q.rowNr = qz.mx
            inner join 
            intialZ on qz.source = intialZ.titlex
            order by rowNr desc;
;-- -. . -..- - / . -. - .-. -.--
with
           --intialZ as (select distinct titlex,url from initial),
            intialZ as (select distinct initial.* from initial cross join TitleTrimReplaceWith where instr(initial.titlex, replaceY) > 0  limit 50),
            --    intialZ as (select ' or ' titlex),
            q (source,x,rowNr) as
           (
               select distinct titlex, titlex, 1 from intialZ
               union

               select source, ifnull(replace(x, replaceY, withX),x), rowNr + 1
               from
                    q
                        inner join TitleTrimReplaceWith on instr(q.x, replaceY) > 0 limit 1
                                  --on rowNr = rowid

               --where rowNr < 26
           )
        ,qz as(select source,max(rowNr) mx from q
           group by source)

        select
            intialZ.url , x from qz 
                inner join q 
                on q.source = qz.source and q.rowNr = qz.mx
            inner join
            intialZ on qz.source = intialZ.titlex
            order by rowNr desc;
;-- -. . -..- - / . -. - .-. -.--
with
           --intialZ as (select distinct titlex,url from initial),
            intialZ as (select distinct initial.* from initial cross join TitleTrimReplaceWith where instr(initial.titlex, replaceY) > 0  limit 50),
            --    intialZ as (select ' or ' titlex),
            q (source,x,rowNr) as
           (
               select distinct titlex, titlex, 1 from intialZ
               union

               select source, ifnull(replace(x, replaceY, withX),x), rowNr + 1
               from
                    q
                        inner join (select * from  TitleTrimReplaceWith where instr(q.x, replaceY) > 0 limit 1 )  on instr(q.x, replaceY) > 0
                                  --on rowNr = rowid

               --where rowNr < 26
           )
        ,qz as(select source,max(rowNr) mx from q
           group by source)

        select
            intialZ.url , x from qz
                inner join q
                on q.source = qz.source and q.rowNr = qz.mx
            inner join
            intialZ on qz.source = intialZ.titlex
            order by rowNr desc;
;-- -. . -..- - / . -. - .-. -.--
with
           --intialZ as (select distinct titlex,url from initial),
            intialZ as (select distinct initial.* from initial cross join TitleTrimReplaceWith where instr(initial.titlex, replaceY) > 0  limit 50),
            --    intialZ as (select ' or ' titlex),
            q (source,x,rowNr) as
           (
               select distinct titlex, titlex, 1 from intialZ
               union

               select ( select source, ifnull(replace(x, replaceY, withX),x), rowNr + 1 from q inner join TitleTrimReplaceWith on instr(q.x, replaceY) > 0)
                                  --on rowNr = rowid

               --where rowNr < 26
           )
        ,qz as(select source,max(rowNr) mx from q
           group by source)

        select
            intialZ.url , x from qz
                inner join q
                on q.source = qz.source and q.rowNr = qz.mx
            inner join
            intialZ on qz.source = intialZ.titlex
            order by rowNr desc;
;-- -. . -..- - / . -. - .-. -.--
select substr(a,1,1) from (select 'abscrdws' a);
;-- -. . -..- - / . -. - .-. -.--
with za as (select 'abscrdws' a),

 q (t,b,rowNr) as
 
        (
            select a,'',1 from za
            union
            select t,substr(t,rowNr,1),rowNr from q
        )

select * from q;
;-- -. . -..- - / . -. - .-. -.--
with za as (select 'abscrdws' a),

 q (t,b,rowNr) as

        (
            select a,'',1 from za
            union
            select t,substr(t,rowNr,1),rowNr+1 from q
        )

select * from q;
;-- -. . -..- - / . -. - .-. -.--
with za as (select 'abscrdws' a),

 q (t,b,rowNr) as

        (
            select a,'',1 from za
            union
            select t,substr(t,rowNr,1),rowNr+1 from q where rowNr <= length(t)
        )

select * from q;
;-- -. . -..- - / . -. - .-. -.--
with za as (select 'abscrdws' a),

     q (t,b,rowNr) as

        (
            select a,'',1 from za
            union
            select t,substr(t,rowNr,1),rowNr+1 from q where rowNr <= length(t)
        )

select
     t,
     group_concat(b) b,
     rowNr from q group by t;
;-- -. . -..- - / . -. - .-. -.--
with za as (select 'abscrdws' a),

     q (t,b,rowNr) as

        (
            select a,'',1 from za
            union
            select t,substr(t,rowNr,1),rowNr+1 from q where rowNr <= length(t)
        )

select
     t,
     group_concat(b,'') b
     from q group by t;
;-- -. . -..- - / . -. - .-. -.--
with za as (select title from moz_places),

     q (t,b,rowNr) as

        (
            select a,'',1 from za
            union
            select t,substr(t,rowNr,1),rowNr+1 from q where rowNr <= length(t)
        )

select
     t,
     group_concat(b,'') b
     from q group by t;
;-- -. . -..- - / . -. - .-. -.--
with za as (select title a from moz_places),

     q (t,b,rowNr) as

        (
            select a,'',1 from za
            union
            select t,substr(t,rowNr,1),rowNr+1 from q where rowNr <= length(t)
        )

select
     t,
     group_concat(b,'') b
     from q group by t;
;-- -. . -..- - / . -. - .-. -.--
with za as (select title a from moz_places)

    select * from za
        cross join
        ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 ) qt
    cross join 
        (select ASCII_REF.number from ASCII_REF where ASCII_REF.number <= length(za.a)) ty
    where qt.char = substr(za.a,ty.number,1);
;-- -. . -..- - / . -. - .-. -.--
with za as (select title a from moz_places)

    select * from za
        cross join
        ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 ) qt
    cross join
        (select number from ASCII_REF) asc
        where qt.char = substr(za.a,number,1) and asc.number <= length(za.a)
order by a,number;
;-- -. . -..- - / . -. - .-. -.--
with za as (select title a from moz_places)

    select * from za
        cross join
        ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 ) qt
    cross join
        (select number from ASCII_REF) asc
        where qt.char = substr(za.a,number,1) and asc.number <= length(za.a);
;-- -. . -..- - / . -. - .-. -.--
with za as (select title a from moz_places)

select
     a,
     group_concat(char,'')
      
     from(select *from za
        cross join
        ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 ) qt
    cross join
        (select number from ASCII_REF) asc
        where qt.char = substr(za.a,number,1) and asc.number <= length(za.a)) group by a order by number;
;-- -. . -..- - / . -. - .-. -.--
with za as (select title a from moz_places)

select
     a,
     group_concat(char,'')

     from(select *from za
        cross join
        ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 ) qt
    cross join
        (select number from ASCII_REF) asc
        where qt.char = substr(za.a,number,1) and asc.number <= length(za.a) order by za.a,number) group by a;
;-- -. . -..- - / . -. - .-. -.--
select max(length(title)) from moz_places;
;-- -. . -..- - / . -. - .-. -.--
select * from
(select 'afdasvasd' p)
cross join ( select generate_series(1,3829) za ) z
where za <= length(p);
;-- -. . -..- - / . -. - .-. -.--
select * from
(select 'afdasvasd' p)
cross join (
    WITH RECURSIVE generate_series(value) AS (
  SELECT 1
  UNION ALL
  SELECT value+1 FROM generate_series
   WHERE value+1<=4000
)
    select value za from generate_series

) z
where za <= length(p);
;-- -. . -..- - / . -. - .-. -.--
select p, substr(p,za,1)
from (select *from
(select 'afdasvasd' p)
cross join (
    WITH RECURSIVE generate_series(value) AS (
  SELECT 1
  UNION ALL
  SELECT value+1 FROM generate_series
   WHERE value+1<=4000
)
    select value za from generate_series

) z
      where za <= length(p));
;-- -. . -..- - / . -. - .-. -.--
select p, substr(p,za,1) x
from (select *from
(select 'afdasvasd' p)
cross join (
    WITH RECURSIVE generate_series(value) AS (
  SELECT 1
  UNION ALL
  SELECT value+1 FROM generate_series
   WHERE value+1<=4000
)
    select value za from generate_series

) z
      where za <= length(p));
;-- -. . -..- - / . -. - .-. -.--
select p, group_concat(x,'') 
from
(select p, substr(p,za,1) x
from (select *from
(select 'afdasvasd' p)
cross join (
    WITH RECURSIVE generate_series(value) AS (
  SELECT 1
  UNION ALL
  SELECT value+1 FROM generate_series
   WHERE value+1<=4000
)
    select value za from generate_series

) z
      where za <= length(p)))
group by p;
;-- -. . -..- - / . -. - .-. -.--
select p, group_concat(x,'') t
from
(select p, substr(p,za,1) x
from (select *from
(select 'afdasvasd' p)
cross join (
    WITH RECURSIVE generate_series(value) AS (
  SELECT 1
  UNION ALL
  SELECT value+1 FROM generate_series
   WHERE value+1<=4000
)
    select value za from generate_series

) z
      where za <= length(p)))
group by p;
;-- -. . -..- - / . -. - .-. -.--
with input as (select title Title from moz_places)
,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 )
,Numbers as (select number from ASCII_REF where Number <= (select max(length(title)) from moz_places ))

    select
         Title,
         group_concat(char,'')
        from (          
            select * from (select Title, number, substr(Title,number,1) char
              from input
               cross join
            (
            WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 )
                select value number from generate_series
            )
            where number <= length(Title)) q 
                inner join AcceptedChars x 
                    on q.char = x.char  
            order by Title,number
            )

 group by Title;
;-- -. . -..- - / . -. - .-. -.--
with input as (select title Title from moz_places)
,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' )
,Numbers as (select number from ASCII_REF where Number <= (select max(length(title)) from moz_places ))

    select
         Title,
         group_concat(char,'')
        from (
            select * from (select Title, number, substr(Title,number,1) char
              from input
               cross join
            (
            WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 )
                select value number from generate_series
            )
            where number <= length(Title)) q
                inner join AcceptedChars x
                    on q.char = x.char
            order by Title,number
            )

 group by Title;
;-- -. . -..- - / . -. - .-. -.--
with input as (select title Title from moz_places)
,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' )
,Numbers as (select number from ASCII_REF where Number <= (select max(length(title)) from moz_places ))

    select
         Title,
         group_concat(char,'')
        from (
            select * from (select distinct Title, number, substr(Title,number,1) char
              from input
               cross join
            (
            WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 )
                select value number from generate_series
            )
            where number <= length(Title)) q
                inner join AcceptedChars x
                    on q.char = x.char
            order by Title,number
            )

 group by Title;
;-- -. . -..- - / . -. - .-. -.--
with input as (select title Title from moz_places)
,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' )
,Numbers as (select number from ASCII_REF where Number <= (select max(length(title)) from moz_places ))

    select
         Title,
         group_concat(char,'')
        from (
            select * from (select distinct Title, number, substr(Title,number,1) char
              from input
               cross join
            (
            WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 )
                select value number from generate_series
            )
            where number <= length(Title)) q
                inner join AcceptedChars x
                    on q.char = x.char
            order by Title,number
            )

 group by Title;
;-- -. . -..- - / . -. - .-. -.--
with input as (select title Title from moz_places)
,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
,Numbers as (select number from ASCII_REF where Number <= (select max(length(title)) from moz_places ))

    select
         Title,
         group_concat(char,'')
        from (
            select * from (select distinct Title, number, substr(Title,number,1) char
              from input
               cross join
            (
            WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 )
                select value number from generate_series
            )
            where number <= length(Title)) q
                inner join AcceptedChars x
                    on q.char = x.char
            )

 group by Title;
;-- -. . -..- - / . -. - .-. -.--
with input as (select title Title from moz_places)
,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
,Numbers as (select number from ASCII_REF where Number <= (select max(length(title)) from moz_places ))

    select
         Title,
         group_concat(char,'')
        from (
            select * from (select distinct Title, number, substr(Title,number,1) char
              from input
               cross join
            (
            WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 )
                select value number from generate_series
            )
            where number <= length(Title)) q
                inner join AcceptedChars x
                    on q.char = x.char
            order by number
            )

 group by Title;
;-- -. . -..- - / . -. - .-. -.--
with input as (select title Title from moz_places)
,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
,Numbers as (select number from ASCII_REF where Number <= (select max(length(title)) from moz_places ))

    select
        Title,
        group_concat(char,'')
        from (
    select Title, number, q.char, x.char
    from (select distinct Title, number, substr(Title,number,1) char
          from input cross join(WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
          where number <= length(Title)) q inner join AcceptedChars x on q.char = x.char
    order by Title, number, q.char, x.char
        )

 group by Title;
;-- -. . -..- - / . -. - .-. -.--
with
input as (select title, url from moz_places)
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url from (select
        Title,group_concat(char,'') z from (select Title, number, titleWithNrs.char
            from
                titleWithNrs
            inner join
                AcceptedChars
                    on titleWithNrs.char = AcceptedChars.char
    order by Title, number)group by Title)

inner join input on title = input.title;
;-- -. . -..- - / . -. - .-. -.--
with
input as (select title, url from moz_places)
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url from (select
        Title,group_concat(char,'') z from (select Title, number, titleWithNrs.char
            from
                titleWithNrs
            inner join
                AcceptedChars
                    on titleWithNrs.char = AcceptedChars.char
    order by Title, number)group by Title) w

inner join input on w.title = input.title;
;-- -. . -..- - / . -. - .-. -.--
tosplit as (select titlex from Trimmed)

     ,split(word, str) AS
         (SELECT '', titlex || ' ' from ToSplit
         UNION ALL
         SELECT substr(str, 0, instr(str, ' ')),
                substr(str, instr(str, ' ') + 1)
         FROM split WHERE str != '')
        ,mostCommon as(select split.word,count(*) c from split

     left outer join words on words.word = split.word
     left outer join NotSuitAbleSynonyms on split.word = NotSuitAbleSynonyms.word
    where coalesce(words.word,NotSuitAbleSynonyms.word)  IS NULL group by split.word
    order by c desc,split.word limit 92
    )
      select * from mostCommon ;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('-');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('XVIDEOSCOM');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('(');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES (')');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('*');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Pornhubcom');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('(Watch');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('YandexVideo');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('wwwnudevistacom');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('free)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('(XVIDEOS');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Or');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('XNXXCOM');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('wwwgooglecom');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('movies)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('upyoupor');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('millionresults');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('(Find');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('GIFS');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Images)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('high-quality');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Xvideos');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('()');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('embed');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('-youtube');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('video)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('extranslate');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Pt');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('scenes)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('videos)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('likesdp');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('youll');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Live');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('here)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('site)');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('youre');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Path');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Exile');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Trade');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('wwwimagefapcom');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('YouPorncom');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('likesup');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('History');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('K');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('While');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('likesgf');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('likesuk');
;-- -. . -..- - / . -. - .-. -.--
WITH
     tosplit as (select titlex from Trimmed)

     ,split(word, str) AS
         (SELECT '', titlex || ' ' from ToSplit
         UNION ALL
         SELECT substr(str, 0, instr(str, ' ')),
                substr(str, instr(str, ' ') + 1)
         FROM split WHERE str != '')
        ,mostCommon as(select split.word,count(*) c from split

     left outer join words on words.word = split.word
     left outer join NotSuitAbleSynonyms on split.word = NotSuitAbleSynonyms.word
    where coalesce(words.word,NotSuitAbleSynonyms.word)  IS NULL group by split.word
    order by c desc,split.word limit 92
    )
      select * from mostCommon;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Babes');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Get');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('gfrica');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Fun');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Channel');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('MY');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('SEX');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('likesk');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('vidtub');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Your');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('vidview');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('An');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('From');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Has');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Top');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('assgf');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('DE');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('De');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Le');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Movie');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Not');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('POR');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Pictures');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('Suck');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO NotSuitAbleSynonyms(word) VALUES ('THE');
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
CREATE VIEW wordInheretance as
 WITH
     tosplit as (select titlex from Trimmed)

     ,split(word, str) AS
         (SELECT '', titlex || ' ' from ToSplit
         UNION ALL
         SELECT substr(str, 0, instr(str, ' ')),
                substr(str, instr(str, ' ') + 1)
         FROM split WHERE str != '')
        ,mostCommon as(select split.word,count(*) c from split

     left outer join
            words on words.word = split.word
     left outer join
            NotSuitAbleSynonyms on split.word = NotSuitAbleSynonyms.word
    where
          coalesce(words.word,NotSuitAbleSynonyms.word)  IS NULL group by split.word
    order by c desc,split.word limit 92
    )

     ,FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
     Wordlist as (select word, sum(x) x from FilterWords group by word),
     ReAssosiateWords as (select url, titlex, word, x from Trimmed xyz
         cross join
         Wordlist abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
     clusterRelevantWords as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
     GroupByWordCluster as (select min(title) t, sum(xsum) xsum, words from clusterRelevantWords group by words),
     NrGroups as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from GroupByWordCluster),
     wordsCrossGroups as (select title, xsum, words, rnr, word, x from NrGroups xyz cross join Wordlist abs where instr(lower(xyz.words), lower(abs.word)) order by words, x desc)

      ,DefineInheritance as (select azx.rnr x,wordsCrossGroups.rnr y,length(max(wordsCrossGroups.words)) lRwo,length(group_concat(azx.word)) lsr from wordsCrossGroups azx LEFT OUTER JOIN wordsCrossGroups on (azx.word = wordsCrossGroups.word and azx.rnr <> wordsCrossGroups.rnr) and azx.xsum >= wordsCrossGroups.x and azx.xsum >= wordsCrossGroups.xsum where wordsCrossGroups.title is not null group by azx.title, wordsCrossGroups.title)
     ,groupByInheritance as (select referens.x, coalesce(referens.words, agroup.words) words, y from NrGroups agroup left outer join(select x, y, title, xsum, words, rnr from (select max(x) x, y from (select x, y from DefineInheritance where lRwo = lsr) group by y) referens inner join NrGroups on referens.x = NrGroups.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words) order by length(coalesce(referens.words, agroup.words)) desc)

select * from DefineInheritance;
;-- -. . -..- - / . -. - .-. -.--
select substr(url, length(url)), url
from urls
limit 5;
;-- -. . -..- - / . -. - .-. -.--
select title name, count(url) count
    from urls
    group by name
    order by count desc
    limit 500;
;-- -. . -..- - / . -. - .-. -.--
with distinctWordFromWords as (select distinct word from words)
    select
     y.word,
     x.word,
     count(x.word) over (partition by y.word) coun
    from
     distinctWordFromWords y
         cross join distinctWordFromWords x
    where
     y.word <> x.word
         and instr(y.word, x.word) > 0
    order by
     coun desc,
     y.word,
     x.word;
;-- -. . -..- - / . -. - .-. -.--
with 
     allTitlesWords as (select *
                        from moz_places
                                 cross join words
                        where instr(moz_places.title, word) > 0)
        ,
     wordCount as (select word, count(*) c from allTitlesWords group by word order by c desc, word)
    select
     word,
     synonyms from
     (select q.word word,
             z.word synonyms
      from (select word, c, title
            from (select word, c from wordOCc where c < 200)
                     cross join (select title from moz_places group by title) moz_places
            where instr(moz_places.title, word) > 0) q
               cross join words z
      where instr(q.title, z.word));
;-- -. . -..- - / . -. - .-. -.--
with MostComon as (select * from main.MostComon),     notSuitAbleSynonyms as (select word from notSuitAbleSynonyms)

select min(title), sum(xsum) xsum, words
from (select max(title) title, sum(x) xsum, group_concat(word) words
      from (select *
            from  MostComon
                     cross join
                 (WITH split(word, str) AS (
                     SELECT '', titlex || ' '
                     from (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                           from urls
                           where instr(title, '@ pornSOS.com') > 0
                           group by title
                          )
                     UNION ALL
                     SELECT substr(str, 0, instr(str, ' ')),
                            substr(str, instr(str, ' ') + 1)
                     FROM split
                     WHERE str != ''
                 ),
                       next as (SELECT count(split.word) x, split.word
                                FROM split
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by split.word)
                  select *
                  from next) abs
            where instr(lower(MostComon.title), abs.word) <> 0
            order by title, x
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
with MostComon as (select * from main.MostComon),     notSuitAbleSynonyms as (select word from notSuitAbleSynonyms)
select min(title), sum(xsum) xsum, words
from (select max(title) title, sum(x) xsum, group_concat(word) words
      from (select *
            from  MostComon
                     cross join
                 (WITH split(word, str) AS (
                     SELECT '', titlex || ' '
                     from (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                           from urls
                           where instr(title, '@ pornSOS.com') > 0
                           group by title
                          )
                     UNION ALL
                     SELECT substr(str, 0, instr(str, ' ')),
                            substr(str, instr(str, ' ') + 1)
                     FROM split
                     WHERE str != ''
                 ),
                       next as (SELECT count(split.word) x, split.word
                                FROM split
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by split.word)
                  select *
                  from next) abs
            where instr(lower(MostComon.title), abs.word) <> 0
            order by title, x
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
with MostComon as (select * from main.MostComon),     notSuitAbleSynonymz as (select word from notSuitAbleSynonyms)
select min(title), sum(xsum) xsum, words
from (select max(title) title, sum(x) xsum, group_concat(word) words
      from (select *
            from  MostComon
                     cross join
                 (WITH split(word, str) AS (
                     SELECT '', titlex || ' '
                     from (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                           from urls
                           where instr(title, '@ pornSOS.com') > 0
                           group by title
                          )
                     UNION ALL
                     SELECT substr(str, 0, instr(str, ' ')),
                            substr(str, instr(str, ' ') + 1)
                     FROM split
                     WHERE str != ''
                 ),
                       next as (SELECT count(split.word) x, split.word
                                FROM split
                                         left outer join notSuitAbleSynonymz on notSuitAbleSynonymz.word = split.word
                                where notSuitAbleSynonymz.word is null
                                group by split.word)
                  select *
                  from next) abs
            where instr(lower(MostComon.title), abs.word) <> 0
            order by title, x
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
with
     deNumbered as (select replaced name from DesignedDeNumberedRec)

,numberedWords as (
    select word,name src,ROW_NUMBER() over (partition by name ORDER BY length(word) desc) position from words cross join deNumbered where instr(name,word) > 0
    --union select * from NotSuitAbleSynonyms
)
 ,        split(wordx, str,src,itterations)
             AS (
             SELECT ' ','.','.',0

             UNION ALL
             select word,trim(replace(str,word,' ')),split.src,itterations+1 from
                split cross join
                    (
        select * from   DeNumbered
                      cross join
                      numberedWords
                 where split.src = numberedWords.src and split.itterations = numberedWords.position and instr(str,numberedWords.word) <> 0)
/*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'

                           )

select * from split
inner join deNumbered on split.src = deNumbered.name

order by itterations desc, wordx desc,str desc, src desc;
;-- -. . -..- - / . -. - .-. -.--
with
     deNumbered as (select replaced name from DesignedDeNumberedRec)

,numberedWords as (
    select word,name src,ROW_NUMBER() over (partition by name ORDER BY length(word) desc) position from words cross join deNumbered where instr(name,word) > 0
    --union select * from NotSuitAbleSynonyms
)
 ,        split(wordx, str,src,itterations)
             AS (
             SELECT ' ','.','.',0

             UNION ALL
             select word,trim(replace(str,word,' ')),split.src,itterations+1 from
                split cross join
                    (
        select * from   DeNumbered
                      cross join
                      numberedWords
                 where split.src = numberedWords.src and split.itterations = numberedWords.position and instr(split.str,numberedWords.word) <> 0)
/*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'

                           )

select * from split
inner join deNumbered on split.src = deNumbered.name

order by itterations desc, wordx desc,str desc, src desc;
;-- -. . -..- - / . -. - .-. -.--
with
     deNumbered as (select replaced name from DesignedDeNumberedRec)
    ,numberedWords as (select word,name src,ROW_NUMBER() over (partition by name ORDER BY length(word) desc) position from words cross join deNumbered where instr(name,word) > 0)     --union select * from NotSuitAbleSynonyms
    ,split(wordx, str,src,itterations)
             AS (
             SELECT ' ','.','.',0
             UNION ALL
             select word,trim(replace(str,word,' ')),split.src,itterations+1 from
            split cross join
            ( select * from   DeNumbered 
                cross join numberedWords
                 where 
                       split.src = numberedWords.src 
                   and split.itterations = numberedWords.position 
                   and instr(split.str,numberedWords.word) <> 0)
                           )

select * from split /*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'
inner join deNumbered on split.src = deNumbered.name

order by itterations desc, wordx desc,str desc, src desc;
;-- -. . -..- - / . -. - .-. -.--
with
     deNumbered as (select replaced name from DesignedDeNumberedRec)
    ,numberedWords as (select word,name src,ROW_NUMBER() over (partition by name ORDER BY length(word) desc) position from words cross join deNumbered where instr(name,word) > 0)     --union select * from NotSuitAbleSynonyms
    ,split(wordx, str,src,itterations)
             AS (
             SELECT ' ','.','.',0
             UNION ALL
             select word,trim(replace(str,word,' ')),split.src,itterations+1 from
            split cross join
            ( select * from   DeNumbered
                cross join numberedWords
                 where
                       split.src = numberedWords.src
                   and split.itterations = numberedWords.position
                --   and instr(split.str,numberedWords.word) <> 0
                )
                           )

select * from split /*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'
inner join deNumbered on split.src = deNumbered.name

order by itterations desc, wordx desc,str desc, src desc;
;-- -. . -..- - / . -. - .-. -.--
with
     deNumbered as (select replaced name from DesignedDeNumberedRec)
    ,numberedWords as (select word,name src,ROW_NUMBER() over (partition by name ORDER BY length(word) desc) position from words cross join deNumbered where instr(name,word) > 0)     --union select * from NotSuitAbleSynonyms
    ,split(wordx, str,src,itterations)
             AS (
             SELECT ' ','.','.',0
             UNION ALL
             select word,trim(replace(str,word,' ')),split.src,itterations+1 from
            split cross join
            ( select * from   DeNumbered
                cross join numberedWords
                 where
                       split.src = numberedWords.src
                   and split.itterations = numberedWords.position
                 and instr(split.str,numberedWords.word) <> 0
                )
                           )

select * from split /*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'
--inner join deNumbered on split.src = deNumbered.name

order by itterations desc, wordx desc,str desc, src desc;
;-- -. . -..- - / . -. - .-. -.--
with
     deNumbered as (select replaced name from DesignedDeNumberedRec)
    ,numberedWords as (select word,name src,ROW_NUMBER() over (partition by name ORDER BY length(word) desc) position from words cross join deNumbered where instr(name,word) > 0)     --union select * from NotSuitAbleSynonyms
    ,split(wordx, str,src,itterations)
             AS (
             SELECT ' ','.','.',0
             UNION ALL
             select word,trim(replace(str,word,' ')),split.src,itterations+1 from
            split cross join
            ( select * from   DeNumbered
                cross join numberedWords
                 where
                       split.src = numberedWords.src
                   and split.itterations = numberedWords.position
                 --and instr(split.str,numberedWords.word) <> 0
                )
                           )

select * from split /*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'
--inner join deNumbered on split.src = deNumbered.name

order by itterations desc, wordx desc,str desc, src desc;
;-- -. . -..- - / . -. - .-. -.--
with
     deNumbered as (select replaced name from DesignedDeNumberedRec)
    ,numberedWords as (select word,name src,ROW_NUMBER() over (partition by name ORDER BY length(word) desc) position from words cross join deNumbered where instr(name,word) > 0)     --union select * from NotSuitAbleSynonyms
    ,split(wordx, str,src,itterations)
             AS (
             SELECT ' ','.','.',0
             UNION ALL
             select word,trim(replace(str,word,' ')),split.src,itterations+1 from
            split cross join
            ( select * from   DeNumbered
                cross join numberedWords
                 where
                       split.src = numberedWords.src
                   and split.itterations = numberedWords.position
                 --and instr(split.str,numberedWords.word) <> 0
                )
                           )

select * from split /*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'
--inner join deNumbered on split.src = deNumbered.name

order by itterations desc, wordx desc,str desc,;
;-- -. . -..- - / . -. - .-. -.--
with
     deNumbered as (select replaced name from DesignedDeNumberedRec)
    ,numberedWords as (select word,name src,ROW_NUMBER() over (partition by name ORDER BY length(word) desc) position from words cross join deNumbered where instr(name,word) > 0)     --union select * from NotSuitAbleSynonyms
    ,split(wordx, str,src,itterations)
             AS (
             SELECT ' ','.','.',0
             UNION ALL
             select word,trim(replace(str,word,' ')),split.src,itterations+1 from
            split cross join
            ( select * from   DeNumbered
                cross join numberedWords
                 where
                       split.src = numberedWords.src
                   and split.itterations = numberedWords.position
                 --and instr(split.str,numberedWords.word) <> 0
                )
                           )

select * from split /*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'
--inner join deNumbered on split.src = deNumbered.name

order by itterations desc, wordx desc,str desc;
;-- -. . -..- - / . -. - .-. -.--
with
     deNumbered as (select replaced name from DesignedDeNumberedRec)
    ,numberedWords as (select word,name src,ROW_NUMBER() over (partition by name ORDER BY length(word) desc) position from words cross join deNumbered where instr(name,word) > 0)     --union select * from NotSuitAbleSynonyms
    ,split(wordx, str,src,itterations)
             AS (
             SELECT ' ','.','.',0
             UNION ALL
             select word,trim(replace(str,word,' ')),q.src,itterations+1 from
            split cross join
            (select name, word, src, position
             from DeNumbered
                cross join numberedWords
                 where
                       split.src = numberedWords.src
                   and split.itterations = numberedWords.position
                 --and instr(split.str,numberedWords.word) <> 0
                ) q
                           )

select * from split /*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'
--inner join deNumbered on split.src = deNumbered.name

order by itterations desc, wordx desc,str desc;
;-- -. . -..- - / . -. - .-. -.--
with
     deNumbered as (select replaced name from DesignedDeNumberedRec)
    ,numberedWords as (select word,name src,ROW_NUMBER() over (partition by name ORDER BY length(word) desc) position from words cross join deNumbered where instr(name,word) > 0)     --union select * from NotSuitAbleSynonyms
    ,split(wordx, str,src,itterations)
             AS (
             SELECT ' ','.','.',0
             UNION ALL
             select word,trim(replace(str,word,' ')),q.src,itterations+1 from
            split cross join
            (select name, word, src, position
             from DeNumbered
                cross join numberedWords
                 where
                       --split.src = numberedWords.src and 
                       split.itterations = numberedWords.position
                 --and instr(split.str,numberedWords.word) <> 0
                ) q
                           )

select * from split /*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'
--inner join deNumbered on split.src = deNumbered.name

order by itterations desc, wordx desc,str desc;
;-- -. . -..- - / . -. - .-. -.--
with
     deNumbered as (select replaced name from DesignedDeNumberedRec)
    ,numberedWords as (select word,name src,ROW_NUMBER() over (partition by name ORDER BY length(word) desc) position from words cross join deNumbered where instr(name,word) > 0)     --union select * from NotSuitAbleSynonyms
    ,split(wordx, str,src,itterations)
             AS (
             SELECT ' ','.','.',0
             UNION ALL
             select word,trim(replace(str,word,' ')),q.src,itterations+1 from
            split cross join
            (select name, word, src, position
             from DeNumbered
                cross join numberedWords
                 --where
                       --split.src = numberedWords.src and
                   --    split.itterations = numberedWords.position
                 --and instr(split.str,numberedWords.word) <> 0
                ) q
                           )

select * from split /*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'
--inner join deNumbered on split.src = deNumbered.name

order by itterations desc, wordx desc,str desc;
;-- -. . -..- - / . -. - .-. -.--
with DeNumbered as (select url, substr(url,length('https://gfycat.com//'),length(url)) name from moz_places where instr(url,'gfycat') > 0
    order by length(title) desc
),
isLower as (
    select
     oneTo100.number position,
     UNICODE(substr(DeNumbered.name,oneTo100.number,1)) >= 97 isLower,
     DeNumbered.name
      from ( select * from oneTo100 where number <= (select max(length(name)) from DeNumbered) ) oneTo100 cross join DeNumbered
    where length(DeNumbered.name) >= oneTo100.number and number <> 0)
   ,srcx as (select distinct position, name
         from (select position, name
               from isLower where
     isLower = 0
               union
               select
    length(name)+1, name from isLower
             where
     isLower = 0)

 order by name limit 6)

   ,split(nr,str,src,x,y)
     AS (
     SELECT 0,
        '', name,-1,0
     from srcx
     UNION ALL
     SELECT position,substr(src, nr, (position-nr)),src,nr, (position-nr)
     FROM split
         inner join
         srcx a
             on a.name = split.src and nr < position and x < nr

     )

select distinct nr position, str, src,x nr,y length from (select name from srcx group by name) src inner join split on src.name = split.src;
;-- -. . -..- - / . -. - .-. -.--
WITH
    moreInitial as (select url,lower(title) title from moz_places),
     initial as (
         select min(x.url) url,
                x.title titlex
                ,count(*) c
                from
                 moreInitial x
     left outer join MostComon on x.title = MostComon.title where MostComon.title is null

     group by titlex
         order by c desc,x.title
        ),

    Trimmed as (select url,
        replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
        replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(titlex

, '3d', ' '), '2b', ' '), '2520', ' ')
, '|', ' '), '{', ' '), '<', ' '), '_', ' ')
, '?', ' '), '=', ' '), ',', ' '), '/', ' '), '.', ' '), '+', ' '), ':', ' '), '*', ' '), '''', ' ')
, '&', ' '), '%', ' '), '#', ' '), '"', ' '), '!', ' '), ')', ' '), '(', ' '), '-', ' ') titlex
    from initial)    , tosplit as (select titlex from Trimmed)

     ,split(word, str) AS
         (SELECT '', titlex || ' ' from ToSplit
         UNION ALL
         SELECT substr(str, 0, instr(str, ' ')),
                substr(str, instr(str, ' ') + 1)
         FROM split WHERE str != '')
,mostCommon as(
 select split.word
  ,count(*) c
  from split

     left outer join words on words.word = split.word
     left outer join NotSuitAbleSynonyms on split.word = NotSuitAbleSynonyms.word
    where coalesce(words.word,NotSuitAbleSynonyms.word)  IS NULL group by split.word
    order by c desc
    )
select * from mostCommon;
;-- -. . -..- - / . -. - .-. -.--
with
  q as (select * from scrubb_names)

       , q1 as (select title, max(url) url, count(*) c from q where length(title) > 1 group by title order by c desc,length (title) desc limit 5000)
       , z as (select title, count(*) c from q where length(title) > 1 group by title order by c desc,length (title) desc limit 5000), r as (select z.title, t.title key from z cross join z t where instr(z.title, t.title) > 0 and z.title <> t.title)
       , teta as (select coalesce(r.title, z.title) title, z.c from z left outer join r on r.key = z.title)

    select teta.title, max(url) url, sum(q.c) c from teta inner join q1 q on teta.title = q.title group by teta.title order by c desc,teta.title desc;
;-- -. . -..- - / . -. - .-. -.--
WITH MostCommonTitles AS (select id,urls.url,title,rev_host,visit_count,hidden,typed,favicon_id,frecency,TRIAL882 from urls inner join MostComon using (title)) --drop view "(maintain)dupesReoccuringName";
         ,split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url from
                        (select urls.url from urls inner join MostComon using (title))
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')),
                    substr(str, instr(str, '/') + 1),
                    length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ),                                                   
         q as (SELECT split.word,src FROM split where nr = 0),
         qz as (select distinct MostCommonTitles.*from MostCommonTitles 
             inner join q on q.src = MostCommonTitles.url where instr(MostCommonTitles.title,q.word) = 0)

--c,
    select title,url,id from qz;
;-- -. . -..- - / . -. - .-. -.--
with g as (select title from urls)
select *,
       ifnull(instr(title, ' on Aliexpress.com') + instr(title, '–christoffer.broback@edu.gotland.se') +
              instr(title, 'Aliexpress.com') + instr(title, 'Welcome to Microsoft To-Do'), 0)                  a,
       case
           when instr(title, 'Atom ') > 0 then instr(title, 'Atom Discussion') + instr(title, 'Atom Packages Directory')
           else 0 end                                                                                          b,
       case
           when instr(title, ' . ') > 0 then instr(title, '. VipTube.com') + instr(title, ' . WinPorn.com')
           else 0 end                                                                                          ba,
       case
           when instr(title, ' / ') > 0 then instr(title, ' / Analdin.com') + instr(title, ' / Hotmovs.com') +
                                             instr(title, 'pornSOS / ')
           else 0 end                                                                                          bb,
       case when instr(title, ' @ ') > 0 then instr(title, ' @ DrTuber') + instr(title, ' @ Nuvid') else 0 end bc,
       case
           when instr(title, '- ') > 0 then instr(title, '- 1177 Vårdguidens e-tjänster') +
                                            instr(title, '- Allrecipes.com') + instr(title, ' - AlternativeTo.net') +
                                            instr(title, ' - Apps on Google Play') +
                                            instr(title, '- Arbetsförmedlingen') + instr(title, '- at HD Sex Org') +
                                            instr(title, '- Auth0') + instr(title, '- Bing') +
                                            instr(title, '- Blocket') + instr(title, '- CDON.COM') +
                                            instr(title, '- christoffer.broback@gmail.com - Gmail') +
                                            instr(title, '- Chrome Web Store') + instr(title, '- CodePlex Archive') +
                                            instr(title, '- Community - Diablo III') +
                                            instr(title, '- Convert Last.fm loved tracks to Spotify playlists.') +
                                            instr(title, '- Convert your music playlists') +
                                            instr(title, '- D3 Max Stats') + instr(title, '- Deckbox') +
                                            instr(title, '- Diablo III') + instr(title, '- Diigo') +
                                            instr(title, '- Discover new music on Spotify') +
                                            instr(title, '- Dropbox') + instr(title, '- Extensions') +
                                            instr(title, '- Filmtipset') + instr(title, '- Food.com') +
                                            instr(title, '- Försäkringskassan') +
                                            instr(title, '- Game Guide - Diablo III') + instr(title,
                                                                                              '- Gameplay Help and Discussion - The Guide to Loot Filters - Path of Exile') +
                                            instr(title,
                                                  '- Global Online Shopping for Apparel, Phones, Computers, Electronics, Fashion and more') +
                                            instr(title, '- Google Accounts') + instr(title, '- Google Docs') +
                                            instr(title, '- Google Drive') + instr(title, '- Google Maps') +
                                            instr(title, '- Google My Maps') + instr(title, '- Google Photos') +
                                            instr(title, '- Google Photos Help') + instr(title, '- Google Play Music') +
                                            instr(title, '- Google Project Hosting') + instr(title, '- Google Search') +
                                            instr(title, '- Google Slides') + instr(title, '- Google+') +
                                            instr(title, '- Hack a Day') + instr(title, '- HD21.com') +
                                            instr(title, '- IcePorn.com') + instr(title, '- IFTTT') +
                                            instr(title, '- IMDb') + instr(title, '- ITNEXT') +
                                            instr(title, '- Jämför priser och omdömen på Prisjakt') +
                                            instr(title, '- KeezMovies.com') + instr(title, '- Komplett.se') +
                                            instr(title,
                                                  '- Listen to free music and watch videos with the largest music catalogue online') +
                                            instr(title, '- Long-term storage for Google Code Project Hosting.') +
                                            instr(title, '- Messages') + instr(title, '- Microsoft Graph') +
                                            instr(title, '- Microsoft OneNote Online') + instr(title, '- Mod DB') +
                                            instr(title, '- More Videos On Sexycams8 Org') +
                                            instr(title, '- Mp3tag Forums') + instr(title, '- Mylust.com Video') +
                                            instr(title, '- O '' Reilly Media') + instr(title, '- OneDrive') +
                                            instr(title, '- OneNote Dev Center') + instr(title,
                                                                                         '- Online Shopping for Popular Electronics, Fashion, Home & Garden, Toys & Sports, Automobiles and More.') +
                                            instr(title, '- Path of Exile') + instr(title, '- Path of Exile Wiki') +
                                            instr(title, '- Path of POE') + instr(title, '- poe.ninja') +
                                            instr(title, '- Pornburst.xxx') + instr(title, '- Pornhub.com') +
                                            instr(title, '- PornID XXX') + instr(title, '- Prisjakt') +
                                            instr(title, '- ProPorn.com') +
                                            instr(title, '- Put multiple cloud drives into one.') +
                                            instr(title, '- PyImageSearch') + instr(title, '- Rate Your Music') +
                                            instr(title, '- Region Gotland') + instr(title, '- Roliga Prylar') +
                                            instr(title, '- Softpedia') + instr(title, '- Spellhold Studios') +
                                            instr(title, '- Spotify') + instr(title, '- Sök på Google') +
                                            instr(title, '- TechRepublic') +
                                            instr(title, '- TED Telse 0 end ers Electronic Daily') +
                                            instr(title, '- The Portable Freeware Collection') +
                                            instr(title, '- Thomann Cyberstore Sverige') +
                                            instr(title, '- Tradera.com') + instr(title, '- Tube8') +
                                            instr(title, '- Tubemonsoon.com') + instr(title, '- Tubeon.com') +
                                            instr(title, '- Web Player') + instr(title, '- Wunderlist') +
                                            instr(title, '- WWW.XT8.BIZ') + instr(title, '- YepTube.com') +
                                            instr(title, '- YouTube') + instr(title, '- ÅF') +
                                            instr(title, '- Тяжелая музыка на DarkSound.ru') +
                                            instr(title, 'Nexus - mods and community')
           else 0 end                                                                                          bd,
       case
           when instr(title, '-') > 0 then
                   instr(title, '-3animalsextube.com-pornhub.com-youporn.com-xvideos.com-dogsextube.org') +
                   instr(title, '-Arcanum') + instr(title, '-ai.de PerAutomatik') + instr(title, '-bbw-porn.com') +
                   instr(title, '-europe.com') + instr(title, '-foundry.com likes') + instr(title, '-hentai.org') +
                   instr(title, '-my.sharepoint.com') + instr(title, '-pinup.com')
           else 0 end                                                                                          ca,
       case
           when instr(title, ': ') > 0 then
                   instr(title, ': Call of Pripyat Mods: 100 Mbps Fast File Download Servers') +
                   instr(title, ': Dropbox') + instr(title, ': Flowbar') +
                   instr(title, ': Help us improve Google Translate!') +
                   instr(title, ': JetBrains Toolbox subscription') +
                   instr(title, ': Manage Multiple Cloud Storage Accounts') + instr(title, ': Music for everyone') +
                   instr(title, ': My AliExpress') + instr(title, ': brancher') +
                   instr(title, ': the front page of the internet')
           else 0 end                                                                                          d,
       case
           when instr(title, '::') > 0 then instr(title, ':: What.CD\') + instr(title, ' :: Terra-Arcanum') +
                                            instr(title, ' :: Youporn ')
           else 0 end                                                                                          e,
       case
           when instr(title, '| ') > 0 then instr(title, '| Alexnld.com') + instr(title, '| Alibaba Group') +
                                            instr(title, '| ApexSQL') + instr(title, '| ArgusSearch WebPortal') +
                                            instr(title, '| Bandcamp') + instr(title, '| BlocksCAD') +
                                            instr(title, '| Bläddra bland Origin') + instr(title, '| Brancher') +
                                            instr(title, '| Diablo 3 DPS & EHP Calculator') +
                                            instr(title, '| Elektroniq') + instr(title, '| Elfa Distrelec Sweden') +
                                            instr(title, '| Food Network UK') + instr(title, '| GayBeast.com') +
                                            instr(title, '| GitHub Developer Guide') + instr(title, '| JavaWorld') +
                                            instr(title, '| Kjell.com') + instr(title, '| Kommunal') +
                                            instr(title, '| Last.fm') + instr(title, '| LinkedIn') +
                                            instr(title, '| Microsoft Docs') + instr(title, '| Microsoft Flow') +
                                            instr(title,
                                                  '| Move files and automate backup transfers for Dropbox, Box, Google Drive, FTP, SFTP, Amazon S3, SharePoint, MySQL, and lots more') +
                                            instr(title, '| MultCloud') + instr(title, '| Origin-spel') +
                                            instr(title, '| Pearltrees') + instr(title, '| Seagate Support UK') +
                                            instr(title, '| Simple Online Collaboration') + instr(title, '| Steward') +
                                            instr(title, '| Storetec') + instr(title, '| Trello') +
                                            instr(title, '| TurboHUD') + instr(title, '| TXXX.com - Free porn videos') +
                                            instr(title, '| Zapier ')
           else 0 end                                                                                          f,
       case when instr(title, '» ') > 0 then instr(title, '» Filmtipset') else 0 end                           g,
       case
           when instr(title, '– ') > 0 then instr(title, '– Figma') + instr(title,
                                                                            '– Free listening, videos, concerts, stats and pictures at Last.fm') +
                                            instr(title, '– Google accounts') + instr(title, '– Graph Commons') +
                                            instr(title, '– Facebook-sökning') +
                                            instr(title, '– price comparison AliExpress') + instr(title, '– Last.fm') +
                                            instr(title, '– Office') + instr(title, '– Users at Last.fm')
           else 0 end                                                                                          h
from g

where ba + bb + bc + bd + a + b + ca + d + e + f + g + h = 0;
;-- -. . -..- - / . -. - .-. -.--
with g as (select title from urls)
select *,
       ifnull(instr(title, ' on Aliexpress.com') + instr(title, '–christoffer.broback@edu.gotland.se') +
              instr(title, 'Aliexpress.com') + instr(title, 'Welcome to Microsoft To-Do'), 0)                  a,
       case
           when instr(title, 'Atom ') > 0 then instr(title, 'Atom Discussion') + instr(title, 'Atom Packages Directory')
           else 0 end                                                                                          b,
       case
           when instr(title, ' . ') > 0 then instr(title, '. VipTube.com') + instr(title, ' . WinPorn.com')
           else 0 end                                                                                          ba,
       case
           when instr(title, ' / ') > 0 then instr(title, ' / Analdin.com') + instr(title, ' / Hotmovs.com') +
                                             instr(title, 'pornSOS / ')
           else 0 end                                                                                          bb,
       case when instr(title, ' @ ') > 0 then instr(title, ' @ DrTuber') + instr(title, ' @ Nuvid') else 0 end bc,
       case
           when instr(title, '- ') > 0 then instr(title, '- 1177 Vårdguidens e-tjänster') +
                                            instr(title, '- Allrecipes.com') + instr(title, ' - AlternativeTo.net') +
                                            instr(title, ' - Apps on Google Play') +
                                            instr(title, '- Arbetsförmedlingen') + instr(title, '- at HD Sex Org') +
                                            instr(title, '- Auth0') + instr(title, '- Bing') +
                                            instr(title, '- Blocket') + instr(title, '- CDON.COM') +
                                            instr(title, '- christoffer.broback@gmail.com - Gmail') +
                                            instr(title, '- Chrome Web Store') + instr(title, '- CodePlex Archive') +
                                            instr(title, '- Community - Diablo III') +
                                            instr(title, '- Convert Last.fm loved tracks to Spotify playlists.') +
                                            instr(title, '- Convert your music playlists') +
                                            instr(title, '- D3 Max Stats') + instr(title, '- Deckbox') +
                                            instr(title, '- Diablo III') + instr(title, '- Diigo') +
                                            instr(title, '- Discover new music on Spotify') +
                                            instr(title, '- Dropbox') + instr(title, '- Extensions') +
                                            instr(title, '- Filmtipset') + instr(title, '- Food.com') +
                                            instr(title, '- Försäkringskassan') +
                                            instr(title, '- Game Guide - Diablo III') + instr(title,
                                                                                              '- Gameplay Help and Discussion - The Guide to Loot Filters - Path of Exile') +
                                            instr(title,
                                                  '- Global Online Shopping for Apparel, Phones, Computers, Electronics, Fashion and more') +
                                            instr(title, '- Google Accounts') + instr(title, '- Google Docs') +
                                            instr(title, '- Google Drive') + instr(title, '- Google Maps') +
                                            instr(title, '- Google My Maps') + instr(title, '- Google Photos') +
                                            instr(title, '- Google Photos Help') + instr(title, '- Google Play Music') +
                                            instr(title, '- Google Project Hosting') + instr(title, '- Google Search') +
                                            instr(title, '- Google Slides') + instr(title, '- Google+') +
                                            instr(title, '- Hack a Day') + instr(title, '- HD21.com') +
                                            instr(title, '- IcePorn.com') + instr(title, '- IFTTT') +
                                            instr(title, '- IMDb') + instr(title, '- ITNEXT') +
                                            instr(title, '- Jämför priser och omdömen på Prisjakt') +
                                            instr(title, '- KeezMovies.com') + instr(title, '- Komplett.se') +
                                            instr(title,
                                                  '- Listen to free music and watch videos with the largest music catalogue online') +
                                            instr(title, '- Long-term storage for Google Code Project Hosting.') +
                                            instr(title, '- Messages') + instr(title, '- Microsoft Graph') +
                                            instr(title, '- Microsoft OneNote Online') + instr(title, '- Mod DB') +
                                            instr(title, '- More Videos On Sexycams8 Org') +
                                            instr(title, '- Mp3tag Forums') + instr(title, '- Mylust.com Video') +
                                            instr(title, '- O '' Reilly Media') + instr(title, '- OneDrive') +
                                            instr(title, '- OneNote Dev Center') + instr(title,
                                                                                         '- Online Shopping for Popular Electronics, Fashion, Home & Garden, Toys & Sports, Automobiles and More.') +
                                            instr(title, '- Path of Exile') + instr(title, '- Path of Exile Wiki') +
                                            instr(title, '- Path of POE') + instr(title, '- poe.ninja') +
                                            instr(title, '- Pornburst.xxx') + instr(title, '- Pornhub.com') +
                                            instr(title, '- PornID XXX') + instr(title, '- Prisjakt') +
                                            instr(title, '- ProPorn.com') +
                                            instr(title, '- Put multiple cloud drives into one.') +
                                            instr(title, '- PyImageSearch') + instr(title, '- Rate Your Music') +
                                            instr(title, '- Region Gotland') + instr(title, '- Roliga Prylar') +
                                            instr(title, '- Softpedia') + instr(title, '- Spellhold Studios') +
                                            instr(title, '- Spotify') + instr(title, '- Sök på Google') +
                                            instr(title, '- TechRepublic') +
                                            instr(title, '- TED Telse 0 end ers Electronic Daily') +
                                            instr(title, '- The Portable Freeware Collection') +
                                            instr(title, '- Thomann Cyberstore Sverige') +
                                            instr(title, '- Tradera.com') + instr(title, '- Tube8') +
                                            instr(title, '- Tubemonsoon.com') + instr(title, '- Tubeon.com') +
                                            instr(title, '- Web Player') + instr(title, '- Wunderlist') +
                                            instr(title, '- WWW.XT8.BIZ') + instr(title, '- YepTube.com') +
                                            instr(title, '- YouTube') + instr(title, '- ÅF') +
                                            instr(title, '- Тяжелая музыка на DarkSound.ru') +
                                            instr(title, 'Nexus - mods and community')
           else 0 end                                                                                          bd,
       case
           when instr(title, '-') > 0 then
                   instr(title, '-3animalsextube.com-pornhub.com-youporn.com-xvideos.com-dogsextube.org') +
                   instr(title, '-Arcanum') + instr(title, '-ai.de PerAutomatik') + instr(title, '-bbw-porn.com') +
                   instr(title, '-europe.com') + instr(title, '-foundry.com likes') + instr(title, '-hentai.org') +
                   instr(title, '-my.sharepoint.com') + instr(title, '-pinup.com')
           else 0 end                                                                                          ca,
       case
           when instr(title, ': ') > 0 then
                   instr(title, ': Call of Pripyat Mods: 100 Mbps Fast File Download Servers') +
                   instr(title, ': Dropbox') + instr(title, ': Flowbar') +
                   instr(title, ': Help us improve Google Translate!') +
                   instr(title, ': JetBrains Toolbox subscription') +
                   instr(title, ': Manage Multiple Cloud Storage Accounts') + instr(title, ': Music for everyone') +
                   instr(title, ': My AliExpress') + instr(title, ': brancher') +
                   instr(title, ': the front page of the internet')
           else 0 end                                                                                          d,
       case
           when instr(title, '::') > 0 then instr(title, ':: What.CD\') + instr(title, ' :: Terra-Arcanum') +
                                            instr(title, ' :: Youporn ')
           else 0 end                                                                                          e,
       case
           when instr(title, '| ') > 0 then instr(title, '| Alexnld.com') + instr(title, '| Alibaba Group') +
                                            instr(title, '| ApexSQL') + instr(title, '| ArgusSearch WebPortal') +
                                            instr(title, '| Bandcamp') + instr(title, '| BlocksCAD') +
                                            instr(title, '| Bläddra bland Origin') + instr(title, '| Brancher') +
                                            instr(title, '| Diablo 3 DPS & EHP Calculator') +
                                            instr(title, '| Elektroniq') + instr(title, '| Elfa Distrelec Sweden') +
                                            instr(title, '| Food Network UK') + instr(title, '| GayBeast.com') +
                                            instr(title, '| GitHub Developer Guide') + instr(title, '| JavaWorld') +
                                            instr(title, '| Kjell.com') + instr(title, '| Kommunal') +
                                            instr(title, '| Last.fm') + instr(title, '| LinkedIn') +
                                            instr(title, '| Microsoft Docs') + instr(title, '| Microsoft Flow') +
                                            instr(title,
                                                  '| Move files and automate backup transfers for Dropbox, Box, Google Drive, FTP, SFTP, Amazon S3, SharePoint, MySQL, and lots more') +
                                            instr(title, '| MultCloud') + instr(title, '| Origin-spel') +
                                            instr(title, '| Pearltrees') + instr(title, '| Seagate Support UK') +
                                            instr(title, '| Simple Online Collaboration') + instr(title, '| Steward') +
                                            instr(title, '| Storetec') + instr(title, '| Trello') +
                                            instr(title, '| TurboHUD') + instr(title, '| TXXX.com - Free porn videos') +
                                            instr(title, '| Zapier ')
           else 0 end                                                                                          f,
       case when instr(title, '» ') > 0 then instr(title, '» Filmtipset') else 0 end                           g,
       case
           when instr(title, '– ') > 0 then instr(title, '– Figma') + instr(title,
                                                                            '– Free listening, videos, concerts, stats and pictures at Last.fm') +
                                            instr(title, '– Google accounts') + instr(title, '– Graph Commons') +
                                            instr(title, '– Facebook-sökning') +
                                            instr(title, '– price comparison AliExpress') + instr(title, '– Last.fm') +
                                            instr(title, '– Office') + instr(title, '– Users at Last.fm')
           else 0 end                                                                                          h
from g

where ba + bb + bc + bd + a + b + ca + d + e + f + g + h != 0;
;-- -. . -..- - / . -. - .-. -.--
select title from urls order by length(title) desc limit 100;
;-- -. . -..- - / . -. - .-. -.--
select length(title),title from urls order by length(title) desc limit 100;
;-- -. . -..- - / . -. - .-. -.--
select url,title from urls q
    where not ( title in (select title from (select count(url) c,title from q group by title) where c = 1));
;-- -. . -..- - / . -. - .-. -.--
with q as (select url,title from urls)
    ,qgroup as (select count(url) c,title from q group by title)
    , c as (select title from qgroup where c = 1) 
    select * from q left join c using (title) where c.title is null;
;-- -. . -..- - / . -. - .-. -.--
select distinct url from urls where title is null;
;-- -. . -..- - / . -. - .-. -.--
with get_synonyms as (select word from get_synonyms)
    ,q as (select word, count(*) c from get_synonyms group by word)

    ,t as (
        select q.word from  q left join words using (word) where words.word is null
                    order by c desc
                        limit 195)


    select word from q
        where c <= 2
            order by word, c desc;
;-- -. . -..- - / . -. - .-. -.--
with get_synonyms as (select name word from main.get_synonyms)
    ,q as (select word, count(*) c from get_synonyms group by word)

    ,t as (
        select q.word from  q left join words using (word) where words.word is null
                    order by c desc
                        limit 195)


    select word from q
        where c <= 2
            order by word, c desc;
;-- -. . -..- - / . -. - .-. -.--
with
deNumbered as (select title name, q from DesignedDeNumberedRec)

         ,
         split(word, str,src)
             AS (
             SELECT '',
                name || ' ', name
             from DeNumbered
             UNION ALL
             SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1),src
             FROM split
             WHERE str != '')

        /*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'


   select * from (SELECT distinct
           split.word,
                   split.src,
                    q.w
                    from split
                    left outer join NotSuitAbleSynonyms on split.word = NotSuitAbleSynonyms.word
                    inner join (select count()w, word from split x group by word) q on q.word = split.word
                    where NotSuitAbleSynonyms.word is null) where w > 1
                    order by src,w;
;-- -. . -..- - / . -. - .-. -.--
with
deNumbered as (select replaced name from DesignedDeNumberedRec)

         ,
         split(word, str,src)
             AS (
             SELECT '',
                name || ' ', name
             from DeNumbered
             UNION ALL
             SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1),src
             FROM split
             WHERE str != '')

        /*--where title like '%' || 'maid' || '%'--and title not like '%' || 'bbw' || '%'*/--'bbw'--'pee'--'curly'--'bbw'--'pee'--'curly'--'%thai%' and note--and title not like '%swedish%'--limit 5-- where-- title like '%' || 'vintage' || '%'--title like '%anal%' And title like '%cream%'-- '%horse%' or title like '% dog %' or title like '%beastiality%' or title like '%beast%' or title like '%bestiality%' or title like '%zoo%' or title like '%knot%' or title like '%pet%' or title like '%k9%' or title like '%pony%' or title like '%animal%' or title like '%mare%' or title like '%donkey%'


   select * from (SELECT distinct
           split.word,
                   split.src,
                    q.w
                    from split
                    left outer join NotSuitAbleSynonyms on split.word = NotSuitAbleSynonyms.word
                    inner join (select count()w, word from split x group by word) q on q.word = split.word
                    where NotSuitAbleSynonyms.word is null) where w > 1
                    order by src,w;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW if not exists "(maintain)dupesReoccuringName" as WITH MostCommonTitles AS (select id,urls.url,title,rev_host,visit_count,hidden,typed,favicon_id,frecency,TRIAL882 from urls inner join MostComon using (title)) --drop view "(maintain)dupesReoccuringName";
         ,split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url from
                        (select urls.url from urls inner join MostComon using (title))
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')),
                    substr(str, instr(str, '/') + 1),
                    length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ),
         q as (SELECT split.word,src FROM split where nr = 0),
         qz as (select distinct MostCommonTitles.*from MostCommonTitles
             inner join q on q.src = MostCommonTitles.url where instr(MostCommonTitles.title,q.word) = 0)

--c,
    select title,url,id from qz;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW if not exists "(maintain)dupesReoccuringName" as WITH MostCommonTitles
    AS (select id,urls.url,title,rev_host,visit_count,hidden,typed,favicon_id,frecency,TRIAL882
    from urls inner join MostComon using (title)) --drop view "(maintain)dupesReoccuringName";
         ,split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url from
                        MostCommonTitles
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')),
                    substr(str, instr(str, '/') + 1),
                    length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ),
         q as (SELECT split.word,src FROM split 
         --where nr = 0
         ),
         qz as (select distinct MostCommonTitles.*from MostCommonTitles
             inner join q on q.src = MostCommonTitles.url where instr(MostCommonTitles.title,q.word) = 0)

--c,
    select title,url,id from qz;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW if not exists "(maintain)dupesReoccuringName" as WITH MostCommonTitles
    AS (select id,urls.url,title,rev_host,visit_count,hidden,typed,favicon_id,frecency,TRIAL882
    from urls inner join MostComon using (title)) --drop view "(maintain)dupesReoccuringName";
         ,split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url from MostCommonTitles
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ),
         q as (SELECT split.word,src FROM split
         --where nr = 0
         ),
         qz as (select distinct MostCommonTitles.*from MostCommonTitles
             cross join q on
         --        q.src = MostCommonTitles.url 
         where instr(MostCommonTitles.title,q.word) = 0)

--c,
    select title,url,id from qz;
;-- -. . -..- - / . -. - .-. -.--
drop view if exists "(maintain)dupesReoccuringName";
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW if not exists "(maintain)dupesReoccuringName" as WITH MostCommonTitles
    AS (select id,urls.url,title,rev_host,visit_count,hidden,typed,favicon_id,frecency,TRIAL882
    from urls inner join MostComon using (title)) --drop view "(maintain)dupesReoccuringName";
         ,split(word, str,nr,src) AS (
                    SELECT '', url || '/', length(url),url from MostCommonTitles
                    UNION ALL
                    SELECT substr(str, 0, instr(str, '/')), substr(str, instr(str, '/') + 1),length(substr(str, instr(str, '/') + 1)),
                    src FROM split WHERE str != '' ),
         q as (SELECT split.word,src FROM split
         --where nr = 0
         ),
         qz as (select distinct MostCommonTitles.*from MostCommonTitles
             cross join q 
         --      on  q.src = MostCommonTitles.url
         where instr(MostCommonTitles.title,q.word) = 0)

--c,
    select title,url,id from qz;
;-- -. . -..- - / . -. - .-. -.--
select * from "(maintain)dupesReoccuringName";
;-- -. . -..- - / . -. - .-. -.--
with scrubbNames as (select * from scrubb_names)
       , q1 as (select title, max(url) url, count(*) c from scrubbNames where length(title) > 1 group by title order by c desc,length (title) desc limit 5000)
       , z as (select title, count(*) c from scrubbNames where length(title) > 1 group by title order by c desc,length (title) desc limit 5000), r as (select z.title, t.title key from z cross join z t where instr(z.title, t.title) > 0 and z.title <> t.title)
       , teta as (select coalesce(r.title, z.title) title, z.c from z left outer join r on r.key = z.title)

    select teta.title, max(url) url, sum(scrubbNames.c) c from teta inner join q1 q on teta.title = scrubbNames.title group by teta.title order by c desc,teta.title desc;
;-- -. . -..- - / . -. - .-. -.--
create index if not exists scrubb_namesTitleLength on scrubb_names(length(title));
;-- -. . -..- - / . -. - .-. -.--
create view if not exists MostComon
as
    with
       , q1 as (select title, max(url) url, count(*) c
                from scrubbNames
                where length(title) > 1
                group by title
                order by c desc, length(title) desc
                limit 5000)
       , z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc, length(title) desc
               limit 5000)
       , r as (select z.title, t.title key
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)
       , teta as (select coalesce(r.title, z.title) title, z.c
                  from z
                           left outer join r on r.key = z.title);
;-- -. . -..- - / . -. - .-. -.--
create temp table scrubbNames  as
select * from scrubb_names;
;-- -. . -..- - / . -. - .-. -.--
drop view if exists MostComon;
;-- -. . -..- - / . -. - .-. -.--
create view if not exists MostComon
as
    with
       q1 as (select title, max(url) url, count(*) c
                from scrubbNames
                where length(title) > 1
                group by title
                order by c desc, length(title) desc
                limit 5000)
       , z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc, length(title) desc
               limit 5000)
       , r as (select z.title, t.title key
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)
       , teta as (select coalesce(r.title, z.title) title, z.c
                  from z
                           left outer join r on r.key = z.title)

    select teta.title, max(url) url, count() c
    from teta
             inner join q1 q using(title)
    group by teta.title
    order by c desc, teta.title desc;
;-- -. . -..- - / . -. - .-. -.--
select * from MostComon;
;-- -. . -..- - / . -. - .-. -.--
with MostComon
as
    with
       q1 as (select title, max(url) url, count(*) c
                from scrubbNames
                where length(title) > 1
                group by title
                order by c desc, length(title) desc
                limit 5000)
       , z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc, length(title) desc
               limit 5000)
       , r as (select z.title, t.title key
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)
       , teta as (select coalesce(r.title, z.title) title, z.c
                  from z
                           left outer join r on r.key = z.title)

    select teta.title, max(url) url, count() c
    from teta
             inner join q1 q using(title)
    group by teta.title
    order by c desc, teta.title desc
---select key,count(*) c from r group by key order by c desc
select * from MostComon;
;-- -. . -..- - / . -. - .-. -.--
with MostComon
as
    with
       q1 as (select title, max(url) url, count(*) c
                from scrubbNames
                where length(title) > 1
                group by title
                order by c desc, length(title) desc
                limit 5000)
       , z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc, length(title) desc
               limit 5000)
       , r as (select z.title, t.title key
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)
       , teta as (select coalesce(r.title, z.title) title, z.c
                  from z
                           left outer join r on r.key = z.title)

    select teta.title, max(url) url, count() c
    from teta
             inner join q1 q using(title)
    group by teta.title
    order by c desc, teta.title desc;
;-- -. . -..- - / . -. - .-. -.--
with
       q1 as (select title, max(url) url, count(*) c
                from scrubbNames
                where length(title) > 1
                group by title
                order by c desc, length(title) desc
                limit 5000)
       , z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc, length(title) desc
               limit 5000)
       , r as (select z.title, t.title key
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)
       , teta as (select coalesce(r.title, z.title) title, z.c
                  from z
                           left outer join r on r.key = z.title)

    select teta.title, max(url) url, count() c
    from teta
             inner join q1 q using(title)
    group by teta.title
    order by c desc, teta.title desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc, length(title) desc
               limit 5000)
       , r as (select z.title, t.title key
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)
       , teta as (select coalesce(r.title, z.title) title, z.c
                  from z
                           left outer join r on r.key = z.title)

    select teta.title, c 
           --max(url) url, count() c
    from teta
            -- inner join q1 q using(title)
    --group by teta.title
    order by c desc, teta.title desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc, length(title) desc
               limit 5000)
       , r as (select z.title, t.title key
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)
       
       
       
       
       
       select * from r;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc, length(title) desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)





       select * from r;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc, length(title) desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)





       select * from r order by superC desc,key,title;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc, length(title) desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)





       select title,group_concat(key) keys,sum(superC) c from r 
        group by title
    order by c desc,key,title;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) desc,c desc
               limit 1000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)





       select title,group_concat(key) keys,sum(superC) c from r
        group by title
    order by c desc,key,title;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) desc,c desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title);
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) desc,c desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)





       select title,group_concat(key) keys,sum(superC) c from r
        group by title
    order by c desc,key,title;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) ,c desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title)





       select title,group_concat(key) keys,sum(superC) c from r
        group by title
    order by c desc,key,title;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) ,c desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, t.title) > 0
                 and z.title <> t.title),
     qw as (  select title,group_concat(key) keys,sum(superC) c from r
        group by title)

        select group_concat(title) titlwa, keys, sum(c) sc from qw
        group by keys

    order by sc desc,keys,titlwa;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) desc ,c desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, substr(title,1,length(title)/2)) > 0
                 and z.title <> t.title),
     qw as (  select title,group_concat(key) keys,sum(superC) c from r
        group by title)

        select group_concat(title) titlwa, keys, sum(c) sc from qw
        group by keys;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) desc ,c desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, substr(t.title,1,length(t.title)/2)) > 0
                 and z.title <> t.title
                and length( z.title) between 1.1*length(t.title) and 0.9*length(t.title)
           ),
     qw as (  select title,group_concat(key) keys,sum(superC) c from r
        group by title)

        select group_concat(title) titlwa, keys, sum(c) sc from qw
        group by keys

    order by sc desc,keys,titlwa;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) desc ,c desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, substr(t.title,1,length(t.title)/2)) > 0
                 and z.title <> t.title
                and length( z.title) between cast(1.1*length(t.title) as integer) and cast( 0.9*length(t.title) as integer)
           )
select * from z;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) desc ,c desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, substr(t.title,1,length(t.title)/2)) > 0
                 and z.title <> t.title
                and length( z.title) between cast(1.1*length(t.title) as integer) and cast( 0.9*length(t.title) as integer)
           )
select * from r order by superC desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) desc ,c desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, substr(t.title,1,length(t.title)/2)) > 0
                 and z.title <> t.title
                and length(t.title) between cast(1.1*length(z.title) as integer) and cast( 0.5*length(z.title) as integer)
           )
select * from r order by superC desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) desc ,c desc
               limit 5000)
       , r as (select z.title, t.title key , z.c+t.c superC
               from z
                        cross join z t
               where instr(z.title, substr(t.title,1,length(t.title)/2)) > 0
                 and z.title <> t.title
                --and length(t.title) between cast(1.1*length(z.title) as integer) and cast( 0.5*length(z.title) as integer)
           )
select * from r order by superC desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) desc ,c desc
               limit 5000)

       ,z1 as (select * from z limit 2500 )
       ,z2 as ( select * from z limit 2500 offset 2500)

       , r as (select z.title, t.title key , z.c+t.c superC
               from z1
                        cross join z2 t
               where instr(z.title, substr(t.title,1,length(t.title)/2)) > 0
                 and z.title <> t.title
                --and length(t.title) between cast(1.1*length(z.title) as integer) and cast( 0.5*length(z.title) as integer)
           )
select * from r order by superC desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by length(title) desc ,c desc
               limit 5000)

       ,z1 as (select * from z limit 2500 )
       ,z2 as ( select * from z limit 2500 offset 2500)

       , r as (select z.title, t.title key , z.c+t.c superC
               from z1 z
                        cross join z2 t
               where instr(z.title, substr(t.title,1,length(t.title)/2)) > 0
                 and z.title <> t.title
                --and length(t.title) between cast(1.1*length(z.title) as integer) and cast( 0.5*length(z.title) as integer)
           )
select * from r order by superC desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)

       ,z1 as (select * from z limit 2500 )
       ,z2 as ( select * from z limit 2500 offset 2500)

       , r as (select z.title, t.title key , z.c+t.c superC
               from z1 z
                        cross join z2 t
               where instr(z.title, substr(t.title,1,length(t.title)/2)) > 0
                 and z.title <> t.title
                --and length(t.title) between cast(1.1*length(z.title) as integer) and cast( 0.5*length(z.title) as integer)
           )
select * from r order by superC desc;
;-- -. . -..- - / . -. - .-. -.--
create temp table if not exists scrubbNames  as
select * from scrubb_names;
;-- -. . -..- - / . -. - .-. -.--
create index if not exists scrubbNamessTitleLength on scrubbNames(length(title));
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)

       ,z1 as (select * from z limit 2500 )
       ,z2 as ( select * from z limit 2500 offset 2500)

       , r as (select z.title, t.title key , z.c+t.c superC
               from z1 z
                        left outer join z2 t
               on instr(z.title, substr(t.title,1,length(t.title)/2)) > 0 and z.title <> t.title
                --and length(t.title) between cast(1.1*length(z.title) as integer) and cast( 0.5*length(z.title) as integer)
           )
select * from r order by superC desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)

       ,z1 as (select * from z limit 2500 )
       ,z2 as ( select * from z limit 2500 offset 2500)
        select * from z2;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
    select * from z;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        select * from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,z.title)
                    and  length(z.title) between length(q.title) and length(q.title)*0.5;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        select * from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title)
                    and  length(w.title) between length(q.title) and length(q.title)*0.5;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        select *,length(w.title),length(q.title), length(w.title) between length(q.title) and length(q.title)*0.5 from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title);
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        select *,replace(q.title,w.title,''),
               length(w.title),length(q.title), length(w.title) between length(q.title) and length(q.title)*0.5 from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title);
;-- -. . -..- - / . -. - .-. -.--
select q.title longq,
               q.c,
               w.title shortw,
               w.c,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title),length(w.title) between length(q.title) and length(q.title)*0.5 from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title);
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        select q.title longq,
               q.c,
               w.title shortw,
               w.c,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title),length(w.title) between length(q.title) and length(q.title)*0.5 from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title);
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        select q.title longq,
               q.c,
               w.title shortw,
               w.c,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title),length(w.title) between length(q.title) and cast(length(q.title)*0.5 as integer) from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title);
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        select q.title longq,
               q.c,
               w.title shortw,
               w.c,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title),length(w.title) between length(q.title) and round(length(q.title)*0.5 as integer) from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title);
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        select q.title longq,
               q.c,
               w.title shortw,
               w.c,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title),length(w.title) between length(q.title) and round(length(q.title)*0.5) from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title);
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        select q.title longq,
               q.c,
               w.title shortw,
               w.c,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title),length(w.title) between round(length(q.title)*0.5) and length(q.title) from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title);
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        select q.title longq,
               q.c,
               w.title shortw,
               w.c,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title) from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title)
                    and length(w.title) between round(length(q.title)*0.5) and length(q.title);
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        ,shortLong as (select q.title longq,
               q.c longc,
               w.title shortw,
               w.c shortc,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title) from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title)
                    and length(w.title) between round(length(q.title)*0.5) and length(q.title) order by shortw,length(differance))
    select shortw, max(shortc)+SUM(longc/length(differance)) superc, GROUP_CONCAT(differance,'|') diffs, group_concat(longq,')|(')   
    from shortLong group by shortw;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        ,shortLong as (select q.title longq,
               q.c longc,
               w.title shortw,
               w.c shortc,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title) from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title)
                    and length(w.title) between round(length(q.title)*0.5) and length(q.title) order by shortw,length(differance))
    select shortw,count(differance) nrDiffs, max(shortc)+SUM(longc/length(differance)) superc, GROUP_CONCAT(differance,'|') diffs, group_concat(longq,')|(')
    from shortLong group by shortw
                          order by nrDiffs desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               order by c desc,length(title) desc
               limit 5000)
        ,shortLong as (select q.title longq,
               q.c longc,
               w.title shortw,
               w.c shortc,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title) from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title)
                    and length(w.title) between round(length(q.title)*0.5) and length(q.title) order by shortw,length(differance))
    select shortw,count(differance) nrDiffs, max(shortc)+SUM(round(longc/length(differance))) superc, GROUP_CONCAT(differance,'|') diffs, group_concat(longq,')|(')
    from shortLong group by shortw
                          order by nrDiffs desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               )
        ,shortLong as (select q.title longq,
               q.c longc,
               w.title shortw,
               w.c shortc,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title) from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title)
                    and length(w.title) between round(length(q.title)*0.5) and length(q.title) order by shortw,length(differance))
    select shortw,count(differance) nrDiffs, max(shortc)+SUM(round(longc/length(differance))) superc, GROUP_CONCAT(differance,'|') diffs, group_concat(longq,')|(')
    from shortLong group by shortw
                          order by nrDiffs desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title, count(*) c
               from scrubbNames
               where length(title) > 1
               group by title
               )
        ,shortLong as (select q.title longq,
               q.c longc,
               w.title shortw,
               w.c shortc,replace(q.title,w.title,'') differance,
               length(w.title),length(q.title) from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title)
                    and length(w.title) between round(length(q.title)*0.5) 
                    and length(q.title))
    
    select shortw,
           count(differance)+max(shortc)+SUM(round(longc*(length(shortw)/length(differance)))) superc,
           GROUP_CONCAT(differance,'|') diffs,
           group_concat(longq,')|(')
    from shortLong group by shortw
                          order by superc desc;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title,length(title) lengthTitle, count(*) c from scrubbNames where lengthTitle > 1 group by title)
        
       ,shortLong as (select 
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle 
                from z q cross join z w
                    where q.title <> w.title
                    and  instr(q.title,w.title)
                    and  w.lengthTitle 
                              between round(q.lengthTitle*0.5) and q.lengthTitle
           )
    ,filter as (
        select * from (select shortw t from shortLong) shorts
            left outer join
            (select longq t from shortLong) longs
                using (t)
            where longs.t is null
    )
       select * from filter;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title,length(title) lengthTitle, count(*) c from scrubbNames where lengthTitle > 1 group by title)

       ,shortLong as (
           select * from 
           (select * from 
           (select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    cross join z w

                    where 
                      w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle)
                              where longq <> shortw)
                                
                    where instr(longq,shortw)
           )
       
       select * from shortLong;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title,length(title) lengthTitle, count(*) c from scrubbNames where lengthTitle > 1 group by title)

       ,shortLong as (select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    cross join z w

                    where q.title <> w.title
                    and  w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle
                    and  instr(q.title,w.title)
           )

       select * from shortLong;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title,length(title) lengthTitle, count(*) c from scrubbNames where lengthTitle > 1 group by title)

       ,shortLong as (select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    inner join z w
                        on w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle
                    where q.title <> w.title
                    
                    and  instr(q.title,w.title)
           )

       select * from shortLong;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title,length(title) lengthTitle, count(*) c from scrubbNames where lengthTitle > 1 group by title)

       ,shortLong as (
           select * from
           (select * from
           (select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    cross join z w

                    where
                      w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle)
                              where longq <> shortw)

                    where instr(longq,shortw)
           )

       select * from shortLong;
;-- -. . -..- - / . -. - .-. -.--
with
        z as (select title,length(title) lengthTitle, count(*) c from scrubbNames where lengthTitle > 1 group by title)

       ,shortLong as (
           select * from
           (select * from
           (select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    cross join z w

                    where
                      w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle)
                              where longq <> shortw)

                    where instr(longq,shortw)
           )

    ,filter as (
        select distinct shortw t from shortLong
            except 
           select distinct longq t from shortLong

            
    )
       select * from filter;
;-- -. . -..- - / . -. - .-. -.--
EXPLAIN QUERY PLAN  select * from (with
        z as (select title,length(title) lengthTitle, count(*) c from scrubbNames where lengthTitle > 1 group by title)

       ,shortLong as (
           select * from
           (select * from
           (select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    cross join z w

                    where
                      w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle)
                              where longq <> shortw)

                    where instr(longq,shortw)
           )

select * from shortLong);
;-- -. . -..- - / . -. - .-. -.--
select * from (with
        z as (select title,length(title) lengthTitle, count(*) c from scrubbNames where lengthTitle > 1 group by title)

       ,shortLong as (
           select * from
           (select * from
          EXPLAIN QUERY PLAN    (select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    cross join z w

                    where
                      w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle)
                              where longq <> shortw)

                    where instr(longq,shortw)
           )

select * from shortLong);
;-- -. . -..- - / . -. - .-. -.--
explain query plan select * from (with z as (select title, length(title) lengthTitle, count(*) c
                             from scrubbNames
                             where lengthTitle > 1
                             group by title)
   select * from z);
;-- -. . -..- - / . -. - .-. -.--
explain query plan select * from (with z as (select title, length(title) lengthTitle, count(*) c
                             from scrubbNames
                             where lengthTitle > 1
                             group by title)
        (select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    cross join z w

                    where
                      w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle));
;-- -. . -..- - / . -. - .-. -.--
explain query plan select * from (with z as (select title, length(title) lengthTitle, count(*) c
                             from scrubbNames
                             where lengthTitle > 1
                             group by title)
        select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    cross join z w

                    where
                      w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle);
;-- -. . -..- - / . -. - .-. -.--
explain query plan select * from (with z as (select title, length(title) lengthTitle, count(*) c
                             from scrubbNames
                             where lengthTitle > 1
                             group by title)
        select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    inner join z w

                    on
                      w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle);
;-- -. . -..- - / . -. - .-. -.--
explain query plan select * from (with z as (select title,lengthTitle, count(*) c
                             from scrubbNames
                             where lengthTitle > 1
                             group by title)
        select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    inner join z w

                    on
                      w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle);
;-- -. . -..- - / . -. - .-. -.--
explain query plan select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                             from scrubbNames
                             where lengthTitle > 1
                             group by title)
        select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    inner join z w

                    on
                      w.lengthTitle
                              between round(q.lengthTitle*0.5) and q.lengthTitle);
;-- -. . -..- - / . -. - .-. -.--
explain query plan select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                             from scrubbNames
                             where lengthTitle > 1
                             group by title)
        select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    inner join z w

                    on
                      w.lengthTitle
                              > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle);
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                             from scrubbNames
                             where lengthTitle > 1
                             group by title)
        select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    inner join z w

                    on
                      w.lengthTitle
                              > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle);
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                             from scrubbNames
                             where lengthTitle > 1
                             group by title)
        select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    inner join z w
                    on
                      w.lengthTitle
                              > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                    and not(w.title = q.title)                   
     );
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                             from scrubbNames
                             where lengthTitle > 1
                             group by title)
        select
                           w.title shortw,
                           w.c shortc,
                           q.title longq,
                           q.c longc,
                           w.lengthTitle
                         ,q.lengthTitle
                from z q
                    inner join z w
                    on
                      w.lengthTitle
                              > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                    and w.title <> q.title);
;-- -. . -..- - / . -. - .-. -.--
explain query plan select * from (with z as (
            select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                                         from scrubbNames
                                         where lengthTitle > 1
                                         group by title)
                    select
                                       w.title shortw,
                                       w.c shortc,
                                       q.title longq,
                                       q.c longc,
                                       w.lengthTitle
                                     ,q.lengthTitle
                            from z q
                                inner join z w
                                on
                                  w.lengthTitle
                                          > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                                and not(w.title = q.title))
                 )


       ,shortLong as ( select * from z where instr(longq,shortw))
   
   select * from shortLong);
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (
            select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                                         from scrubbNames
                                         where lengthTitle > 1
                                         group by title)
                    select
                                       w.title shortw,
                                       w.c shortc,
                                       q.title longq,
                                       q.c longc,
                                       w.lengthTitle
                                     ,q.lengthTitle
                            from z q
                                inner join z w
                                on
                                  w.lengthTitle
                                          > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                                and not(w.title = q.title))
                 )


       ,shortLong as ( select * from z where instr(longq,shortw))

   select * from shortLong);
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (
            select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                                         from scrubbNames
                                         where lengthTitle > 1
                                         group by title)
                    select
                                       w.title shortw,
                                       w.c shortc,
                                       q.title longq,
                                       q.c longc,
                                       w.lengthTitle
                                     ,q.lengthTitle
                            from z q
                                inner join z w
                                on
                                  w.lengthTitle
                                          > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                                and not(w.title = q.title))
                 )


       --,shortLong as ( select * from z where instr(longq,shortw))
        ,shortLong as (select *,replace(longq,shortw,'') differance from z )
   select * from shortLong);
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (
            select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                                         from scrubbNames
                                         where lengthTitle > 1
                                         group by title)
                    select
                                       w.title shortw,
                                       w.c shortc,
                                       q.title longq,
                                       q.c longc,
                                       w.lengthTitle shortLength
                                     ,q.lengthTitle longLength
                            from z q
                                inner join z w
                                on
                                  w.lengthTitle
                                          > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                                and not(w.title = q.title))
                 )


       --,shortLong as ( select * from z where instr(longq,shortw))
        ,shortLong as (select * from z where not(length(replace(longq,shortw,'')) = longLength)  )
   select * from shortLong);
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (
            select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                                         from scrubbNames
                                         where lengthTitle > 1
                                         group by title)
                    select
                                       w.title shortw,
                                       w.c shortc,
                                       q.title longq,
                                       q.c longc,
                                       w.lengthTitle shortLength
                                     ,q.lengthTitle longLength
                            from z q
                                inner join z w
                                on
                                  w.lengthTitle
                                          > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                                and not(w.title = q.title))
                 )


       --,shortLong as ( select * from z where instr(longq,shortw))
      --  ,shortLong as (select * from z where not(length(replace(longq,shortw,'')) = longLength)  )
      shortLong as ( select * from z where longq like shortw || '%')
   select * from shortLong);
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (
            select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                                         from scrubbNames
                                         where lengthTitle > 1
                                         group by title)
                    select
                                       w.title shortw,
                                       w.c shortc,
                                       q.title longq,
                                       q.c longc,
                                       w.lengthTitle shortLength
                                     ,q.lengthTitle longLength
                            from z q
                                inner join z w
                                on
                                  w.lengthTitle
                                          > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                                and not(w.title = q.title))
                 )


       --,shortLong as ( select * from z where instr(longq,shortw))
      --  ,shortLong as (select * from z where not(length(replace(longq,shortw,'')) = longLength)  )
      ,shortLong as ( select * from z where longq like shortw || '%')
   select * from shortLong);
;-- -. . -..- - / . -. - .-. -.--
drop table if exists scrubbNames;
;-- -. . -..- - / . -. - .-. -.--
create temp table if not exists scrubbNames  as
select *, length(title) lengthTitle from scrubb_names;
;-- -. . -..- - / . -. - .-. -.--
drop index if exists  scrubbNamessTitleLength;
;-- -. . -..- - / . -. - .-. -.--
create index if not exists scrubbNamessTitleLength on scrubbNames(lengthTitle);
;-- -. . -..- - / . -. - .-. -.--
create index if not exists scrubbNamessUrl on scrubbNames(url);
;-- -. . -..- - / . -. - .-. -.--
create index if not exists scrubbNamesTitle on scrubbNames(title);
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (
            select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                                         from scrubbNames
                                         where lengthTitle > 1
                                         group by title)
                    select
                                       w.title shortw,
                                       w.c shortc,
                                       q.title longq,
                                       q.c longc,
                                       w.lengthTitle shortLength
                                     ,q.lengthTitle longLength
                            from z q
                                inner join z w
                                on
                                  w.lengthTitle
                                          > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                                and not(w.title = q.title))
                 )


       ,shortLong as ( select * from z where instr(longq,shortw))
      --  ,shortLong as (select * from z where not(length(replace(longq,shortw,'')) = longLength)  )
      --,shortLong as ( select * from z where longq like '?'|| shortw || '%')
   select * from shortLong);
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (
            select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                                         from scrubbNames
                                         where lengthTitle > 1
                                         group by title)
                    select
                                       w.title shortw,
                                       w.c shortc,
                                       q.title longq,
                                       q.c longc,
                                       w.lengthTitle shortLength
                                     ,q.lengthTitle longLength
                            from z q
                                inner join z w
                                on
                                  w.lengthTitle
                                          > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                                and not(w.title = q.title))
                 )


       ,shortLong as ( select * from z where instr(longq,shortw))
      --  ,shortLong as (select * from z where not(length(replace(longq,shortw,'')) = longLength)  )
      --,shortLong as ( select * from z where longq like '?'|| shortw || '%')
          ,filter as (
        select shortw from shortLong
            except
           select longq from shortLong
    )
   select * from filter);
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (
            select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                                         from scrubbNames
                                         where lengthTitle > 1
                                         group by title)
                    select
                                       w.title shortw,
                                       w.c shortc,
                                       q.title longq,
                                       q.c longc,
                                       w.lengthTitle shortLength
                                     ,q.lengthTitle longLength
                            from z q
                                inner join z w
                                on
                                  w.lengthTitle
                                          > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                                and not(w.title = q.title))
                 )


       ,shortLong as ( select * from z where instr(longq,shortw))
      --  ,shortLong as (select * from z where not(length(replace(longq,shortw,'')) = longLength)  )
      --,shortLong as ( select * from z where longq like '?'|| shortw || '%')
          --,filter as (select shortw from shortLong except select longq from shortLong)
              ,calcDiffColumn as (select *,replace(longq,shortw,'') differance from shortLong  )


   select * from calcDiffColumn);
;-- -. . -..- - / . -. - .-. -.--
select * from (with z as (
            select * from (with z as (select title,max(lengthTitle) lengthTitle, count(*) c
                                         from scrubbNames
                                         where lengthTitle > 1
                                         group by title)
                    select
                                       w.title shortw,
                                       w.c shortc,
                                       q.title longq,
                                       q.c longc,
                                       w.lengthTitle shortLength
                                     ,q.lengthTitle longLength
                            from z q
                                inner join z w
                                on
                                  w.lengthTitle
                                          > round(q.lengthTitle*0.5) and w.lengthTitle < q.lengthTitle
                                and not(w.title = q.title))
                 )


       ,shortLong as ( select * from z where instr(longq,shortw))
      --  ,shortLong as (select * from z where not(length(replace(longq,shortw,'')) = longLength)  )
      --,shortLong as ( select * from z where longq like '?'|| shortw || '%')
          --,filter as (select shortw from shortLong except select longq from shortLong)
              ,calcDiffColumn as (select *,replace(longq,shortw,'') differance from shortLong  )

    select shortw,
           count(differance)+max(shortc)+SUM(round(longc*(length(shortw)/length(differance)))) superc,
           GROUP_CONCAT(differance,'|') diffs,
           group_concat(longq,')|(')
    from calcDiffColumn group by shortw
                          order by superc desc

);
;-- -. . -..- - / . -. - .-. -.--
select *, length(title) lengthTitle from scrubb_names;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW if not exists nameSimilarities as with Scrubb_namesNwords as ( select * from main.scrubb_names), wordz as (select word title from main.words)
       , namesWithSpacesOrDots as (select distinct title from Scrubb_namesNwords where instr(title, ' ') * instr(title, '.') <> 0)
       , wordXSentences as (select wordz.title word, namesWithSpacesOrDots.title sentenc, count(wordz.title) over ( partition by namesWithSpacesOrDots.title) length from wordz
           cross join namesWithSpacesOrDots where instr(namesWithSpacesOrDots.title, wordz.title) > 0)

       , yt as (
        select wordXSentences.sentenc                                                p1sentenc,
               wordXSentences.length                                                 p1length,
               p2.word,
               p2.sentenc,
               p2.length,
               count(wordXSentences.word) over ( partition by wordXSentences.sentenc,p2.sentenc) relation
        from wordXSentences
                 inner join wordXSentences p2
                            on wordXSentences.word = p2.word and wordXSentences.length >= p2.length AND wordXSentences.sentenc <> p2.sentenc
    )

    select p1sentenc,p1length,cast((cast(length as float) / p1length) * (cast(relation as float) / p1length) as float) proc,word,sentenc,length,relation
    from yt where proc >= 0.5 order by p1length desc,proc desc;
;-- -. . -..- - / . -. - .-. -.--
select * from nameSimilarities;
;-- -. . -..- - / . -. - .-. -.--
WITH 
                                            q as (select url from urls where instr(url,''/'') > 0 order by length(url) asc  limit 1
                                           offset 100),
                                           split(word, str) AS
                                               (SELECT '''', url || ''/''
                                                    from q
                                                UNION ALL
                                               SELECT substr(str, 0, instr(str, ''/'')),substr(str, instr(str, ''/'') + 1)
                                               FROM split WHERE str != '''')
                                       SELECT split.word from split where word != '''';
;-- -. . -..- - / . -. - .-. -.--
WITH 
                                            q as (select url from urls where instr(url,''/'') > 0 order by length(url) asc  limit 1 offset 100),
                                         select * from q;
;-- -. . -..- - / . -. - .-. -.--
WITH
                                            q as (select url from urls where instr(url,''/'') > 0 order by length(url) asc  limit 1 offset 100)
                                         select * from q;
;-- -. . -..- - / . -. - .-. -.--
WITH
                                            q as (select url from urls where instr(url,''/'') > 0 order by length(url) asc  limit 1 )
                                         select * from q;
;-- -. . -..- - / . -. - .-. -.--
WITH
                                            q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1 )
                                         select * from q;
;-- -. . -..- - / . -. - .-. -.--
WITH
                                            q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1 offset 100)
                                         select * from q;
;-- -. . -..- - / . -. - .-. -.--
WITH
                                            q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1 offset 100)
                                    
                                         ,split(word, str) AS
                                               (SELECT '''', url || ''/''
                                                    from q
                                                UNION ALL
                                               SELECT substr(str, 0, instr(str, ''/'')),substr(str, instr(str, ''/'') + 1)
                                               FROM split WHERE str != '''')
                                       SELECT split.word from split where word != '''';
;-- -. . -..- - / . -. - .-. -.--
WITH
                        q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1 offset 100)

                     ,split(word, str) AS
                           (SELECT '''', url || ''/''  from q
                            UNION ALL
                           SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1)
                           FROM split WHERE str != '''')
                   SELECT split.word from split where word != '''';
;-- -. . -..- - / . -. - .-. -.--
WITH
                        q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1 offset 100)

                     ,split(word, str) AS
                           (SELECT '', url || '/'  from q
                            UNION ALL
                           SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1)
                           FROM split WHERE str != '')
                   SELECT split.word from split where word != '';
;-- -. . -..- - / . -. - .-. -.--
WITH
                        q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1 offset 100)

                     ,split(src,word, str) AS
                           (SELECT url,'', url || '/'  from q
                            UNION ALL
                                SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1)
                           FROM split WHERE str != '')
                   SELECT split.word from split where word != '';
;-- -. . -..- - / . -. - .-. -.--
WITH
                        q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1 offset 100)

                     ,split(src,word, str) AS
                           (SELECT url,'', url || '/'  from q
                            UNION ALL
                                SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1)
                           FROM split WHERE str != '')
                   SELECT src, word from split;
;-- -. . -..- - / . -. - .-. -.--
WITH
                        q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1 offset 100)

                     ,split(src,word, str) AS
                           (SELECT url,'', url || '/'  from q
                            UNION ALL
                                SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1)
                           FROM split WHERE str != '')
                   SELECT src, word from split where not(word = '');
;-- -. . -..- - / . -. - .-. -.--
WITH
                        q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1 offset 100)

                     ,split(src,word, str,ordning) AS
                           (SELECT url,'', url || '/',0  from q
                            UNION ALL
                                SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                           FROM split WHERE str != '')
                   SELECT src, word from split where not(word = '');
;-- -. . -..- - / . -. - .-. -.--
WITH
                        q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1 offset 100)

                     ,split(src,word, str,ordning) AS
                           (SELECT url,'', url || '/',0  from q
                            UNION ALL
                                SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                           FROM split WHERE str != '')
                   SELECT src, word,ordning from split where not(word = '');
;-- -. . -..- - / . -. - .-. -.--
WITH
                        q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 100)

                     ,split(src,word, str,ordning) AS
                           (SELECT url,'', url || '/',0  from q
                            UNION ALL
                                SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                           FROM split WHERE str != '')
                   SELECT src, word,ordning from split where not(word = '');
;-- -. . -..- - / . -. - .-. -.--
WITH
                        q as (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 100)

                     ,split(src,word, str,ordning) AS
                           (SELECT url,'', url || '/',0  from q
                            UNION ALL
                                SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
                           FROM split WHERE str != '')
                   SELECT src, word,ordning from split where not(word = '') order by src,ordning;
;-- -. . -..- - / . -. - .-. -.--
WITH
            q as (select distinct url from urls where instr(url,'/') > 0 order by length(url) asc  limit 100)

         ,split(src,word, str,ordning) AS
               (SELECT url,'', url || '/',0  from q
                UNION ALL
                    SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
               FROM split WHERE str != '')
       SELECT src, word,ordning from split where not(word = '') order by src,ordning;
;-- -. . -..- - / . -. - .-. -.--
WITH
        --q as (select distinct url from urls where instr(url,'/') > 0 order by length(url) asc  limit 100),
         split(src,word, str,ordning) AS
               (SELECT url,'', url || '/',0  from urls q
                UNION ALL
                    SELECT src,substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1),ordning+1
               FROM split WHERE str != '')
       SELECT src, word,ordning from split where not(word = '') order by src,ordning;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     yrls as (
         select max(id),
                max(url)                                                               url,
                title,
                sum(visit_count)                                                       visit_count,
                max(last_visit_time)                                                   last_visit_time,
                substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                length(url)                                                            urlLen
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') * instr(title, 'videos') > 0
         group by title
     ),

     titlez as (
         select min(urlLen),
                min(url)                                                                     url,
                substr(title, 1, instr(title, ' Tube '))                                     titlex,
                cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,
                sum(visit_count)                                                             c,
                max(last_visit_time)                                                         m
         from yrls
         group by titlex)
    select
     url,
     titlex || '@ NudeVista (' || c || ')' titlex,
     cc from
     titlez where
     cc <> 0
    order by
     c desc,
     cc,
     m desc;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     yrls as (
         select max(id),
                max(url) url,
                title,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                length(url) urlLen
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') * instr(title, 'videos') > 0
         group by title
     ),
    select * from yrls;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     yrls as (
         select max(id),
                max(url) url,
                title,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                length(url) urlLen
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') * instr(title, 'videos') > 0
         group by title
     )
    select * from yrls;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     yrls as (
         select max(id),
                max(url) url,
                title,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                length(url) urlLen
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0
         group by title
     )
    select * from yrls;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     yrls as (
         select max(id),
                max(url) url,
                title,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                length(url) urlLen
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0
         group by title
     )
     ,titlez as (
         select min(urlLen),
                min(url) url,
                substr(title, 1, instr(title, ' Tube ')) titlex,
                cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,
                sum(visit_count) c,
                max(last_visit_time) m
         from yrls
         group by titlex)
    select
     url,
     titlex || '@ NudeVista (' || c || ')' titlex,
     cc from
     titlez where
     cc <> 0
    order by
     c desc,
     cc,
     m desc;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     yrls as (
         select max(id),
                max(url) url,
                title,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                length(url) urlLen
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0
         group by title
     )
     ,titlez as (
         select min(urlLen),
                min(url) url,
                substr(title, 1, instr(title, ' Tube ')) titlex,
                cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,
                sum(visit_count) c,
                max(last_visit_time) m
         from yrls group by titlex)
         
    select
     url,
     titlex || '@ NudeVista (' || c || ')' titlex,
     cc from titlez;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     SelectedUrls as (
         select *
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0         
     ),
     select * from selectedUrls;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     SelectedUrls as (
         select *
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0
     )
     select * from selectedUrls;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     SelectedUrls as (
         select *, substr(title, instr(title, 'Tube Search (') + length('Tube Search ('))  tx
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0
     )
     ,groupBytitle as (
         select
                max(id),
                   min(url) url,
                title,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                max(tx) tx,
                length(url) urlLen
         from SelectedUrls
         group by title
     )
     ,titlez as (
         select min(urlLen) urlLen,
                min(url) url,
                substr(title, 1, instr(title, ' Tube ')) titleToGroupBy,
                cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,
                sum(visit_count) c,
                max(last_visit_time) m
         from groupBytitle group by titleToGroupBy)

    select
     url,
     titleToGroupBy || '@ NudeVista (' || c || ')' titlex,
     cc from titlez
     where cc <> 0
    order by
     c desc,
     cc,
     m desc;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     SelectedUrls as (
         select *, substr(title, instr(title, 'Tube Search (') + length('Tube Search ('))  tx
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0
     )
     ,groupBytitle as (
         select
                max(id),
                   min(url) url,
                title,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                max(tx) tx,
                length(url) urlLen
         from SelectedUrls
         group by title
     )
     ,titlez as (
         select min(urlLen) urlLen,
                min(url) url,
                substr(title, 1, instr(title, ' Tube ')) titleToGroupBy,
                cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,
                sum(visit_count) c,
                max(last_visit_time) m
         from groupBytitle group by titleToGroupBy)

    select * from titlez;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     SelectedUrls as (
         select *, substr(title, instr(title, 'Tube Search (') + length('Tube Search ('))  tx
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0
     )
     ,groupBytitle as (
         select
                max(id),
                   min(url) url,
                title,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                max(tx) tx,
                length(url) urlLen
         from SelectedUrls
         group by tx
     )
    select * from groupBytitle;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     SelectedUrls as (
         select *, substr(title, instr(title, 'Tube Search (') + length('Tube Search ('))  tx
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0
     )
     ,groupBytitle as (
         select
                max(id),
                   min(url) url,
                title,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                max(tx) tx,
                length(url) urlLen
         from SelectedUrls
         group by tx
     )
     ,titlez as (
         select min(urlLen) urlLen,
                min(url) url,
                substr(title, 1, instr(title, ' Tube ')) titleToGroupBy,
                cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,
                sum(visit_count) c,
                max(last_visit_time) m
         from groupBytitle group by titleToGroupBy)


    select
     url,
     titleToGroupBy || '@ NudeVista (' || c || ')' titlex,
     cc from titlez
     where cc <> 0
    order by
     c desc,
     cc,
     m desc;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     SelectedUrls as (
         select *, substr(title, instr(title, 'Tube Search (') + length('Tube Search ('))  tx
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0
     )
     ,groupBytitle as (
         select
                max(id),
                   min(url) url,
                max(tx) title,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                length(url) urlLen
         from SelectedUrls
         group by tx
     )
     ,titlez as (
         select min(urlLen) urlLen,
                min(url) url,
                substr(title, 1, instr(title, ' Tube ')) titleToGroupBy,
                cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,
                sum(visit_count) c,
                max(last_visit_time) m
         from groupBytitle group by titleToGroupBy)


    select
     url,
     titleToGroupBy || '@ NudeVista (' || c || ')' titlex,
     cc from titlez
     where cc <> 0
    order by
     c desc,
     cc,
     m desc;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     SelectedUrls as (
         select *, substr(title, instr(title, 'Tube Search (') + length('Tube Search ('))  tx
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0
     )
     ,groupBytitle as (
         select
                max(id),
                   min(url) url,
                max(tx) title,
                max(tx) tx,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                length(url) urlLen
         from SelectedUrls
         group by tx
     )
     ,titlez as (
         select min(urlLen) urlLen,
                min(url) url,
                substr(title, 1, instr(title, ' Tube ')) titleToGroupBy,
                cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,
                sum(visit_count) c,
                max(last_visit_time) m
         from groupBytitle group by titleToGroupBy)


    select
     url,
     titleToGroupBy || '@ NudeVista (' || c || ')' titlex,
     cc from titlez
     where cc <> 0
    order by
     c desc,
     cc,
     m desc;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     SelectedUrls as (
         select *, substr(title, instr(title, 'Tube Search (') + length('Tube Search ('))  tx
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') + instr(title, 'videos') > 0
     )
     ,groupBytitle as (
         select
                max(id),
                   min(url) url,
                max(tx) title,
                max(tx) tx,
                sum(visit_count)  visit_count,
                max(last_visit_time) last_visit_time,
                length(url) urlLen
         from SelectedUrls
         group by tx
     )
   select * from groupBytitle;
;-- -. . -..- - / . -. - .-. -.--
with
     urlsWithLastWisitTime as (select *,0 last_visit_time from urls), --NudevistaOneTabIdea as  todo: remove the hardcoded txt
     SelectedUrls as (
         select *, substr(title, instr(title, 'Tube Search (') + length('Tube Search ('))  tx
         from urlsWithLastWisitTime
         where instr(url, 'nudevista') 
                   --+ instr(title, 'videos')
         > 0
     )
   select * from SelectedUrls;
;-- -. . -..- - / . -. - .-. -.--
WITH mostComonT as (select title,count() c FROM scrubb_names group by title limit 100 order by c desc )
         ,mozPlaces as (select url,lower(title) title from moz_places),
     initial as (
         select min(x.url) url,
                x.title titlex
                ,count(*) c
                from
                 mozPlaces x
     left outer join mostComonT on x.title = mostComonT.title where mostComonT.title is null

     group by titlex
         order by c desc,x.title
        )
         
select * from initial;
;-- -. . -..- - / . -. - .-. -.--
WITH mostComonT as (select title,count() c FROM scrubb_names group by title order by c desc limit 100 )
         ,mozPlaces as (select url,lower(title) title from moz_places),
     initial as (
         select min(x.url) url,
                x.title titlex
                ,count(*) c
                from
                 mozPlaces x
     left outer join mostComonT on x.title = mostComonT.title where mostComonT.title is null

     group by titlex
         order by c desc,x.title
        )

select * from initial;
;-- -. . -..- - / . -. - .-. -.--
WITH mostComonT as (select title,count() c FROM scrubb_names group by title order by c desc limit 100 )
         ,mozPlaces as (select url,lower(title) title from scrubb_names),
     initial as (
         select min(x.url) url,
                x.title titlex
                ,count(*) c
                from
                 mozPlaces x
     left outer join mostComonT on x.title = mostComonT.title where mostComonT.title is null

     group by titlex
         order by c desc,x.title
        )

select * from initial;
;-- -. . -..- - / . -. - .-. -.--
WITH mostComonT as (select title,count() c FROM scrubb_names group by title order by c desc limit 1000 )
         ,mozPlaces as (select url,lower(title) title from scrubb_names),
     initial as (
         select min(x.url) url,
                x.title titlex
                ,count(*) c
                from
                 mozPlaces x
     left outer join mostComonT on x.title = mostComonT.title where mostComonT.title is null

     group by titlex
         order by c desc,x.title
        );
;-- -. . -..- - / . -. - .-. -.--
WITH mostComonT as (select title,count() c FROM scrubb_names group by title order by c desc limit 1000 )
         ,mozPlaces as (select url,lower(title) title from scrubb_names),
     initial as (
         select min(x.url) url,
                x.title titlex
                ,count(*) c
                from
                 mozPlaces x
     left outer join mostComonT on x.title = mostComonT.title where mostComonT.title is null

     group by titlex
         order by c desc,x.title
        )

select * from initial;
;-- -. . -..- - / . -. - .-. -.--
WITH mostComonT as (select title,count() c FROM scrubb_names group by title order by c desc limit 1000 )
         ,mozPlaces as (select url,title title from scrubb_names),
     initial as (
         select min(x.url) url,
                x.title titlex
                ,count(*) c
                from
                 mozPlaces x
     left outer join mostComonT on x.title = mostComonT.title where mostComonT.title is null

     group by titlex
         order by c desc,x.title
        );
;-- -. . -..- - / . -. - .-. -.--
WITH mostComonT as (select title,count() c FROM scrubb_names group by title order by c desc limit 1000 )
         ,mozPlaces as (select url,title title from scrubb_names),
     initial as (
         select min(x.url) url,
                x.title titlex
                ,count(*) c
                from
                 mozPlaces x
     left outer join mostComonT on x.title = mostComonT.title where mostComonT.title is null

     group by titlex
         order by c desc,x.title
        )

select * from initial;
;-- -. . -..- - / . -. - .-. -.--
WITH mostComonT as (select title,count() c FROM scrubb_names group by title order by c desc limit 100 )
         ,mozPlaces as (select url,title title from scrubb_names),
     initial as (
         select min(x.url) url,
                x.title titlex
                ,count(*) c
                from
                 mozPlaces x
     left outer join mostComonT on x.title = mostComonT.title where mostComonT.title is null

     group by titlex
         order by c desc,x.title
        );
;-- -. . -..- - / . -. - .-. -.--
WITH mostComonT as (select title,count() c FROM scrubb_names group by title order by c desc limit 100 )
         ,mozPlaces as (select url,title title from scrubb_names),
     initial as (
         select min(x.url) url,
                x.title titlex
                ,count(*) c
                from
                 mozPlaces x
     left outer join mostComonT on x.title = mostComonT.title where mostComonT.title is null

     group by titlex
         order by c desc,x.title
        )

select * from initial;
;-- -. . -..- - / . -. - .-. -.--
WITH mostComonT as (select title,count() c FROM scrubb_names group by title order by c desc limit 100 )
         ,mozPlaces as (select url,title title from scrubb_names),
     initial as (
         select min(x.url) url,
                x.title titlex
                ,count(*) c
                from
                 mozPlaces x
     left outer join mostComonT on x.title = mostComonT.title where mostComonT.title is null

     group by titlex
         order by c desc,x.title
        )


--    ,Trimmed as (select url,replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(titlex, '3d', ' '), '2b', ' '), '2520', ' '), '|', ' '), '{', ' '), '<', ' '), '_', ' '), '?', ' '), '=', ' '), ',', ' '), '/', ' '), '.', ' '), '+', ' '), ':', ' '), '*', ' '), '''', ' '), '&', ' '), '%', ' '), '#', ' '), '"', ' '), '!', ' '), ')', ' '), '(', ' '), '-', ' ') titlex from initial)
       
       
       , tosplit as (select titlex from initial)

     ,split(word, str) AS
         (SELECT '', titlex || ' ' from ToSplit
         UNION ALL
         SELECT substr(str, 0, instr(str, ' ')),
                substr(str, instr(str, ' ') + 1)
         FROM split WHERE str != '')
    select word,count(*) c from split group by word order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select url, titlex from
   (
    with
input as (select title, url from scrubb_names limit 100)
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url from (select
        Title,group_concat(char,'') z from (select Title, number, titleWithNrs.char
            from
                titleWithNrs
            inner join
                AcceptedChars
                    on titleWithNrs.char = AcceptedChars.char
        order by Title, number)group by Title) w
        inner join input on w.title = input.title
      );
;-- -. . -..- - / . -. - .-. -.--
select url, titlex from
   (
    with
input as (select title, url from scrubb_names)
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url from (select
        Title,group_concat(char,'') z from (select Title, number, titleWithNrs.char
            from
                titleWithNrs
            inner join
                AcceptedChars
                    on titleWithNrs.char = AcceptedChars.char
        order by Title, number)group by Title) w
        inner join input on w.title = input.title
      );
;-- -. . -..- - / . -. - .-. -.--
with
input as (select title, url from scrubb_names limit 100)
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url,input.title from (select
        Title,group_concat(char,'') z from (select Title, number, titleWithNrs.char
            from
                titleWithNrs
            inner join
                AcceptedChars
                    on titleWithNrs.char = AcceptedChars.char
        order by Title, number)group by Title) w
        inner join input on w.title = input.title;
;-- -. . -..- - / . -. - .-. -.--
select url, titlex from
   (
    with
input as (select title, url from scrubb_names limit 1000)
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url,input.title from (select
        Title,group_concat(char,'') z from (select Title, number, titleWithNrs.char
            from
                titleWithNrs
            inner join
                AcceptedChars
                    on titleWithNrs.char = AcceptedChars.char
        order by Title, number)group by Title) w
        inner join input on w.title = input.title
      );
;-- -. . -..- - / . -. - .-. -.--
with
input as (select title, url from scrubb_names ORDER length(title) desc limit 1000  )
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url,input.title from (select
        Title,group_concat(char,'') z from (select Title, number, titleWithNrs.char
            from
                titleWithNrs
            inner join
                AcceptedChars
                    on titleWithNrs.char = AcceptedChars.char
        order by Title, number)group by Title) w
        inner join input on w.title = input.title;
;-- -. . -..- - / . -. - .-. -.--
with
input as (select title, url from scrubb_names ORDER by length(title) desc limit 1000  )
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url,input.title from (select
        Title,group_concat(char,'') z from (select Title, number, titleWithNrs.char
            from
                titleWithNrs
            inner join
                AcceptedChars
                    on titleWithNrs.char = AcceptedChars.char
        order by Title, number)group by Title) w
        inner join input on w.title = input.title;
;-- -. . -..- - / . -. - .-. -.--
with
input as (select title, url from scrubb_names ORDER by length(title) desc limit 100 )
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url,input.title from (select
        Title,group_concat(char,'') z from (select Title, number, titleWithNrs.char
            from
                titleWithNrs
            inner join
                AcceptedChars
                    on titleWithNrs.char = AcceptedChars.char
        order by Title, number)group by Title) w
        inner join input on w.title = input.title;
;-- -. . -..- - / . -. - .-. -.--
input as (select title, url from scrubb_names ORDER by length(title) desc limit 100 )
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url,input.title from (select
        Title,group_concat(char,'') z from (
            select Title, number, ifnull(AcceptedChars.char,' ')
            from
                titleWithNrs
            left outer join
                AcceptedChars
                    using (char)

        order by Title, number)
    group by Title) w
        inner join input on w.title = input.title;
;-- -. . -..- - / . -. - .-. -.--
with
input as (select title, url from scrubb_names ORDER by length(title) desc limit 100 )
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url,input.title from (select
        Title,group_concat(char,'') z from (
            select Title, number, ifnull(AcceptedChars.char,' ') char
            from
                titleWithNrs
            left outer join
                AcceptedChars
                    using (char)

        order by Title, number)
    group by Title) w
        inner join input on w.title = input.title;
;-- -. . -..- - / . -. - .-. -.--
with
input as (select title, url from scrubb_names ORDER by length(title) desc limit 100 )
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,numbers as (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series)
   ,titleWithNrs as (select distinct Title, number, substr(Title,number,1) char from input cross join numbers where number <= length(Title))


    select z titlex, url,input.title src from (select
        Title,group_concat(char,'') z from (
            select Title, number, ifnull(AcceptedChars.char,' ') char
            from
                titleWithNrs
            left outer join
                AcceptedChars
                    using (char)

        order by Title, number)
    group by Title) w
        inner join input on w.title = input.title;
;-- -. . -..- - / . -. - .-. -.--
with
input as (select title, url from scrubb_names ORDER by length(title) desc limit 100 )
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,charsWithNr as (select distinct Title, number, substr(Title,number,1) char from input cross join (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series) numbers where number <= length(Title))

    select * from charsWithNr;
;-- -. . -..- - / . -. - .-. -.--
with
input as (select title, url from scrubb_names ORDER by length(title) desc limit 1000 )
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,charsWithNr as (select distinct Title, number, substr(Title,number,1) char from input cross join (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series) numbers where number <= length(Title))
    select z titlex, url, input.title src
    from (select Title,
                 group_concat(char, '') z
          from (select Title, number, ifnull(AcceptedChars.char, ' ') char from charsWithNr left outer join AcceptedChars using (char)

                   order by Title, number)
          group by Title) w
             inner join input on w.title = input.title;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW Trimmed as --with splitByCharAndFilter
    select url, titlex from
   (
    with
    input as (select title, url from scrubb_names ORDER by length(title) desc limit 1000 )
   ,AcceptedChars as ( select char from ASCII_REF where ASCII_REF.number between 65 and 90 or ASCII_REF.number between 97 and 122 union select ' ' union select '(' union select ')' union select '-' union select '|' union select '*' )
   ,charsWithNr as (select distinct Title, number, substr(Title,number,1) char from input cross join (WITH RECURSIVE generate_series(value) AS ( SELECT 1 UNION ALL SELECT value + 1 FROM generate_series WHERE value + 1 <= 4000 ) select value number from generate_series) numbers where number <= length(Title))
    select z titlex, url, input.title src
    from (select Title,
                 group_concat(char, '') z
          from (select Title, number, ifnull(AcceptedChars.char, ' ') char from charsWithNr left outer join AcceptedChars using (char)

                   order by Title, number)
          group by Title) w
             inner join input on w.title = input.title
      );
;-- -. . -..- - / . -. - .-. -.--
create view splitTrimmedBySpaces
as 
    WITH
     tosplit as (select titlex from Trimmed)

     ,split(src,word, str) AS
         (SELECT titlex,'', titlex || ' ' from ToSplit
         UNION ALL
         SELECT src,substr(str, 0, instr(str, ' ')),
                substr(str, instr(str, ' ') + 1)
         FROM split WHERE str != '')
select * from split;