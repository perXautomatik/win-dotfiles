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

create returnUniqueTimeStringsFromSourceToOutput

create outputToinput

create InsertInputNamesAsBookmarkFoldersOutputRoot
        (fetching top root dir, then after insert, return that)

create crossJoininputOutput
(
select root,name from input,output as lvl1nameRoot

select * into #tempInput from lvl1nameRoot
    )

calling  outputToinput


create insertInputRootNameAsBookmarkfolder
(
insert into bookmarks (root,title) fom input table
)
 --   get jds of newly created fikders by method.
    returnFolderIdfromInputRootNameTooutput
(
        select from bookmarks inner join input using(root,name)
        into output.
)

create returnUrlTitleUninqueVisitsFrom

create returnUrlIdByTitleUrl

create returnUrlIdByTitleUrlBookmarkFolder

create returnMostReocuringWordFromCol1Input

create returnInputlistInputWordsAsHirarchialSuggestion
(
/*recursivly gather entries by most common word to least common word.
represent hirachy by altering affected word by it's number?
represent hirarchy with a returnedPathstring, that is appended with a '' or word
each time something is relevant.*/


)

--namingStandard,insteadOfreturnUseOutput


insert into moz_bookmarks (id, type, fk, parent, position, title, keyword_id, folder_type, dateAdded, lastModified)
select *
from inserter

