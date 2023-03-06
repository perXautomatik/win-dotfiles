select substr(url,instr(url,'uri')+3) from urls

where id in (select id from urlsWithDomain where domain = 'chrome-extension:');
;-- -. . -..- - / . -. - .-. -.--
select substr(url,instr(url,'uri')+4) from urls

where id in (select id from urlsWithDomain where domain = 'chrome-extension:');
;-- -. . -..- - / . -. - .-. -.--
update urls
set url = substr(url,instr(url,'uri')+4)

where id in (select id from urlsWithDomain where domain = 'chrome-extension:');
;-- -. . -..- - / . -. - .-. -.--
update urls
set title = title||substr(url,instr(url,'http://www.youporn.com/recommended/') 

where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
update urls
set title = title||substr(url,instr(url,'http://www.youporn.com/recommended/')
where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
select title||substr(url,instr(url,'http://www.youporn.com/recommended/') from urls
where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
select title||substr(url,instr(url,'http://www.youporn.com/recommended/') x from urls
where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
select (title || substr(url,instr(url,'http://www.youporn.com/recommended/')) x from urls
where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
select (title || substr(url,instr(url,'http://www.youporn.com/recommended/')) from urls
where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
select *,(title || substr(url,instr(url,'http://www.youporn.com/recommended/')) from urls where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
select (title||substr(url,instr(url,'http://www.youporn.com/recommended/'))) from urls where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
select (title||substr(url,instr(url,'mmended/'))) from urls where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
select (title||substr(url,instr(url,'mmended/')+6)) from urls where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
select (title||substr(url,instr(url,'mmended/')+7)) from urls where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
update urls set title = (title||substr(url,instr(url,'mmended/')+7)) 
    where title = 'YouPorn - Recommended to You';
;-- -. . -..- - / . -. - .-. -.--
insert into titlesConsiderCorrecting    VALUES

('Tube8 :: Free Sex Videos - The Free Porn Tube Video Site'),
('"feedback loop" burn it''s gone bamdcamp - Google Search'),
('6.066 trillion / 45.348 octillion - Sök på Google');
;-- -. . -..- - / . -. - .-. -.--
insert into TitlesConsiderDeleting    VALUES

('Tube8 :: Free Sex Videos - The Free Porn Tube Video Site'),
('"feedback loop" burn it''s gone bamdcamp - Google Search'),
('6.066 trillion / 45.348 octillion - Sök på Google');
;-- -. . -..- - / . -. - .-. -.--
insert into TitlesConsiderDeleting    VALUES

('PP500 Phono Preamp Preamplifier with Level Volume Controls RCA Input Output 1/4" TRS Output Interfaces for LP Vinyl Turntable|Amplifier| - AliExpress');
;-- -. . -..- - / . -. - .-. -.--
insert into TitlesConsiderDeleting    VALUES

('No Sound: Mistress Devastation and Dirty Muscle Boy, Free Porn | Sex | Porno at Tnaflix');
;-- -. . -..- - / . -. - .-. -.--
insert into NotSuitAbleSynonyms    VALUES

('slut'),(
'fucks'),(
'sexy'),(
'dick'),(
'horny'),(
'babe'),(
'takes'),(
'first'),(
'getting'),(
'1'),(
'loves'),(
'real'),(
'she'),(
'me'),(
'part'),(
'has'),(
'while'),(
'gives'),(
'mouth'),(
'whore'),(
'having'),(
'sexiga'),(
'underkläder'),(
'after'),(
'enjoys');
;-- -. . -..- - / . -. - .-. -.--
create view ReocuringSynonymes as
    select x1.word,x2.word,x3.word,ReocuringNames.title from  
                  ReocuringNames 
                      left outer join get_synonyms x1 on ('%' || x1.word || '%') like ReocuringNames.title
                     left outer join get_synonyms x2 on  ('%' || x2.word || '%') like ReocuringNames.title and x1.word <> x2.word 
                    left outer join get_synonyms x3 on  ('%' || x3.word || '%') like ReocuringNames.title and x1.word <> x3.word and x3.word <> x2.word;
;-- -. . -..- - / . -. - .-. -.--
select x1.word,x2.word,x3.word,ReocuringNames.title from
                  ReocuringNames
                      left outer join get_synonyms x1 on ('%' || x1.word || '%') like ReocuringNames.title
                     left outer join get_synonyms x2 on  ('%' || x2.word || '%') like ReocuringNames.title and x1.word <> x2.word
                    left outer join get_synonyms x3 on  ('%' || x3.word || '%') like ReocuringNames.title and x1.word <> x3.word and x3.word <> x2.word

    where x1.word is not null
       or x3.word is not null
       or x2.word is not null;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ReocuringNames Zsad CROSS JOIN

    (WITH split(word, str) AS ( SELECT '',titlex||' ' from (select (trim(SUBSTR(titlex, 0, INSTR(titlex, '-')))) titlex from
ReocuringNames urlsx where Zsad.title = urlsx.title )
UNION ALL SELECT substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!='' ) SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word) A;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ReocuringNames Zsad CROSS JOIN

    (WITH split(word, str) AS ( SELECT '',titlex||' ' from (select (trim(SUBSTR(titlex, 0, INSTR(titlex, '-')))) titlex from
ReocuringNames urlsx where Zsad.groupAt = urlsx.groupAt )
UNION ALL SELECT substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!='' ) SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word) A;
;-- -. . -..- - / . -. - .-. -.--
select x1.word
           --,x2.word,x3.word
         ,ReocuringNames.title from
                  ReocuringNames
                      left outer join get_synonyms x1 on ('%' || x1.word || '%') like ReocuringNames.title
      where x1.word is not null;
;-- -. . -..- - / . -. - .-. -.--
SELECT *, (SELECT word from get_synonyms where xzxvb.title like '%' || word || '%' limit 1 order by get_synonyms.x desc)  FROM ReocuringNames xzxvb;
;-- -. . -..- - / . -. - .-. -.--
SELECT *, (SELECT word from get_synonyms where xzxvb.title like '%' || word || '%' limit 1 order by x desc)  FROM ReocuringNames xzxvb;
;-- -. . -..- - / . -. - .-. -.--
SELECT *, (SELECT word from get_synonyms where xzxvb.title like '%' || word || '%' limit 1)  FROM ReocuringNames xzxvb;
;-- -. . -..- - / . -. - .-. -.--
insert into NotSuitAbleSynonyms    VALUES

('s');
;-- -. . -..- - / . -. - .-. -.--
insert into NotSuitAbleSynonyms    VALUES

('videos');
;-- -. . -..- - / . -. - .-. -.--
insert into NotSuitAbleSynonyms    VALUES

('videos'), ('s');
;-- -. . -..- - / . -. - .-. -.--
insert into NotSuitAbleSynonyms    VALUES

('#'),(
'#03'),(
'#1'),(
'#12'),(
'#163'),(
'#2'),(
'#23'),(
'#24'),(
'#3'),(
'#32'),(
'#34'),(
'#361'),(
'#4'),(
'#43'),(
'#435'),(
'#52'),(
'#6'),(
'#65'),(
'#7'),(
'#95'),(
'#homealone'),(
'#julietuncensoredrealitytv'),(
'$50'),(
'$h'),(
'&amp;'),(
'&eacut'),(
'&next'),(
'&pees'),(
''''),(
'''autistic'),(
'''breed'),(
'''dog'),(
'''Ã'''),(
'**dellafrango'),(
'*world'),(
'0'),(
'000'),(
'00007'),(
'002'),(
'004544'),(
'005'),(
'007'),(
'008'),(
'01'),(
'010'),(
'011'),(
'012'),(
'014857730'),(
'016'),(
'0198'),(
'02'),(
'022'),(
'025'),(
'027'),(
'03'),(
'038'),(
'04'),(
'05hd'),(
'06'),(
'07'),(
'086732658'),(
'09'),(
'10'),(
'100'),(
'1014'),(
'102'),(
'1080p'),(
'10p'),(
'11'),(
'112'),(
'11374959'),(
'116'),(
'12'),(
'1208'),(
'12162'),(
'122124'),(
'1247'),(
'128'),(
'1280 × 800'),(
'13'),(
'130154'),(
'131'),(
'134207'),(
'135'),(
'136'),(
'14'),(
'1400 × 954'),(
'146'),(
'1498669855898'),(
'15'),(
'150'),(
'1501762942139'),(
'153709'),(
'159'),(
'16'),(
'1639'),(
'17'),(
'18'),(
'180347'),(
'184'),(
'18yo'),(
'18yr'),(
'19'),(
'19180822'),(
'192483'),(
'192933'),(
'1930s'),(
'195'),(
'1967'),(
'1970'),(
'1975'),(
'1983163479'),(
'1990s'),(
'1997'),(
'19yo'),(
'19yr'),(
'1a'),(
'1bb66408'),(
'1ere'),(
'1fuckdatecom'),(
'1hr'),(
'1qsdkzyy2vc'),(
'1st'),(
'20'),(
'2000'),(
'2002'),(
'2008'),(
'2009'),(
'200kg'),(
'2011'),(
'2012'),(
'2013'),(
'2014'),(
'20140112'),(
'20140803'),(
'2015'),(
'20150210'),(
'20151017'),(
'20151020'),(
'20160703'),(
'20160828'),(
'2017'),(
'20170416'),(
'20170530'),(
'20170628'),(
'20170722'),(
'2018'),(
'2019'),(
'2020'),(
'204'),(
'204307'),(
'205'),(
'21'),(
'212817319058933'),(
'22'),(
'2282561'),(
'23'),(
'233300'),(
'237'),(
'24'),(
'240p'),(
'241'),(
'25'),(
'25mins'),(
'26'),(
'26f02297'),(
'27'),(
'29'),(
'2930130'),(
'293586'),(
'2992477'),(
'2hotdamn'),(
'2nd'),(
'30'),(
'305'),(
'30th'),(
'31'),(
'311'),(
'32'),(
'32hh'),(
'32yo'),(
'33'),(
'3307740'),(
'34'),(
'345'),(
'346875357987545677'),(
'35'),(
'3595055'),(
'35yo'),(
'367'),(
'36ffbustybbw'),(
'3718832'),(
'38'),(
'39'),(
'3animalsextube'),(
'3hole'),(
'3kh3'),(
'3kjj'),(
'3some'),(
'3sum'),(
'4'),(
'40'),(
'400k'),(
'404'),(
'407277'),(
'409714535897817'),(
'420'),(
'4233339'),(
'424'),(
'43'),(
'433'),(
'45'),(
'45y'),(
'463615'),(
'47'),(
'475'),(
'48'),(
'480p'),(
'49'),(
'49fceab6'),(
'4a8c7523e4ed6'),(
'4b'),(
'4c'),(
'4c4f33596aff82bb6e21fe76edcbf6b2'),(
'4k'),(
'4qrs'),(
'5'),(
'50'),(
'502'),(
'502 × 800'),(
'504'),(
'50s'),(
'50yo'),(
'50yr'),(
'51'),(
'5158681'),(
'5188070'),(
'5239858'),(
'52years'),(
'54'),(
'541'),(
'542'),(
'5444345'),(
'54y'),(
'55'),(
'56y'),(
'56yr'),(
'5812'),(
'58yo'),(
'5k'),(
'6'),(
'60'),(
'600k'),(
'6056'),(
'60yr'),(
'61'),(
'618844'),(
'62'),(
'621'),(
'63'),(
'639'),(
'64'),(
'648'),(
'649'),(
'6605616'),(
'67'),(
'68'),(
'683'),(
'69'),(
'6974'),(
'69natural'),(
'6f9617380a37e398b76989d369d6088c'),(
'7'),(
'70'),(
'70s'),(
'71'),(
'712'),(
'714'),(
'720'),(
'720p'),(
'724adult'),(
'73'),(
'736l'),(
'73yr'),(
'76'),(
'76y'),(
'776'),(
'78'),(
'7859015'),(
'790'),(
'8'),(
'80149811'),(
'81'),(
'814683'),(
'82'),(
'820343'),(
'8281'),(
'84'),(
'852471'),(
'854612'),(
'858150'),(
'860211'),(
'8738097'),(
'8th'),(
'90''s'),(
'904772'),(
'90s'),(
'9125'),(
'924171'),(
'925202'),(
'926782'),(
'926891'),(
'94'),(
';'),(
'='),(
'=7c'),(
'=anal=screen='),(
'=desi'),(
'a75');
;-- -. . -..- - / . -. - .-. -.--
SELECT (SELECT word from get_synonyms where xzxvb.groupAt like '%' || word || '%' limit 1) ga,* FROM ReocuringNames xzxvb;
;-- -. . -..- - / . -. - .-. -.--
create view  toGetSynonymsFrom as
    select * from
         ReocuringNames;
;-- -. . -..- - / . -. - .-. -.--
insert into NotSuitAbleSynonyms    VALUES

('la'),(
'mi'),(
'o'),(
'el'),(
'en'),(
'na'),(
);
;-- -. . -..- - / . -. - .-. -.--
insert into NotSuitAbleSynonyms    VALUES

('la'),(
'mi'),(
'o'),(
'el'),(
'en'),(
'na');
;-- -. . -..- - / . -. - .-. -.--
insert into NotSuitAbleSynonyms    VALUES

('y'),(
'con'),(
'por'),(
'una'),(
'le'),(
'su'),(
'se'),(
'un'),(
'que'),(
'lo'),(
'al'),(
'da'),(
'e'),(
'il');
;-- -. . -..- - / . -. - .-. -.--
insert into urls (url, title, last_visit_time)    select *,current_date from "New Text Document";
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW OneTabIdea as select min(url),title,sum(visit_count) c,max(last_visit_time) m
from urls where instr(title,'pornSOS / ')*instr(title,'(') > 0 group by title order by m desc;
;-- -. . -..- - / . -. - .-. -.--
select * from OneTabIdea;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW OneTabIdea as select min(url),substr(title,1,instr(title,':')) titlex,sum(visit_count) c,max(last_visit_time) m
from urls where instr(title,'@ pornSOS.com') > 0 group by titlex order by m desc;
;-- -. . -..- - / . -. - .-. -.--
with titlez as (
     select max((case when length(url)=min(LENGTH(url)) then url else '' end)) url ,substr(title,1,instr(title,' porn:')) titlex,
     sum(visit_count) c,max(last_visit_time) m from urls where instr(title,'@ pornSOS.com') > 0 group by titlex )


select url,titlex || ' (' ||c  || ')' titlex from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with titlez as (
     select min(url) url ,substr(title,1,instr(title,' porn:')) titlex,
     sum(visit_count) c,max(last_visit_time) m from urls where instr(title,'@ pornSOS.com') > 0 group by titlex )


select url,titlex || ' (' ||c  || ')' titlex from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with titlez as (
     select min(url) url ,substr(title,1,instr(title,' porn:')) titlex,
     sum(visit_count) c,max(last_visit_time) m from urls where instr(title,'@ pornSOS.com') > 0 group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),    
    
titlez as (
     select min(urlLen), min(url),substr(title,1,instr(title,' porn:')) titlex,substr(title,instr(title,' porn:'),instr(title,'@ pornSOS.com')) cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,substr(title,instr(title,' porn:'),instr(title,'@ pornSOS.com')) cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,substr(title,instr(title,' porn:')+length(' porn:'),instr(title,'@ pornSOS.com')-length('@ pornSOS.com')) cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,substr(title,instr(title,' porn:')+length(' porn:'),instr(title,' free sex videos')-length(' free sex videos')) cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,substr(title,instr(title,' porn:')+length(' porn:'),instr(substr(title,instr(title,' porn:')+length(' porn:')),' free sex videos')-length(' free sex videos')) cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,substr(title,instr(title,' porn:')+length(' porn:')) cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,
            substr(title,instr(title,' porn:')+length(' porn:'),instr(title,' porn:')) cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,
            substr(substr(title,instr(title,' porn:')+length(' porn:')),1,instr(substr(title,instr(title,' porn:')+length(' porn:')),' ')) cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,
            substr(substr(title,instr(title,' porn:')+length(' porn:')),instr(substr(title,instr(title,' porn:')+length(' porn:')),' ')) cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,
            
                substr(title,instr(title,' porn:')+length(' porn:'),instr(title,'free sex'))
                 cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                substr(title,instr(title,' porn:')+length(' porn:'),length(title)-instr(title,'free sex'))
                 cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),
    
titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                substr(tx,' ') titlex,
    
                 cc,
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),
    
titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                 tx cc,

                 
     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                 substr(tx,instr(tx,' ')) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                 substr(tx,instr(tx,' free ')) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                 substr(tx,1,instr(tx,' free ')) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                 trim(substr(tx,1,instr(tx,' free '))) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                 replace(trim(substr(tx,1,instr(tx,' free '))),',','') cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' free '))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez
order by c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' free '))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez where cc <> 0
order by cc,c desc, m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' free '))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez where cc <> 0
order by c desc,cc , m desc;
;-- -. . -..- - / . -. - .-. -.--
drop view OneTabIdea;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW OneTabIdea as
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' free '))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c  || ')' titlex,cc from titlez where cc <> 0
order by c desc,cc , m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (select *, substr(title,instr(title,' porn:')+length(' porn:')) tx,length(url) urlLen from urls where instr(title,'@ pornSOS.com') > 0 ),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' porn:')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' free '))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ pornSOS.com (' ||c ||','||cc|| ')' titlex from titlez where cc <> 0
order by c desc,cc , m desc;
;-- -. . -..- - / . -. - .-. -.--
select * from OneTabIdea asdqsd cross join
    (WITH split(word, str) AS (
    SELECT '',titlex||' ' from (select (trim(SUBSTR(title, 0, INSTR(title, '-')))) titlex
    from
         asdqsd
             urlsx)
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next);
;-- -. . -..- - / . -. - .-. -.--
select * from OneTabIdea asdqsd cross join
    (WITH split(word, str) AS (
    SELECT '',titlex||' ' from (select (trim(SUBSTR(title, 0, INSTR(title, '-')))) titlex
    from
         OneTabIdea
             urlsx)
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next);
;-- -. . -..- - / . -. - .-. -.--
select * from OneTabIdea asdqsd cross join
    (WITH split(word, str) AS (
    SELECT '',titlex||' ' from (select (trim(SUBSTR(title, 0, INSTR(title, '-')))) titlex
    from
         (select url, titlex title from OneTabIdea)
             urlsx)
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next);
;-- -. . -..- - / . -. - .-. -.--
select * from OneTabIdea asdqsd join
    (WITH split(word, str) AS (
    SELECT '',titlex||' ' from (select (trim(SUBSTR(title, 0, INSTR(title, '-')))) titlex
    from
         (select url, titlex title from OneTabIdea)
             urlsx)
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word) 
    select * from next) ada on instr(asdqsd.titlex,ada.word) <> 0;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
    SELECT '',titlex||' ' from (select (trim(SUBSTR(title, 0, INSTR(title, '-')))) titlex
    from
         (select url, titlex title from OneTabIdea)
             urlsx)
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next;
;-- -. . -..- - / . -. - .-. -.--
select * from OneTabIdea asdqsd join
    (WITH split(word, str) AS (
    SELECT '',titlex||' ' from (select (trim(SUBSTR(title, 0, INSTR(title, '-')))) titlex
    from
         (select url, titlex from OneTabIdea)
             urlsx)
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) ada on instr(asdqsd.titlex,ada.word) <> 0;
;-- -. . -..- - / . -. - .-. -.--
select * from OneTabIdea asdqsd join
    (WITH split(word, str) AS (
    SELECT '',titlex||' ' from (select (trim(SUBSTR(title, 0, INSTR(titlex, '-')))) titlex
    from
         (select url, titlex from OneTabIdea)
             urlsx)
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) ada on instr(asdqsd.titlex,ada.word) <> 0;
;-- -. . -..- - / . -. - .-. -.--
select * from OneTabIdea asdqsd join
    (WITH split(word, str) AS (
    SELECT '',titlex||' ' from (select (trim(SUBSTR(titlex, 0, INSTR(titlex, '-')))) titlex
    from
         (select url, titlex from OneTabIdea)
             urlsx)
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) ada on instr(asdqsd.titlex,ada.word) <> 0;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
    SELECT '',titlex||' ' from (select (trim(SUBSTR(titlex, 0, INSTR(titlex, '-')))) titlex
    from
         (select url, titlex from OneTabIdea)
             urlsx)
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
    SELECT '',titlex||' ' from (select (trim(SUBSTR(titlex, 0, INSTR(titlex, '-')))) titlex
    from
         (select url, titlex from OneTabIdea)
             urlsx)
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
    SELECT '',titlex||' ' from
(select (trim(SUBSTR(title, 0, INSTR(title, '-')))) titlex
 from (
          with yrls as (select id,
                               url,
                               title
                        from urls
                        where instr(title, '@ pornSOS.com') > 0),
               titlez as (
                   select min(url)                                 url,
                          substr(title, 1, instr(title, ' porn:')) titlex
                   from yrls
                   group by titlex)
                  ,
               titlex as (select lower(title) title from (select url, titlex title from titlez))
          select title
          from titlex
      )
)
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
    SELECT '',titlex||' ' from
        (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                  from urls
                  where instr(title, '@ pornSOS.com') > 0
                  group by title
              
        )
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next;
;-- -. . -..- - / . -. - .-. -.--
select * from oneTabIdea xyz cross join    

(WITH split(word, str) AS (
    SELECT '',titlex||' ' from
        (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                  from urls
                  where instr(title, '@ pornSOS.com') > 0
                  group by title

        )
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) abs where instr(xyz.titlex, abs.word) <> 0;
;-- -. . -..- - / . -. - .-. -.--
select * from oneTabIdea xyz cross join

(WITH split(word, str) AS (
    SELECT '',titlex||' ' from
        (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                  from urls
                  where instr(title, '@ pornSOS.com') > 0
                  group by title

        )
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) abs where instr(xyz.titlex, abs.word) <> 0 order by titlex,x desc;
;-- -. . -..- - / . -. - .-. -.--
select * from oneTabIdea xyz cross join

(WITH split(word, str) AS (
    SELECT '',titlex||' ' from
        (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                  from urls
                  where instr(title, '@ pornSOS.com') > 0
                  group by title

        )
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) abs where instr(lower(xyz.titlex), abs.word) <> 0 order by titlex,x desc;
;-- -. . -..- - / . -. - .-. -.--
select max(titlex) title, sum(x) xsum, group_concat(word) from 
(select * from oneTabIdea xyz cross join

(WITH split(word, str) AS (
    SELECT '',titlex||' ' from
        (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                  from urls
                  where instr(title, '@ pornSOS.com') > 0
                  group by title

        )
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) abs where instr(lower(xyz.titlex), abs.word) <> 0 order by titlex,x desc) group by url;
;-- -. . -..- - / . -. - .-. -.--
select max(titlex) title, sum(x) xsum, group_concat(word) from
(select * from oneTabIdea xyz cross join

(WITH split(word, str) AS (
    SELECT '',titlex||' ' from
        (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                  from urls
                  where instr(title, '@ pornSOS.com') > 0
                  group by title

        )
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) abs where instr(lower(xyz.titlex), abs.word) <> 0 order by titlex,x desc) group by url order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select max(titlex) title, sum(x) xsum, group_concat(word) words from
(select * from oneTabIdea xyz cross join

(WITH split(word, str) AS (
    SELECT '',titlex||' ' from
        (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                  from urls
                  where instr(title, '@ pornSOS.com') > 0
                  group by title

        )
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) abs where instr(lower(xyz.titlex), abs.word) <> 0 order by titlex,x desc) group by url order by xsum desc,words;
;-- -. . -..- - / . -. - .-. -.--
select min(title),sum(xsum),words from (select max(titlex) title, sum(x) xsum, group_concat(word) words from
(select * from oneTabIdea xyz cross join

(WITH split(word, str) AS (
    SELECT '',titlex||' ' from
        (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                  from urls
                  where instr(title, '@ pornSOS.com') > 0
                  group by title

        )
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) abs where instr(lower(xyz.titlex), abs.word) <> 0 order by titlex,x desc) group by url order by xsum desc,words) group by words;
;-- -. . -..- - / . -. - .-. -.--
select min(title),sum(xsum) xsum,words from (select max(titlex) title, sum(x) xsum, group_concat(word) words from
(select * from oneTabIdea xyz cross join

(WITH split(word, str) AS (
    SELECT '',titlex||' ' from
        (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                  from urls
                  where instr(title, '@ pornSOS.com') > 0
                  group by title

        )
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) abs where instr(lower(xyz.titlex), abs.word) <> 0 order by titlex,x desc) group by url order by xsum desc,words) group by words order by xsum;
;-- -. . -..- - / . -. - .-. -.--
select min(title),sum(xsum) xsum,words from (select max(titlex) title, sum(x) xsum, group_concat(word) words from
(select * from oneTabIdea xyz cross join

(WITH split(word, str) AS (
    SELECT '',titlex||' ' from
        (select lower(substr(title, 1, instr(title, ' porn:'))) titlex, min(url) url
                  from urls
                  where instr(title, '@ pornSOS.com') > 0
                  group by title

        )
    UNION ALL SELECT
    substr(str, 0, instr(str, ' ')),substr(str, instr(str, ' ')+1)FROM split WHERE str!=''
),
    next as (SELECT count(split.word) x, split.word
    FROM
         split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
            where NotSuitAbleSynonyms.word is null
    group by split.word)
    select * from next) abs where instr(lower(xyz.titlex), abs.word) <> 0 order by titlex,x desc) group by url order by xsum desc,words) group by words order by xsum   desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
            where instr(lower(xyz.titlex), abs.word) <> 0
            --order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
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
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
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
                  from next;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                                group by

                                        (case split.word
                                                  when 'africa' then 'african'

                                            when 'aunt' then 'aunty'
                                            when 'aunti' then  'aunty'
                                            when 'auntie' then 'aunty'
                                            when 'brasilena' then 'brazilian'
                                            when 'breading' then 'breeding'
                                            when 'butters' then 'butter'
                                           when 'cambodia' then 'cambodian'
                                           when 'creampie' then 'cream'
                                           when 'creamed' then 'cream'
                                           when 'cuck' then 'cuckold'
                                           when 'culito' then 'culo'
                                           when 'cullo' then 'culo'
                                           when 'dumpster' then 'dump'
                                           when 'ebonic' then 'ebony'
                                           when 'fatt' then 'fat'
                                           when 'firtile' then 'fertile'
                                                 when 'girlfriend' then 'gf'
                                                 when 'gothic' then 'goth'
                                           when 'grandes' then 'grande'
                                                 when 'indian' then 'india'
                                                 when 'interacial' then 'interracial'                                           when 'firtile' then 'fertile'
                                                 when 'loads' then 'load'
                                                 when 'malaystreet' then 'malay'                                           when 'firtile' then 'fertile'
                                                 when 'malaysian' then 'malay'
                                                 when 'marriage' then 'married'                                           when 'firtile' then 'fertile'
                                                 when 'mexicana' then 'mexican'
                                                 when 'milfe' then 'milf'
                                           when 'misionary' then 'missionary'
                                                 when 'missionaty' then 'missionary'
                                                 when 'negras' then 'negra'                                           when 'firtile' then 'fertile'
                                                 when 'neighbor' then 'neighbour'
                                                 when 'nutt' then 'nut'                                           when 'firtile' then 'fertile'
                                                 when 'nutted' then 'nut'
                                                 when 'nuttedf' then 'nut'                                           when 'firtile' then 'fertile'
                                                 when 'nutting' then 'nut'
                                                 when 'older' then 'old'
                                           when 'outdoors' then 'outdoor'
                                                 when 'pissing' then 'peeing'
                                                 when 'preggy' then 'preg'                                        when 'firtile' then 'fertile'
                                                 when 'pregnant' then 'preg'
                                                 when 'preggo'  then 'preg'                                           when 'firtile' then 'fertile'
                                                 when 'riding' then 'ride'
                                                 when 'share' then 'shared'                                           when 'firtile' then 'fertile'
                                                 when 'shares' then 'shared'
                                                 when 'sharing' then 'shared'
                                         when 'sissta' then 'sista'
                                                 when 'squirting' then 'squirt'
                                                 when 'ssbw' then 'ssbbw'                                        when 'firtile' then 'fertile'
                                                 when 'swingers' then 'swinger'
                                                 when 'thailand'  then 'thai'                                           when 'firtile' then 'fertile'
                                                 when 'thottie' then 'thot'
                                                 when 'thott' then 'thot'                                           when 'firtile' then 'fertile'
                                                 when 'threesum' then 'three'
                                                 when 'threesome' then 'three'
                                                                                     when 'sissta' then 'sista'
                                                 when 'turkish' then 'turk'
                                                 when 'weat' then 'wet'  end)                                      when 'firtile' then 'fertile'
                           )

                  select *
                  from next) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                                group by

                                        (case split.word
                                             when 'africa' then 'african'

                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'firtile' then 'fertile'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'firtile' then 'fertile'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end)                                  
                           )

                  select *
                  from next) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                                group by

                                        (case split.word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end)
                           )

                  select *
                  from next) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                       adxafas as (select (case split.word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end) word, str from split),
                       next as (SELECT count(split.word) x, split.word
                                FROM adxafas
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by

                                        word
                           )

                  select *
                  from next) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                       adxafas as (select (case word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end) word, str from split),
                       next as (SELECT count(split.word) x, split.word
                                FROM adxafas
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by

                                        word
                           )

                  select *
                  from next) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                       adxafas as (select (case word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end) word, str from split),
                       next as (SELECT count(split.word) x, split.word
                                FROM adxafas split
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by

                                        word
                           )

                  select *
                  from next) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                       adxafas as (select (case word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end) word, str from split),
                       next as (SELECT count(split.word) x, split.word
                                FROM adxafas split
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by

                                        split.word
                           )

                  select *
                  from next) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select *
            from oneTabIdea xyz
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
                       adxafas as (select (case word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end) word, str from split),
                       next as (SELECT count(split.word) x, split.word
                                FROM adxafas split
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by

                                        split.word
                           )

                  select *
                  from next) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          );
;-- -. . -..- - / . -. - .-. -.--
select *
            from oneTabIdea xyz
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
                       adxafas as (select (case word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end) word, str from split),
                       next as (SELECT count(split.word) x, split.word
                                FROM adxafas split
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by

                                        split.word
                           )

                  select *
                  from next) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
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
                       adxafas as (select (case word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end) word, str from split),
                       next as (SELECT count(split.word) x, split.word
                                FROM adxafas split
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by

                                        split.word
                           )

                  select *
                  from next;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                                group by

                                        split.word
                           ),
                         adxafas as (select (case word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end) word,
                                            x
                                     from next)
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                                group by

                                        split.word
                           ),
                         adxafas as (select (case word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end) word,
                                            sum(x) x
                                     from next group by word )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by (case word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' end) )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by (case word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet' 
                                            else word                                        end) )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by lower(case word
                                             when 'africa' then 'african'
                                             when 'aunt' then 'aunty'
                                             when 'aunti' then 'aunty'
                                             when 'auntie' then 'aunty'
                                             when 'brasilena' then 'brazilian'
                                             when 'breading' then 'breeding'
                                             when 'butters' then 'butter'
                                             when 'cambodia' then 'cambodian'
                                             when 'creampie' then 'cream'
                                             when 'creamed' then 'cream'
                                             when 'cuck' then 'cuckold'
                                             when 'culito' then 'culo'
                                             when 'cullo' then 'culo'
                                             when 'dumpster' then 'dump'
                                             when 'ebonic' then 'ebony'
                                             when 'fatt' then 'fat'
                                             when 'firtile' then 'fertile'
                                             when 'girlfriend' then 'gf'
                                             when 'gothic' then 'goth'
                                             when 'grandes' then 'grande'
                                             when 'indian' then 'india'
                                             when 'interacial' then 'interracial'
                                             when 'loads' then 'load'
                                             when 'malaystreet' then 'malay'
                                             when 'malaysian' then 'malay'
                                             when 'marriage' then 'married'
                                             when 'mexicana' then 'mexican'
                                             when 'milfe' then 'milf'
                                             when 'misionary' then 'missionary'
                                             when 'missionaty' then 'missionary'
                                             when 'negras' then 'negra'
                                             when 'neighbor' then 'neighbour'
                                             when 'nutt' then 'nut'
                                             when 'nutted' then 'nut'
                                             when 'nuttedf' then 'nut'
                                             when 'nutting' then 'nut'
                                             when 'older' then 'old'
                                             when 'outdoors' then 'outdoor'
                                             when 'pissing' then 'peeing'
                                             when 'preggy' then 'preg'
                                             when 'pregnant' then 'preg'
                                             when 'preggo' then 'preg'
                                             when 'riding' then 'ride'
                                             when 'share' then 'shared'
                                             when 'shares' then 'shared'
                                             when 'sharing' then 'shared'
                                             when 'sissta' then 'sista'
                                             when 'squirting' then 'squirt'
                                             when 'ssbw' then 'ssbbw'
                                             when 'swingers' then 'swinger'
                                             when 'thailand' then 'thai'
                                             when 'thottie' then 'thot'
                                             when 'thott' then 'thot'
                                             when 'threesum' then 'three'
                                             when 'threesome' then 'three'
                                             when 'turkish' then 'turk'
                                             when 'weat' then 'wet'
                                            else word                                        end) )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by 
                                                        --lower(case word when 'africa' then 'african' when 'aunt' then 'aunty' when 'aunti' then 'aunty' when 'auntie' then 'aunty' when 'brasilena' then 'brazilian' when 'breading' then 'breeding' when 'butters' then 'butter' when 'cambodia' then 'cambodian' when 'creampie' then 'cream' when 'creamed' then 'cream' when 'cuck' then 'cuckold' when 'culito' then 'culo' when 'cullo' then 'culo' when 'dumpster' then 'dump' when 'ebonic' then 'ebony' when 'fatt' then 'fat' when 'firtile' then 'fertile' when 'girlfriend' then 'gf' when 'gothic' then 'goth' when 'grandes' then 'grande' when 'indian' then 'india' when 'interacial' then 'interracial' when 'loads' then 'load' when 'malaystreet' then 'malay' when 'malaysian' then 'malay' when 'marriage' then 'married' when 'mexicana' then 'mexican' when 'milfe' then 'milf' when 'misionary' then 'missionary' when 'missionaty' then 'missionary' when 'negras' then 'negra' when 'neighbor' then 'neighbour' when 'nutt' then 'nut' when 'nutted' then 'nut' when 'nuttedf' then 'nut' when 'nutting' then 'nut' when 'older' then 'old' when 'outdoors' then 'outdoor' when 'pissing' then 'peeing' when 'preggy' then 'preg' when 'pregnant' then 'preg' when 'preggo' then 'preg' when 'riding' then 'ride' when 'share' then 'shared' when 'shares' then 'shared' when 'sharing' then 'shared' when 'sissta' then 'sista' when 'squirting' then 'squirt' when 'ssbw' then 'ssbbw' when 'swingers' then 'swinger' when 'thailand' then 'thai' when 'thottie' then 'thot' when 'thott' then 'thot' when 'threesum' then 'three' when 'threesome' then 'three' when 'turkish' then 'turk' when 'weat' then 'wet'
                                            --else 
                                                word                                        
                                                            --end)
                             )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select * from urls where instr(url,'nudevista');
