CREATE VIEW "[Tool]ReocuringNames" as
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select url, titlex, cc, word, x
            from PSOSOneTabIdea xyz
                     cross join
                 (WITH split(word, str) AS
                     (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex, cc
                     from PSOSOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.titlex), lower(abs.word))
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc
limit 100;