;-- -. . -..- - / . -. - .-. -.--
select * from urls where instr(url,'nudevista') and instr(title,'videos');
;-- -. . -..- - / . -. - .-. -.--
select * from urls where instr(url,'nudevista') and instr(title,'videos')
    group by title;
;-- -. . -..- - / . -. - .-. -.--
select max(id), max(url), title, sum(visit_count), max(last_visit_time)
from urls where instr(url,'nudevista')*instr(title,'videos');
;-- -. . -..- - / . -. - .-. -.--
select max(id), max(url), title, sum(visit_count), max(last_visit_time)
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title;
;-- -. . -..- - / . -. - .-. -.--
select max(id), max(url), title, sum(visit_count), max(last_visit_time),

substr(title,instr(title,'Tube')+length('Tube')) tx,length(url) urlLen 
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title;
;-- -. . -..- - / . -. - .-. -.--
select max(id), max(url) url, title, sum(visit_count), max(last_visit_time),

substr(title,instr(title,'Tube Search (')+length('Tube Search (')) tx,length(url) urlLen
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (
select max(id), max(url) url, title, sum(visit_count) visit_count, max(last_visit_time) last_visit_time,

substr(title,instr(title,'Tube Search (')+length('Tube Search (')) tx,length(url) urlLen
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title
),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' Tube ')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' videos '))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ NudeVista (' ||c  || ')' titlex,cc from titlez where cc <> 0
order by c desc,cc , m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (
select max(id), max(url) url, title, sum(visit_count) visit_count, max(last_visit_time) last_visit_time,

substr(title,instr(title,'Tube Search (')+length('Tube Search (')) tx,length(url) urlLen
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title
),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' Tube ')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' videos '))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ NudeVista (' ||c  || ')' titlex,cc from titlez;
;-- -. . -..- - / . -. - .-. -.--
select max(id), max(url) url, title, sum(visit_count) visit_count, max(last_visit_time) last_visit_time,

substr(title,instr(title,'Tube Search (')+length('Tube Search (')) tx,length(url) urlLen
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (
select max(id), max(url) url, title, sum(visit_count) visit_count, max(last_visit_time) last_visit_time,

substr(title,instr(title,'Tube Search (')+length('Tube Search (')) tx,length(url) urlLen,
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title
),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' Tube ')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ NudeVista (' ||c  || ')' titlex,cc from titlez where c <> 0
order by c desc,cc , m desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (
select max(id), max(url) url, title, sum(visit_count) visit_count, max(last_visit_time) last_visit_time,

substr(title,instr(title,'Tube Search (')+length('Tube Search (')) tx,length(url) urlLen
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title
),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' Tube ')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ NudeVista (' ||c  || ')' titlex,cc from titlez where cc <> 0
order by c desc,cc , m desc;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW NudevistaOneTabIdea as
with yrls as (
select max(id), max(url) url, title, sum(visit_count) visit_count, max(last_visit_time) last_visit_time,

substr(title,instr(title,'Tube Search (')+length('Tube Search (')) tx,length(url) urlLen
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title
),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' Tube ')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ NudeVista (' ||c  || ')' titlex,cc from titlez where cc <> 0
order by c desc,cc , m desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by
                                                        --lower(case word when 'africa' then 'african' when 'aunt' then 'aunty' when 'aunti' then 'aunty' when 'auntie' then 'aunty' when 'brasilena' then 'brazilian' when 'breading' then 'breeding' when 'butters' then 'butter' when 'cambodia' then 'cambodian' when 'creampie' then 'cream' when 'creamed' then 'cream' when 'cuck' then 'cuckold' when 'culito' then 'culo' when 'cullo' then 'culo' when 'dumpster' then 'dump' when 'ebonic' then 'ebony' when 'fatt' then 'fat' when 'firtile' then 'fertile' when 'girlfriend' then 'gf' when 'gothic' then 'goth' when 'grandes' then 'grande' when 'indian' then 'india' when 'interacial' then 'interracial' when 'loads' then 'load' when 'malaystreet' then 'malay' when 'malaysian' then 'malay' when 'marriage' then 'married' when 'mexicana' then 'mexican' when 'milfe' then 'milf' when 'misionary' then 'missionary' when 'missionaty' then 'missionary' when 'negras' then 'negra' when 'neighbor' then 'neighbour' when 'nutt' then 'nut' when 'nutted' then 'nut' when 'nuttedf' then 'nut' when 'nutting' then 'nut' when 'older' then 'old' when 'outdoors' then 'outdoor' when 'pissing' then 'peeing' when 'preggy' then 'preg' when 'pregnant' then 'preg' when 'preggo' then 'preg' when 'riding' then 'ride' when 'share' then 'shared' when 'shares' then 'shared' when 'sharing' then 'shared' when 'sissta' then 'sista' when 'squirting' then 'squirt' when 'ssbw' then 'ssbbw' when 'swingers' then 'swinger' when 'thailand' then 'thai' when 'thottie' then 'thot' when 'thott' then 'thot' when 'threesum' then 'three' when 'threesome' then 'three' when 'turkish' then 'turk' when 'weat' then 'wet'
                                            --else
                                                word
                                                            --end)
                             )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
create view groupByWords as

select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by
                                                        --lower(case word when 'africa' then 'african' when 'aunt' then 'aunty' when 'aunti' then 'aunty' when 'auntie' then 'aunty' when 'brasilena' then 'brazilian' when 'breading' then 'breeding' when 'butters' then 'butter' when 'cambodia' then 'cambodian' when 'creampie' then 'cream' when 'creamed' then 'cream' when 'cuck' then 'cuckold' when 'culito' then 'culo' when 'cullo' then 'culo' when 'dumpster' then 'dump' when 'ebonic' then 'ebony' when 'fatt' then 'fat' when 'firtile' then 'fertile' when 'girlfriend' then 'gf' when 'gothic' then 'goth' when 'grandes' then 'grande' when 'indian' then 'india' when 'interacial' then 'interracial' when 'loads' then 'load' when 'malaystreet' then 'malay' when 'malaysian' then 'malay' when 'marriage' then 'married' when 'mexicana' then 'mexican' when 'milfe' then 'milf' when 'misionary' then 'missionary' when 'missionaty' then 'missionary' when 'negras' then 'negra' when 'neighbor' then 'neighbour' when 'nutt' then 'nut' when 'nutted' then 'nut' when 'nuttedf' then 'nut' when 'nutting' then 'nut' when 'older' then 'old' when 'outdoors' then 'outdoor' when 'pissing' then 'peeing' when 'preggy' then 'preg' when 'pregnant' then 'preg' when 'preggo' then 'preg' when 'riding' then 'ride' when 'share' then 'shared' when 'shares' then 'shared' when 'sharing' then 'shared' when 'sissta' then 'sista' when 'squirting' then 'squirt' when 'ssbw' then 'ssbbw' when 'swingers' then 'swinger' when 'thailand' then 'thai' when 'thottie' then 'thot' when 'thott' then 'thot' when 'threesum' then 'three' when 'threesome' then 'three' when 'turkish' then 'turk' when 'weat' then 'wet'
                                            --else
                                                word
                                                            --end)
                             )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
                     cross join

                 (WITH split(word, str) AS (
                     SELECT '', titlex || ' '
                     from OneTabIdea
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by
                                                        --lower(case word when 'africa' then 'african' when 'aunt' then 'aunty' when 'aunti' then 'aunty' when 'auntie' then 'aunty' when 'brasilena' then 'brazilian' when 'breading' then 'breeding' when 'butters' then 'butter' when 'cambodia' then 'cambodian' when 'creampie' then 'cream' when 'creamed' then 'cream' when 'cuck' then 'cuckold' when 'culito' then 'culo' when 'cullo' then 'culo' when 'dumpster' then 'dump' when 'ebonic' then 'ebony' when 'fatt' then 'fat' when 'firtile' then 'fertile' when 'girlfriend' then 'gf' when 'gothic' then 'goth' when 'grandes' then 'grande' when 'indian' then 'india' when 'interacial' then 'interracial' when 'loads' then 'load' when 'malaystreet' then 'malay' when 'malaysian' then 'malay' when 'marriage' then 'married' when 'mexicana' then 'mexican' when 'milfe' then 'milf' when 'misionary' then 'missionary' when 'missionaty' then 'missionary' when 'negras' then 'negra' when 'neighbor' then 'neighbour' when 'nutt' then 'nut' when 'nutted' then 'nut' when 'nuttedf' then 'nut' when 'nutting' then 'nut' when 'older' then 'old' when 'outdoors' then 'outdoor' when 'pissing' then 'peeing' when 'preggy' then 'preg' when 'pregnant' then 'preg' when 'preggo' then 'preg' when 'riding' then 'ride' when 'share' then 'shared' when 'shares' then 'shared' when 'sharing' then 'shared' when 'sissta' then 'sista' when 'squirting' then 'squirt' when 'ssbw' then 'ssbbw' when 'swingers' then 'swinger' when 'thailand' then 'thai' when 'thottie' then 'thot' when 'thott' then 'thot' when 'threesum' then 'three' when 'threesome' then 'three' when 'turkish' then 'turk' when 'weat' then 'wet'
                                            --else
                                                word
                                                            --end)
                             )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
                     cross join

                 (WITH split(word, str) AS (
                     SELECT '', titlex || ' '
                     from (select url, substr(titlex,1,instr(titlex,' @')) titlex, cc from OneTabIdea)
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by
                                                        --lower(case word when 'africa' then 'african' when 'aunt' then 'aunty' when 'aunti' then 'aunty' when 'auntie' then 'aunty' when 'brasilena' then 'brazilian' when 'breading' then 'breeding' when 'butters' then 'butter' when 'cambodia' then 'cambodian' when 'creampie' then 'cream' when 'creamed' then 'cream' when 'cuck' then 'cuckold' when 'culito' then 'culo' when 'cullo' then 'culo' when 'dumpster' then 'dump' when 'ebonic' then 'ebony' when 'fatt' then 'fat' when 'firtile' then 'fertile' when 'girlfriend' then 'gf' when 'gothic' then 'goth' when 'grandes' then 'grande' when 'indian' then 'india' when 'interacial' then 'interracial' when 'loads' then 'load' when 'malaystreet' then 'malay' when 'malaysian' then 'malay' when 'marriage' then 'married' when 'mexicana' then 'mexican' when 'milfe' then 'milf' when 'misionary' then 'missionary' when 'missionaty' then 'missionary' when 'negras' then 'negra' when 'neighbor' then 'neighbour' when 'nutt' then 'nut' when 'nutted' then 'nut' when 'nuttedf' then 'nut' when 'nutting' then 'nut' when 'older' then 'old' when 'outdoors' then 'outdoor' when 'pissing' then 'peeing' when 'preggy' then 'preg' when 'pregnant' then 'preg' when 'preggo' then 'preg' when 'riding' then 'ride' when 'share' then 'shared' when 'shares' then 'shared' when 'sharing' then 'shared' when 'sissta' then 'sista' when 'squirting' then 'squirt' when 'ssbw' then 'ssbbw' when 'swingers' then 'swinger' when 'thailand' then 'thai' when 'thottie' then 'thot' when 'thott' then 'thot' when 'threesum' then 'three' when 'threesome' then 'three' when 'turkish' then 'turk' when 'weat' then 'wet'
                                            --else
                                                word
                                                            --end)
                             )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
drop view groupByWords;
;-- -. . -..- - / . -. - .-. -.--
create view groupByWords as

select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from oneTabIdea xyz
                     cross join

                 (WITH split(word, str) AS (
                     SELECT '', titlex || ' '
                     from (select url, substr(titlex,1,instr(titlex,' @')) titlex, cc from OneTabIdea)
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by
                                                        --lower(case word when 'africa' then 'african' when 'aunt' then 'aunty' when 'aunti' then 'aunty' when 'auntie' then 'aunty' when 'brasilena' then 'brazilian' when 'breading' then 'breeding' when 'butters' then 'butter' when 'cambodia' then 'cambodian' when 'creampie' then 'cream' when 'creamed' then 'cream' when 'cuck' then 'cuckold' when 'culito' then 'culo' when 'cullo' then 'culo' when 'dumpster' then 'dump' when 'ebonic' then 'ebony' when 'fatt' then 'fat' when 'firtile' then 'fertile' when 'girlfriend' then 'gf' when 'gothic' then 'goth' when 'grandes' then 'grande' when 'indian' then 'india' when 'interacial' then 'interracial' when 'loads' then 'load' when 'malaystreet' then 'malay' when 'malaysian' then 'malay' when 'marriage' then 'married' when 'mexicana' then 'mexican' when 'milfe' then 'milf' when 'misionary' then 'missionary' when 'missionaty' then 'missionary' when 'negras' then 'negra' when 'neighbor' then 'neighbour' when 'nutt' then 'nut' when 'nutted' then 'nut' when 'nuttedf' then 'nut' when 'nutting' then 'nut' when 'older' then 'old' when 'outdoors' then 'outdoor' when 'pissing' then 'peeing' when 'preggy' then 'preg' when 'pregnant' then 'preg' when 'preggo' then 'preg' when 'riding' then 'ride' when 'share' then 'shared' when 'shares' then 'shared' when 'sharing' then 'shared' when 'sissta' then 'sista' when 'squirting' then 'squirt' when 'ssbw' then 'ssbbw' when 'swingers' then 'swinger' when 'thailand' then 'thai' when 'thottie' then 'thot' when 'thott' then 'thot' when 'threesum' then 'three' when 'threesome' then 'three' when 'turkish' then 'turk' when 'weat' then 'wet'
                                            --else
                                                word
                                                            --end)
                             )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from NudevistaOneTabIdea xyz
                     cross join

                 (WITH split(word, str) AS (
                     SELECT '', titlex || ' '
                     from (select url, substr(titlex,1,instr(titlex,' @')) titlex, cc from NudevistaOneTabIdea)
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by
                                                        --lower(case word when 'africa' then 'african' when 'aunt' then 'aunty' when 'aunti' then 'aunty' when 'auntie' then 'aunty' when 'brasilena' then 'brazilian' when 'breading' then 'breeding' when 'butters' then 'butter' when 'cambodia' then 'cambodian' when 'creampie' then 'cream' when 'creamed' then 'cream' when 'cuck' then 'cuckold' when 'culito' then 'culo' when 'cullo' then 'culo' when 'dumpster' then 'dump' when 'ebonic' then 'ebony' when 'fatt' then 'fat' when 'firtile' then 'fertile' when 'girlfriend' then 'gf' when 'gothic' then 'goth' when 'grandes' then 'grande' when 'indian' then 'india' when 'interacial' then 'interracial' when 'loads' then 'load' when 'malaystreet' then 'malay' when 'malaysian' then 'malay' when 'marriage' then 'married' when 'mexicana' then 'mexican' when 'milfe' then 'milf' when 'misionary' then 'missionary' when 'missionaty' then 'missionary' when 'negras' then 'negra' when 'neighbor' then 'neighbour' when 'nutt' then 'nut' when 'nutted' then 'nut' when 'nuttedf' then 'nut' when 'nutting' then 'nut' when 'older' then 'old' when 'outdoors' then 'outdoor' when 'pissing' then 'peeing' when 'preggy' then 'preg' when 'pregnant' then 'preg' when 'preggo' then 'preg' when 'riding' then 'ride' when 'share' then 'shared' when 'shares' then 'shared' when 'sharing' then 'shared' when 'sissta' then 'sista' when 'squirting' then 'squirt' when 'ssbw' then 'ssbbw' when 'swingers' then 'swinger' when 'thailand' then 'thai' when 'thottie' then 'thot' when 'thott' then 'thot' when 'threesum' then 'three' when 'threesome' then 'three' when 'turkish' then 'turk' when 'weat' then 'wet'
                                            --else
                                                word
                                                            --end)
                             )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from NudevistaOneTabIdea xyz
                     cross join

                 (WITH split(word, str) AS (
                     SELECT '', titlex || ' '
                     from (select url, 
                                  replace(replace(substr(titlex,1,instr(titlex,' @'),')',''),'(','')
                                      ) titlex, cc from NudevistaOneTabIdea)
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by
                                                        --lower(case word when 'africa' then 'african' when 'aunt' then 'aunty' when 'aunti' then 'aunty' when 'auntie' then 'aunty' when 'brasilena' then 'brazilian' when 'breading' then 'breeding' when 'butters' then 'butter' when 'cambodia' then 'cambodian' when 'creampie' then 'cream' when 'creamed' then 'cream' when 'cuck' then 'cuckold' when 'culito' then 'culo' when 'cullo' then 'culo' when 'dumpster' then 'dump' when 'ebonic' then 'ebony' when 'fatt' then 'fat' when 'firtile' then 'fertile' when 'girlfriend' then 'gf' when 'gothic' then 'goth' when 'grandes' then 'grande' when 'indian' then 'india' when 'interacial' then 'interracial' when 'loads' then 'load' when 'malaystreet' then 'malay' when 'malaysian' then 'malay' when 'marriage' then 'married' when 'mexicana' then 'mexican' when 'milfe' then 'milf' when 'misionary' then 'missionary' when 'missionaty' then 'missionary' when 'negras' then 'negra' when 'neighbor' then 'neighbour' when 'nutt' then 'nut' when 'nutted' then 'nut' when 'nuttedf' then 'nut' when 'nutting' then 'nut' when 'older' then 'old' when 'outdoors' then 'outdoor' when 'pissing' then 'peeing' when 'preggy' then 'preg' when 'pregnant' then 'preg' when 'preggo' then 'preg' when 'riding' then 'ride' when 'share' then 'shared' when 'shares' then 'shared' when 'sharing' then 'shared' when 'sissta' then 'sista' when 'squirting' then 'squirt' when 'ssbw' then 'ssbbw' when 'swingers' then 'swinger' when 'thailand' then 'thai' when 'thottie' then 'thot' when 'thott' then 'thot' when 'threesum' then 'three' when 'threesome' then 'three' when 'turkish' then 'turk' when 'weat' then 'wet'
                                            --else
                                                word
                                                            --end)
                             )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from NudevistaOneTabIdea xyz
                     cross join

                 (WITH split(word, str) AS (
                     SELECT '', titlex || ' '
                     from (select url,
                                  replace(replace(substr(titlex,1,instr(titlex,' @')),')',''),'(','')
                                       titlex, cc from NudevistaOneTabIdea)
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by
                                                        --lower(case word when 'africa' then 'african' when 'aunt' then 'aunty' when 'aunti' then 'aunty' when 'auntie' then 'aunty' when 'brasilena' then 'brazilian' when 'breading' then 'breeding' when 'butters' then 'butter' when 'cambodia' then 'cambodian' when 'creampie' then 'cream' when 'creamed' then 'cream' when 'cuck' then 'cuckold' when 'culito' then 'culo' when 'cullo' then 'culo' when 'dumpster' then 'dump' when 'ebonic' then 'ebony' when 'fatt' then 'fat' when 'firtile' then 'fertile' when 'girlfriend' then 'gf' when 'gothic' then 'goth' when 'grandes' then 'grande' when 'indian' then 'india' when 'interacial' then 'interracial' when 'loads' then 'load' when 'malaystreet' then 'malay' when 'malaysian' then 'malay' when 'marriage' then 'married' when 'mexicana' then 'mexican' when 'milfe' then 'milf' when 'misionary' then 'missionary' when 'missionaty' then 'missionary' when 'negras' then 'negra' when 'neighbor' then 'neighbour' when 'nutt' then 'nut' when 'nutted' then 'nut' when 'nuttedf' then 'nut' when 'nutting' then 'nut' when 'older' then 'old' when 'outdoors' then 'outdoor' when 'pissing' then 'peeing' when 'preggy' then 'preg' when 'pregnant' then 'preg' when 'preggo' then 'preg' when 'riding' then 'ride' when 'share' then 'shared' when 'shares' then 'shared' when 'sharing' then 'shared' when 'sissta' then 'sista' when 'squirting' then 'squirt' when 'ssbw' then 'ssbbw' when 'swingers' then 'swinger' when 'thailand' then 'thai' when 'thottie' then 'thot' when 'thott' then 'thot' when 'threesum' then 'three' when 'threesome' then 'three' when 'turkish' then 'turk' when 'weat' then 'wet'
                                            --else
                                                word
                                                            --end)
                             )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from NudevistaOneTabIdea xyz
                     cross join

                 (WITH split(word, str) AS (
                     SELECT '', titlex || ' '
                     from (select url,
                                  replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' ')
                                       titlex, cc from NudevistaOneTabIdea)
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by
                                                        --lower(case word when 'africa' then 'african' when 'aunt' then 'aunty' when 'aunti' then 'aunty' when 'auntie' then 'aunty' when 'brasilena' then 'brazilian' when 'breading' then 'breeding' when 'butters' then 'butter' when 'cambodia' then 'cambodian' when 'creampie' then 'cream' when 'creamed' then 'cream' when 'cuck' then 'cuckold' when 'culito' then 'culo' when 'cullo' then 'culo' when 'dumpster' then 'dump' when 'ebonic' then 'ebony' when 'fatt' then 'fat' when 'firtile' then 'fertile' when 'girlfriend' then 'gf' when 'gothic' then 'goth' when 'grandes' then 'grande' when 'indian' then 'india' when 'interacial' then 'interracial' when 'loads' then 'load' when 'malaystreet' then 'malay' when 'malaysian' then 'malay' when 'marriage' then 'married' when 'mexicana' then 'mexican' when 'milfe' then 'milf' when 'misionary' then 'missionary' when 'missionaty' then 'missionary' when 'negras' then 'negra' when 'neighbor' then 'neighbour' when 'nutt' then 'nut' when 'nutted' then 'nut' when 'nuttedf' then 'nut' when 'nutting' then 'nut' when 'older' then 'old' when 'outdoors' then 'outdoor' when 'pissing' then 'peeing' when 'preggy' then 'preg' when 'pregnant' then 'preg' when 'preggo' then 'preg' when 'riding' then 'ride' when 'share' then 'shared' when 'shares' then 'shared' when 'sharing' then 'shared' when 'sissta' then 'sista' when 'squirting' then 'squirt' when 'ssbw' then 'ssbbw' when 'swingers' then 'swinger' when 'thailand' then 'thai' when 'thottie' then 'thot' when 'thott' then 'thot' when 'threesum' then 'three' when 'threesome' then 'three' when 'turkish' then 'turk' when 'weat' then 'wet'
                                            --else
                                                word
                                                            --end)
                             )
                  select *
                  from adxafas) abs
            where instr(lower(xyz.titlex), abs.word) <> 0
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
                     SELECT '', titlex || ' '
                     from (select url,
                                  replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' ')
                                       titlex, cc from NudevistaOneTabIdea)
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
                                group by

                                        split.word
                           ),
                         adxafas as (select word,
                                            sum(x) x
                                     from next group by
                                                        --lower(case word when 'africa' then 'african' when 'aunt' then 'aunty' when 'aunti' then 'aunty' when 'auntie' then 'aunty' when 'brasilena' then 'brazilian' when 'breading' then 'breeding' when 'butters' then 'butter' when 'cambodia' then 'cambodian' when 'creampie' then 'cream' when 'creamed' then 'cream' when 'cuck' then 'cuckold' when 'culito' then 'culo' when 'cullo' then 'culo' when 'dumpster' then 'dump' when 'ebonic' then 'ebony' when 'fatt' then 'fat' when 'firtile' then 'fertile' when 'girlfriend' then 'gf' when 'gothic' then 'goth' when 'grandes' then 'grande' when 'indian' then 'india' when 'interacial' then 'interracial' when 'loads' then 'load' when 'malaystreet' then 'malay' when 'malaysian' then 'malay' when 'marriage' then 'married' when 'mexicana' then 'mexican' when 'milfe' then 'milf' when 'misionary' then 'missionary' when 'missionaty' then 'missionary' when 'negras' then 'negra' when 'neighbor' then 'neighbour' when 'nutt' then 'nut' when 'nutted' then 'nut' when 'nuttedf' then 'nut' when 'nutting' then 'nut' when 'older' then 'old' when 'outdoors' then 'outdoor' when 'pissing' then 'peeing' when 'preggy' then 'preg' when 'pregnant' then 'preg' when 'preggo' then 'preg' when 'riding' then 'ride' when 'share' then 'shared' when 'shares' then 'shared' when 'sharing' then 'shared' when 'sissta' then 'sista' when 'squirting' then 'squirt' when 'ssbw' then 'ssbbw' when 'swingers' then 'swinger' when 'thailand' then 'thai' when 'thottie' then 'thot' when 'thott' then 'thot' when 'threesum' then 'three' when 'threesome' then 'three' when 'turkish' then 'turk' when 'weat' then 'wet'
                                            --else
                                                word
                                                            --end)
                             )
                  select *
                  from adxafas;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from NudevistaOneTabIdea xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' ') titlex, cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.titlex), abs.word)
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select *
            from NudevistaOneTabIdea xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' ') titlex, cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.titlex), abs.word)
            order by titlex, x desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from NudevistaOneTabIdea xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' ') titlex, cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.titlex), lower(abs.word))
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select *
            from NudevistaOneTabIdea xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex, cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.titlex), lower(abs.word))
            order by titlex, x desc;
;-- -. . -..- - / . -. - .-. -.--
select * from
(select *
            from NudevistaOneTabIdea xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex, cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.titlex), lower(abs.word))
            order by titlex, x desc
          ) xzz

left outer join 

(select *
            from NudevistaOneTabIdea xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex, cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.titlex), lower(abs.word))
            order by titlex, x desc
          ) yzz on xzz.word = yzz.word and xzz.url <> yzz.url;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from NudevistaOneTabIdea xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex, cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.titlex), lower(abs.word))
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
drop view groupByWordsNudevista;
;-- -. . -..- - / . -. - .-. -.--
create view groupByWordsNudevista as

select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from NudevistaOneTabIdea xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex, cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.titlex), lower(abs.word))
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select length(words) wordlenght,row_number() OVER (ORDER BY xsum) AS row_number ,* from groupByWordsNudevista;
;-- -. . -..- - / . -. - .-. -.--
select *
            from groupByWordsNudevista xyz
                     cross join
                 (WITH split(word, str) AS
                     (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex, cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS
(

                        SELECT 
                     '', --word 
                     titlex || ' ' --str every titlex with an extra space so that it will atleast return ' ' case the table is empty
                     from NudevistaOneTabIdea
                            UNION ALL SELECT 
                           
                            substr(str, 0, instr(str, ' ')), --word
                            substr(str, instr(str, ' ') + 1) --str
                           
                            FROM split -- recursion
                            WHERE str != '') -- terminator
SELECT count(split.word) x, split.word
                                FROM split;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS
(

                        SELECT
                     '', --word
                     titlex || ' ' --str every titlex with an extra space so that it will atleast return ' ' case the table is empty
                     from main.toGetSynonymsFrom
                            UNION ALL SELECT

                            substr(str, 0, instr(str, ' ')), --word
                            substr(str, instr(str, ' ') + 1) --str

                            FROM split -- recursion
                            WHERE str != '') -- terminator
SELECT count(split.word) x, split.word
                                FROM split;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS
(

                        SELECT
                     '', --word
                     titlex || ' ' --str every titlex with an extra space so that it will atleast return ' ' case the table is empty
                     from (select 'a b' titlex)
                            UNION ALL SELECT

                            substr(str, 0, instr(str, ' ')), --word
                            substr(str, instr(str, ' ') + 1) --str

                            FROM split -- recursion
                            WHERE str != '') -- terminator
SELECT count(split.word) x, split.word
                                FROM split;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS
(

                        SELECT
                     '', --word
                     titlex || ' ' --str every titlex with an extra space so that it will atleast return ' ' case the table is empty
                     from (select ' a b ' titlex)
                            UNION ALL SELECT

                            substr(str, 0, instr(str, ' ')), --word
                            substr(str, instr(str, ' ') + 1) --str

                            FROM split -- recursion
                            WHERE str != '') -- terminator
SELECT count(split.word) x, split.word
                                FROM split;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS
(

                        SELECT
                     '', --word
                     titlex || ' ' --str every titlex with an extra space so that it will atleast return ' ' case the table is empty
                     from (select ' a b ' titlex)
                            UNION ALL SELECT

                            substr(str, 0, instr(str, ' ')), --word
                            substr(str, instr(str, ' ') + 1) --str

                            FROM split -- recursion
                            WHERE str != '') -- terminator
SELECT *
                                FROM split;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS
(

                        SELECT
                     '', --word
                     titlex || ' ' --str every titlex with an extra space so that it will atleast return ' ' case the table is empty
                     from (select 'a b' titlex)
                            UNION ALL SELECT

                            substr(str, 0, instr(str, ' ')), --word
                            substr(str, instr(str, ' ') + 1) --str

                            FROM split -- recursion
                            WHERE str != '') -- terminator
SELECT *
                                FROM split;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS
(

                        SELECT
                     '', --word
                     titlex || ' ' --str every titlex with an extra space so that it will atleast return ' ' case the table is empty
                     from (select 'a b c' titlex)
                            UNION ALL SELECT

                            substr(str, 0, instr(str, ' ')), --word
                            substr(str, instr(str, ' ') + 1) --str

                            FROM split -- recursion
                            WHERE str != '') -- terminator
SELECT *
                                FROM split;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS
(

                        SELECT
                     '', --word
                     titlex || ' ' --str every titlex with an extra space so that it will atleast return ' ' case the table is empty
                     from (select 'a b c' titlex)
                            UNION ALL SELECT

                            substr(str, 0, instr(str, ' ')), --word
                            substr(str, instr(str, ' ') + 1) --str

                            FROM split -- recursion
                            WHERE str != '') -- terminator
SELECT * from (select 'a' a) where a in (select word from split);
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS
(

                        SELECT
                     '', --word
                     titlex || ' ' --str every titlex with an extra space so that it will atleast return ' ' case the table is empty
                     from (select 'a b c' titlex)
                            UNION ALL SELECT

                            substr(str, 0, instr(str, ' ')), --word
                            substr(str, instr(str, ' ') + 1) --str

                            FROM split -- recursion
                            WHERE str != '') -- terminator
SELECT * from (select 'a' a union select 'b' a) where a in (select word from split);
;-- -. . -..- - / . -. - .-. -.--
select *
            from groupByWordsNudevista xyz
                     cross join
                 (WITH split(word, str) AS
                           (SELECT '', titlex || ' '
                            from (select url,
                                         replace(replace(replace(replace(
                                                                         replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '),
                                                                         '(', ' '), '-', ' '), ' or ', ' '), ' Or ',
                                                 ' ') titlex,
                                         cc
                                  from NudevistaOneTabIdea)
                            UNION ALL
                            SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                            FROM split
                            WHERE str != ''),

                       next as (SELECT count(split.word) x, split.word
                                FROM split
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by split.word),
                       adxafas as (select word, sum(x) x from next group by word)
                  select *
                  from adxafas
                 ) abs
            where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc;
;-- -. . -..- - / . -. - .-. -.--
select * from
             (select *from groupByWordsNudevista xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from groupByWordsNudevista xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy 
on azx.word = azy.word 
       and azx.xsum >= azy.x 
        and azx.xsum >= azy.xsum
        and azx.words <> azy.word;
;-- -. . -..- - / . -. - .-. -.--
select * from
             (select *from groupByWordsNudevista xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from groupByWordsNudevista xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on azx.word = azy.word
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
        and azx.words <> azy.word;
;-- -. . -..- - / . -. - .-. -.--
select * from
             (select *from groupByWordsNudevista xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from groupByWordsNudevista xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.words <> azy.word)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum;
;-- -. . -..- - / . -. - .-. -.--
select * from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum;
;-- -. . -..- - / . -. - .-. -.--
select azx."min(title)",
       azx.xsum,
       azx.words||
       azx.rnr,
       azx.word||
       azx.x,
       azy."min(title)" ||
       azy.rnr sharesTHeWord
from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum;
;-- -. . -..- - / . -. - .-. -.--
select azx."min(title)",
       azx.xsum,
       azx.words||
       azx.rnr words,
       azx.word||
       azx.x word,
       azy."min(title)" ||
       azy.rnr sharesTHeWord
from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum;
;-- -. . -..- - / . -. - .-. -.--
select azx."min(title)",
       azx.xsum,
       azx.words||
       azx.rnr words,
       azx.word||
       azx.x word,
       azy."min(title)" ||
       azy.rnr sharesTHeWord
from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where sharesTHeWord is not null;
;-- -. . -..- - / . -. - .-. -.--
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx
       
       
       
from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null group by leftx,rightx;
;-- -. . -..- - / . -. - .-. -.--
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null group by leftx,rightx
order by length(shares) desc;
;-- -. . -..- - / . -. - .-. -.--
select * from
(
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx,max(azy.words) rightwords



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null
group by leftx,rightx

    )

where length(rightwords) = length(shares) 

order by    length(rightwords) desc, length(shares) desc;
;-- -. . -..- - / . -. - .-. -.--
select substr(leftx,0,10), substr(shares,0,10), substr(rightx,0,10)
from
(
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx,max(azy.words) rightwords



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null
group by leftx,rightx

    )

where length(rightwords) = length(shares)

order by    length(rightwords) desc, length(shares) desc










WITH split(word, str) AS
(

                        SELECT
                     '', --word
                     titlex || ' ' --str every titlex with an extra space so that it will atleast return ' ' case the table is empty
                     from (select 'a b c' titlex)
                            UNION ALL SELECT

                            substr(str, 0, instr(str, ' ')), --word
                            substr(str, instr(str, ' ') + 1) --str

                            FROM split -- recursion
                            WHERE str != '');
;-- -. . -..- - / . -. - .-. -.--
select substr(leftx,0,10), substr(shares,0,10), substr(rightx,0,10)
from
(
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx,max(azy.words) rightwords



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null
group by leftx,rightx

    )

where length(rightwords) = length(shares)

order by    length(rightwords) desc, length(shares) desc;
;-- -. . -..- - / . -. - .-. -.--
select substr(leftx,0,30), substr(shares,0,10), substr(rightx,0,30)
from
(
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx,max(azy.words) rightwords



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null
group by leftx,rightx

    )

where length(rightwords) = length(shares)

order by    length(rightwords) desc, length(shares) desc










WITH split(word, str) AS
(

                        SELECT
                     '', --word
                     titlex || ' ' --str every titlex with an extra space so that it will atleast return ' ' case the table is empty
                     from (select 'a b c' titlex)
                            UNION ALL SELECT

                            substr(str, 0, instr(str, ' ')), --word
                            substr(str, instr(str, ' ') + 1) --str

                            FROM split -- recursion
                            WHERE str != '');
;-- -. . -..- - / . -. - .-. -.--
select substr(leftx,0,30), substr(shares,0,10), substr(rightx,0,30)
from
(
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx,max(azy.words) rightwords



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null
group by leftx,rightx

    )

where length(rightwords) = length(shares)

order by    length(rightwords) desc, length(shares) desc;
;-- -. . -..- - / . -. - .-. -.--
select substr(leftx,0,30),x, substr(shares,0,10), y
from
(
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx,max(azy.words) rightwords,azx.rnr x,azy.rnr y



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null
group by leftx,rightx

    )

where length(rightwords) = length(shares)

order by    length(rightwords) desc, length(shares) desc;
;-- -. . -..- - / . -. - .-. -.--
select substr(leftx,0,30),x, substr(shares,0,10), y
from
(
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx,max(azy.words) rightwords,azx.rnr x,azy.rnr y



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null
group by leftx,rightx

    )

where length(rightwords) = length(shares)

order by    x desc, y desc, length(rightwords) desc, length(shares) desc;
;-- -. . -..- - / . -. - .-. -.--
select substr(leftx,0,30),x, substr(shares,0,10), y
from
(
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx,max(azy.words) rightwords,azx.rnr x,azy.rnr y



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null
group by leftx,rightx

    )

where length(rightwords) = length(shares)

order by    x , y desc, length(rightwords) desc, length(shares) desc;
;-- -. . -..- - / . -. - .-. -.--
select x,y
from
(
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx,max(azy.words) rightwords,azx.rnr x,azy.rnr y



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null
group by leftx,rightx

    )

where length(rightwords) = length(shares)

order by    x , y desc, length(rightwords) desc, length(shares) desc;
;-- -. . -..- - / . -. - .-. -.--
select x,y
from
(
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx,max(azy.words) rightwords,azx.rnr x,azy.rnr y



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null
group by leftx,rightx

    )

where length(rightwords) = length(shares)

order by    y, x desc, length(rightwords) desc, length(shares) desc;
;-- -. . -..- - / . -. - .-. -.--
select max(x) x,y from 

(
select x,y
from
(
select azx."min(title)" leftx, group_concat(azx.word) shares, azy."min(title)" rightx,max(azy.words) rightwords,azx.rnr x,azy.rnr y



from
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azx

LEFT OUTER JOIN
             (select *from (select *,row_number() over (order by xsum) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))
            order by words, x desc) azy
on (azx.word = azy.word and azx.rnr <> azy.rnr)
       and azx.xsum >= azy.x
        and azx.xsum >= azy.xsum
where rightx is not null
group by leftx,rightx

    )

where length(rightwords) = length(shares)

order by     length(rightwords) desc, length(shares) desc
    )

group by y

order by    y, x desc;
;-- -. . -..- - / . -. - .-. -.--
select * from
(select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) agroup
left outer join
(select max(x) x, y
 from (select x, y from (select azx."min(title)"       leftx,group_concat(azx.word) shares,azy."min(title)"       rightx,max(azy.words)         rightwords,azx.rnr                x,azy.rnr                y from (select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azx LEFT OUTER JOIN(select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where rightx is not null group by leftx, rightx)where length(rightwords) = length(shares)order by length(rightwords) desc, length(shares) desc)group by y

) referens on agroup.rnr = referens.y
inner join 
(select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) bgroup
on referens.x = bgroup.rnr;
;-- -. . -..- - / . -. - .-. -.--
select * from
(select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) agroup
left outer join

(
select * from    
(select max(x) x, y
 from (select x, y from (select azx."min(title)"       leftx,group_concat(azx.word) shares,azy."min(title)"       rightx,max(azy.words)         rightwords,azx.rnr                x,azy.rnr                y from (select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azx LEFT OUTER JOIN(select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where rightx is not null group by leftx, rightx)where length(rightwords) = length(shares)order by length(rightwords) desc, length(shares) desc)group by y

) referens 
inner join
(select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) bgroup
on referens.x = bgroup.rnr)  referens 

on agroup.rnr = referens.y;
;-- -. . -..- - / . -. - .-. -.--
select agroup."min(title)",
       
       coalesce(referens.words,agroup.words) words
       
from
(select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) agroup
left outer join

(
select * from
(select max(x) x, y
 from (select x, y from (select azx."min(title)"       leftx,group_concat(azx.word) shares,azy."min(title)"       rightx,max(azy.words)         rightwords,azx.rnr                x,azy.rnr                y from (select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azx LEFT OUTER JOIN(select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where rightx is not null group by leftx, rightx)where length(rightwords) = length(shares)order by length(rightwords) desc, length(shares) desc)group by y

) referens
inner join
(select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) bgroup
on referens.x = bgroup.rnr)  referens

on agroup.rnr = referens.y;
;-- -. . -..- - / . -. - .-. -.--
select min(agroup."min(title)"),

       coalesce(referens.words,agroup.words) words

from
(select "min(title)", xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) agroup
left outer join

(
select * from
(select max(x) x, y
 from (select x, y from (select azx."min(title)"       leftx,group_concat(azx.word) shares,azy."min(title)"       rightx,max(azy.words)         rightwords,azx.rnr                x,azy.rnr                y from (select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azx LEFT OUTER JOIN(select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where rightx is not null group by leftx, rightx)where length(rightwords) = length(shares)order by length(rightwords) desc, length(shares) desc)group by y

) referens
inner join
(select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) bgroup
on referens.x = bgroup.rnr)  referens

on agroup.rnr = referens.y

group by coalesce(referens.words,agroup.words);
;-- -. . -..- - / . -. - .-. -.--
select min(agroup."min(title)"),

       coalesce(referens.words,agroup.words) words

from
(select "min(title)", xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) agroup
left outer join

(
select * from
(select max(x) x, y
 from (select x, y from (select azx."min(title)"       leftx,group_concat(azx.word) shares,azy."min(title)"       rightx,max(azy.words)         rightwords,azx.rnr                x,azy.rnr                y from (select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azx LEFT OUTER JOIN(select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where rightx is not null group by leftx, rightx)where length(rightwords) = length(shares)order by length(rightwords) desc, length(shares) desc)group by y

) referens
inner join
(select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) bgroup
on referens.x = bgroup.rnr)  referens

on agroup.rnr = referens.y

group by coalesce(referens.words,agroup.words)
order by length(words) desc;
;-- -. . -..- - / . -. - .-. -.--
select min(agroup."min(title)"),

       coalesce(referens.words,agroup.words) words

from
(select "min(title)", xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) agroup
left outer join

(
select * from
(select max(x) x, y
 from (select x, y from (select azx."min(title)"       leftx,group_concat(azx.word) shares,azy."min(title)"       rightx,max(azy.words)         rightwords,azx.rnr                x,azy.rnr                y from (select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azx LEFT OUTER JOIN(select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where rightx is not null group by leftx, rightx)where length(rightwords) = length(shares)order by length(rightwords) desc, length(shares) desc)group by y

) referens
inner join
(select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) bgroup
on referens.x = bgroup.rnr)  referens

on agroup.rnr = referens.y

group by coalesce(referens.words,agroup.words)
order by length(coalesce(referens.words,agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from (with yrls as (
select max(id), max(url) url, title, sum(visit_count) visit_count, max(last_visit_time) last_visit_time,

substr(title,instr(title,'Tube Search (')+length('Tube Search (')) tx,length(url) urlLen
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title
),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' Tube ')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ NudeVista (' ||c  || ')' titlex,cc from titlez where cc <> 0) NudevistaOneTabIdea xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex, cc from (with yrls as (
select max(id), max(url) url, title, sum(visit_count) visit_count, max(last_visit_time) last_visit_time,

substr(title,instr(title,'Tube Search (')+length('Tube Search (')) tx,length(url) urlLen
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title
),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' Tube ')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ NudeVista (' ||c  || ')' titlex,cc from titlez where cc <> 0) NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.titlex), lower(abs.word))
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from (with yrls as (
select max(id), max(url) url, title, sum(visit_count) visit_count, max(last_visit_time) last_visit_time,

substr(title,instr(title,'Tube Search (')+length('Tube Search (')) tx,length(url) urlLen
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title
),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' Tube ')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ NudeVista (' ||c  || ')' titlex,cc from titlez where cc <> 0) xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex, cc from (with yrls as (
select max(id), max(url) url, title, sum(visit_count) visit_count, max(last_visit_time) last_visit_time,

substr(title,instr(title,'Tube Search (')+length('Tube Search (')) tx,length(url) urlLen
from urls where instr(url,'nudevista')*instr(title,'videos') > 0
group by title
),

titlez as (
     select min(urlLen), min(url) url,substr(title,1,instr(title,' Tube ')) titlex,

                 cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,


     sum(visit_count) c,max(last_visit_time) m from yrls group by titlex )


select url,titlex || '@ NudeVista (' ||c  || ')' titlex,cc from titlez where cc <> 0) NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas
                     ) abs
            where instr(lower(xyz.titlex), lower(abs.word))
            order by titlex, x desc
          )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW groupByWordsNudevista as
with yrls as (
                                                      select max(id),
                                                             max(url)                                                        url,
                                                             title,
                                                             sum(visit_count)                                                visit_count,
                                                             max(last_visit_time)                                            last_visit_time,

                                                             substr(title,
                                                                    instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                                                             length(url)                                                     urlLen
                                                      from urls
                                                      where instr(url, 'nudevista') * instr(title, 'videos') > 0
                                                      group by title
                                                  )
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from (with 

                       titlez as (
                           select min(urlLen),
                                  min(url)                                                                     url,
                                  substr(title, 1, instr(title, ' Tube '))                                     titlex,

                                  cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,


                                  sum(visit_count)                                                             c,
                                  max(last_visit_time)                                                         m
                           from yrls
                           group by titlex)


                  select url, titlex || '@ NudeVista (' || c || ')' titlex, cc
                  from titlez
                  where cc <> 0) xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' '
                                            from (select url,
                                                         replace(replace(replace(replace(
                                                                                         replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '),
                                                                                         '(', ' '), '-', ' '), ' or ',
                                                                         ' '), ' Or ', ' ') titlex,
                                                         cc
                                                  from (with

                                                             titlez as (
                                                                 select min(urlLen),
                                                                        min(url)                                                                        url,
                                                                        substr(title, 1, instr(title, ' Tube '))                                        titlex,

                                                                        cast(
                                                                                replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,


                                                                        sum(visit_count)                                                                c,
                                                                        max(last_visit_time)                                                            m
                                                                 from yrls
                                                                 group by titlex)


                                                        select url, titlex || '@ NudeVista (' || c || ')' titlex, cc
                                                        from titlez
                                                        where cc <> 0) NudevistaOneTabIdea)
                                            UNION ALL
                                            SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                                            FROM split
                                            WHERE str != ''),
                       next as (SELECT count(split.word) x, split.word
                                FROM split
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by split.word),
                       adxafas as (select word, sum(x) x from next group by word)
                  select *
                  from adxafas
                 ) abs
            where instr(lower(xyz.titlex), lower(abs.word))
            order by titlex, x desc
           )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
with yrls as (
                                                      select max(id),
                                                             max(url)                                                        url,
                                                             title,
                                                             sum(visit_count)                                                visit_count,
                                                             max(last_visit_time)                                            last_visit_time,

                                                             substr(title,
                                                                    instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                                                             length(url)                                                     urlLen
                                                      from urls
                                                      where instr(url, 'nudevista') * instr(title, 'videos') > 0
                                                      group by title
                                                  )
select min(title), sum(xsum) xsum, words
from (select max(titlex) title, sum(x) xsum, group_concat(word) words
      from (select *
            from (with

                       titlez as (
                           select min(urlLen),
                                  min(url)                                                                     url,
                                  substr(title, 1, instr(title, ' Tube '))                                     titlex,

                                  cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,


                                  sum(visit_count)                                                             c,
                                  max(last_visit_time)                                                         m
                           from yrls
                           group by titlex)


                  select url, titlex || '@ NudeVista (' || c || ')' titlex, cc
                  from titlez
                  where cc <> 0) xyz
                     cross join
                 (WITH split(word, str) AS (SELECT '', titlex || ' '
                                            from (select url,
                                                         replace(replace(replace(replace(
                                                                                         replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '),
                                                                                         '(', ' '), '-', ' '), ' or ',
                                                                         ' '), ' Or ', ' ') titlex,
                                                         cc
                                                  from (with

                                                             titlez as (
                                                                 select min(urlLen),
                                                                        min(url)                                                                        url,
                                                                        substr(title, 1, instr(title, ' Tube '))                                        titlex,

                                                                        cast(
                                                                                replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,


                                                                        sum(visit_count)                                                                c,
                                                                        max(last_visit_time)                                                            m
                                                                 from yrls
                                                                 group by titlex)


                                                        select url, titlex || '@ NudeVista (' || c || ')' titlex, cc
                                                        from titlez
                                                        where cc <> 0) NudevistaOneTabIdea)
                                            UNION ALL
                                            SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                                            FROM split
                                            WHERE str != ''),
                       next as (SELECT count(split.word) x, split.word
                                FROM split
                                         left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                where NotSuitAbleSynonyms.word is null
                                group by split.word),
                       adxafas as (select word, sum(x) x from next group by word)
                  select *
                  from adxafas
                 ) abs
            where instr(lower(xyz.titlex), lower(abs.word))
            order by titlex, x desc
           )
      group by url
      order by xsum desc, words)
group by words
order by xsum desc;
;-- -. . -..- - / . -. - .-. -.--
create view wordInheretance as 


select min(agroup."min(title)"),

       coalesce(referens.words,agroup.words) words

from
(select "min(title)", xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) agroup
left outer join

(
select * from
(select max(x) x, y
 from (select x, y from (select azx."min(title)"       leftx,group_concat(azx.word) shares,azy."min(title)"       rightx,max(azy.words)         rightwords,azx.rnr                x,azy.rnr                y from (select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azx LEFT OUTER JOIN(select *from (select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) xyz cross join(WITH split(word, str) AS (SELECT '', titlex || ' ' from (select url,replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc from NudevistaOneTabIdea)UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),adxafas as (select word, sum(x) x from next group by word)select *from adxafas) abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc) azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where rightx is not null group by leftx, rightx)where length(rightwords) = length(shares)order by length(rightwords) desc, length(shares) desc)group by y

) referens
inner join
(select *, row_number() over (order by xsum,words) rnr from groupByWordsNudevista) bgroup
on referens.x = bgroup.rnr)  referens

on agroup.rnr = referens.y

group by coalesce(referens.words,agroup.words)
order by length(coalesce(referens.words,agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
with abs as (WITH split(word, str) AS (SELECT '', titlex || ' '
                                                                               from (select url,
                                                                                            replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,
                                                                                            cc
                                                                                     from NudevistaOneTabIdea)
                                                                               UNION ALL
                                                                               SELECT substr(str, 0, instr(str, ' ')),
                                                                                      substr(str, instr(str, ' ') + 1)
                                                                               FROM split
                                                                               WHERE str != ''),
                                                          next as (SELECT count(split.word) x, split.word
                                                                   FROM split
                                                                            left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                                                                   where NotSuitAbleSynonyms.word is null
                                                                   group by split.word),
                                                          adxafas as (select word, sum(x) x from next group by word)
                                                     select *
                                                     from adxafas)
    ,
        azy as (select *
                                                        from (select *, row_number() over (order by xsum,words) rnr
                                                              from groupByWordsNudevista) xyz
                                                                 cross join abs
                                                        where instr(lower(xyz.words), lower(abs.word))
                                                        order by words, x desc),
        bgroup as (select *, row_number() over (order by xsum,words) rnr
                                                 from groupByWordsNudevista)

    select min(agroup."min(title)"), coalesce(referens.words, agroup.words) words
    from bgroup
        agroup
             left outer join



        (select x, y, "min(title)", xsum, words, rnr from
                                    (select max(x) x, y from (select x, y
                                         from (select azx."min(title)"               leftx,group_concat(azx.word)         shares,azy."min(title)"               rightx,max(azy.words)                 rightwords,azx.rnr                        x,azy.rnr                        y,length(max(azy.words))         lRwo,length(group_concat(azx.word)) lsr from azy azx LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum
                                        where rightx is not null group by leftx, rightx)
                                         where lRwo = lsr order by lRwo desc, lsr desc)
                                   group by y) referens
                                      inner join bgroup on referens.x = bgroup.rnr) referens




                            on agroup.rnr = referens.y
    group by coalesce(referens.words, agroup.words)
    order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (SELECT '', titlex || ' '
                              from (select url,
                                           replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc
                                    from NudevistaOneTabIdea)
                              UNION ALL
                              SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                              FROM split
                              WHERE str != ''),
         next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         adxafas as (select word, sum(x) x from next group by word),
         bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
         azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)

    select min(agroup.title), coalesce(referens.words, agroup.words) words from bgroup agroup left outer join
         (select x, y, title, xsum, words, rnr from (select max(x) x, y
                from (select x, y from (select azx.title               leftx,group_concat(azx.word)         shares,azy.title               rightx,max(azy.words)                 rightwords,azx.rnr                        x,azy.rnr                        y,length(max(azy.words))         lRwo,length(group_concat(azx.word)) lsr from azy azx LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where rightx is not null group by leftx, rightx)where lRwo = lsr order by lRwo desc, lsr desc)
                group by y) referens inner join bgroup on referens.x = bgroup.rnr) referens
         on agroup.rnr = referens.y
    group by coalesce(referens.words, agroup.words)
    order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (SELECT '', titlex || ' '
                              from (select url,
                                           replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc
                                    from NudevistaOneTabIdea)
                              UNION ALL
                              SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                              FROM split
                              WHERE str != ''),
         next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         adxafas as (select word, sum(x) x from next group by word),
         bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
         azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)

    select min(agroup.title), coalesce(referens.words, agroup.words) words from bgroup agroup left outer join
         (

             select x, y, title, xsum, words, rnr from
                (select max(x) x, y
                 from (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                       from azy azx
                                LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and
                                                       azx.xsum >= azy.x and azx.xsum >= azy.xsum
                       where azy.title is not null
                         and lRwo = lsr
                       group by azx.title, azy.title)
               group by y) referens
                    
                    
                    
            inner join bgroup on referens.x = bgroup.rnr

             ) referens
         on agroup.rnr = referens.y
    group by coalesce(referens.words, agroup.words)
    order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (SELECT '', titlex || ' '
                              from (select url,
                                           replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc
                                    from NudevistaOneTabIdea)
                              UNION ALL
                              SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                              FROM split
                              WHERE str != ''),
         next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         adxafas as (select word, sum(x) x from next group by word),
         bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
         azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)

    select min(agroup.title), coalesce(referens.words, agroup.words) words from bgroup agroup left outer join
         (

             select x, y, title, xsum, words, rnr from
                (select max(x) x, y
                 from (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                       from azy azx
                                LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and
                                                       azx.xsum >= azy.x and azx.xsum >= azy.xsum
                       where azy.title is not null
                         and lRwo = lsr
                       group by azx.title, azy.title)
               group by y) referens



            inner join bgroup on referens.x = bgroup.rnr

             ) referens
         on agroup.rnr = referens.y
    group by coalesce(referens.words, agroup.words)
    order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (SELECT '', titlex || ' '
                              from (select url,
                                           replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc
                                    from NudevistaOneTabIdea)
                              UNION ALL
                              SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                              FROM split
                              WHERE str != ''),
         next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         adxafas as (select word, sum(x) x from next group by word),
         bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
         azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)

    select min(agroup.title), coalesce(referens.words, agroup.words) words from bgroup agroup left outer join
         (select x, y, title, xsum, words, rnr from (select max(x) x, y
                from (select azx.rnr                        x,azy.rnr                        y,length(max(azy.words))         lRwo, length(group_concat(azx.word)) lsr from azy azx LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null and lRwo = lsr group by azx.title, azy.title) 


               group by y) referens
            inner join bgroup on referens.x = bgroup.rnr) referens
         on agroup.rnr = referens.y
    group by coalesce(referens.words, agroup.words)
    order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (SELECT '', titlex || ' '
                              from (select url,
                                           replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc
                                    from NudevistaOneTabIdea)
                              UNION ALL
                              SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                              FROM split
                              WHERE str != ''),
         next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         adxafas as (select word, sum(x) x from next group by word),
         bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
         azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)

    select min(agroup.title), coalesce(referens.words, agroup.words) words from bgroup agroup left outer join
         (select x, y, title, xsum, words, rnr from (select max(x) x, y
                from (select azx.rnr                        x,azy.rnr                        y,length(max(azy.words))         lRwo, length(group_concat(azx.word)) lsr from azy azx LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null and lRwo = lsr group by azx.title, azy.title)


               group by y) referens
            inner join bgroup on referens.x = bgroup.rnr) referens
         on agroup.rnr = referens.y
    group by coalesce(referens.words, agroup.words)
    order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (SELECT '', titlex || ' '
                              from (select url,
                                           replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc
                                    from NudevistaOneTabIdea)
                              UNION ALL
                              SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                              FROM split
                              WHERE str != ''),
         next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         adxafas as (select word, sum(x) x from next group by word),
         bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
         azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)

    select min(agroup.title), coalesce(referens.words, agroup.words) words from bgroup agroup left outer join
         (select x, y, title, xsum, words, rnr from (select max(x) x, y
                from 
                     
                     
                     
                     (select azx.rnr                        x,
                                               azy.rnr                        y,
                                               length(max(azy.words))         lRwo,
                                               length(group_concat(azx.word)) lsr
                                        from azy azx LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum
                                        where azy.title is not null and lRwo = lsr
                                        group by azx.title, azy.title
                                           
                      )
           
           
           
               group by y) referens 
            inner join bgroup on referens.x = bgroup.rnr) referens
         on agroup.rnr = referens.y
    group by coalesce(referens.words, agroup.words)
    order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (SELECT '', titlex || ' '
                              from (select url,
                                           replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc
                                    from NudevistaOneTabIdea)
                              UNION ALL
                              SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                              FROM split
                              WHERE str != ''),
         next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         adxafas as (select word, sum(x) x from next group by word),
         bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
         azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)

    select min(agroup.title), coalesce(referens.words, agroup.words) words from bgroup agroup left outer join
         (select x, y, title, xsum, words, rnr from (select max(x) x, y
                from 
                     
                     
                     
                     (select x, y from 
                                       (select azx.rnr                        x,
                                               azy.rnr                        y,
                                               length(max(azy.words))         lRwo,
                                               length(group_concat(azx.word)) lsr
                                        from azy azx LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum
                                        where azy.title is not null
                                        group by azx.title, azy.title)
                      where lRwo = lsr
                      )
           
           
           
               group by y) referens 
            inner join bgroup on referens.x = bgroup.rnr) referens
         on agroup.rnr = referens.y
    group by coalesce(referens.words, agroup.words)
    order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
create view wordInheretance as
    WITH split(word, str) AS (SELECT '', titlex || ' '
          from (select url,
                       replace(replace(replace(replace(replace(substr(titlex, 1, instr(titlex, ' @')), ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ') titlex,cc
                from NudevistaOneTabIdea)
          UNION ALL
          SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
          FROM split
          WHERE str != ''),
         next as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         adxafas as (select word, sum(x) x from next group by word),
         bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
         azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)

    select min(agroup.title), coalesce(referens.words, agroup.words) words from bgroup agroup left outer join
         (select x, y, title, xsum, words, rnr from (select max(x) x, y
                from
                    (select x, y from
                       (select azx.rnr                        x,
                               azy.rnr                        y,
                               length(max(azy.words))         lRwo,
                               length(group_concat(azx.word)) lsr
                        from azy azx LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum
                        where azy.title is not null
                        group by azx.title, azy.title)
                    where lRwo = lsr)
               group by y) referens
            inner join bgroup on referens.x = bgroup.rnr) referens
         on agroup.rnr = referens.y
    group by coalesce(referens.words, agroup.words)
    order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
 yrls as (select max(id),max(url) url,title,sum(visit_count) visit_count,max(last_visit_time) last_visit_time,substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,substr(title,1,instr(title,' Tube ')) titlex,cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,sum(visit_count) c,max(last_visit_time) m from yrls group by titlex) ,
 NudevistaOneTabIdea as (select url,titlex || '@ NudeVista (' || c || ')' titlex,cc from titlez where cc <> 0) ,
tosplit as (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,cc from NudevistaOneTabIdea),

 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 next as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from next group by word),


 groupByWordsNudevista as
     (select min(title), sum(xsum) xsum, words
      from (select max(titlex) title, sum(x) xsum, group_concat(word) words
            from (select *
                  from NudevistaOneTabIdea xyz
                           cross join adxafas abs
                  where instr(lower(xyz.titlex), lower(abs.word))
                  order by titlex, x desc)
            group by url
            order by xsum desc, words)
      group by words
      order by xsum desc
     ),


 bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr
            from groupByWordsNudevista),
 azy as (select *
         from bgroup xyz
                  cross join adxafas abs
         where instr(lower(xyz.words), lower(abs.word))
         order by words, x desc)

 select min(agroup.title), coalesce(referens.words, agroup.words) words
 from bgroup agroup
          left outer join
      (select x, y, title, xsum, words, rnr
       from (select max(x) x, y
             from (select x, y
                   from (select azx.rnr                        x,
                                azy.rnr                        y,
                                length(max(azy.words))         lRwo,
                                length(group_concat(azx.word)) lsr
                         from azy azx
                                  LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and
                                                         azx.xsum >= azy.x and azx.xsum >= azy.xsum
                         where azy.title is not null
                         group by azx.title, azy.title)
                   where lRwo = lsr)
             group by y) referens
                inner join bgroup on referens.x = bgroup.rnr) referens
      on agroup.rnr = referens.y
 group by coalesce(referens.words, agroup.words)
 order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
create view wordInheretance as
 WITH
 yrls as (select max(id),max(url) url,title,sum(visit_count) visit_count,max(last_visit_time) last_visit_time,substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,substr(title,1,instr(title,' Tube ')) titlex,cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,sum(visit_count) c,max(last_visit_time) m from yrls group by titlex) ,
 NudevistaOneTabIdea as (select url,titlex || '@ NudeVista (' || c || ')' titlex,cc from titlez where cc <> 0) ,
tosplit as (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 next as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from next group by word),
 groupByWordsNudevista as (select min(title), sum(xsum) xsum, words from (select max(titlex) title, sum(x) xsum, group_concat(word) words from (select *from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc)group by url order by xsum desc, words)group by words order by xsum desc),
 bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 
 select x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
 from azy azx 
     LEFT OUTER JOIN azy 
         on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)where lRwo = lsr)
 group by y) referens
     inner join bgroup 
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
 yrls as (select max(id),max(url) url,title,sum(visit_count) visit_count,max(last_visit_time) last_visit_time,substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,substr(title,1,instr(title,' Tube ')) titlex,cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,sum(visit_count) c,max(last_visit_time) m from yrls group by titlex) ,
 NudevistaOneTabIdea as (select url,titlex || '@ NudeVista (' || c || ')' titlex,cc from titlez where cc <> 0) ,
tosplit as (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 next as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from next group by word),
 groupByWordsNudevista as (select min(title), sum(xsum) xsum, words from (select max(titlex) title, sum(x) xsum, group_concat(word) words from (select *from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc)group by url order by xsum desc, words)group by words order by xsum desc),
 bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 
 select x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
 from azy azx
     LEFT OUTER JOIN azy
         on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
drop view wordInheretance;
;-- -. . -..- - / . -. - .-. -.--
create view wordInheretance as
 WITH
 yrls as (select max(id),max(url) url,title,sum(visit_count) visit_count,max(last_visit_time) last_visit_time,substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,substr(title,1,instr(title,' Tube ')) titlex,cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,sum(visit_count) c,max(last_visit_time) m from yrls group by titlex) ,
 NudevistaOneTabIdea as (select url,titlex || '@ NudeVista (' || c || ')' titlex,cc from titlez where cc <> 0) ,
tosplit as (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 next as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from next group by word),
 groupByWordsNudevista as (select min(title), sum(xsum) xsum, words from (select max(titlex) title, sum(x) xsum, group_concat(word) words from (select *from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc)group by url order by xsum desc, words)group by words order by xsum desc),
 bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 
 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
 from azy azx
     LEFT OUTER JOIN azy
         on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
 yrls as (select max(id),max(url) url,title,sum(visit_count) visit_count,max(last_visit_time) last_visit_time,substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(url) url,substr(title,1,instr(title,' Tube ')) titlex,cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,sum(visit_count) c,max(last_visit_time) m from yrls group by titlex) ,
 NudevistaOneTabIdea as (select url,titlex || '@ NudeVista (' || c || ')' titlex,cc from titlez where cc <> 0) ,
 tosplit as (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 next as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from next group by word),
 groupByWordsNudevista as (select min(title), sum(xsum) xsum, words from (select max(titlex) title, sum(x) xsum, group_concat(word) words from (select *from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc)group by url order by xsum desc, words)group by words order by xsum desc),
 bgroup as (select "min(title)" title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select *from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 
 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
 from azy azx
     LEFT OUTER JOIN azy
         on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
 yrls as (select max(id),max(url) url,title,sum(visit_count) visit_count,max(last_visit_time) last_visit_time,substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,substr(title,1,instr(title,' Tube ')) titlex,cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,sum(visit_count) c,max(last_visit_time) m from yrls group by titlex) ,
 NudevistaOneTabIdea as (select url,titlex || '@ NudeVista (' || c || ')' titlex,cc from titlez where cc <> 0) ,
tosplit as (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 next as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from next group by word),
yrgyrg as (select url,titlex, cc, word, x from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
 groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words from
       (select max(titlex) title, sum(x) xsum, group_concat(word) words from yrgyrg group by url order by xsum desc, words)group by words order by xsum desc),
 bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select title, xsum, words, rnr, word, x from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 
 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
 from azy azx
     LEFT OUTER JOIN azy
         on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
 yrls as (select max(id),max(url) url,title,sum(visit_count) visit_count,max(last_visit_time) last_visit_time,
                 substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,
                 length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,
replace(replace(replace(replace(replace(substr(titlex,1,instr(substr(title,1,instr(title,' Tube ')),' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,
            cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,
                   sum(visit_count) c,max(last_visit_time) m from yrls group by titlex),
 NudevistaOneTabIdea as (select url, titlex,cc from titlez where cc <> 0),
tosplit as (select url, titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 FilterWords as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from FilterWords group by word),
yrgyrg as (select url,titlex, cc, word, x from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
 groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words from
       (select max(titlex) title, sum(x) xsum, group_concat(word) words from yrgyrg group by url order by xsum desc, words)group by words order by xsum desc),
 bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select title, xsum, words, rnr, word, x from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 
 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
 from azy azx
     LEFT OUTER JOIN azy
         on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
 yrls as (select max(id),max(url) url,title,sum(visit_count) visit_count,max(last_visit_time) last_visit_time,
                 substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,
                 length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,
replace(replace(replace(replace(replace(substr(title,1,instr(substr(title,1,instr(title,' Tube ')),' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,
            cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,
                   sum(visit_count) c,max(last_visit_time) m from yrls group by titlex),
 NudevistaOneTabIdea as (select url, titlex,cc from titlez where cc <> 0),
tosplit as (select url, titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 FilterWords as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from FilterWords group by word),
yrgyrg as (select url,titlex, cc, word, x from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
 groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words from
       (select max(titlex) title, sum(x) xsum, group_concat(word) words from yrgyrg group by url order by xsum desc, words)group by words order by xsum desc),
 bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select title, xsum, words, rnr, word, x from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 
 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
 from azy azx
     LEFT OUTER JOIN azy
         on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
 yrls as (select max(id),max(url) url,title,sum(visit_count) visit_count,max(last_visit_time) last_visit_time,substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,substr(title,1,instr(title,' Tube ')) titlex,cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,sum(visit_count) c,max(last_visit_time) m from yrls group by titlex) ,
 NudevistaOneTabIdea as (select url,titlex || '@ NudeVista (' || c || ')' titlex,cc from titlez where cc <> 0) ,
tosplit as (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 FilterWords as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from FilterWords group by word),
yrgyrg as (select url,titlex, cc, word, x from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
 groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words from
       (select max(titlex) title, sum(x) xsum, group_concat(word) words from yrgyrg group by url order by xsum desc, words)group by words order by xsum desc),
 bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select title, xsum, words, rnr, word, x from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 
 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
 from azy azx
     LEFT OUTER JOIN azy
         on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
 yrls as (select max(id),max(url) url,title,sum(visit_count) visit_count,max(last_visit_time) last_visit_time,substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,substr(title,1,instr(title,' Tube ')) titlex,cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,sum(visit_count) c,max(last_visit_time) m from yrls group by titlex) ,
 NudevistaOneTabIdea as (select url,titlex || '@ NudeVista (' || c || ')' titlex,cc from titlez where cc <> 0) ,
tosplit as (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 FilterWords as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from FilterWords group by word),
yrgyrg as (select url,titlex, cc, word, x from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words from yrgyrg group by url order by xsum desc, words),
 groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words from
      yrpArp 
 group by words order by xsum desc),
 bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select title, xsum, words, rnr, word, x from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 ,arghargh as (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr from azy azx LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)
 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from 
   arghargh 
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
 yrls as (select max(id),max(url) url,title,sum(visit_count) visit_count,
    max(last_visit_time) last_visit_time,substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,
    length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,substr(title,1,instr(title,' Tube ')) titlex,
cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,sum(visit_count) c,max(last_visit_time) m from yrls group by titlex) ,
 NudevistaOneTabIdea as (select url,titlex || '@ NudeVista (' || c || ')' titlex,cc from titlez where cc <> 0) ,
tosplit as (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 FilterWords as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from FilterWords group by word),
yrgyrg as (select url,titlex, cc, word, x from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words from yrgyrg group by url order by xsum desc, words),
 groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words from yrpArp group by words order by xsum desc),
 bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select title, xsum, words, rnr, word, x from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 ,arghargh as (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr from azy azx 
     LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)
 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
 yrls as (select max(url) url,title,sum(visit_count) visit_count,
    max(last_visit_time) last_visit_time,substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,
    length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,substr(title,1,instr(title,' Tube ')) titlex,
cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,sum(visit_count) c,max(last_visit_time) m from yrls group by titlex) ,
 NudevistaOneTabIdea as (select url,titlex,cc from titlez where cc <> 0) ,
tosplit as (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 FilterWords as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from FilterWords group by word),
yrgyrg as (select url,titlex, cc, word, x from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words from yrgyrg group by url order by xsum desc, words),
 groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words from yrpArp group by words order by xsum desc),
 bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select title, xsum, words, rnr, word, x from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 ,arghargh as (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr from azy azx
     LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)
 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
 yrls as (select max(url) url,title,sum(visit_count) visit_count,
    max(last_visit_time) last_visit_time,substr(title,instr(title,'Tube Search (') + length('Tube Search (')) tx,
    length(url) urlLen from urls where instr(url,'nudevista') * instr(title,'videos') > 0 group by title),
 titlez as (select min(urlLen),min(url) url,substr(title,1,instr(title,' Tube ')) titlex,
cast(replace(trim(substr(tx,1,instr(tx,' videos'))),',','') as integer) cc,sum(visit_count) c,max(last_visit_time) m from yrls group by titlex) ,
 NudevistaOneTabIdea as (select url,titlex || '@ NudeVista (' || c || ')' titlex,cc from titlez where cc <> 0) ,
tosplit as (select url,replace(replace(replace(replace(replace(substr(titlex,1,instr(titlex,' @')),')',' '),'(',' '),'-',' '),' or ',' '),' Or ',' ') titlex,cc from NudevistaOneTabIdea),
 split(word,str) AS (SELECT '',titlex || ' ' from ToSplit UNION ALL SELECT substr(str,0,instr(str,' ')),substr(str,instr(str,' ') + 1) FROM split WHERE str != ''),
 FilterWords as (SELECT count(split.word) x,split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
 adxafas as (select word,sum(x) x from FilterWords group by word),
yrgyrg as (select url,titlex, cc, word, x from NudevistaOneTabIdea xyz cross join adxafas abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words from yrgyrg group by url order by xsum desc, words),
 groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words from yrpArp group by words order by xsum desc),
 bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from groupByWordsNudevista),
 azy as (select title, xsum, words, rnr, word, x from bgroup xyz cross join adxafas abs where instr(lower(xyz.words), lower(abs.word))order by words, x desc)
 ,arghargh as (select azx.rnr x,azy.rnr y,length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr from azy azx
     LEFT OUTER JOIN azy on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and azx.xsum >= azy.xsum where azy.title is not null group by azx.title, azy.title)
 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH yrls as (select max(url)                                                               url,
                         title,
                         sum(visit_count)                                                       visit_count,
                         max(last_visit_time)                                                   last_visit_time,
                         substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                         length(url)                                                            urlLen
                  from urls
                  where instr(url, 'nudevista') * instr(title, 'videos') > 0
                  group by title),
         titlez as (select min(urlLen),
                           min(url)                                                                     url,
                           substr(title, 1, instr(title, ' Tube '))                                     titlex,
                           cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,
                           sum(visit_count)                                                             c,
                           max(last_visit_time)                                                         m
                    from yrls
                    group by titlex),
         NudevistaOneTabIdea as (select url, replace(replace(replace(replace(replace(titlex, ')', ' '),
                                                            '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex, cc
                                 from titlez
                                 where cc <> 0),
         tosplit as (select url,
                            titlex,
                            cc
                     from NudevistaOneTabIdea),
         split(word, str) AS (SELECT '', titlex || ' '
                              from ToSplit
                              UNION ALL
                              SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                              FROM split
                              WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word
                         FROM split
                                  left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                         where NotSuitAbleSynonyms.word is null
                         group by split.word),
         adxafas as (select word, sum(x) x from FilterWords group by word),
         yrgyrg as (select url, titlex, cc, word, x
                    from NudevistaOneTabIdea xyz
                             cross join adxafas abs
                    where instr(lower(xyz.titlex), lower(abs.word))
                    order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words
                    from yrgyrg
                    group by url
                    order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join adxafas abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title) 
 
 
 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH yrls as (select max(url)                                                               url,
                         title,
                         sum(visit_count)                                                       visit_count,
                         max(last_visit_time)                                                   last_visit_time,
                         substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                         length(url)                                                            urlLen
                  from urls
                  where instr(url, 'nudevista') * instr(title, 'videos') > 0
                  group by title),
         titlez as (select min(urlLen),
                           min(url)                                                                     url,
                           substr(title, 1, instr(title, ' Tube '))                                     titlex,
                           cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc,
                        
                           max(last_visit_time)                                                         m
                    from yrls
                    group by titlex),
         NudevistaOneTabIdea as (select url, 
        replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex
                                      , cc
                                 from titlez
                                 where cc <> 0),
         tosplit as (select url,
                            titlex,
                            cc
                     from NudevistaOneTabIdea),
         split(word, str) AS (SELECT '', titlex || ' '
                              from ToSplit
                              UNION ALL
                              SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                              FROM split
                              WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word
                         FROM split
                                  left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                         where NotSuitAbleSynonyms.word is null
                         group by split.word),
         adxafas as (select word, sum(x) x from FilterWords group by word),
         yrgyrg as (select url, titlex, cc, word, x
                    from NudevistaOneTabIdea xyz
                             cross join adxafas abs
                    where instr(lower(xyz.titlex), lower(abs.word))
                    order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words
                    from yrgyrg
                    group by url
                    order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join adxafas abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH yrls as (select max(url)                                                               url,
                         title,
                         substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx
                         
                  from urls
                  where instr(url, 'nudevista') * instr(title, 'videos') > 0
                  group by title),
         titlez as (select 
                           min(url)                                                                     url,
                           substr(title, 1, instr(title, ' Tube '))                                     titlex,
                           cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc
                           
                    from yrls
                    group by titlex),
         NudevistaOneTabIdea as (select url,
        replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex
                                      , cc
                                 from titlez
                                 where cc <> 0),
         tosplit as (select url,
                            titlex,
                            cc
                     from NudevistaOneTabIdea),
         split(word, str) AS (SELECT '', titlex || ' '
                              from ToSplit
                              UNION ALL
                              SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)
                              FROM split
                              WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word
                         FROM split
                                  left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                         where NotSuitAbleSynonyms.word is null
                         group by split.word),
         adxafas as (select word, sum(x) x from FilterWords group by word),
         yrgyrg as (select url, titlex, cc, word, x
                    from NudevistaOneTabIdea xyz
                             cross join adxafas abs
                    where instr(lower(xyz.titlex), lower(abs.word))
                    order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words
                    from yrgyrg
                    group by url
                    order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join adxafas abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH titlez as (select max(url)                                                               url,
                         substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                         substr(title, 1, instr(title, ' Tube '))                                     titlex,
                        cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc
                      from urls
                  where instr(url, 'nudevista') * instr(title, 'videos') > 0
                ),
         NudevistaOneTabIdea as (select url,
        replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex
                                      , cc
                                 from titlez
                                 where cc <> 0),
         tosplit as (select url,titlex, cc from NudevistaOneTabIdea),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word
                         FROM split
                                  left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                         where NotSuitAbleSynonyms.word is null
                         group by split.word),
         adxafas as (select word, sum(x) x from FilterWords group by word),
         yrgyrg as (select url, titlex, cc, word, x
                    from NudevistaOneTabIdea xyz
                             cross join adxafas abs
                    where instr(lower(xyz.titlex), lower(abs.word))
                    order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words
                    from yrgyrg
                    group by url
                    order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join adxafas abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH titlez as (select max(url)                                                               url,
                         substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx,
                         substr(title, 1, instr(title, ' Tube '))                                     titlex
                      from urls
                  where instr(url, 'nudevista') * instr(title, 'videos') > 0
                ),
         NudevistaOneTabIdea as (select url,
        replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex
                                      , cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc
                                 from titlez
                                 where cc <> 0),
         tosplit as (select url,titlex, cc from NudevistaOneTabIdea),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word
                         FROM split
                                  left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                         where NotSuitAbleSynonyms.word is null
                         group by split.word),
         adxafas as (select word, sum(x) x from FilterWords group by word),
         yrgyrg as (select url, titlex, cc, word, x
                    from NudevistaOneTabIdea xyz
                             cross join adxafas abs
                    where instr(lower(xyz.titlex), lower(abs.word))
                    order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words
                    from yrgyrg
                    group by url
                    order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join adxafas abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH yrls as (select max(url)                                                               url,
                         title,
                         substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx

                  from urls
                  where instr(url, 'nudevista') * instr(title, 'videos') > 0
                  group by title),
         titlez as (select
                           min(url)                                                                     url,
                           substr(title, 1, instr(title, ' Tube '))                                     titlex,
                           cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc

                    from yrls
                    group by titlex),
         NudevistaOneTabIdea as (select url,
        replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex
                                      , cc
                                 from titlez
                                 where cc <> 0),
         tosplit as (select url,titlex, cc from NudevistaOneTabIdea),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word
                         FROM split
                                  left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                         where NotSuitAbleSynonyms.word is null
                         group by split.word),
         adxafas as (select word, sum(x) x from FilterWords group by word),
         yrgyrg as (select url, titlex, cc, word, x
                    from NudevistaOneTabIdea xyz
                             cross join adxafas abs
                    where instr(lower(xyz.titlex), lower(abs.word))
                    order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words
                    from yrgyrg
                    group by url
                    order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join adxafas abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH yrls as (select max(url)                                                               url,
                         title,
                         substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx

                  from urls
                  where instr(url, 'nudevista') * instr(title, 'videos') > 0
                  group by title),
         titlez as (select
                           min(url)                                                                     url,
                           substr(title, 1, instr(title, ' Tube '))                                     titlex

                    from yrls
                    group by titlex),
         NudevistaOneTabIdea as (select url,
        replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex
                                      ,
                           cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc
                                 from titlez
                                 where cc <> 0),
         tosplit as (select url,titlex, cc from NudevistaOneTabIdea),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word
                         FROM split
                                  left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                         where NotSuitAbleSynonyms.word is null
                         group by split.word),
         adxafas as (select word, sum(x) x from FilterWords group by word),
         yrgyrg as (select url, titlex, cc, word, x
                    from NudevistaOneTabIdea xyz
                             cross join adxafas abs
                    where instr(lower(xyz.titlex), lower(abs.word))
                    order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words
                    from yrgyrg
                    group by url
                    order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join adxafas abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH yrls as (select max(url)                                                               url,
                         title,
                         substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx

                  from urls
                  where instr(url, 'nudevista') * instr(title, 'videos') > 0
                  group by title),
         titlez as (select
                           min(url)                                                                     url,
                           substr(title, 1, instr(title, ' Tube '))                                     titlex
                            ,max(tx) tx
                    from yrls
                    group by titlex),
         NudevistaOneTabIdea as (select url,
        replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex
                                      ,
                           cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc
                                 from titlez
                                 where cc <> 0),
         tosplit as (select url,titlex, cc from NudevistaOneTabIdea),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word
                         FROM split
                                  left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                         where NotSuitAbleSynonyms.word is null
                         group by split.word),
         adxafas as (select word, sum(x) x from FilterWords group by word),
         yrgyrg as (select url, titlex, cc, word, x
                    from NudevistaOneTabIdea xyz
                             cross join adxafas abs
                    where instr(lower(xyz.titlex), lower(abs.word))
                    order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words
                    from yrgyrg
                    group by url
                    order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join adxafas abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH 
         titlez as (select
                           min(url)                                                                     url,
                           substr(title, 1, instr(title, ' Tube '))                                     titlex
                            , substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx
                    from urls
                  where instr(url, 'nudevista') * instr(title, 'videos') > 0
                    group by titlex),
         NudevistaOneTabIdea as (select url,
        replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex
                                      ,
                           cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc
                                 from titlez
                                 where cc <> 0),
         tosplit as (select url,titlex, cc from NudevistaOneTabIdea),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word
                         FROM split
                                  left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word
                         where NotSuitAbleSynonyms.word is null
                         group by split.word),
         adxafas as (select word, sum(x) x from FilterWords group by word),
         yrgyrg as (select url, titlex, cc, word, x
                    from NudevistaOneTabIdea xyz
                             cross join adxafas abs
                    where instr(lower(xyz.titlex), lower(abs.word))
                    order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words
                    from yrgyrg
                    group by url
                    order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join adxafas abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
         titlez as (select min(url)                                                                     url, substr(title, 1, instr(title, ' Tube '))                                     titlex,substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx from urls where instr(url, 'nudevista') * instr(title, 'videos') > 0 group by titlex),
         NudevistaOneTabIdea as (select url,replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex,cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc from titlez where cc <> 0),
         tosplit as (select url,titlex, cc from NudevistaOneTabIdea),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         adxafas as (select word, sum(x) x from FilterWords group by word),
         yrgyrg as (select url, titlex, cc, word, x
                    from NudevistaOneTabIdea xyz
                             cross join adxafas abs
                    where instr(lower(xyz.titlex), lower(abs.word))
                    order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words
                    from yrgyrg
                    group by url
                    order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join adxafas abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
         initial as (select min(url)                                                                     url, substr(title, 1, instr(title, ' Tube '))                                     titlex,substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx from urls where instr(url, 'nudevista') * instr(title, 'videos') > 0 group by titlex),
         Trimmed as (select url,replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex,cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc from initial where cc <> 0),
         tosplit as (select titlex from Trimmed),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         adxafas as (select word, sum(x) x from FilterWords group by word),
         yrgyrg as (select url, titlex, cc, word, x
                    from Trimmed xyz
                             cross join adxafas abs
                    where instr(lower(xyz.titlex), lower(abs.word))
                    order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words
                    from yrgyrg
                    group by url
                    order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join adxafas abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
         initial as (select min(url)                                                                     url, substr(title, 1, instr(title, ' Tube '))                                     titlex,substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx from urls where instr(url, 'nudevista') * instr(title, 'videos') > 0 group by titlex),
         Trimmed as (select url,replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex,cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc from initial where cc <> 0),
         tosplit as (select titlex from Trimmed),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         CountGroupWords as (select word, sum(x) x from FilterWords group by word),
         ReAssosiateWords as (select url, titlex, cc, word, x from Trimmed xyz cross join CountGroupWords abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
         yrparp as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
         groupByWordsNudevista as (select min(title) t, sum(xsum) xsum, words
                                   from yrpArp
                                   group by words
                                   order by xsum desc),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from groupByWordsNudevista),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join CountGroupWords abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
         initial as (select min(url)                                                                     url, substr(title, 1, instr(title, ' Tube '))                                     titlex,substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx from urls where instr(url, 'nudevista') * instr(title, 'videos') > 0 group by titlex),
         Trimmed as (select url,replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex,cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc from initial where cc <> 0),
         tosplit as (select titlex from Trimmed),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         CountGroupWords as (select word, sum(x) x from FilterWords group by word),
         ReAssosiateWords as (select url, titlex, cc, word, x from Trimmed xyz cross join CountGroupWords abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
         clusterRelevantWords as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
         GroupByWordCluster as (select min(title) t, sum(xsum) xsum, words
                                   from clusterRelevantWords
                                   group by words
                                   ),
         bgroup as (select t title, xsum, words, row_number() over (order by xsum,words) rnr
                    from GroupByWordCluster),
         azy as (select title, xsum, words, rnr, word, x
                 from bgroup xyz
                          cross join CountGroupWords abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)


 select referens.x, coalesce(referens.words, agroup.words) words,y
 
 from bgroup agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join bgroup
         on referens.x = bgroup.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
         initial as (select min(url)                                                                     url, substr(title, 1, instr(title, ' Tube '))                                     titlex,substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx from urls where instr(url, 'nudevista') * instr(title, 'videos') > 0 group by titlex),
         Trimmed as (select url,replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex,cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc from initial where cc <> 0),
         tosplit as (select titlex from Trimmed),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         Wordlist as (select word, sum(x) x from FilterWords group by word),
         ReAssosiateWords as (select url, titlex, cc, word, x from Trimmed xyz cross join Wordlist abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
         clusterRelevantWords as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
         GroupByWordCluster as (select min(title) t, sum(xsum) xsum, words from clusterRelevantWords group by words),
         NrGroups as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from GroupByWordCluster),
         azy as (select title, xsum, words, rnr, word, x
                 from NrGroups xyz
                          cross join Wordlist abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         arghargh as (select azx.rnr x, azy.rnr y, length(max(azy.words)) lRwo, length(group_concat(azx.word)) lsr
                      from azy azx
                               LEFT OUTER JOIN azy
                                               on (azx.word = azy.word and azx.rnr <> azy.rnr) and azx.xsum >= azy.x and
                                                  azx.xsum >= azy.xsum
                      where azy.title is not null
                      group by azx.title, azy.title)
select * from arghargh;
;-- -. . -..- - / . -. - .-. -.--
WITH
         initial as (select min(url)                                                                     url, substr(title, 1, instr(title, ' Tube '))                                     titlex,substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx from urls where instr(url, 'nudevista') * instr(title, 'videos') > 0 group by titlex),
         Trimmed as (select url,replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex,cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc from initial where cc <> 0),
         tosplit as (select titlex from Trimmed),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         Wordlist as (select word, sum(x) x from FilterWords group by word),
         ReAssosiateWords as (select url, titlex, cc, word, x from Trimmed xyz cross join Wordlist abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
         clusterRelevantWords as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
         GroupByWordCluster as (select min(title) t, sum(xsum) xsum, words from clusterRelevantWords group by words),
         NrGroups as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from GroupByWordCluster),
         wordsCrossGroups as (select title, xsum, words, rnr, word, x
                 from NrGroups xyz
                          cross join Wordlist abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         DefineInheritance as (select azx.rnr x, wordsCrossGroups.rnr y, length(max(wordsCrossGroups.words)) lRwo, length(group_concat(azx.word)) lsr
                      from wordsCrossGroups azx
                               LEFT OUTER JOIN wordsCrossGroups 
                                               on (azx.word = wordsCrossGroups.word and azx.rnr <> wordsCrossGroups.rnr) and azx.xsum >= wordsCrossGroups.x and
                                                  azx.xsum >= wordsCrossGroups.xsum
                      where wordsCrossGroups.title is not null
                      group by azx.title, wordsCrossGroups.title)

    select referens.x, coalesce(referens.words, agroup.words) words,y

    from NrGroups agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   arghargh
 where lRwo = lsr)
 group by y) referens
     inner join NrGroups
         on referens.x = NrGroups.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
         initial as (select min(url)                                                                     url, substr(title, 1, instr(title, ' Tube '))                                     titlex,substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx from urls where instr(url, 'nudevista') * instr(title, 'videos') > 0 group by titlex),
         Trimmed as (select url,replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex,cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc from initial where cc <> 0),
         tosplit as (select titlex from Trimmed),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         Wordlist as (select word, sum(x) x from FilterWords group by word),
         ReAssosiateWords as (select url, titlex, cc, word, x from Trimmed xyz cross join Wordlist abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
         clusterRelevantWords as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
         GroupByWordCluster as (select min(title) t, sum(xsum) xsum, words from clusterRelevantWords group by words),
         NrGroups as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from GroupByWordCluster),
         wordsCrossGroups as (select title, xsum, words, rnr, word, x
                 from NrGroups xyz
                          cross join Wordlist abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         DefineInheritance as (select azx.rnr x,wordsCrossGroups.rnr y,length(max(wordsCrossGroups.words)) lRwo,length(group_concat(azx.word)) lsr
                      from wordsCrossGroups azx
                               LEFT OUTER JOIN wordsCrossGroups
                                               on (azx.word = wordsCrossGroups.word and azx.rnr <> wordsCrossGroups.rnr) and azx.xsum >= wordsCrossGroups.x and
                                                  azx.xsum >= wordsCrossGroups.xsum
                      where wordsCrossGroups.title is not null
                      group by azx.title, wordsCrossGroups.title)

    select referens.x, coalesce(referens.words, agroup.words) words,y

    from NrGroups agroup
     left outer join
 (select x, y, title, xsum, words, rnr from (select max(x) x, y
 from (select x, y from
   DefineInheritance
 where lRwo = lsr)
 group by y) referens
     inner join NrGroups
         on referens.x = NrGroups.rnr) referens on agroup.rnr = referens.y group by coalesce(referens.words, agroup.words)order by length(coalesce(referens.words, agroup.words)) desc;
;-- -. . -..- - / . -. - .-. -.--
WITH
         initial as (select min(url)                                                                     url, substr(title, 1, instr(title, ' Tube '))                                     titlex,substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx from urls where instr(url, 'nudevista') * instr(title, 'videos') > 0 group by titlex),
         Trimmed as (select url,replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex,cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc from initial where cc <> 0),
         tosplit as (select titlex from Trimmed),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         Wordlist as (select word, sum(x) x from FilterWords group by word),
         ReAssosiateWords as (select url, titlex, cc, word, x from Trimmed xyz cross join Wordlist abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
         clusterRelevantWords as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
         GroupByWordCluster as (select min(title) t, sum(xsum) xsum, words from clusterRelevantWords group by words),
         NrGroups as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from GroupByWordCluster),
         wordsCrossGroups as (select title, xsum, words, rnr, word, x
                 from NrGroups xyz
                          cross join Wordlist abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         DefineInheritance as (select azx.rnr x,wordsCrossGroups.rnr y,length(max(wordsCrossGroups.words)) lRwo,length(group_concat(azx.word)) lsr from wordsCrossGroups azx LEFT OUTER JOIN wordsCrossGroups on (azx.word = wordsCrossGroups.word and azx.rnr <> wordsCrossGroups.rnr) and azx.xsum >= wordsCrossGroups.x and azx.xsum >= wordsCrossGroups.xsum where wordsCrossGroups.title is not null group by azx.title, wordsCrossGroups.title)

 groupByInheritance as   (
select referens.x, coalesce(referens.words, agroup.words) words, y
from NrGroups agroup
         left outer join(select x, y, title, xsum, words, rnr
                         from (select max(x) x, y
                               from (select x, y from DefineInheritance where lRwo = lsr)
                               group by y) referens
                                  inner join NrGroups on referens.x = NrGroups.rnr) referens on agroup.rnr = referens.y
group by coalesce(referens.words, agroup.words)
order by length(coalesce(referens.words, agroup.words)) desc;
);
;-- -. . -..- - / . -. - .-. -.--
WITH
         initial as (select min(url)                                                                     url, substr(title, 1, instr(title, ' Tube '))                                     titlex,substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx from urls where instr(url, 'nudevista') * instr(title, 'videos') > 0 group by titlex),
         Trimmed as (select url,replace(replace(replace(replace(replace(titlex, ')', ' '), '(', ' '), '-', ' '), ' or ', ' '), ' Or ', ' ')  titlex,cast(replace(trim(substr(tx, 1, instr(tx, ' videos'))), ',', '') as integer) cc from initial where cc <> 0),
         tosplit as (select titlex from Trimmed),
         split(word, str) AS (SELECT '', titlex || ' ' from ToSplit UNION ALL SELECT substr(str, 0, instr(str, ' ')), substr(str, instr(str, ' ') + 1)FROM split WHERE str != ''),
         FilterWords as (SELECT count(split.word) x, split.word FROM split left outer join NotSuitAbleSynonyms on NotSuitAbleSynonyms.word = split.word where NotSuitAbleSynonyms.word is null group by split.word),
         Wordlist as (select word, sum(x) x from FilterWords group by word),
         ReAssosiateWords as (select url, titlex, cc, word, x from Trimmed xyz cross join Wordlist abs where instr(lower(xyz.titlex), lower(abs.word))order by titlex, x desc),
         clusterRelevantWords as (select max(titlex) title, sum(x) xsum, group_concat(word) words from ReAssosiateWords group by url order by xsum desc, words),
         GroupByWordCluster as (select min(title) t, sum(xsum) xsum, words from clusterRelevantWords group by words),
         NrGroups as (select t title, xsum, words, row_number() over (order by xsum,words) rnr from GroupByWordCluster),
         wordsCrossGroups as (select title, xsum, words, rnr, word, x
                 from NrGroups xyz
                          cross join Wordlist abs
                 where instr(lower(xyz.words), lower(abs.word))
                 order by words, x desc)
            ,
         DefineInheritance as (select azx.rnr x,wordsCrossGroups.rnr y,length(max(wordsCrossGroups.words)) lRwo,length(group_concat(azx.word)) lsr from wordsCrossGroups azx LEFT OUTER JOIN wordsCrossGroups on (azx.word = wordsCrossGroups.word and azx.rnr <> wordsCrossGroups.rnr) and azx.xsum >= wordsCrossGroups.x and azx.xsum >= wordsCrossGroups.xsum where wordsCrossGroups.title is not null group by azx.title, wordsCrossGroups.title)

 ,groupByInheritance as   (
select referens.x, coalesce(referens.words, agroup.words) words, y
from NrGroups agroup
         left outer join(select x, y, title, xsum, words, rnr
                         from (select max(x) x, y
                               from (select x, y from DefineInheritance where lRwo = lsr)
                               group by y) referens
                                  inner join NrGroups on referens.x = NrGroups.rnr) referens on agroup.rnr = referens.y
group by coalesce(referens.words, agroup.words)
order by length(coalesce(referens.words, agroup.words)) desc)

select * from groupByWordsNudevista;
;-- -. . -..- - / . -. - .-. -.--
WITH
     initial as (select min(url) url, substr(title, 1, instr(title, ' Tube ')) titlex,substr(title, instr(title, 'Tube Search (') + length('Tube Search (')) tx from urls where instr(url, 'nudevista') * instr(title, 'videos') > 0 group by titlex),
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
WITH RECURSIVE rcte AS (
SELECT visits.id,
visits.url,
visits.visit_time,
visits.from_visit,
urls.url AS URL1
FROM visits
LEFT JOIN urls ON visits.url = urls.id
WHERE visits.id = 27585
UNION ALL
SELECT visits.id,
visits.url,
visits.visit_time,
visits.from_visit,
urls.url AS URL1
FROM rcte
LEFT JOIN urls ON visits.url = urls.id
INNER JOIN visits ON rcte.from_visit = visits.id
LIMIT 100
)
SELECT * from rcte
ORDER BY rcte.id;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE rcte AS (
SELECT visits.id,
visits.url,
visits.visit_time,
visits.from_visit,
urls.url AS URL1
FROM visits
LEFT JOIN urls ON visits.url = urls.id
WHERE visits.id = 27585
UNION ALL
SELECT visits.id,
visits.url,
visits.visit_time,
visits.from_visit,
urls.url AS URL1
FROM rcte
LEFT JOIN urls ON rcte.url = urls.id
INNER JOIN visits ON rcte.from_visit = visits.id
LIMIT 100
)
SELECT * from rcte
ORDER BY rcte.id;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE rcte AS (
SELECT visits.id,
visits.url,
visits.visit_time,
visits.from_visit,
urls.url AS URL1
FROM visits
LEFT JOIN urls ON visits.url = urls.id
WHERE visits.id = 27585
UNION ALL
SELECT visits.id,
visits.url,
visits.visit_time,
visits.from_visit,
urls.url AS URL1
FROM rcte
INNER JOIN visits ON rcte.from_visit = visits.id
LEFT JOIN urls ON visits.url = urls.id

LIMIT 100
)
SELECT * from rcte
ORDER BY rcte.id;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE rcte AS (
SELECT visits.id,
visits.url,
visits.visit_time,
visits.from_visit,
urls.url AS URL1
FROM visits
LEFT JOIN urls ON visits.url = urls.id
WHERE visits.id = 1
UNION ALL
SELECT visits.id,
visits.url,
visits.visit_time,
visits.from_visit,
urls.url AS URL1
FROM rcte
INNER JOIN visits ON rcte.from_visit = visits.id
LEFT JOIN urls ON visits.url = urls.id

LIMIT 100
)
SELECT * from rcte
ORDER BY rcte.id;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE rcte AS (
SELECT visits.id,
visits.url,
visits.visit_time,
visits.from_visit,
urls.url AS URL1
FROM visits
LEFT JOIN urls ON visits.url = urls.id
WHERE visits.id = 2235
UNION ALL
SELECT visits.id,
visits.url,
visits.visit_time,
visits.from_visit,
urls.url AS URL1
FROM rcte
INNER JOIN visits ON rcte.from_visit = visits.id
LEFT JOIN urls ON visits.url = urls.id

LIMIT 100
)
SELECT * from rcte
ORDER BY rcte.id;
;-- -. . -..- - / . -. - .-. -.--
select replace(replace(replace(replace(replace(replace(replace(replace('&ab?', '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+');
;-- -. . -..- - / . -. - .-. -.--
with recursive Replacer(str) as (
    
select replace(replace(replace(replace(replace(replace(replace(replace(str, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+')    
    union 
    select '' || str
where str <> replace(replace(replace(replace(replace(replace(replace(replace(str, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+')
)
select * from Replacer('&ab?');
;-- -. . -..- - / . -. - .-. -.--
with recursive Replacer(str) as (

select replace(replace(replace(replace(replace(replace(replace(replace(str, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+')
    union
    select '' || str
where str <> replace(replace(replace(replace(replace(replace(replace(replace(str, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+')
)
select Replacer('&ab?');
;-- -. . -..- - / . -. - .-. -.--
with recursive Replacer(str) as (

select replace(replace(replace(replace(replace(replace(replace(replace(str, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+')
    union
    select '' || str
where str <> replace(replace(replace(replace(replace(replace(replace(replace(str, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+')
)
select * from (select '') cross join Replacer('&ab?');
;-- -. . -..- - / . -. - .-. -.--
with recursive Replacer(str) as (

select replace(replace(replace(replace(replace(replace(replace(replace(str, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+')
    union
    select '' || str
where str <> replace(replace(replace(replace(replace(replace(replace(replace(str, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+')
)
select * from (select '') cross join (select Replacer('&ab?')) a;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE
  cnt(x) AS (
      VALUES(1) 
      UNION ALL 
      SELECT x+1 FROM cnt WHERE x<1000000)
SELECT x FROM cnt;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE
  cnt(x) AS (
      VALUES(1)
      UNION ALL
      SELECT x+1 FROM cnt WHERE x<10)
SELECT x FROM cnt;
;-- -. . -..- - / . -. - .-. -.--
WITH RECURSIVE
  cnt(x) AS (
      VALUES('&ab?')
      UNION ALL
      SELECT replace(replace(replace(replace(replace(replace(replace(replace(x, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+') FROM cnt WHERE x<>replace(replace(replace(replace(replace(replace(replace(replace(x, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+'))
SELECT x FROM cnt;
;-- -. . -..- - / . -. - .-. -.--
WITH 
  cnt(x) AS (
      VALUES('&ab?')
      UNION ALL
      SELECT replace(replace(replace(replace(replace(replace(replace(replace(x, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+') FROM cnt WHERE x<>replace(replace(replace(replace(replace(replace(replace(replace(x, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+'))
SELECT x FROM cnt;
;-- -. . -..- - / . -. - .-. -.--
WITH
     a as (VALUES('&ab?')),
  cnt(x) AS (
      select * from a
      UNION ALL
      SELECT replace(replace(replace(replace(replace(replace(replace(replace(x, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+') FROM cnt WHERE x<>replace(replace(replace(replace(replace(replace(replace(replace(x, '&','+'), '?','+'), '#','+'), 'Â»','+'), '<<','+'), '','+'), '','+'), '','+'))
SELECT x FROM cnt;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
                     SELECT '', url || '/'
                     from (select url from urls where instr(url,'/') < 0 limit 1)
                     UNION ALL
                     SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1)                            
                     FROM split
                     WHERE str != ''
                 )
                SELECT split.word 
;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
                     SELECT '', url || '/'
                     from (select url from urls where instr(url,'/') < 0 limit 1)
                     UNION ALL
                     SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1)
                     FROM split
                     WHERE str != ''
                 )
                SELECT split.word from split;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
                     SELECT '', url || '/'
                     from (select url from urls where instr(url,'/') > 0 limit 1)
                     UNION ALL
                     SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1)
                     FROM split
                     WHERE str != ''
                 )
                SELECT split.word from split;
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
                     SELECT '', url || '/'
                     from (select url from urls where instr(url,'/') > 0 limit 1)
                     UNION ALL
                     SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1)
                     FROM split
                     WHERE str != ''
                 )
                SELECT split.word from split where word  != '';
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
                     SELECT '', url || '/'
                     from (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1)
                     UNION ALL
                     SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1)
                     FROM split
                     WHERE str != ''
                 )
                SELECT split.word from split where word  != '';
;-- -. . -..- - / . -. - .-. -.--
WITH split(word, str) AS (
                     SELECT '', url || '/'
                     from (select url from urls where instr(url,'/') > 0 order by length(url) asc  limit 1 offset 100)
                     UNION ALL
                     SELECT substr(str, 0, instr(str, '/')),substr(str, instr(str, '/') + 1)
                     FROM split
                     WHERE str != ''
                 )
                SELECT split.word from split where word  != '';
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT  *,
       RN = ROW_NUMBER()OVER(PARTITION BY term ORDER BY url_id)
   FROM main.keyword_search_terms
)
select FROM CTE WHERE RN > 1;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT  *,
       RN = ROW_NUMBER()OVER(PARTITION BY term ORDER BY url_id)
   FROM main.keyword_search_terms
)
select * FROM CTE WHERE RN > 1;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT  *,
       ROW_NUMBER()OVER(PARTITION BY term ORDER BY url_id)
   FROM main.keyword_search_terms
)
select * FROM CTE WHERE RN > 1;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT  *,
       ROW_NUMBER()OVER(PARTITION BY term ORDER BY url_id) RN
   FROM main.keyword_search_terms
)
select * FROM CTE WHERE RN > 1;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT  *,
       ROW_NUMBER()OVER(PARTITION BY term ORDER BY url_id) RN
   FROM main.keyword_search_terms
)
delete FROM CTE WHERE RN > 1;
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT  *,
       ROW_NUMBER()OVER(PARTITION BY term ORDER BY url_id) RN
   FROM main.keyword_search_terms
)
,q as (select url_id FROM CTE WHERE RN > 1)

delete from keyword_search_terms where url_id in (select url_id from q);
;-- -. . -..- - / . -. - .-. -.--
SELECT max(t.title),
       sum(t.visit_count)
       , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST
        , max(url)
FROM filtered t

group by HOST order by sum(t.visit_count) desc,HOST,url, t.title desc;
;-- -. . -..- - / . -. - .-. -.--
create View ShouldBeKeywords as select title,max(id)  from urls  group by title order by sum(visit_count) desc limit 194;
;-- -. . -..- - / . -. - .-. -.--
select * from urls where id in(select id from ConsiderCorrecting) AND not(id in(select id from ConsiderDeleting)) order by title,url;
;-- -. . -..- - / . -. - .-. -.--
insert or ignore into xzReplace values ('%AlternativeTo.net','AlternativeTo.net - '),('%Chrome Web Store','Chrome Web Store - '),('%Google Search','googleSearch - '),('%Wikipedia','Wikipedia - '),('%YouTube','YouTube - '),('%Discogs','Discogs - '),('%Office Support','Office Support - '),('%pdf%','pdf - '),('%spotify%','spotify - '),('%sql%','sql - ');
;-- -. . -..- - / . -. - .-. -.--
insert or ignore into urlReplace values 
            ('%sql%','sql - '),('https://stackoverflow%','stackOverflow - '),('%stackexchange%','stackOverflow - '),('%bandcamp%','1bandcamp - '),('https://developer.spotify.com/community/%','spotify community news'),('https://github.com/jack-guy%','github.com/jack-guy'),('https://www.portablefreeware%','portablefreeware'),('https://cpu.userbenchmark.com%','userbenchmark'),('https://www.techrepublic.com%','techrepublic'),('https://accounts.google.com/%','google auth'),('%https://www.freeformatter%','freeformatter'),('https://play.google.com/music%','playMusic'),('https://www.systembolaget%','systembolaget'),('https://www.pathofexile.com/trade/','trade'),('https://www.tunemymusic.com%','tuneMyMusic'),('https://www.roligaprylar%','RoligaPrylar'),('%playlistmachinery%','playlistMachinery'),('https://www.mtggoldfish%','mtggoldfish'),('https://web.archive.org%','web.archive'),('https://jmperezperez.%','jmperezperez'),('https://help.github.com%','helpGithub'),('https://www.blockscad3d%','blockScad'),('https://www.facebook.com%','facebook'),('https://www.linkedin.com%','LinkedIn'),('https://textmechanic%','textmechanic'),('https://www.teamviewer%','teamviewer'),('https://www.rescuetime%','rescuetime'),('chrome-extension%','chromeExtension'),('https://www.multcloud%','multicloud'),('https://photos.google.com%','photos'),('https://www.netflix.com%','netflix'),('https://drive.google.com%','drive'),('https://docs.google.com%','sheets'),('https://mail.google.com%','Gmail'),('https://www.office.com%','office'),('https://descent.live%','descent'),('http://everynoise%','everynoise'),('https://www.youtube.%','youtube'),('https://en.bab.la%','en.bab.la'),('https://svs-games%','svs-games'),('https://brancher.%','brancher'),('https://lastpass.%','lastpass'),('https://poe.ninja%','poeNinja'),('%recovery%','accountRecovery'),('https://dubolt.com%','dubolt'),('https://trello.com%','trello'),('https://zapier.com%','Zapier'),('https://atom.io/%','atom.io'),('https://gist.github%','gist'),('https://ifttt.com/%','ifttt'),('https://getpocket%','pocket'),('%redirection%','redirection'),('https://todoist.com%','todo'),('https://crm.zoho.eu%','zoho'),('https://www.diigo%','diigo'),('https://www.figma%','figma'),('https://www.pdf2go%','pdf'),('%wunderlist%','wunderlist'),('%filmtipset%','filmtipset'),
    ('%google%/maps%','maps'),('%enquoted%','enquoted'),('%mapinfo%','mapinfo'),('%onenote%','oneNote'),('%shikaka%','shikaka'),('https://ssk_%','ssk'),

            ('https://service.gotland.se%','portalen'),
            ('https://www.gotland.se%','portalen'),
            ('https://gis.gotland.se%','portalen'),
            ('https://zero.comaround.com%','portalen'),
            ('https://adfs.gotland.se/%','portalen'),
            ('https://login.comaround%','portalen'),
            ('https://filr.gotland.se%','portalen'),
            ('https://gotlandskommun-my.sharepoint%','portalen'),
            ('https://ua.gotland.se%','portalen'),
            ('https://mvprod.gotland.se%','portalen'),
            ('%portalen%gotland.se%','portalen'),

            ('http://192.168.2.254%','192.168.2.254'),
            ('https://www.google%/pagead%','192.168.2.254'),
            ('file:%','192.168.2.254'),
            ('https://login.microsoftonline%','192.168.2.254'),
            ('https://login.live.%','192.168.2.254'),
            ('https://europe-001.consent.azure%','192.168.2.254'),
            ('%mirox23.biz%','192.168.2.254'),
            ('%adaranth%','192.168.2.254'),


            ('https://github.com/perXautomatik%','github'),
              ('https://github.com/desktop%','github'),
              ('https://github.com/settings%','github'),

            ('https://open.spotify.com%','spotify'),
              ('https://accounts.spotify.com%','spotify'),
              ('https://www.spotify%','spotify'),


           ('%flow.microsoft%','flow'),
             ('https://make.powerapps%','flow'),


            ('%github.com/v3/oauth%','GitAuth'),
              ('https://auth0.com%','GitAuth'),


            ('https://onedrive%', 'oneDrive'),
            ('%skydrive.live.com%', 'oneDrive'),


            ('https://messages.google.com%','Messenger'  ),
              ('https://www.messenger.com/%','Messenger'  ),


    ( 'https://www.last.fm/user/konstruktor_k%','last.fm'),
              ('%www.last.fm%','last.fm');
;-- -. . -..- - / . -. - .-. -.--
create view TitleCorrection as
with
    filteredTitles as (select url,visit_count,ifnull(nullif(title,xzTiles.title),url) xz  from urls left join xzTiles using (title)),
    urlsWithXZ as (select replace xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles,urlReplace where instr(url,find) > 0 group by xz),
     urlWithYz as (select url, xz, (xzReplace.replace || xz) yz from urlsWithXZ,xzReplace where instr(urlsWithXZ.xz,xzReplace.find) + instr(urlsWithXZ.url,xzReplace.find) > 0)
    select xz,yz from urlWithYz
order by
        yz;
;-- -. . -..- - / . -. - .-. -.--
create table if not exists xzReplace (
    find text unique primary key,
    replace text not null
);
;-- -. . -..- - / . -. - .-. -.--
insert or ignore into xzReplace values ('AlternativeTo.net','AlternativeTo.net - '),('Chrome Web Store','Chrome Web Store - '),('Google Search','googleSearch - '),('Wikipedia','Wikipedia - '),('YouTube','YouTube - '),('Discogs','Discogs - '),('Office Support','Office Support - '),('pdf','pdf - '),('spotify','spotify - '),('sql','sql - ');
;-- -. . -..- - / . -. - .-. -.--
create table if not exists urlReplace (
    find text unique primary key,
    replace text not null
);
;-- -. . -..- - / . -. - .-. -.--
insert or ignore into urlReplace values
            ('sql','sql - '),('https://stackoverflow','stackOverflow - '),('stackexchange','stackOverflow - '),('bandcamp','1bandcamp - '),('https://developer.spotify.com/community/','spotify community news'),('https://github.com/jack-guy','github.com/jack-guy'),('https://www.portablefreeware','portablefreeware'),('https://cpu.userbenchmark.com','userbenchmark'),('https://www.techrepublic.com','techrepublic'),('https://accounts.google.com/','google auth'),('https://www.freeformatter','freeformatter'),('https://play.google.com/music','playMusic'),('https://www.systembolaget','systembolaget'),('https://www.pathofexile.com/trade/','trade'),('https://www.tunemymusic.com','tuneMyMusic'),('https://www.roligaprylar','RoligaPrylar'),('playlistmachinery','playlistMachinery'),('https://www.mtggoldfish','mtggoldfish'),('https://web.archive.org','web.archive'),('https://jmperezperez.','jmperezperez'),('https://help.github.com','helpGithub'),('https://www.blockscad3d','blockScad'),('https://www.facebook.com','facebook'),('https://www.linkedin.com','LinkedIn'),('https://textmechanic','textmechanic'),('https://www.teamviewer','teamviewer'),('https://www.rescuetime','rescuetime'),('chrome-extension','chromeExtension'),('https://www.multcloud','multicloud'),('https://photos.google.com','photos'),('https://www.netflix.com','netflix'),('https://drive.google.com','drive'),('https://docs.google.com','sheets'),('https://mail.google.com','Gmail'),('https://www.office.com','office'),('https://descent.live','descent'),('http://everynoise','everynoise'),('https://www.youtube.','youtube'),('https://en.bab.la','en.bab.la'),('https://svs-games','svs-games'),('https://brancher.','brancher'),('https://lastpass.','lastpass'),('https://poe.ninja','poeNinja'),('recovery','accountRecovery'),('https://dubolt.com','dubolt'),('https://trello.com','trello'),('https://zapier.com','Zapier'),('https://atom.io/','atom.io'),('https://gist.github','gist'),('https://ifttt.com/','ifttt'),('https://getpocket','pocket'),('redirection','redirection'),('https://todoist.com','todo'),('https://crm.zoho.eu','zoho'),('https://www.diigo','diigo'),('https://www.figma','figma'),('https://www.pdf2go','pdf'),('wunderlist','wunderlist'),('filmtipset','filmtipset'),
    ('google/maps','maps'),('enquoted','enquoted'),('mapinfo','mapinfo'),('onenote','oneNote'),('shikaka','shikaka'),('https://ssk_','ssk'),

            ('https://service.gotland.se','portalen'),
            ('https://www.gotland.se','portalen'),
            ('https://gis.gotland.se','portalen'),
            ('https://zero.comaround.com','portalen'),
            ('https://adfs.gotland.se/','portalen'),
            ('https://login.comaround','portalen'),
            ('https://filr.gotland.se','portalen'),
            ('https://gotlandskommun-my.sharepoint','portalen'),
            ('https://ua.gotland.se','portalen'),
            ('https://mvprod.gotland.se','portalen'),
            ('portalengotland.se','portalen'),

            ('http://192.168.2.254','192.168.2.254'),
            ('https://www.google/pagead','192.168.2.254'),
            ('file:','192.168.2.254'),
            ('https://login.microsoftonline','192.168.2.254'),
            ('https://login.live.','192.168.2.254'),
            ('https://europe-001.consent.azure','192.168.2.254'),
            ('mirox23.biz','192.168.2.254'),
            ('adaranth','192.168.2.254'),


            ('https://github.com/perXautomatik','github'),
              ('https://github.com/desktop','github'),
              ('https://github.com/settings','github'),

            ('https://open.spotify.com','spotify'),
              ('https://accounts.spotify.com','spotify'),
              ('https://www.spotify','spotify'),


           ('flow.microsoft','flow'),
             ('https://make.powerapps','flow'),


            ('github.com/v3/oauth','GitAuth'),
              ('https://auth0.com','GitAuth'),


            ('https://onedrive', 'oneDrive'),
            ('skydrive.live.com', 'oneDrive'),


            ('https://messages.google.com','Messenger'  ),
              ('https://www.messenger.com/','Messenger'  ),


    ( 'https://www.last.fm/user/konstruktor_k','last.fm'),
              ('www.last.fm','last.fm');
;-- -. . -..- - / . -. - .-. -.--
create table if not exists xzTiles
    (
        title text unique primary key
    );
;-- -. . -..- - / . -. - .-. -.--
insert or ignore into xzTiles values

              (''),
              (' and Advice for Technology Professionals - TechRepublic'),
              ('reddit: the front page of the internet'),
              ('Sign in – Google accounts'),
              ('Sign in to your account'),
              ('Search | Last.fm'),
              ('portablefreeware'),
              ('Redirect Notice'),
              ('News, Tips,'),
              ('Working...'),
              ('Continue'),
              ('Verified'),
              ('Google'),
              ('Coova');
;-- -. . -..- - / . -. - .-. -.--
create view if not exists TitleCorrection as
with
    filteredTitles as (select url,visit_count,ifnull(nullif(title,xzTiles.title),url) xz  from urls left join xzTiles using (title)),
    urlsWithXZ as (select replace xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles,urlReplace where instr(url,find) > 0 group by xz),
     urlWithYz as (select url, xz, (xzReplace.replace || xz) yz from urlsWithXZ,xzReplace where instr(urlsWithXZ.xz,xzReplace.find) + instr(urlsWithXZ.url,xzReplace.find) > 0)
    select xz,yz from urlWithYz
order by
        yz;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,ifnull(nullif(title,xzTiles.title),url) xz  from urls left join xzTiles using (title))
     select * from filteredTitles;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID,ifnull(nullif(title,xzTiles.title),url) xz  from urls left join xzTiles using (title))
     select * from filteredTitles;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left join xzTiles using (title))
     select * from filteredTitles where z is not null;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left join xzTiles using (title))
     ,urlsWithXZ as (select replace xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles,urlReplace where instr(url,find) > 0 group by xz)
    select * from urlsWithXz;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left join xzTiles using (title))
     ,urlsWithXZ as (select replace xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles,urlReplace where instr(url,find) > 0 group by xz)
     ,
     urlWithYz as (select url, xz, (xzReplace.replace || xz) yz from urlsWithXZ,xzReplace where instr(urlsWithXZ.xz,xzReplace.find) + instr(urlsWithXZ.url,xzReplace.find) > 0)
    select xz,yz from urlWithYz;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left join xzTiles using (title))
     ,urlsWithXZ as (select replace xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles,urlReplace where instr(url,find) > 0 group by xz)
     ,
     urlWithYz as (select url, xz, (xzReplace.replace || xz) yz from urlsWithXZ left outer join xzReplace on instr(urlsWithXZ.xz,xzReplace.find) + instr(urlsWithXZ.url,xzReplace.find) > 0 
                                                                   )
    select xz,yz from urlWithYz;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left join xzTiles using (title))
     ,urlsWithXZ as (select replace xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles,urlReplace where instr(url,find) > 0 group by xz)
     ,
     urlWithYz as (select url, xz, (xzReplace.replace || xz) yz from urlsWithXZ left outer join xzReplace on instr(urlsWithXZ.xz,xzReplace.find) + instr(urlsWithXZ.url,xzReplace.find) > 0
                                                                   )
    select xz,yz from urlWithYz
order by
        yz;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left outer join xzTiles using (title))
     ,urlsWithXZ as (select replace xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles left outer join urlReplace on instr(url,find) > 0 group by xz)
     ,
     urlWithYz as (select url, xz, (xzReplace.replace || xz) yz from urlsWithXZ left outer join xzReplace on instr(urlsWithXZ.xz,xzReplace.find) + instr(urlsWithXZ.url,xzReplace.find) > 0
                                                                   )
    select xz,yz from urlWithYz;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left outer join xzTiles using (title))
     ,urlsWithXZ as (select replace xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles left outer join urlReplace on instr(url,find) > 0 group by xz)
     ,
     urlWithYz as (select url, xz, (xzReplace.replace || xz) yz from urlsWithXZ left outer join xzReplace on instr(urlsWithXZ.xz,xzReplace.find) + instr(urlsWithXZ.url,xzReplace.find) > 0
                                                                   )
    select xz,yz from urlWithYz
order by
        yz;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left outer join xzTiles using (title))
     ,urlsWithXZ as (select replace xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles left outer join urlReplace on instr(url,find) > 0 group by xz)
     ,
     urlWithYz as (select url, xz, (xzReplace.replace || xz) yz from urlsWithXZ left outer join xzReplace on instr(urlsWithXZ.xz,xzReplace.find) + instr(urlsWithXZ.url,xzReplace.find) > 0
                                                                   )
    select xz,yz from urlWithYz
order by
        yz,xz;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left outer join xzTiles using (title))
   select * from filteredTitles;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left outer join xzTiles using (title))

     ,urlsWithXZ as (select replace xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles left outer join urlReplace on instr(url,find) > 0 group by xz)
   select * from urlsWithXZ;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left outer join xzTiles using (title))

     ,urlsWithXZ as (select replace,xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles left outer join urlReplace on instr(url,find) > 0 group by xz)
   select * from urlsWithXZ;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left outer join xzTiles using (title))

     ,urlsWithXZ as (select replace,xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles left outer join urlReplace on instr(url,find) > 0 group by xz)
   select * from urlsWithXZ order by replace;
;-- -. . -..- - / . -. - .-. -.--
with
    filteredTitles as (select url,visit_count,xzTiles.OID z,ifnull(nullif(title,xzTiles.title),url) xz  from urls left outer join xzTiles using (title))

     ,urlsWithXZ as (select coalesce(replace,xz) xz,sum(visit_count)/count(url) c, count(url) UniqeUrls,max(url) url from filteredTitles left outer join urlReplace on instr(url,find) > 0 group by xz)
   ,urlWithYz as (select url, xz,(xzReplace.replace || xz) yz from urlsWithXZ left outer join xzReplace on instr(urlsWithXZ.xz,xzReplace.find) + instr(urlsWithXZ.url,xzReplace.find) > 0
                                                                   )
    select xz,yz from urlWithYz
order by
        yz,xz;
;-- -. . -..- - / . -. - .-. -.--
drop view TitleCorrection;
;-- -. . -..- - / . -. - .-. -.--
with
     UrlsWithHost as (select (case when title <> '' then title else url end) title,url,visit_count,typed_count,last_visit_time,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls)
  ,simplifiedTitles as (select titleSimplification.simp, title, url,visit_count,typed_count,last_visit_time,host from UrlsWithHost left outer join titleSimplification using(title))
  
  ,findShortUrls as (select *, ROW_NUMBER() OVER(PARTITION BY notEmptyTit ORDER BY length(urShort)) RN from (select url urShort,title notEmptyTit from UrlsWithHost a) where rn = 1)
  ,shortenWhatCanBeShorten as (select coalesce(urShort,url) shortestURl ,* from simplifiedTitles left outer join findShortUrls on title = notEmptyTit)
  ,TrimmedTitle as (select shortenWhatCanBeShorten.*, substr(title, 1,instr(title,(select divider from knownDivider where div = priority))) as TitBefD from (select shortenWhatCanBeShorten.url, title, min(priority) div from shortenWhatCanBeShorten,knownDivider where instr(title, divider) > 0 group by shortestURl, url, title))
  ,urlsWithGroupingVar as (select *, (case when t.host in safe_dom then ifnull(simp,shortestURl) else case when t.host in ('www.patreon.com','svs-games.com') then TitBefD  else t.host end end) groupByVar from TrimmedTitle t)
  , grouped as (SELECT title,count(url) uniqueURls,sum(visit_count) visitCount,sum(typed_count) typedCount,max(last_visit_time) lastVisitTime,groupByVar Host,TitBefD,shortestURl FROM urlsWithGroupingVar t group by groupByVar)

select uniqueURls,title,visitCount,typedCount,lastVisitTime,Host,TitBefD,shortestURl from grouped

order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST,  uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
create table IF NOT EXISTS
       safe_dom (
             domain text unique not null
                );
;-- -. . -..- - / . -. - .-. -.--
create unique index IF NOT EXISTS safeDomI on safe_dom(domain);
;-- -. . -..- - / . -. - .-. -.--
insert or ignore into safe_dom

                   values ('github.com'),('mybrowseraddon.com'),('www.google.com'),('www.bing.com'),
                     ('chrome.google.com'),('www.google.se'),('www.spotify.com'),('open.spotify.com'),('www.furaffinity.net');
;-- -. . -..- - / . -. - .-. -.--
create table IF NOT EXISTS titleSimplification (
    title text uniuque not null primary key
    ,simp not null
);
;-- -. . -..- - / . -. - .-. -.--
insert or ignore into titleSimplification values
    ('Facebook – log in or sign up','Facebook'),
    ('Google Sheets: Free Online Spreadsheets for Personal Use','Google Sheets'),
    ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail'),
    ('Gmail - Free Storage and Email from Google','Gmail'),
    ('Inbox (13) - christoffer.broback@gmail.com - Gmail','Gmail'),
    ('Timeline','Google Maps'),
    ('57°40''03.5"N 12°17''44.0"E - Google Maps','Google Maps'),
    ('Edit photo - Google Photos' ,'Photos - Google Photos'),
    ('Albums - Google Photos'     ,'Photos - Google Photos'),
    ( 'Photo - Google Photos'     ,'Photos - Google Photos'),
    ('Unsorted - Google Drive', 'Google Drive'),
    ('Spotify - Web Player: Music for everyone','Spotify – Home'),
    ('Messages for web','Messages by Google'),
    ('Google', 'Google Search');
;-- -. . -..- - / . -. - .-. -.--
create table if not exists knownDivider
    (
        divider txt unique not null ,
        priority integer primary key not null
    );
;-- -. . -..- - / . -. - .-. -.--
insert or ignore into knownDivider values (' – ',1),(' - ',2),(' | ',3),(' :: ',4),(' -- ',5),(':',6);
;-- -. . -..- - / . -. - .-. -.--
with
     UrlsWithHost as (select (case when title <> '' then title else url end) title,url,visit_count,typed_count,last_visit_time,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls)
  ,simplifiedTitles as (select titleSimplification.simp, title, url,visit_count,typed_count,last_visit_time,host from UrlsWithHost left outer join titleSimplification using(title))
  ,findShortUrls as (select *, ROW_NUMBER() OVER(PARTITION BY notEmptyTit ORDER BY length(urShort)) RN from (select url urShort,title notEmptyTit from UrlsWithHost a) where rn = 1)
   ,shortenWhatCanBeShorten as (select coalesce(urShort,url) shortestURl ,* from simplifiedTitles left outer join findShortUrls on title = notEmptyTit)
   select * from shortenWhatCanBeShorten;
;-- -. . -..- - / . -. - .-. -.--
with
     UrlsWithHost as (select (case when title <> '' then title else url end) title,url,visit_count,typed_count,last_visit_time,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls)
  ,simplifiedTitles as (select titleSimplification.simp, title, url,visit_count,typed_count,last_visit_time,host from UrlsWithHost left outer join titleSimplification using(title))
  ,findShortUrls as (select * from (select *, ROW_NUMBER() OVER(PARTITION BY notEmptyTit ORDER BY length(urShort)) RN from (select url urShort,title notEmptyTit from UrlsWithHost a) ) where rn = 1)
   ,shortenWhatCanBeShorten as (select coalesce(urShort,url) shortestURl ,* from simplifiedTitles left outer join findShortUrls on title = notEmptyTit)

  ,TrimmedTitle as (select shortenWhatCanBeShorten.*, substr(title, 1,instr(title,(select divider from knownDivider where div = priority))) as TitBefD from (select shortenWhatCanBeShorten.url, title, min(priority) div from shortenWhatCanBeShorten,knownDivider where instr(title, divider) > 0 group by shortestURl, url, title))
  ,urlsWithGroupingVar as (select *, (case when t.host in safe_dom then ifnull(simp,shortestURl) else case when t.host in ('www.patreon.com','svs-games.com') then TitBefD  else t.host end end) groupByVar from TrimmedTitle t)
  , grouped as (SELECT title,count(url) uniqueURls,sum(visit_count) visitCount,sum(typed_count) typedCount,max(last_visit_time) lastVisitTime,groupByVar Host,TitBefD,shortestURl FROM urlsWithGroupingVar t group by groupByVar)

select uniqueURls,title,visitCount,typedCount,lastVisitTime,Host,TitBefD,shortestURl from grouped

order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST,  uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
with
     UrlsWithHost as (select (case when title <> '' then title else url end) title,url,visit_count,typed_count,last_visit_time,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls)
  ,simplifiedTitles as (select titleSimplification.simp, title, url,visit_count,typed_count,last_visit_time,host from UrlsWithHost left outer join titleSimplification using(title))
  ,findShortUrls as (select * from (select *, ROW_NUMBER() OVER(PARTITION BY notEmptyTit ORDER BY length(urShort)) RN from (select url urShort,title notEmptyTit from UrlsWithHost a) ) where rn = 1)
   ,shortenWhatCanBeShorten as (select coalesce(urShort,url) shortestURl ,* from simplifiedTitles left outer join findShortUrls on title = notEmptyTit)
select * from shortenWhatCanBeShorten;
;-- -. . -..- - / . -. - .-. -.--
with
     UrlsWithHost as (select (case when title <> '' then title else url end) title,url,visit_count,typed_count,last_visit_time,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls)
  ,simplifiedTitles as (select titleSimplification.simp, title, url,visit_count,typed_count,last_visit_time,host from UrlsWithHost left outer join titleSimplification using(title))
  ,findShortUrls as (select * from (select *, ROW_NUMBER() OVER(PARTITION BY notEmptyTit ORDER BY length(urShort)) RN from (select url urShort,title notEmptyTit from UrlsWithHost a) ) where rn = 1)
   ,shortenWhatCanBeShorten as (select coalesce(urShort,url) shortestURl ,* from simplifiedTitles left outer join findShortUrls on title = notEmptyTit)
  ,TrimmedTitle as (select shortenWhatCanBeShorten.*, substr(title, 1,instr(title,(select divider from knownDivider where div = priority))) as TitBefD from (select shortenWhatCanBeShorten.url, title, min(priority) div from shortenWhatCanBeShorten,knownDivider where instr(title, divider) > 0 group by shortestURl, url, title))
   select * from TrimmedTitle;
;-- -. . -..- - / . -. - .-. -.--
with
     UrlsWithHost as (select (case when title <> '' then title else url end) title,url,visit_count,typed_count,last_visit_time,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls)
  ,simplifiedTitles as (select titleSimplification.simp, title, url,visit_count,typed_count,last_visit_time,host from UrlsWithHost left outer join titleSimplification using(title))
  ,findShortUrls as (select * from (select *, ROW_NUMBER() OVER(PARTITION BY notEmptyTit ORDER BY length(urShort)) RN from (select url urShort,title notEmptyTit from UrlsWithHost a) ) where rn = 1)
   ,shortenWhatCanBeShorten as (select coalesce(urShort,url) shortestURl ,* from simplifiedTitles left outer join findShortUrls on title = notEmptyTit)

   , TrimmedTitle as (select shortenWhatCanBeShorten.*,
                             substr(title, 1,
                                    instr(title, (select divider from knownDivider where div = priority limit 1)) ) as TitBefD
                      from (select shortenWhatCanBeShorten.url, title, min(priority) div
                            from shortenWhatCanBeShorten,
                                 knownDivider
                            where instr(title, divider) > 0
                            group by shortestURl, url, title))
select *
from TrimmedTitle;
;-- -. . -..- - / . -. - .-. -.--
with
     UrlsWithHost as (select (case when title <> '' then title else url end) title,url,visit_count,typed_count,last_visit_time,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls)
  ,simplifiedTitles as (select titleSimplification.simp, title, url,visit_count,typed_count,last_visit_time,host from UrlsWithHost left outer join titleSimplification using(title))
  ,findShortUrls as (select * from (select *, ROW_NUMBER() OVER(PARTITION BY notEmptyTit ORDER BY length(urShort)) RN from (select url urShort,title notEmptyTit from UrlsWithHost a) ) where rn = 1)
   ,shortenWhatCanBeShorten as (select coalesce(urShort,url) shortestURl ,* from simplifiedTitles left outer join findShortUrls on title = notEmptyTit)

   , TrimmedTitle as (select shortenWhatCanBeShorten.*,
                             substr(title, 1,
                                    instr(title, (select divider from knownDivider where div = priority limit 1)) ) as TitBefD
                      from (select shortenWhatCanBeShorten.url, title, min(priority) div
                            from shortenWhatCanBeShorten  cross join 
                                 knownDivider
                            where instr(title, divider) > 0
                            group by shortestURl, url, title))
select *
from TrimmedTitle;
;-- -. . -..- - / . -. - .-. -.--
with
     UrlsWithHost as (select (case when title <> '' then title else url end) title,url,visit_count,typed_count,last_visit_time,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls)
  ,simplifiedTitles as (select titleSimplification.simp, title, url,visit_count,typed_count,last_visit_time,host from UrlsWithHost left outer join titleSimplification using(title))
  ,findShortUrls as (select * from (select *, ROW_NUMBER() OVER(PARTITION BY notEmptyTit ORDER BY length(urShort)) RN from (select url urShort,title notEmptyTit from UrlsWithHost a) ) where rn = 1)
   ,shortenWhatCanBeShorten as (select coalesce(urShort,url) shortestURl ,* from simplifiedTitles left outer join findShortUrls on title = notEmptyTit)

   , TrimmedTitle as (select u.*,
                             substr(title, 1,
                                    instr(title, (select divider from knownDivider where div = priority limit 1)) ) as TitBefD
                      from (select q.url, title, min(priority) div
                            from shortenWhatCanBeShorten q  cross join
                                 knownDivider
                            where instr(title, divider) > 0
                            group by shortestURl, url, title) u)
select *
from TrimmedTitle;
;-- -. . -..- - / . -. - .-. -.--
with
     UrlsWithHost as (select (case when title <> '' then title else url end) title,url,visit_count,typed_count,last_visit_time,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls)
  ,simplifiedTitles as (select titleSimplification.simp, title, url,visit_count,typed_count,last_visit_time,host from UrlsWithHost left outer join titleSimplification using(title))
  ,findShortUrls as (select * from (select *, ROW_NUMBER() OVER(PARTITION BY notEmptyTit ORDER BY length(urShort)) RN from (select url urShort,title notEmptyTit from UrlsWithHost a) ) where rn = 1)
   ,shortenWhatCanBeShorten as (select coalesce(urShort,url) shortestURl ,* from simplifiedTitles left outer join findShortUrls on title = notEmptyTit)
   , TrimmedTitle as (select u.*,substr(title, 1, instr(title, (select divider from knownDivider where div = priority limit 1)) ) as TitBefD from (select q.url, title, min(priority) div from shortenWhatCanBeShorten q  cross join knownDivider where instr(title, divider) > 0 group by shortestURl, url, title) u)
  ,urlsWithGroupingVar as (select *, (case when t.host in safe_dom then ifnull(simp,shortestURl) else case when t.host in ('www.patreon.com','svs-games.com') then TitBefD  else t.host end end) groupByVar from TrimmedTitle t)
  , grouped as (SELECT title,count(url) uniqueURls,sum(visit_count) visitCount,sum(typed_count) typedCount,max(last_visit_time) lastVisitTime,groupByVar Host,TitBefD,shortestURl FROM urlsWithGroupingVar t group by groupByVar)

select uniqueURls,title,visitCount,typedCount,lastVisitTime,Host,TitBefD,shortestURl from grouped

order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST,  uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
with
     UrlsWithHost as (select (case when title <> '' then title else url end) title,url,visit_count,typed_count,last_visit_time,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls)
  ,simplifiedTitles as (select titleSimplification.simp, title, url,visit_count,typed_count,last_visit_time,host from UrlsWithHost left outer join titleSimplification using(title))
  ,findShortUrls as (select * from (select *, ROW_NUMBER() OVER(PARTITION BY notEmptyTit ORDER BY length(urShort)) RN from (select url urShort,title notEmptyTit from UrlsWithHost a) ) where rn = 1)
   ,shortenWhatCanBeShorten as (select coalesce(urShort,url) shortestURl,* from simplifiedTitles left outer join findShortUrls on title = notEmptyTit)
   
   ,TrimmedTitle as (select url,
                             title,
                             div,host,simp,shortestUrl,visit_count,typed_count,last_visit_time,
                            substr(title, 1, instr(title, (select divider from knownDivider where div = priority limit 1)) ) as TitBefD 
   from (select q.url, title,host,simp,shortestUrl,visit_count,typed_count,last_visit_time, min(priority) div from 
                            shortenWhatCanBeShorten q cross join knownDivider where instr(title, divider) > 0 group by shortestURl, url, title,host,simp,shortestUrl,visit_count,typed_count,last_visit_time) u)
  ,urlsWithGroupingVar as (select *, (case when t.host in safe_dom then ifnull(simp,shortestURl) else case when t.host in ('www.patreon.com','svs-games.com') then TitBefD  else t.host end end) groupByVar from TrimmedTitle t)
  , grouped as (SELECT title,count(url) uniqueURls,sum(visit_count) visitCount,sum(typed_count) typedCount,max(last_visit_time) lastVisitTime,groupByVar Host,TitBefD,shortestURl FROM urlsWithGroupingVar t group by groupByVar)

select uniqueURls,title,visitCount,typedCount,lastVisitTime,Host,TitBefD,shortestURl from grouped

order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST,  uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;