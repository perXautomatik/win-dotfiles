(select * from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url;
;-- -. . -..- - / . -. - .-. -.--
(select * from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url);
;-- -. . -..- - / . -. - .-. -.--
select * from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url;
;-- -. . -..- - / . -. - .-. -.--
select * from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url order by url;
;-- -. . -..- - / . -. - .-. -.--
delete from urls where id in
(select id from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url
where name in ('www.nudevista.com'));
;-- -. . -..- - / . -. - .-. -.--
select *
from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url;
;-- -. . -..- - / . -. - .-. -.--
select *
from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url
--where name in ('www.nudevista.com'))
order by url;
;-- -. . -..- - / . -. - .-. -.--
select name, count (url) c
from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url
--where name in ('www.nudevista.com'))
group by name order by c,url;
;-- -. . -..- - / . -. - .-. -.--
select name, count (url) c
from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url
--where name in ('www.nudevista.com'))
group by name order by c;
;-- -. . -..- - / . -. - .-. -.--
select name, count (xz.url) c
from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url
--where name in ('www.nudevista.com'))
group by name order by c;
;-- -. . -..- - / . -. - .-. -.--
select name, count (xz.url) c
from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url
--where name in ('www.nudevista.com'))
group by name order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select id from (select id, name from urls where url in((select url from (select url,count(name) c from urls group by url )where c > 1))) po
    
    join (select name, count (xz.url) c
from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url
--where name in ('www.nudevista.com'))
group by name order by c desc limit 7) yt on yt.name = po.name;
;-- -. . -..- - / . -. - .-. -.--
select id, name from urls where url in((select url from (select url,count(name) c from urls group by url )where c > 1));
;-- -. . -..- - / . -. - .-. -.--
(select url from (select url,count(name) c from urls group by url )where c > 1);
;-- -. . -..- - / . -. - .-. -.--
select url from (select url,count(name) c from urls group by url )where c > 1;
;-- -. . -..- - / . -. - .-. -.--
select url from (select url,count(id) c from urls group by url )where c > 1;
;-- -. . -..- - / . -. - .-. -.--
select id, name from urls where url in((select url from (select url,count(id) c from urls group by url )where c > 1));
;-- -. . -..- - / . -. - .-. -.--
select id from (select id, name from urls where url in(select url from (select url,count(id) c from urls group by url ) op where c > 1 ) ) po

    join (select name, count (xz.url) c
from urls xz join
(select url from (select url,count(name) c from urls group by url )where c > 1) bz on bz.url = xz.url
--where name in ('www.nudevista.com'))
group by name order by c desc limit 7) yt on yt.name = po.name;
;-- -. . -..- - / . -. - .-. -.--
delete from urls where id in (select id
--select * 
                              from (select id, name
                                    from urls
                                    where url in (select url
                                                  from (select url, count(id) c from urls group by url) op
                                                  where c > 1)) po

                                       join (select name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
--where name in ('www.nudevista.com'))
                                             group by name
                                             order by c desc limit 7) yt on yt.name = po.name
);
;-- -. . -..- - / . -. - .-. -.--
select name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
--where name in ('www.nudevista.com'))
                                             group by name
                                             order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select *
                              from (select id, name
                                    from urls
                                    where url in (select url
                                                  from (select url, count(id) c from urls group by url) op
                                                  where c > 1)) po

                                       join (select * from(select name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
--where name in ('www.nudevista.com'))
                                             group by name
                                             order by c desc)
                                              where rowid between 1 and 3 OR rowid between 8 AND 13 OR rowid between 15 And 20 OR rowid between 22 AND 24 OR rowid between 27 and 31
                                           ) yt on yt.name = po.name
);
;-- -. . -..- - / . -. - .-. -.--
select xz.rowid,name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
--where name in ('www.nudevista.com'))
                                             group by name
                                             order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select * from(select * from (select xz.rowid,name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj
                                             where c > 1 order by rowid;
;-- -. . -..- - / . -. - .-. -.--
select * from(select * from (select xz.rowid,name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj
                                             where c > 1 order by rowid
                                             ) uy
                                              where rowid between 148384 and 149516;
;-- -. . -..- - / . -. - .-. -.--
select *
                              from (select id, name 
                              from urls where
                                              --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                                            not(id in (select min(id) from urls group by url))) q
                                       join (select * from(select * from (select xz.rowid,name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj
                                             where c > 1 order by rowid
                                             ) uy
                                              where rowid between 148384 and 149516
                                           ) yt on yt.name = po.name
);
;-- -. . -..- - / . -. - .-. -.--
select *
                              from (select id, name
                              from urls where
                                              --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                                            not(id in (select min(id) from urls group by url))) q
                                       join (select * from(select * from (select xz.rowid,name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj
                                             where c > 1 order by rowid
                                             ) uy
                                              where rowid between 148384 and 149516
                                           ) yt on yt.name = po.name;
;-- -. . -..- - / . -. - .-. -.--
select *
                              from (select id, name
                              from urls where
                                              --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                                            not(id in (select min(id) from urls group by url))) q
                                       join (select * from(select * from (select xz.rowid,name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj
                                             where c > 1 order by rowid
                                             ) uy
                                              where rowid between 148384 and 149516
                                           ) yt on yt.name = q.name;
;-- -. . -..- - / . -. - .-. -.--
select *
                              from (select id, name
                              from urls where
                                              --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                                            not(id in (select max(id) from urls group by url))) q
                                       join (select * from(select * from (select xz.rowid,name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj
                                             where c > 1 order by rowid
                                             ) uy
                                              where rowid between 148384 and 149516
                                           ) yt on yt.name = q.name;
;-- -. . -..- - / . -. - .-. -.--
delete from urls where id in (select id
--select *
                              from (select id, name
                              from urls where
                                              --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                                            not(id in (select max(id) from urls group by url))) q
                                       join (select * from(select * from (select xz.rowid,name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj
                                             where c > 1 order by rowid
                                             ) uy
                                              where rowid between 148384 and 149516
                                           ) yt on yt.name = q.name
);
;-- -. . -..- - / . -. - .-. -.--
select * from (select xz.rowid,name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj
                                             where c > 1 order by rowid;
;-- -. . -..- - / . -. - .-. -.--
delete from urls where id in (select id
--select *
                              from (select id, name
                              from urls where
                                              --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                                            not(id in (select max(id) from urls group by url))) q
                                       join (select * from(select * from (select xz.rowid,name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj
                                            order by rowid
                                             ) uy

                                           ) yt on yt.name = q.name
);
;-- -. . -..- - / . -. - .-. -.--
select *
                              from (select id, name
                              from urls where
                                              --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                                            not(id in (select max(id) from urls group by url))) q
                                       join (select * from(select * from (select xz.rowid,name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj
                                            order by rowid
                                             ) uy

                                           ) yt on yt.name = q.name;
;-- -. . -..- - / . -. - .-. -.--
select *
                              from (select id, name
                              from urls where
                                              --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                                            not(id in (select max(id) from urls group by url))) q
                                       join (select * from(select * from (select name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj
                                            
                                             ) uy

                                           ) yt on yt.name = q.name;
;-- -. . -..- - / . -. - .-. -.--
select id, yt.name, c
from (select id, name
                              from urls where
                                              --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                                            not(id in (select max(id) from urls group by url))) q
                                       join (select * from(select * from (select name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj

                                             ) uy

                                           ) yt on yt.name = q.name;
;-- -. . -..- - / . -. - .-. -.--
select id, yt.name, c
from (select id, name
                              from urls where
                                              --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                                            not(id in (select min(id) from urls group by url))) q
                                       join (select * from(select * from (select name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj

                                             ) uy

                                           ) yt on yt.name = q.name;
;-- -. . -..- - / . -. - .-. -.--
delete from urls where id in (select id
--select id, yt.name, c
from (select id, name
                              from urls where
                                              --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                                            not(id in (select min(id) from urls group by url))) q
                                       join (select * from(select * from (select name, count(xz.url) c
                                             from urls xz
                                                      join
                                                  (select url
                                                   from (select url, count(name) c from urls group by url)
                                                   where c > 1) bz on bz.url = xz.url
                                             group by name) hj

                                             ) uy

                                           ) yt on yt.name = q.name
);
;-- -. . -..- - / . -. - .-. -.--
select parent , count(url) c from urls group by parent order by c;
;-- -. . -..- - / . -. - .-. -.--
select parent , count(url) c from urls group by parent order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select * from urls where parent = 268;
;-- -. . -..- - / . -. - .-. -.--
select domain         ,
       count(url) c from (
           
           
           select url, 
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
            ) domain
 from urls where parent = 268) x group by x.domain order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       parent,
       name,
       w.url       
from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1;
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       parent,
       name,
       w.url
from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 order by url;
;-- -. . -..- - / . -. - .-. -.--
delete from urls where id in('158991',
'238530',
'158989',
'238528',
'158990',
'238529',
'158986',
'238525',
'158988',
'238527',
'158992',
'238531',
'158993',
'238532',
'158987',
'238526',
'158985',
'238524',
'232437',
'232438',
'243652',
'230591',
'230592',
'230593',
'230596',
'230597',
'230400',
'235270',
'243647',
'229584',
'232692',
'232697',
'238265',
'231299',
'231301',
'225138',
'229598',
'229742',
'229724',
'229725',
'237039',
'229602',
'229611',
'229698',
'231352',
'229696',
'229669',
'236666',
'232525');
;-- -. . -..- - / . -. - .-. -.--
update urls set url = name where id in('232433',
'232434',
'230912',
'230913',
'230914',
'230915',
'229586',
'236992',
'230589',
'230590',
'230594',
'230595',
'230598',
'230599',
'230600',
'230601',
'230602',
'230603',
'230604',
'230605',
'230606',
'230607',
'230608',
'230609',
'230610',
'230611',
'230612',
'230613',
'230614',
'230615',
'230616',
'230617',
'230618',
'230619',
'230620',
'230621',
'230622',
'230623',
'230624',
'230625',
'230626',
'230627',
'230628',
'230629',
'230630',
'230631',
'230632',
'230633',
'230634',
'230635',
'230636',
'230637',
'230638',
'230639',
'230640',
'230641',
'230642',
'230643',
'230644',
'230645',
'230646',
'230647',
'230648',
'230649',
'230650',
'230651',
'230652',
'230653',
'230654',
'230655',
'230656',
'230657',
'230658',
'230659',
'230660',
'230661',
'230662',
'230663',
'230664',
'230665',
'230666',
'230667',
'230668',
'230669',
'230670',
'230671',
'230672',
'230673',
'230674',
'230675',
'230676',
'230677',
'230678',
'230679',
'230680',
'230681',
'230682',
'230683',
'230684',
'230685',
'230686',
'230687',
'230688',
'230689',
'230690',
'230691',
'230692',
'230693',
'230694',
'230695',
'230696',
'230697',
'230698',
'230699',
'230700',
'230701',
'230702',
'230703',
'230704',
'230705',
'230706',
'230707',
'230708',
'230709',
'230710',
'230711',
'230712',
'230713',
'230714',
'230715',
'230716',
'230717',
'230718',
'230719',
'230720',
'230721',
'230722',
'230723',
'230724',
'230725',
'230726',
'230727',
'230728',
'230729',
'230730',
'230731',
'230732',
'230733',
'230734',
'230735',
'230736',
'230737',
'230738',
'230739',
'230740',
'230741',
'230742',
'230743',
'230744',
'230745',
'230746',
'230747',
'230748',
'230749',
'230750',
'230751',
'230752',
'230753',
'230754',
'230755',
'230756',
'230757',
'230758',
'230759',
'230760',
'230761',
'230762',
'230763',
'230764',
'230765',
'230766',
'230767',
'230768',
'230769',
'230770',
'230771',
'230772',
'230773',
'230774',
'230775',
'230776',
'230777',
'230778',
'230779',
'230780',
'230781',
'230782',
'230783',
'230784',
'230785',
'230786',
'230787',
'230788',
'230789',
'230790',
'230791',
'230792',
'230793',
'230794',
'230795',
'230796',
'230797',
'230798',
'230799',
'230800',
'230801',
'230802',
'230803',
'230804',
'230805',
'230806',
'230807',
'230808',
'230809',
'230810',
'230811',
'230812',
'230813',
'230814',
'230815',
'230816',
'230817',
'230818',
'230819',
'230820',
'230821',
'230822',
'230823',
'230824',
'230825',
'230826',
'230827',
'230828',
'230829',
'230830',
'230831',
'230832',
'230833',
'230834',
'230835',
'230836',
'230837',
'230838',
'230839',
'230840',
'230841',
'230842',
'230843',
'230844',
'230845',
'230846',
'230847',
'230848',
'230849',
'230850',
'230851',
'230852',
'230853',
'230854',
'230855',
'230856',
'230857',
'230858',
'230859',
'230860',
'230861',
'230862',
'230863',
'230864',
'230865',
'230866',
'230867',
'230868',
'230869',
'230870',
'230871',
'230872',
'230873',
'230874',
'230875',
'230876',
'230877',
'230878',
'230879',
'230880',
'230881',
'230882',
'230883',
'230884',
'230885',
'230886',
'230887',
'230888',
'230889',
'230890',
'230891',
'230892',
'230893',
'230894',
'230895',
'230896',
'230897',
'230898',
'230899',
'230900',
'230901',
'230902',
'230903',
'230904',
'230905',
'230906',
'230907',
'230908',
'230909',
'230910',
'232690',
'232691',
'225106',
'232693',
'232695',
'232696',
'229772',
'229773',
'229756',
'229757',
'229758',
'229759',
'229760',
'229761',
'229762',
'229763',
'229764',
'229765',
'229766',
'229767',
'229768',
'229769',
'229770',
'224672',
'229726',
'229727',
'229728',
'229729',
'229730',
'229731',
'229732',
'229733',
'229734',
'229735',
'229736',
'229737',
'229738',
'229739',
'231318');
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in('232433',
'232434',
'230912',
'230913',
'230914',
'230915',
'229586',
'236992',
'230589',
'230590',
'230594',
'230595',
'230598',
'230599',
'230600',
'230601',
'230602',
'230603',
'230604',
'230605',
'230606',
'230607',
'230608',
'230609',
'230610',
'230611',
'230612',
'230613',
'230614',
'230615',
'230616',
'230617',
'230618',
'230619',
'230620',
'230621',
'230622',
'230623',
'230624',
'230625',
'230626',
'230627',
'230628',
'230629',
'230630',
'230631',
'230632',
'230633',
'230634',
'230635',
'230636',
'230637',
'230638',
'230639',
'230640',
'230641',
'230642',
'230643',
'230644',
'230645',
'230646',
'230647',
'230648',
'230649',
'230650',
'230651',
'230652',
'230653',
'230654',
'230655',
'230656',
'230657',
'230658',
'230659',
'230660',
'230661',
'230662',
'230663',
'230664',
'230665',
'230666',
'230667',
'230668',
'230669',
'230670',
'230671',
'230672',
'230673',
'230674',
'230675',
'230676',
'230677',
'230678',
'230679',
'230680',
'230681',
'230682',
'230683',
'230684',
'230685',
'230686',
'230687',
'230688',
'230689',
'230690',
'230691',
'230692',
'230693',
'230694',
'230695',
'230696',
'230697',
'230698',
'230699',
'230700',
'230701',
'230702',
'230703',
'230704',
'230705',
'230706',
'230707',
'230708',
'230709',
'230710',
'230711',
'230712',
'230713',
'230714',
'230715',
'230716',
'230717',
'230718',
'230719',
'230720',
'230721',
'230722',
'230723',
'230724',
'230725',
'230726',
'230727',
'230728',
'230729',
'230730',
'230731',
'230732',
'230733',
'230734',
'230735',
'230736',
'230737',
'230738',
'230739',
'230740',
'230741',
'230742',
'230743',
'230744',
'230745',
'230746',
'230747',
'230748',
'230749',
'230750',
'230751',
'230752',
'230753',
'230754',
'230755',
'230756',
'230757',
'230758',
'230759',
'230760',
'230761',
'230762',
'230763',
'230764',
'230765',
'230766',
'230767',
'230768',
'230769',
'230770',
'230771',
'230772',
'230773',
'230774',
'230775',
'230776',
'230777',
'230778',
'230779',
'230780',
'230781',
'230782',
'230783',
'230784',
'230785',
'230786',
'230787',
'230788',
'230789',
'230790',
'230791',
'230792',
'230793',
'230794',
'230795',
'230796',
'230797',
'230798',
'230799',
'230800',
'230801',
'230802',
'230803',
'230804',
'230805',
'230806',
'230807',
'230808',
'230809',
'230810',
'230811',
'230812',
'230813',
'230814',
'230815',
'230816',
'230817',
'230818',
'230819',
'230820',
'230821',
'230822',
'230823',
'230824',
'230825',
'230826',
'230827',
'230828',
'230829',
'230830',
'230831',
'230832',
'230833',
'230834',
'230835',
'230836',
'230837',
'230838',
'230839',
'230840',
'230841',
'230842',
'230843',
'230844',
'230845',
'230846',
'230847',
'230848',
'230849',
'230850',
'230851',
'230852',
'230853',
'230854',
'230855',
'230856',
'230857',
'230858',
'230859',
'230860',
'230861',
'230862',
'230863',
'230864',
'230865',
'230866',
'230867',
'230868',
'230869',
'230870',
'230871',
'230872',
'230873',
'230874',
'230875',
'230876',
'230877',
'230878',
'230879',
'230880',
'230881',
'230882',
'230883',
'230884',
'230885',
'230886',
'230887',
'230888',
'230889',
'230890',
'230891',
'230892',
'230893',
'230894',
'230895',
'230896',
'230897',
'230898',
'230899',
'230900',
'230901',
'230902',
'230903',
'230904',
'230905',
'230906',
'230907',
'230908',
'230909',
'230910',
'232690',
'232691',
'225106',
'232693',
'232695',
'232696',
'229772',
'229773',
'229756',
'229757',
'229758',
'229759',
'229760',
'229761',
'229762',
'229763',
'229764',
'229765',
'229766',
'229767',
'229768',
'229769',
'229770',
'224672',
'229726',
'229727',
'229728',
'229729',
'229730',
'229731',
'229732',
'229733',
'229734',
'229735',
'229736',
'229737',
'229738',
'229739',
'231318');
;-- -. . -..- - / . -. - .-. -.--
update urls set url = name
--delete from urls
where id in('229715',
'229716',
'229719',
'229720',
'229704',
'229705',
'229706',
'229707',
'229708',
'229709',
'229699',
'229700',
'229701',
'229702',
'229685',
'229686',
'229687',
'229688',
'229689',
'229690',
'229691',
'229692',
'229693',
'229694',
'229695',
'229679',
'229680',
'229681',
'229682',
'229670',
'229671',
'229672',
'229673',
'229674',
'229675',
'229665',
'229666',
'229667',
'229660',
'229661',
'229662',
'229663',
'229844',
'229851',
'229852',
'229853',
'229854',
'229855',
'229856',
'229857',
'229858',
'229859',
'229860',
'229861',
'229862',
'229863',
'229864',
'229865',
'229866',
'229867',
'229868',
'229869',
'229870',
'229871',
'229872',
'229873',
'229874',
'229875',
'229876',
'229877',
'229878',
'229879',
'229880',
'229881',
'229882',
'229883',
'229884',
'229885',
'229886',
'229887',
'229888',
'229889',
'229890',
'229891',
'229892',
'229893',
'229894',
'229895',
'229896',
'229897',
'229898',
'229899',
'229900',
'229901',
'229902',
'229903',
'229904',
'229905',
'229906',
'229907',
'229908',
'229909',
'229910',
'229911',
'229912',
'229913',
'229914',
'229915',
'229916',
'229917',
'229918',
'229919',
'229920',
'229921',
'229922',
'229923',
'229924',
'229925',
'229926',
'229927',
'229928',
'229929',
'229930',
'229931',
'229932',
'229933',
'229934',
'229935',
'229936',
'229937',
'229938',
'229939',
'229940',
'229941',
'229942',
'229943',
'229944',
'229945',
'229946',
'229947',
'229948',
'229949',
'229950',
'229951',
'229952',
'229953',
'229954',
'229955',
'229956',
'229957',
'229958',
'229959',
'229960',
'229961',
'229962',
'229963',
'229964',
'229965',
'229966',
'229967',
'229968',
'229969',
'229970',
'229971',
'229972',
'229973',
'229974',
'229975',
'229976',
'229977',
'229978',
'229979',
'229980',
'229981',
'229982',
'229983',
'229984',
'229985',
'229986',
'229987',
'229988',
'229989',
'229990',
'229991',
'229992',
'229993',
'229994',
'229995',
'229996',
'229997',
'229998',
'229999',
'230000',
'230001',
'230002',
'230003',
'230004',
'230005',
'230006',
'230007',
'230008',
'230009',
'230010',
'230011',
'230012',
'230013',
'230014',
'230015',
'230016',
'230017',
'230018',
'230019',
'230020',
'230021',
'230022',
'230023',
'230024',
'230025',
'230026',
'230027',
'230028',
'230029',
'230030',
'230031',
'230032',
'230033',
'230034',
'230035',
'230036',
'230037',
'230038',
'230039',
'230040',
'230041',
'230042',
'230043',
'230044',
'230045',
'230046',
'230047',
'230048',
'230049',
'230050',
'230051',
'230052',
'230053',
'230054',
'230055',
'230056',
'230057',
'230058',
'230059',
'230060',
'230061',
'230062',
'230063',
'230064',
'230065',
'230066',
'230067',
'230068',
'230069',
'230070',
'230071',
'230072',
'230073',
'230074',
'230075',
'230076',
'230077',
'229837',
'229838',
'229839',
'229840',
'229841',
'229842',
'229843',
'229845',
'229846',
'229847',
'229848',
'229849',
'229830',
'229831');
;-- -. . -..- - / . -. - .-. -.--
update urls set url = name
--delete from urls
where id in('229791',
'229792',
'229793',
'229794',
'229795',
'229796',
'229797',
'229798',
'229799',
'229800',
'229801',
'229802',
'229803',
'229804',
'229805',
'229806',
'229807',
'229808',
'229809',
'229810',
'229811',
'229812',
'229813',
'229814',
'229815',
'229816',
'229817',
'229818',
'229819',
'229820',
'229821',
'229822',
'229823',
'229824',
'229825',
'229826',
'229827',
'229828',
'229786',
'229787',
'229788',
'229789',
'229778',
'229779',
'229780',
'229744',
'229745',
'229746',
'229747',
'229748',
'229749',
'229750',
'229751',
'229752',
'229753',
'229754',
'229656',
'229657',
'230080',
'230081',
'230082',
'230083',
'230084',
'230085',
'230086',
'230087',
'230088',
'230089',
'230090',
'230091',
'230092',
'230093',
'230094',
'230095',
'230096',
'230097',
'230098',
'230099',
'230100',
'230101',
'230102',
'230103',
'230104',
'230105',
'230106',
'230107',
'230108',
'230109',
'230110',
'230111',
'230112',
'230113',
'230114',
'230115',
'230116',
'230117',
'230118',
'230119',
'230120',
'230121',
'230122',
'230123',
'230124',
'230125',
'230126',
'230127',
'230128',
'230129',
'230130',
'230131',
'230132',
'230133',
'230134',
'230135',
'230136',
'230137',
'230138',
'230139',
'230140',
'230141',
'230142',
'230143',
'230144',
'230145',
'230146',
'230147',
'230148',
'230149',
'230150',
'230151',
'230152',
'230153',
'230154',
'230155',
'230156',
'230157',
'230158',
'230159',
'230160',
'230161',
'230162',
'230163',
'230164',
'230165',
'230166',
'230167',
'230168',
'230169',
'230170',
'230171',
'230172'
           );
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       name,
       w.url
from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 order by w.url;
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       name,
       w.url
from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 order by len(url),w.url;
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       name,
       w.url
from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 order by len(w.url),w.url;
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       name,
       w.url
from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 order by lenght(w.url),w.url;
;-- -. . -..- - / . -. - .-. -.--
update urls set url = name
--delete from urls
where id in(
'230211',
'230212',
'230213',
'230214',
'230215',
'230216',
'230217',
'230218',
'230219',
'230220',
'230221',
'230222',
'230223',
'230224',
'230225',
'230226',
'230227',
'230228',
'230229',
'230230',
'230231',
'230232',
'230233',
'230234',
'230235',
'230236',
'230237',
'230238',
'230239',
'230240',
'230241',
'230242',
'230243',
'230244',
'230245',
'230246',
'230247',
'230248',
'230249',
'230250',
'230251',
'230252',
'230253',
'230254',
'230255',
'230256',
'230257',
'230258',
'230259',
'230260',
'230261',
'230262',
'230263',
'230264',
'230265',
'230266',
'230267',
'230268',
'230269',
'230270',
'230271',
'230272',
'230273',
'230274',
'230275',
'230276',
'230277',
'230278',
'230279',
'230280',
'230281',
'230282',
'230283',
'230284',
'230285',
'230286',
'230287',
'230288',
'230289',
'230290',
'230291',
'230292',
'230293',
'230294',
'230295',
'230296',
'230297',
'230298',
'230299',
'230300',
'230301',
'230302',
'230303',
'230304',
'230305',
'230306',
'230307',
'230308',
'230309',
'230310',
'230311',
'230312',
'230313',
'230314',
'230315',
'230316',
'230317',
'230318',
'230319',
'230320',
'230321',
'230322',
'230323',
'230324',
'230325',
'230326',
'230327',
'230328',
'230329',
'230330',
'230331',
'230332',
'230333',
'230334',
'230335',
'230336',
'230337',
'230338',
'230339',
'230340',
'230341',
'230342',
'230343',
'230344',
'230345',
'230346',
'230347',
'230348',
'230349',
'230350',
'230351',
'230352',
'230353',
'230354',
'230355',
'230356',
'230357',
'230358',
'230359',
'230360',
'230361',
'230362',
'230363',
'230364',
'230365',
'230366',
'230367',
'230368',
'230369',
'230370',
'230371',
'230372',
'230373',
'230374',
'230375',
'230376',
'230377',
'230378',
'230379',
'230380',
'230381',
'230382',
'230383',
'230384',
'230385',
'230386',
'230387',
'230388',
'230389',
'230390',
'230391',
'230392',
'230393',
'230394',
'230395',
'230396',
'230397',
'225114',
'229428',
'232344',
'229429',
'229430',
'229432',
'229433',
'229434',
'229435',
'229436',
'229437',
'229438',
'229400',
'229401',
'229402',
'229403',
'229406',
'229407',
'229408',
'229395',
'229396',
           '229385',
'229386',
'229387',
'229388',
'229389',
'229390',
'229391',
'229368',
'229369',
'229373',
'229374',
'229375',
'229376',
'229377',
'229378'



           );
;-- -. . -..- - / . -. - .-. -.--
update urls set url = name
--delete from urls
where id in(
'229615',
'229616',
'229617',
'229618',
'229619',
'229620',
'229337',
'229338',
'229339',
'229340',
'229341',
'229350',
'229351',
'229352',
'229353',
'229344',
'229345',
'229346',
           '230173',
'230174',
'230175',
'230176',
'230177',
'230178',
'230179',
'230180',
'230181',
'230182',
'230183',
'230184',
'230185',
'230186',
'230187',
'230188',
'230189',
'230190',
'230191',
'230192',
'230193',
'230194',
'230195',
'230196',
'230197',
'230198',
'230199',
'230200',
'230201',
'230202',
'230203',
'230204',
'230205',
'230206',
'230207',
'230208',
'230209',
'230210',
           '229363',
'229364',
'229356',
'229357',
'229358',
'229359',
'229360',
'229361',
'229362'

           );
;-- -. . -..- - / . -. - .-. -.--
update urls set url = name
--delete from urls
where id in(
'225865',
'232527',
'225449',
'225489',
'225152',
'225830',
'232412',
'46563',
'199243',
'236930',
'199977',
'199951',
'199975',
'199974',
'199959',
'199973',
'199948'       );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(
'199948',
'199951',
'199959',
'199973',
'199974',
'199975',
'199977',
'229834',
'236966',
'229574',
'39959',
'236940',
'225215',
'229601',
'225822',
'203971',
'203972',
'246',
'203969',
'203970',
'203968',
'203965',
'203966',
'225171',
'200939',
'201005',
'205620',
'202451',
'200893',
'200733',
'200738',
'205450',
'200911',
'204090',
'201445',
'205629',
'200660',
'205576',
'205573',
'200935',
'200819',
'205732',
'200898',
'204092',
'205569',
'200938',
'203493',
'205572',
'204083',
'200763',
'201080',
'205537',
'200695',
'204473',
'204091',
'202113',
'202373',
'204155',
'204209',
'204093',
'202213',
'200888',
'200640',
'200710',
'200637',
'200894',
'200884',
'205613',
'204558',
'200698',
'200928',
'204205',
'200832',
'204243',
'205575',
'202364',
'201320',
'204222',
'204172',
'204103',
'200638'      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and name in('likes','favorites')

      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and name 
    in('Xvideos embed video',
'ess.com',
'ess.com',
'www.sunporno.com',
'www.imagefap.com',
'www.audrawolfmann.net'
)

      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and name
    in('www.bravotube.net',
'www.forumophilia.com',
'www.itslive.com',
'www.mrsnake.com',
'www.mystreamingporn.com',
'www.nudevista.com')
      
      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and name
    in('',
'404 - not found',
'404 Not Found',
'Free Porn Videos Search Engine',
'Free porno pictures, free porn videos, hot porno movies at Sunporno.co (...)',
'Full Free Porn Videos & Search Tube - Sex, Porno, Porn Tube, Free XXX Porn',
'Hot Naked Nude Girls Porn Tube - HnnTube',
'Shared Pregnant Wife | MOTHERLESS.COM �',
'Trade - Path of Exile',
'doggystyle pissing on a carpet.flv | MOTHERLESS.COM �',
'http://www.suzm.com/vid/beastiality-creampie.html#',
'http://www.yuvutu.com/modules.php?name=Video&op=view&video_id=263167#',
'justporno.tv | 502: Bad gateway',
'tab.com',
'www.ebonyclipss.com',
'www.interracialexpert.com',
'www.nastyvideotube.com',
'www.pornmd.com',
'www.pornoxo.com',
'www.retropix.com',
'www.rodneymoore.com',
'www.shufuni.com',
'www.suzm.com',
'www.vintagefree.com',
'www.xxxvogue.net',
'www.yuvutu.com',
'xhamster.com'
      )

      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and name
    in(
        
        '.visited_data{display: block}',
'Page Not Found',
'Privacy error',
'Spotify – Share me',
'Video deleted - XVIDEOS.COM',
'latina videos - XVIDEOS.COM',
'plus.google.com',
'vintageporntv.com',
'www.alphaporno.com',
'www.clearclips.com',
'www.free-vintage.com',
'www.google.com',
'www.hardsextube.com',
'www.porntube.com',
'www.retronudist.com',
'www.tube8.com',
'www.tubemonsoon.com',
'www.vintage-pinup.com',
'www.xvideos.com'
      )

      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and name
    in(

'www.daily-bbw-porn.com',
'www.funfucktube.com',
'www.google.se',
'www.pornerbros.com',
'www.tnaflix.com',
'A husband who helps his dog to penetrate her wife�s ass. - Bing video',
'AO-Gangbang Im Beverly - Ronja Hat Etwa 30 Schw�nze Entsaftet - Bing video',
'Redirect Notice',
'www.daily-bbw-porn.com',
'www.facebook.com'

      )

      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and instr(w.name,'http') = 1
    

      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and instr(w.name,'(') = 1


      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and instr(w.name,'+') = 1


      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and instr(w.name,'w') = 1


      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and instr(w.name,'-') = 1


      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    select distinct id from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 and instr(w.name,'"') = 1


      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    '232705',
'198777',
'199311',
'234785',
'233248',
'233249',
'233250',
'233251',
'225952',
'233252',
'233253',
'233254',
'233255',
'233256',
'233257',
'233258',
'233259',
'233260',
'233261',
'233262',
'233265',
'233264',
'233267',
'233269',
'233270',
'233271',
'233272',
'233273',
'233274',
'233275',
'233276',
'233277',
'233280',
'233278',
'233279',
'233284',
'233281',
'233283',
'233289',
'233286',
'233287',
'233292',
'233290',
'233291',
'233294',
'233295',
'233296',
'233297',
'233298',
'233299',
'233300',
'233301',
'233302',
'233303',
'233304',
'233305',
'233306',
'233307',
'233308',
'233309',
'233310',
'120714',
'232771',
'233075',
'235223',
'232990',
'233497',
'225981',
'225989',
'225980',
'225974',
'227935'
      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    '232705',
'198777',
'199311',
'234785',
'233248',
'233249',
'233250',
'233251',
'225952',
'233252',
'233253',
'233254',
'233255',
'233256',
'233257',
'233258',
'233259',
'233260',
'233261',
'233262',
'233265',
'233264',
'233267',
'233269',
'233270',
'233271',
'233272',
'233273',
'233274',
'233275',
'233276',
'233277',
'233280',
'233278',
'233279',
'233284',
'233281',
'233283',
'233289',
'233286',
'233287',
'233292',
'233290',
'233291',
'233294',
'233295',
'233296',
'233297',
'233298',
'233299',
'233300',
'233301',
'233302',
'233303',
'233304',
'233305',
'233306',
'233307',
'233308',
'233309',
'233310',
'120714',
'232771',
'233075',
'235223',
'232990',
'233497',
'225981',
'225989',
'225980',
'225974',
'227935'
           '106',
'94',
'98',
'101',
'96',
'95',
'103',
'104',
'105',
'229440',
'226045',
'92',
'91',
'93',
'99',
'107',
'233995',
'243347',
'243344',
'224729',
'160330',
'228131',
'227952',
'227951'
      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

    '232705',
'198777',
'199311',
'234785',
'233248',
'233249',
'233250',
'233251',
'225952',
'233252',
'233253',
'233254',
'233255',
'233256',
'233257',
'233258',
'233259',
'233260',
'233261',
'233262',
'233265',
'233264',
'233267',
'233269',
'233270',
'233271',
'233272',
'233273',
'233274',
'233275',
'233276',
'233277',
'233280',
'233278',
'233279',
'233284',
'233281',
'233283',
'233289',
'233286',
'233287',
'233292',
'233290',
'233291',
'233294',
'233295',
'233296',
'233297',
'233298',
'233299',
'233300',
'233301',
'233302',
'233303',
'233304',
'233305',
'233306',
'233307',
'233308',
'233309',
'233310',
'120714',
'232771',
'233075',
'235223',
'232990',
'233497',
'225981',
'225989',
'225980',
'225974',
'227935',
           '106',
'94',
'98',
'101',
'96',
'95',
'103',
'104',
'105',
'229440',
'226045',
'92',
'91',
'93',
'99',
'107',
'233995',
'243347',
'243344',
'224729',
'160330',
'228131',
'227952',
'227951'
      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

'238867',
'232521',
'229583',
'224666',
'237011',
'229596',
'224754',
'224755',
'242883',
'225097',
'238902',
'121990',
'120702',
'6880',
'227509',
'225118',
'225121',
'230547',
'97',
'226044',
'199163',
'199162',
'199160',
'199164',
'199100',
'234262',
'233583',
'234376',
'234364',
'234378',
'227919',
'233742',
'228391',
'225968',
'232880',
'235872',
'237631',
'236098',
'234340',
'230408',
'242299',
'225969',
'233365',
'233402',
'235873',
'198932',
'237619',
'228846',
'228877',
'199099',
'236382',
'121948',
'236383',
'238909',
'229575',
'38685',
'225102',
'243371',
'243398',
'34007',
'34011',
'234789',
'34052',
'235281',
'238739',
'34799',
'229580',
'227731',
'233311',
'160329',
'232894',
'229499',
'238928',
'238862',
'225982',
'232881',
'5014',
'232824',
'232743',
'242774'
      );
;-- -. . -..- - / . -. - .-. -.--
delete from urls
where id in(

'243496',
'232785',
'238673',
'233843',
'225168',
'238665',
'238989',
'229588',
'35720',
'238786',
'120771'
      );
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       name,
       w.url
from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 order by length(w.url),w.url;
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       name,
       replace(w.url,'http:','https:') url
from urls w join ( select replace(z.url,'http:','https:') url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 order by length(w.url),w.url;
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       name,
       replace(w.url,'http:','https:') url
from urls w join ( select replace(z.url,'http:','https:') url, count(z.name) c from urls z group by replace(z.url,'http:','https:')) x on w.url = x.url where x.c > 1 order by length(w.url),w.url;
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       name,
       replace(w.url,'http:','https:') url
from urls w join ( select replace(z.url,'http:','https:') url, count(z.name) c from urls z group by replace(z.url,'http:','https:')) x on w.url = x.url where x.c > 1 order by w.url;
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       name,
       replace(w.url,'http:','https:') url
from urls w join ( select replace(z.url,'http:','https:') url, count(z.name) c from urls z group by replace(z.url,'http:','https:')) x on replace(w.url,'http:','https:') = replace(x.url,'http:','https:') where x.c > 1 order by w.url;
;-- -. . -..- - / . -. - .-. -.--
select distinct id, name, urlw, url, c
from
(select id,name,replace(url,'http:','https:') urlw from urls ) w
 join ( select replace(z.url,'http:','https:') url, count(z.name) c from urls z group by replace(z.url,'http:','https:')) x on urlw = x.url where x.c > 1 order by urlw;
;-- -. . -..- - / . -. - .-. -.--
update urls set url = replace(url,'http:','https:') where  instr('http:') = 1;
;-- -. . -..- - / . -. - .-. -.--
update urls set url = replace(url,'http:','https:') where  instr(url,'http:') = 1;
;-- -. . -..- - / . -. - .-. -.--
delete from urls where
id in( 
    
select distinct id
from
(select id,name,url urlw from urls ) w
 join ( select url, count(z.name) c from urls z group by url) x on urlw = x.url where x.c > 1 and name in(
    '1451.scenbe.com/match-1451/17009/136453271/1574785721/mf_e5d55f65-c1fc-4cb0-9ba1-31f4d48f44c3/YXBpeDAxLWp1c3RhdHViZS5jb20=/feed',
'18027823.jpg (JPEG Image, 185 × 140 pixels)',
'artdecoblog.blogspot.com',
'artdecoblog.blogspot.se',
'abes-peeing.tumblr.com',
'axatube.com',
'baltagy.blogspot.se/',
'baltagy.blogspot.se',
'cdn.nudevector.com',
'rger.com',
'clipfc.com',
'e hentai.o',
'elbauldejosete.files.wordpress.com',
'fap.to',
'-bbw-20.jpg (2047×1491)',
'www.free-vintage.com',
'freepornvs.com',
'tumblr.com',
'g.e-hentai.org'
    )
    );
;-- -. . -..- - / . -. - .-. -.--
delete from urls where
id in(

select distinct id
from
(select id,name,url urlw from urls ) w
 join ( select url, count(z.name) c from urls z group by url) x on urlw = x.url where x.c > 1 and instr(name,'http') = 1
    --)
    );
;-- -. . -..- - / . -. - .-. -.--
update urls set name = url where
                                                          --instr(url,'http:') = 1
--delete from urls where
id in(

select distinct id
from
(select id,name,url urlw from urls ) w
 join ( select url, count(z.name) c from urls z group by url) x on urlw = x.url where x.c > 1 and name
in ('h2porn.com/pu',
'adv.h2porn.com',
'y.com',
'amahairy.com',
'y.com',
'amahairy.com',
'baltagy.blogspot.com/2013/06/glary-utilities-pro-v350121-portable.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+blogspot%2FOGYH+%28SPEED%29',
'baltagy.blogspot.com',
'baltagy.blogspot.com/2013/07/defraggler-v215741-portable.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+blogspot%2FOGYH+%28SPEED%29',
'baltagy.blogspot.com',
'baltagy.blogspot.com/2013/07/photofiltre-studio-x-v1080-portable.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+blogspot%2FOGYH+%28SPEED%29',
'baltagy.blogspot.com',
'baltagy.blogspot.com/2013/07/product-key-explorer-v342-portable.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+blogspot%2FOGYH+%28SPEED%29',
'baltagy.blogspot.com',
'baltagy.blogspot.com/2013/07/sound-normalizer-v50-portable.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+blogspot%2FOGYH+%28SPEED%29',
'baltagy.blogspot.com',
'baltagy.blogspot.com/2013/07/wise-registry-cleaner-v782-portable.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+blogspot%2FOGYH+%28SPEED%29',
'baltagy.blogspot.com',
'citeitswerken-est.eu',
'elektriciteitswerken-est.eu',
'go.trafficshop.com',
'orn.com',
'h2freeporn.com',
'h2porn.com',
'hairyplace.com',
'auntey-blavus-boobes-xxx-image-1.jpg (480�606)',
'hub.artnartists.org',
'imakushki.ru',
'igrushkimakushki.ru',
'imcdn1.fap',
'images6.cdn1.fapnut.com',
'porno classico tujpg',
'matureoutdoors|cgi bin|atx|out.cgi',
'ki.com',
'my.hojoki.com',
'nastyvideotube.com',
'%28BD%29 It%26%23039%3Bs A Mommy Thing 4 CD2of2 - redxxxcams.com - Porn Video Tube',
'papericons.com',
'844.jpg (1028×696)',
'1.jpg (794&times;547)',
'3.jpg (800×556)',
'6.jpg (800&times;556)',
'6.jpg (800×556)',
'peeinginyoubutt.lolspots.com',
'peeinginyoubutt|lolspots|top',
'peeinginyoubutt.lolspots.com',
'popporntube.com',
'popporn',
'popporntube.com',
'pornsavant.com',
'retro-porn.maniacpass.com',
'rule34.paheal.net/post/list/El%20Arca/1',
'rule34.paheal.net',
'rule34.paheal.net/post/list/Poison_Ivy/1',
'rule34.paheal.net',
'rule34.paheal.net/post/list/baldurs_gate/1',
'rule34.paheal.net',
'rule34.paheal.net/post/list/noa%20ark/1',
'rule34.paheal.net',
'rule34.paheal.net/post/list?search=El+Arca',
'rule34.paheal.net',
'rule34.paheal.net/post/list?search=noa+ark',
'rule34.paheal.net',
'rule34.paheal.net/post/view/1083602#search=Adventure_Time',
'rule34.paheal.net',
'rule34.paheal.net/post/view/1088577#search=Adventure_Time',
'rule34.paheal.net',
'rule34.paheal.net/post/view/1088583#search=Adventure_Time',
'rule34.paheal.net',
'rule34.paheal.net/post/view/1089945#search=Adventure_Time',
'rule34.paheal.net',
'rule34.paheal.net/tags',
'rule34.paheal.net',
'rule34.paheal.net/tags?starts_with=n',
'rule34.paheal.net',
'sexcolection.com',
'ome.com',
'shotathome.com',
'oud.com',
'soundcloud.com',
'supremetube.com',
'sxplanet.com/cgi-bin/at3/out.cgi?s=60&l=i:1,p:15,k:77,pn:1,g:667561&u=http://popporntube.com/v/hardsextube/668956/cute-daughter-destroyd-in-her-ass/',
'sxplanet.com',
'sxplanet.com/cgi-bin/at3/out.cgi?s=60&l=i:10,p:4,k:1232,pn:1,g:514116&u=http://www.pornoxo.com/videos/45849/chap-fucking-lustful-granny.html',
'sxplanet.com',
'sxplanet.com/cgi-bin/at3/out.cgi?s=60&l=i:3,p:58,k:77,pn:1,g:952070&u=http://www.pornerbros.com/109009/chubby-chicks-slapping-their-asses-and-fondling-their-tits.html?wmid=547',
'sxplanet.com',
'sxplanet.com/cgi-bin/at3/out.cgi?s=60&l=i:9,p:59,k:77,pn:1,g:648481&u=http://popporntube.com/v/xvideos/649876/new-skinny-mimi-18-sucks-and-squeals-/',
'sxplanet.com',
'sxplanet.com/f/british/',
'sxplanet.com',
'sxplanet.com/f/family/?tc=1',
'sxplanet.com',
'sxplanet.com/f/goth/',
'sxplanet.com',
'sxplanet.com/f/granny/',
'sxplanet.com',
'sxplanet.com/f/granny/?tc=1',
'sxplanet.com',
'sxplanet.com/f/sister/0/2/0/1/1',
'sxplanet.com',
'sxplanet.com/f/sister/?tc=1',
'sxplanet.com',
'sxplanet.com/f/teen/?tc=1',
'sxplanet.com',
'sxplanet.com/f/tgirl/?tc=1',
'sxplanet.com',
'sxplanet.com/video/958459/chubby-chicks-slapping-their-asses-and-fondling-their-tits/?s=60&l=i:3,p:58,k:77,pn:1',
'sxplanet.com',
'pageintheuniverse.net',
'thebestpageintheuniverse.net',
'404 Not Found',
't.com',
'type1tot.com',
'vintage-pinup.com',
'vintage.wanknews.com',
'vintageporndrawings.porncolection.com',
'wtchporn.com',
'p12.com',
'ww1.clip12.com',
'teur-p0rn.com',
'www.amateur-p0rn.com',
'www.animalsex-tube.com',
'www.animalsexfun.com',
'Black Busty Babes. Sexy black women. Ebony big tit girls',
'Black Busty Babes. Sexy black women. Ebony big tit girls',
'Black Busty Babes. Sexy black women. Ebony big tit girls',
'Black Busty Babes. Sexy black women. Ebony big tit girls',
'Black Salamis, Big Black Cock Porn, Big Black Monster Cock!',
'usplus.com',
'www.daily-bbw-porn.com',
'Indian Babes',
'Indian Babes',
'Indian Babes',
'directporntube|bigbreasts budeisign.com',
'www.directporntube.com',
'www.drtuber.com',
'www.extremetube.com',
'dtubes.com',
'www.findtubes.com',
'efuckvidz.com',
'www.freefuckvidz.com',
'www.freefuckvidz.com',
'chubby fat mature wife � spreading pussy- panties - Free Porn Jpg',
'rysoft.com',
'www.glarysoft.com',
'rysoft.com',
'www.glarysoft.com',
'OnlinePizza.se/Visby/Los-Panchos',
'www.google.se',
'"black and white" porn -site:youtube.com - Google Search',
'gleadservices.com',
'www.googleadservices.com',
'hdvids|freefuckvidz_com',
'www.hdvids.com',
'www.homemoviestube.com',
'Shy: 9,087 videos. Home Tube Porn.',
't8.com',
'Porn Tubes - Hunt8.com',
'Error: Retro porn tubes',
'Retro porn tubes',
'irvingklaw|betti',
'www.irvingklaw.com',
'www.juxmovies.com',
'www.last.fm',
'www.last.fm',
'www.legendsofsex.com',
'Naked Amateur Mature and Nude Women Porn Tube',
'rosoft.com',
'www.microsoft.com',
'www.milfsexytube.com/videos/xxxkinky/2099190/mother-daughter-blowjob-for-lucky-babe-boyfriend/',
'www.mofosex.com',
'ideo.de',
'www.myvideo.de',
'www.nastyvideotube.com',
'smill.se',
'www.newsmill.se',
'(Chummy Or Sociable Or Outgoing Or Sociable Or Talkative Or Enthusiastic Or Gushing Or Outgoing Or Chatty Or Hearty Or Unreserved Or Genuine Or Avid Or Peaceful Or Lighthearted Or Laughing Or Overjoyed Or Smiling Or Jolly Or Cozy Or Charming Or Humorous Or Conversible Or Hearty (Bbw Or Chubby Or Granny Or Glasses Or Got)H Tube Search (883 videos)',
'(Fat Or Bbw Or Lady Or Curvy Or Fatty Or Plump Or Thick Or Fattie Or Bbbw Or Ssbbw Or Sbbw Or Bbws Or Plumper Or Fluffy Or Lb Or Bbw Or Fatt Or Chunky Or Chubby Or Curvy Or Plump) (Cream Or Creampie Or Inside Or Bukkake Or Squirt Or Squirting) -Asian -Arabic -Japanese -Webcam Tube Search (72196 videos), page 2',
'(Group Or Orgy Or Gangbang Or Party Or Foursome Or Threesome Or Trio Or Pickedup Or Pick) (Swingers Or Swinger Or Homemade Or Cuckolds Or Wife Or Amateur) (Fat Or Bbw Or Lady Or Curvy Or Fatty Or Plump Or Thick Or Fattie Or Bbbw Or Ssbbw Or Sbbw Or Bbws Or Plumper Or Fluffy Or Lb Or Bbw Or Fatt Or Chunky Or Chubby Or Curvy Or Plump) -Asian -Arabic Tube Search (43727 videos)',
'(Trailer Trash Or Park) Or (White Ghetto Or Trash) Or Redneck Or Hillbilly -Nurse Tube Search (200 videos), page 3',
'(British Or Britain Or Brit) (Pregnant Or Preggo Or Glasses Or Granny Or Plump Or Fatty Or Chubby Or Bbw Or Milf Or Amateur Or Mature) (Creampie Or Cream Or Squirt Or Peeing Or Pee) Tube Search (171 videos)',
'(Chummy Or Sociable Or Outgoing Or Sociable Or Talkative Or Enthusiastic Or Gushing Or Outgoing Or Chatty Or Hearty Or Unreserved Or Genuine Or Avid Or Peaceful Or Lighthearted Or Laughing Or Overjoyed Or Smiling Or Jolly Or Cozy Or Charming Or Humorous Or Conversible Or Hearty) (Fat Or Bbw Or Lady Or Curvy Or Fatty Or Plump Or Thick Or Fattie Or Bbbw Or Ssbbw Or Sbbw Or Bbws Or Plumper Or Fluffy Or Lb Or Bbw Or Fatt Or Chunky Or Chubby Or Curvy Or Plump) Tube Search (1437 videos)',
'(Emo Or Hippy Or Artsy Or Goth Or Raver Or Punk Or Dreadlocks) (Glasses Or Amateur Or Bbw Or Lady Or Curvy Or Fatty Or Plump Or Thick Or Fattie Or Bbbw Or Ssbbw Or Sbbw Or Bbws Or Plumper Or Fluffy Or Lb Or Bbw Or Fatt Or Chunky Or Chubby Or Curvy Or Plump) Tube Search (52541 videos)',
'(Fat Or Bbw Or Lady Or Curvy Or Fatty Or Plump Or Thick Or Fattie Or Bbbw Or Ssbbw Or Sbbw Or Bbws Or Plumper Or Fluffy Or Lb Or Bbw Or Fatt Or Chunky Or Chubby Or Curvy Or Plump) (Swingers Or Swinger Or Homemade Or Cuckolds Or Wife Or Amateur) (Group Or Orgy Or Gangbang Or Party Or Foursome Or Threesome Or Trio Or Pickedup Or Pick) -Asian -Arabic Tube Search (42486 videos)',
'Slim Or Flatt Or Petite Goth Or Punk Or Emo Or Punks Tube Search (2883 videos)',
'www.nuvid.com',
'www.pornhub.com',
'www.quickmeme.com',
'Racial Thumbs - Hunting White Bitches On White Bitches!! Interracial Sex, Interracial Porno, Blacks On Blondes',
'Sidan finns inte - Restaurang Rindi Gotland',
'ttlehairygirls.com',
'www.sexspaghetti.com',
'Page not Found - Slutload.com',
'www.spankwire.com',
'www.spicybigbutt.com',
'Amateur video',
'Amateur video',
'eye.com',
'www.tineye.com',
'See Her Squirt All Reality Pass Streaming Pornstar TJOOB Videos',
'404 Not Found',
'www.videosexarchive.com',
'www.vidsvidsvids.com',
'www.viewblackporn.com',
'tage-computer.com',
'www.vintage-computer.com',
'www.vintage-erotica-forum.com',
'wankone|tubes|swingers1',
'www.wankone.com',
'www.webring.org',
'ecleaner.com',
'www.wisecleaner.com',
'XiXTube.com:The Best Collections Of Porn Tube Movies.',
'www.younghegan.com',
'youtube|HQvDcZqqalU',
'www.youtube.com',
'Video - Free Porn Videos, Free Amateur Porn, TV Sex Porno XXX- yuvutu',
'Videos On Yuvutu Homemade Amateur Porn Movies And XXX Sex Videos',
'www.zoo-sex-tube.com',
'rpremiumpass.com',
'xhamsterpremiumpass.com',
'Cartoon Porn Pictures - XXXDessert.com',
'xxxvogue.net')
    --)
    );
;-- -. . -..- - / . -. - .-. -.--
delete from urls where
id in(
'225809',
'225806',
'243400',
'224711',
'224723',
'224722',
'224720',
'224712',
'224726',
'224710',
'224721',
'155349');
;-- -. . -..- - / . -. - .-. -.--
delete from urls where
id in(
'225496',
'232872',
'232868',
'232873',
'232871',
'232869',
'232870'
);
;-- -. . -..- - / . -. - .-. -.--
delete from urls where
id in(
'225201',
'228085',
'228090',
'228089',
'225203',
'225208',
'231386',
'120646',
'236988',
'225448',
'120640',
'225493',
'225494',
'225495',
'232876',
'225498',
'4342',
'37441',
'79078'
);
;-- -. . -..- - / . -. - .-. -.--
delete from urls where
id in(
'225099',
'2689',
'225107',
'225951',
'225112',
'160597',
'225967',
'160419',
'225115'
);
;-- -. . -..- - / . -. - .-. -.--
delete from urls where
id in(
'225084',
'225088',
'225090',
'238589',
'225095',
'236982',
'79247',
'79248',
'231278',
'225119',
'231297',
'225126',
'225145',
'225150',
'229540',
'225169',
'225170',
'225172',
'225175',
'225178',
'225179',
'226289',
'226291',
'226290',
'226292',
'237010',
'34050',
'225824'
);
;-- -. . -..- - / . -. - .-. -.--
delete from urls where
id in(
'225084',
'225088',
'225090',
'238589',
'225095',
'236982',
'79247',
'79248',
'231278',
'225119',
'231297',
'225126',
'225145',
'225150',
'229540',
'225169',
'225170',
'225172',
'225175',
'225178',
'225179',
'226289',
'226291',
'226290',
'226292',
'237010',
'34050',
'225824',
     '225825',
'229589',
'225828',
'225829',
'224632',
'224633',
'224665',
'229551',
'229539',
'229543',
'229544',
'229536',
'229537',
'229538',
'229535',
'229545',
'225849',
'225850',
'225851',
'225852',
'225863',
'37426',
'225870',
'1849',
'1777',
'225883'
);
;-- -. . -..- - / . -. - .-. -.--
update urls set url = name where instr(name,'.') + instr(name,url) > 2;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select urls.*, (ry.name || '\' || q.name) folder
      from urls
               join categories q on urls.parent = q.id
               join categories ry on ry.id = q.parent) x
         join (select urls.*, (ry.name || '\' || q.name) folder
               from urls
                        join categories q on urls.parent = q.id
                        join categories ry on ry.id = q.parent) z on x.folder = z.folder And x.url = z.url AND x.id <> z.id;
;-- -. . -..- - / . -. - .-. -.--
select x.id Xid,
       z.id Zid,
       x.folder,
       x.name xName,
       z.name zName,
       x.url
from (select urls.*, (ry.name || '\' || q.name) folder
      from urls
               join categories q on urls.parent = q.id
               join categories ry on ry.id = q.parent) x
         join (select urls.*, (ry.name || '\' || q.name) folder
               from urls
                        join categories q on urls.parent = q.id
                        join categories ry on ry.id = q.parent) z on x.folder = z.folder And x.url = z.url AND x.id <> z.id;
;-- -. . -..- - / . -. - .-. -.--
select x.id Xid,
       z.id Zid,
       x.folder,
       x.name xName,
       z.name zName,
       x.url
from (select urls.*, (ry.name || '\' || q.name) folder
      from urls
               join categories q on urls.parent = q.id
               join categories ry on ry.id = q.parent) x
         join (select urls.*, (ry.name || '\' || q.name) folder
               from urls
                        join categories q on urls.parent = q.id
                        join categories ry on ry.id = q.parent) z on x.folder = z.folder And x.url = z.url AND x.id <> z.id
                        and x.parent <> z.parent;
;-- -. . -..- - / . -. - .-. -.--
create view urlsInCategoriesNotSameButSameName as
select x.id Xid,
       z.id Zid,
       x.folder,
       x.name xName,
       z.name zName,
       x.url
from (select urls.*, (ry.name || '\' || q.name) folder
      from urls
               join categories q on urls.parent = q.id
               join categories ry on ry.id = q.parent) x
         join (select urls.*, (ry.name || '\' || q.name) folder
               from urls
                        join categories q on urls.parent = q.id
                        join categories ry on ry.id = q.parent) z on x.folder = z.folder And x.url = z.url AND x.id <> z.id
                        and x.parent <> z.parent;
;-- -. . -..- - / . -. - .-. -.--
select x.id Xid,
       z.id Zid,
       x.folder,
       x.name xName,
       z.name zName,
       x.url
from (select urls.*, (ry.name || '\' || q.name) folder
      from urls
               join categories q on urls.parent = q.id
               join categories ry on ry.id = q.parent) x
         join (select urls.*, (ry.name || '\' || q.name) folder
               from urls
                        join categories q on urls.parent = q.id
                        join categories ry on ry.id = q.parent) z on x.folder = z.folder 
                        
                        and x.parent <> z.parent;
;-- -. . -..- - / . -. - .-. -.--
select x.id Xid,
       z.id Zid,
       x.folder
from (select q.id,(ry.name || '\' || q.name) folder
      from  categories q join categories ry on ry.id = q.parent) x
         join (select  q.id,(ry.name || '\' || q.name) folder
                     from  categories q join categories ry on ry.id = q.parent) z on x.folder = z.folder

                        and x.id <> z.id;
;-- -. . -..- - / . -. - .-. -.--
select x.id Xid,
       z.id Zid,
       x.parent xParent,
       z.parent zParent,
       x.folder
from (select q.id,q.parent,(ry.name || '\' || q.name) folder
      from  categories q join categories ry on ry.id = q.parent) x
         join (select  q.id,q.parent,(ry.name || '\' || q.name) folder
                     from  categories q join categories ry on ry.id = q.parent) z on x.folder = z.folder

                        and x.id <> z.id;
;-- -. . -..- - / . -. - .-. -.--
select x.id Xid,
       z.id Zid,
       x.parent xParent,
       z.parent zParent,
       x.folder
from (select q.id,q.parent,(ry.name || '\' || q.name) folder
      from  categories q join categories ry on ry.id = q.parent) x
         join (select  q.id,q.parent,(ry.name || '\' || q.name) folder
                     from  categories q join categories ry on ry.id = q.parent) z on x.folder = z.folder

                        and x.id <> z.id
                        and x.parent <> z.parent;
;-- -. . -..- - / . -. - .-. -.--
select min(Xid) xid,max(Zid),min(xParent),Max(zParent) from 
( select x.id Xid,
       z.id Zid,
       x.parent xParent,
       z.parent zParent,
       x.folder
from (select q.id,q.parent,(ry.name || '\' || q.name) folder
      from  categories q join categories ry on ry.id = q.parent) x
         join (select  q.id,q.parent,(ry.name || '\' || q.name) folder
                     from  categories q join categories ry on ry.id = q.parent) z on x.folder = z.folder

                        and x.id <> z.id
                        and x.parent <> z.parent ) group by folder;
;-- -. . -..- - / . -. - .-. -.--
select min(Xid) xid,max(Zid),min(xParent),Max(zParent),folder from
( select x.id Xid,
       z.id Zid,
       x.parent xParent,
       z.parent zParent,
       x.folder
from (select q.id,q.parent,(ry.name || '\' || q.name) folder
      from  categories q join categories ry on ry.id = q.parent) x
         join (select  q.id,q.parent,(ry.name || '\' || q.name) folder
                     from  categories q join categories ry on ry.id = q.parent) z on x.folder = z.folder

                        and x.id <> z.id
                        and x.parent <> z.parent ) group by folder;
;-- -. . -..- - / . -. - .-. -.--
update categories  set parent=(
select q from
(select
       --min(Xid) xid,
       max(Zid) zid,
       min(xParent) q
       -- Max(zParent),
       -- folder 
       from
( select x.id Xid,
       z.id Zid,
       x.parent xParent,
       z.parent zParent,
       x.folder
from (select q.id,q.parent,(ry.name || '\' || q.name) folder
      from  categories q join categories ry on ry.id = q.parent) x
         join (select  q.id,q.parent,(ry.name || '\' || q.name) folder
                     from  categories q join categories ry on ry.id = q.parent) z on x.folder = z.folder

                        and x.id <> z.id
                        and x.parent <> z.parent ) group by folder) where id = zid);
;-- -. . -..- - / . -. - .-. -.--
update categories  set parent=(
select q from
(select
       --min(Xid) xid,
       max(Zid) zid,
       min(xParent) q
       -- Max(zParent),
       -- folder 
       from
( select x.id Xid,
       z.id Zid,
       x.parent xParent,
       z.parent zParent
,x.RyName ,z.qName
from (select q.id,q.parent,ry.name RyName,q.name qName
      from  categories q join categories ry on ry.id = q.parent) x
         join (select  q.id,q.parent,ry.name RyName,q.name qName
                     from  categories q join categories ry on ry.id = q.parent) z on x.RyName = z.RyName AND x.qName = z.qName

                        and x.id <> z.id
                        and x.parent <> z.parent ) group by RyName ,qName) where id = zid);
;-- -. . -..- - / . -. - .-. -.--
select
       --min(Xid) xid,
       max(Zid) zid,
       min(xParent) q
       -- Max(zParent),
       -- folder 
       from
( select x.id Xid,
       z.id Zid,
       x.parent xParent,
       z.parent zParent
,x.RyName ,z.qName
from (select q.id,q.parent,ry.name RyName,q.name qName
      from  categories q join categories ry on ry.id = q.parent) x
         join (select  q.id,q.parent,ry.name RyName,q.name qName
                     from  categories q join categories ry on ry.id = q.parent) z on x.RyName = z.RyName AND x.qName = z.qName

                        and x.id <> z.id
                        and x.parent <> z.parent ) group by RyName ,qName);
;-- -. . -..- - / . -. - .-. -.--
select
       --min(Xid) xid,
       max(Zid) zid,
       min(xParent) q
       -- Max(zParent),
       -- folder 
       from
( select x.id Xid,
       z.id Zid,
       x.parent xParent,
       z.parent zParent
,x.RyName ,z.qName
from (select q.id,q.parent,ry.name RyName,q.name qName
      from  categories q join categories ry on ry.id = q.parent) x
         join (select  q.id,q.parent,ry.name RyName,q.name qName
                     from  categories q join categories ry on ry.id = q.parent) z on x.RyName = z.RyName AND x.qName = z.qName

                        and x.id <> z.id
                        and x.parent <> z.parent ) group by RyName ,qName;
;-- -. . -..- - / . -. - .-. -.--
update categories set parent = (select z.parent from [db1].categories z where z.id = id AND z.name = name ) where categories.parent IS NULL;
;-- -. . -..- - / . -. - .-. -.--
update categories set parent = (select z.parent from [db1].categories z where z.id = id AND z.name = name ) where categories.parent = 0;
;-- -. . -..- - / . -. - .-. -.--
select * from categories (select z.parent from [db1].categories z where z.id = id AND z.name = name) b where categories.parent = 0;
;-- -. . -..- - / . -. - .-. -.--
update main.categories set parent = 158 where id = 171;
;-- -. . -..- - / . -. - .-. -.--
select * from main.categories b join [db1].categories z
    where z.id = b.id AND z.name = b.name;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    ,(
        SELECT COUNT(*)
        FROM main.categories  b
        WHERE z.name = b.name
        )
FROM [db1].categories;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    ,(
        SELECT COUNT(*)
        FROM main.categories  b
        WHERE z.name = b.name
        )
FROM [db1].categories z;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    ,(select ROW_NUMBER() OVER (ORDER BY z.name) a
        FROM main.categories  b
        WHERE z.name = b.name
        )
FROM [db1].categories z;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    ,(select ROW_NUMBER() OVER (ORDER BY z.id) a
        FROM main.categories  b
        WHERE z.name = b.name
        )
FROM [db1].categories z;
;-- -. . -..- - / . -. - .-. -.--
select * FROM [db1].categories z join main.categories  b where b.name = z.name;
;-- -. . -..- - / . -. - .-. -.--
select (select parent from [db1].categories z where z.name = d.name ) from main.categories d;
;-- -. . -..- - / . -. - .-. -.--
select (select parent from [db1].categories z where z.name = d.name ) x from main.categories d where x is not null;
;-- -. . -..- - / . -. - .-. -.--
update "main".categories set parent = (select parent from [db1].categories z where z.name = "main".categories.name );
;-- -. . -..- - / . -. - .-. -.--
select * from categories z left outer join categories q on z.parent = q.id 
 where q.id is null;
;-- -. . -..- - / . -. - .-. -.--
select * from categories z left outer join categories q on z.parent = q.id
 where q.id is null and z.parent <> 9;
;-- -. . -..- - / . -. - .-. -.--
select * from categories z left outer join categories q on z.parent = q.id
 where not(q.id is not null or z.parent = 0);
;-- -. . -..- - / . -. - .-. -.--
select distinct z.id from categories z left outer join categories q on q.parent = z.id
 where not(q.parent is not null or q.parent = 0);
;-- -. . -..- - / . -. - .-. -.--
select distinct z.id from categories z left outer join categories q on q.parent = z.id;
;-- -. . -..- - / . -. - .-. -.--
select distinct * from categories z left outer join categories q on q.parent = z.id;
;-- -. . -..- - / . -. - .-. -.--
select distinct * from categories z left outer join categories q on q.parent = z.id
 where q.parent is null;
;-- -. . -..- - / . -. - .-. -.--
select * from categories where id not in(select parent from urls);
;-- -. . -..- - / . -. - .-. -.--
select * from 
(select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder
inner join 
(select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id;
;-- -. . -..- - / . -. - .-. -.--
select id from 
(select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder
inner join
(select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6;
;-- -. . -..- - / . -. - .-. -.--
select noSubfolder.id from
(select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder
inner join
(select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6;
;-- -. . -..- - / . -. - .-. -.--
select distinct z.parent from categories z left outer join categories q on z.parent = q.id
 where not(q.id is not null or z.parent = 0);
;-- -. . -..- - / . -. - .-. -.--
select A.val parrent,B.val id 
from(
    SELECT parent val,row_number() over (order by parent) as row_num
    FROM (select distinct z.parent from categories z left outer join categories q on z.parent = q.id where not(q.id is not null or z.parent = 0))ui
)A
join
    (SELECT id val,row_number() over (order by id) as row_num
    FROM (select noSubfolder.id from (select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder inner join (select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6)oi)B
on  A.row_num=B.row_num
ORDER BY A.val,B.val;
;-- -. . -..- - / . -. - .-. -.--
select A.val parrent,B.val id
from(
    SELECT parent val,row_number() over (order by parent) as row_num
    FROM (select distinct z.parent from categories z left outer join categories q on z.parent = q.id where not(q.id is not null or z.parent = 0))ui
)A
join
    (SELECT id val,row_number() over (order by id) as row_num
    FROM (select noSubfolder.id from (select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder inner join (select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6)oi)B
on  A.row_num=B.row_num
ORDER BY A.val,B.val;
;-- -. . -..- - / . -. - .-. -.--
update "main".categories set parent = (

select A.val intoX
from(
    SELECT parent val,row_number() over (order by parent) as row_num
    FROM (select distinct z.parent from categories z left outer join categories q on z.parent = q.id where not(q.id is not null or z.parent = 0))ui
)A
join
    (SELECT id val,row_number() over (order by id) as row_num
    FROM (select noSubfolder.id from (select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder inner join (select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6)oi)B
on  A.row_num=B.row_num

where B.val = main.categories.id);
;-- -. . -..- - / . -. - .-. -.--
  (SELECT id val,row_number() over (order by id) as row_num
    FROM (select noSubfolder.id from (select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder inner join (select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6)oi;
;-- -. . -..- - / . -. - .-. -.--
SELECT id val,row_number() over (order by id) as row_num
    FROM (select noSubfolder.id from (select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder inner join (select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6;
;-- -. . -..- - / . -. - .-. -.--
SELECT id val,row_number() over (order by id) as row_num
    FROM (select noSubfolder.id from (select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder inner join (select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6)oi;
;-- -. . -..- - / . -. - .-. -.--
update "main".categories set parent = (

select A.val intoX
from(
    SELECT parent val,row_number() over (order by parent) as row_num
    FROM (select distinct z.parent from categories z left outer join categories q on z.parent = q.id where not(q.id is not null or z.parent = 0))ui
)A
join
    (SELECT id val,row_number() over (order by id) as row_num
    FROM (select noSubfolder.id from (select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder inner join (select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6)oi)B
on  A.row_num=B.row_num

where B.val = main.categories.id)
where id in ('280',
'1482',
'2298',
'2299',
'2652',
'2653'
);
;-- -. . -..- - / . -. - .-. -.--
select * from categories where id = parent;
;-- -. . -..- - / . -. - .-. -.--
select * from categories where id in ( select x from (select urls.parent x,count(url) c urls group by urls.parent) where c = 1 );
;-- -. . -..- - / . -. - .-. -.--
select b.name category,
       b.id bmId,
       b.parent ParrentF,
       a.id ,
       a.parent,
       a.name title,
       url
from urls a inner join categories b on a.parent = b.id;
;-- -. . -..- - / . -. - .-. -.--
select
       b.id 'index',
       a.name title,
       url uri,
       b.name folder
from urls a inner join categories b on a.parent = b.id;
;-- -. . -..- - / . -. - .-. -.--
select
       a.name title,
       b.id 'index',
       url uri,
       b.name folder
from urls a inner join categories b on a.parent = b.id;
;-- -. . -..- - / . -. - .-. -.--
create view exportAble as 
select
       a.name title,
       b.id 'index',
       url uri,
       b.name folder
from urls a inner join categories b on a.parent = b.id;
;-- -. . -..- - / . -. - .-. -.--
select *
from urls x
where substr(name, 1, 4) = 'http' OR name = url
   or id in(select id from (select a.a,
                    x.*
             from (select * from (select name, count(name) a from urls group by name) where a > 2) a

                      join urls x on a.name = x.name
)v)

   OR SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) = ''
order by SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) desc, name;
;-- -. . -..- - / . -. - .-. -.--
select *
from urls x
where substr(name, 1, 4) = 'http' OR name = url
   or id in(select id from (select a.a,
                    x.*
             from (select * from (select name, count(name) a from urls group by name) where a > 2) a

                      join urls x on a.name = x.name
)v) and url <> name

   OR SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) = ''
order by SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) desc, name;
;-- -. . -..- - / . -. - .-. -.--
select *
from urls x
where (substr(name, 1, 4) = 'http' OR name = url
   or id in(select id from (select a.a,
                    x.*
             from (select * from (select name, count(name) a from urls group by name) where a > 2) a

                      join urls x on a.name = x.name
)v) 

   OR SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) = '') and url <> name
order by SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) desc, name;
;-- -. . -..- - / . -. - .-. -.--
select *
from urls x

order by SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) desc, name;
;-- -. . -..- - / . -. - .-. -.--
delete from categories where id in (select id from categoriesSafelyDeleted);
;-- -. . -..- - / . -. - .-. -.--
select SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1),count(SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1)), name from urls x group by SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1);
;-- -. . -..- - / . -. - .-. -.--
select SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) host,
       count(url) count,
       name
from urls x
group by host order by count desc;
;-- -. . -..- - / . -. - .-. -.--
create view MostCommon_hosts as
select SUBSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), 1, INSTR(SUBSTR(x.url, INSTR(x.url, '//') + 2), '/') - 1) host,
       count(url) count,
       name
from urls x
group by host order by count desc;
;-- -. . -..- - / . -. - .-. -.--
update urls set url = replace(url,'http:','https:') where instr(url,'http:') <> 0;
;-- -. . -..- - / . -. - .-. -.--
select substr(url,length('https://www.hentai-foundry.com/pictures/ '),length(url)) a, * from urls where name = 'like www.hentai-foundry.com';
;-- -. . -..- - / . -. - .-. -.--
select * from categories where id in ( select x from (select urls.parent x,count(url) c from urls group by urls.parent) where c = 1 );
;-- -. . -..- - / . -. - .-. -.--
create view Categories_whith_oneEntry as select * from categories where id in ( select x from (select urls.parent x,count(url) c from urls group by urls.parent) where c = 1 );
;-- -. . -..- - / . -. - .-. -.--
select distinct id,
       parent,
       name,
       w.url
from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 order by w.url;
;-- -. . -..- - / . -. - .-. -.--
create view urls_with_dupes as select distinct id,
       parent,
       name,
       w.url
from urls w join ( select z.url, count(z.name) c from urls z group by z.url) x on w.url = x.url where x.c > 1 order by w.url;
;-- -. . -..- - / . -. - .-. -.--
/*

groovy project, for each category that has more than 100 create subcattegories whom has name of  domain

if no more than one domain is among the childnodes, group by first non symbolchar after domain
    if no more than 1 symbol among childnodes...

for each category, megere titles group by category, remove every non alfanumerical symbol for space, split into array
sort by occurance, return 5 most occuring, rename category according to merged string of the 5*/
;
;-- -. . -..- - / . -. - .-. -.--
select domain         ,
       count(url) c from (
           select url,
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
            ) domain
 from urls where parent = 268) x group by x.domain order by c desc;
;-- -. . -..- - / . -. - .-. -.--
create view TopDomainByParrent as 


select domain         , --select parent , count(url) c from urls group by parent order by c desc
       count(url) c from (
           select url,
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
            ) domain
 from urls where parent = 268) x group by x.domain order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select id, yt.name, c
from (select id, name
  from urls where
                  --url in (select url from (select url, count(id) c from urls group by url) op  where c > 1)) po
                not(id in (select min(id) from urls group by url))) q
           join (select * from(select * from (select name, count(xz.url) c
                 from urls xz
                          join
                      (select url
                       from (select url, count(name) c from urls group by url)
                       where c > 1) bz on bz.url = xz.url
                 group by name) hj

                 ) uy

               ) yt on yt.name = q.name;
;-- -. . -..- - / . -. - .-. -.--
select A.val intoX
from(
    SELECT parent val,row_number() over (order by parent) as row_num
    FROM (select distinct z.parent from categories z left outer join categories q on z.parent = q.id where not(q.id is not null or z.parent = 0))ui
)A
join
    (SELECT id val,row_number() over (order by id) as row_num
    FROM (select noSubfolder.id from (select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder inner join (select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6)oi)B
on  A.row_num=B.row_num

where B.val = main.categories.id;
;-- -. . -..- - / . -. - .-. -.--
select A.val intoX
from(
    SELECT parent val,row_number() over (order by parent) as row_num
    FROM (select distinct z.parent from categories z left outer join categories q on z.parent = q.id where not(q.id is not null or z.parent = 0))ui
)A
join
    (SELECT id val,row_number() over (order by id) as row_num
    FROM (select noSubfolder.id from (select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder inner join (select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6)oi)B
on  A.row_num=B.row_num;
;-- -. . -..- - / . -. - .-. -.--
create view repairBrokenNullParrentCategories as 

select A.val intoX
from(
    SELECT parent val,row_number() over (order by parent) as row_num
    FROM (select distinct z.parent from categories z left outer join categories q on z.parent = q.id where not(q.id is not null or z.parent = 0))ui
)A
join
    (SELECT id val,row_number() over (order by id) as row_num
    FROM (select noSubfolder.id from (select distinct * from categories z left outer join categories q on q.parent = z.id where q.parent is null) noSubfolder inner join (select id from categories where id not in(select parent from urls)) nourk on nourk.id = noSubfolder.id order by parent limit 6)oi)B
on  A.row_num=B.row_num;
;-- -. . -..- - / . -. - .-. -.--
select id from

       (select name,id from urls  where
           not(id in (select min(id) from urls group by url))) q
   join
   (select name,count(url) c from urls where
                        not(id in (select min(id) from urls group by url)) group by name order by c desc limit 8) z on z.name = q.name
);
;-- -. . -..- - / . -. - .-. -.--
select id from

       (select name,id from urls  where
           not(id in (select min(id) from urls group by url))) q
   join
   (select name,count(url) c from urls where
                        not(id in (select min(id) from urls group by url)) group by name order by c desc limit 8) z on z.name = q.name;
;-- -. . -..- - / . -. - .-. -.--
attach 'C:/Users/Dator/Desktop/StorURL3_Portable/profile/Second.sudb' as db1;
;-- -. . -..- - / . -. - .-. -.--
with cte as (select d.name, (select parent from [db1].categories z where z.name = d.name ) x from main.categories d where x is not null)


--select * FROM [db1].categories z join main.categories  b on b.name = z.name

SELECT * ,(select ROW_NUMBER() OVER (ORDER BY z.id) a   FROM main.categories  b WHERE z.name = b.name) FROM [db1].categories z;
;-- -. . -..- - / . -. - .-. -.--
select ROWID,parent, count(url) c from urls group by parent;
;-- -. . -..- - / . -. - .-. -.--
select row_number(),parent, count(url) c from urls group by parent);
;-- -. . -..- - / . -. - .-. -.--
select row_number(),parent, count(url) c from urls group by parent;
;-- -. . -..- - / . -. - .-. -.--
select count(row_number()),parent, count(url) c from urls group by parent;
;-- -. . -..- - / . -. - .-. -.--
select count(row_number(parent)),parent, count(url) c from urls group by parent;
;-- -. . -..- - / . -. - .-. -.--
select *,row_number() from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select * from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select *, row_number() over x.parent from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select *, row_number(over x.parent) from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select *, row_number(over parent) from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select *, row_number() over (order by x.parent) from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       c,row_number() over (order by x.parent)from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       z
       from urls y join (select row_number() over (order by parent) z,parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       z
       from urls y join (select row_number() over (order by url) z,parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       z
       from urls y join (select row_number() over (order by ROWID) z,parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select row_number() over (order by c) z
       from urls y join (parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       row_number() over (order by c) z
       from urls y join (parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       row_number() over (order by c) z
       from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       row_number() over (c) z
       from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       row_number() over (select c) z
-       from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       row_number() over (select from c) z
-       from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       row_number() over (select * from x) z
-       from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       row_number() over (x) z
-       from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       row_number() over (order by x) z
-       from urls y join (select parent, count(url) c from urls group by parent) x on x.parent = y.parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,
       
       (select row_number() over (order by url) from urls zx where zx.parent = y.parent) z
-       from urls;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       x.parent,

       (select row_number() over (order by url) from urls zx where zx.parent = y.parent) z
       from urls;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       parent,

       (select row_number() over (order by url) from urls zx where zx.parent = y.parent) z
       from urls y;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       parent,

       (select row_number() over (order by url) from urls zx  where zx.parent = y.parent group by y.parent) z
       from urls y;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       parent,

       (select row_number() over (order by url) from urls zx  where zx.parent = y.parent group by parent) z
       from urls y;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       parent,

       (select row_number() over (order by zx.ROWID) from urls zx  where zx.parent = y.parent group by parent) z
       from urls y;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       parent,

       (select row_number() over (order by zx.ROWID) from urls zx  where zx.parent = y.parent) z
       from urls y;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       parent,

       row_number() over (order by parent) z
       from urls y;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       parent,

       row_number() over (partition by parent) z
       from urls y;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       parent,

       row_number() over (partition by parent) z
       from urls y
        order by parent;
;-- -. . -..- - / . -. - .-. -.--
select id,
       y.parent,
       name,
       url,
       parent,

       row_number() over (partition by parent) z
       from urls y
        order by parent,z;
;-- -. . -..- - / . -. - .-. -.--
SELECT *,(SELECT MAX(Z) FROM QW TRE WHERE QW.parent = TRE.parent ) FROM 
(
    select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) z
   from urls y

    )  QW       order by parent,z;
;-- -. . -..- - / . -. - .-. -.--
WITH QW AS ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) z
   from urls y)







SELECT *,(SELECT MAX(Z) FROM QW TRE WHERE QW.parent = TRE.parent ) FROM QW       order by parent,z;
;-- -. . -..- - / . -. - .-. -.--
WITH QW AS ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) z
   from urls y)





SELECT * FROM QW JOIN (SELECT COUNT(URL) FROM QW TRE WHERE GROUP BY PARRENT) TRE ON QW.parent = TRE.parent       order by parent,z;
;-- -. . -..- - / . -. - .-. -.--
WITH QW AS ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) z
   from urls y)





SELECT * FROM QW JOIN (SELECT COUNT(URL),PARENT FROM QW TRE WHERE GROUP BY PARENT) TRE ON QW.parent = TRE.parent       order by parent,z;
;-- -. . -..- - / . -. - .-. -.--
WITH QW AS ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) z
   from urls y)





SELECT * FROM QW JOIN (SELECT COUNT(URL),PARENT FROM QW TRE GROUP BY PARENT) TRE ON QW.parent = TRE.parent       order by parent,z;
;-- -. . -..- - / . -. - .-. -.--
WITH QW AS ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) z
   from urls y),





QWE AS (SELECT * FROM QW JOIN (SELECT COUNT(URL),PARENT FROM QW TRE GROUP BY PARENT) TRE ON QW.parent = TRE.parent )     

SELECT * FROM QWE order by parent,z;
;-- -. . -..- - / . -. - .-. -.--
WITH QW AS ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) INDEXz
   from urls y),

QWE AS (SELECT id,
               QW.parent,
               name,
               url,
               QW.parent,
               INDEXz,
               "COUNT(URL)" URLcOUNT,
               TRE.PARENT
        FROM QW JOIN (SELECT COUNT(URL),PARENT FROM QW TRE GROUP BY PARENT) TRE ON QW.parent = TRE.parent )





SELECT id,
       QWE.parent,
       name,
       url,
        (CASE INDEXz
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
            ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM QWE order by parent,INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH 
QWE AS (SELECT id,
               parent,
               name,
               url,

               INDEXz,
               "COUNT(URL)" URLcOUNT
               FROM ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) INDEXz
   from urls y) QW JOIN (SELECT COUNT(URL),PARENT FROM ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) INDEXz
   from urls y) TRE GROUP BY PARENT) TRE ON QW.parent = TRE.parent )





SELECT id,
       QWE.parent,
       name,
       url,
        (CASE INDEXz
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
            ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM QWE order by parent,INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH 
QWE AS (SELECT id,
               TRE.parent,
               name,
               url,

               INDEXz,
               "COUNT(URL)" URLcOUNT
               FROM ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) INDEXz
   from urls y) QW JOIN (SELECT COUNT(URL),PARENT FROM ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) INDEXz
   from urls y) TRE GROUP BY PARENT) TRE ON QW.parent = TRE.parent )





SELECT id,
       QWE.parent,
       name,
       url,
        (CASE INDEXz
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
            ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM QWE order by parent,INDEXz;
;-- -. . -..- - / . -. - .-. -.--
SELECT id,
       QWE.parent,
       name,
       url,
        (CASE INDEXz
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
            ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT id,
               TRE.parent,
               name,
               url,

               INDEXz,
               "COUNT(URL)" URLcOUNT
               FROM ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) INDEXz
   from urls y) QW JOIN (SELECT COUNT(URL),PARENT FROM ( select id,
   y.parent,
   name,
   url,
   parent,
   row_number() over (partition by parent) INDEXz
   from urls y) TRE GROUP BY PARENT) TRE ON QW.parent = TRE.parent ) QWE order by parent,INDEXz;
;-- -. . -..- - / . -. - .-. -.--
SELECT id,
       QWE.parent,
       name,
       url,
       (CASE INDEXz
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
            WHEN URLcOUNT and 1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT id,
             TRE.parent,
             name,
             url,

             INDEXz,
             "COUNT(URL)" URLcOUNT
      FROM (select id,
                   y.parent,
                   name,
                   url,
                   parent,
                   row_number() over (partition by parent) INDEXz
            from urls y) QW
               JOIN (SELECT COUNT(URL), PARENT
                     FROM (select id,
                                  y.parent,
                                  name,
                                  url,
                                  parent,
                                  row_number() over (partition by parent) INDEXz
                           from urls y) TRE
                     GROUP BY PARENT) TRE ON QW.parent = TRE.parent) QWE
order by parent, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
SELECT id,
       QWE.parent,
       name,
       url,
       (CASE INDEXz
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT id,
             TRE.parent,
             name,
             url,

             INDEXz,
             "COUNT(URL)" URLcOUNT
      FROM (select id,
                   y.parent,
                   name,
                   url,
                   parent,
                   row_number() over (partition by parent) INDEXz
            from urls y) QW
               JOIN (SELECT COUNT(URL), PARENT
                     FROM (select id,
                                  y.parent,
                                  name,
                                  url,
                                  parent,
                                  row_number() over (partition by parent) INDEXz
                           from urls y) TRE
                     GROUP BY PARENT) TRE ON QW.parent = TRE.parent) QWE
order by parent, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
SELECT id,
       QWE.parent,
       name,
       url,
       (CASE INDEXz
           
            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT id,
             TRE.parent,
             name,
             url,

             INDEXz,
             "COUNT(URL)" URLcOUNT
      FROM (select id,
                   y.parent,
                   name,
                   url,
                   parent,
                   row_number() over (partition by parent) INDEXz
            from urls y) QW
               JOIN (SELECT COUNT(URL), PARENT
                     FROM (select id,
                                  y.parent,
                                  name,
                                  url,
                                  parent,
                                  row_number() over (partition by parent) INDEXz
                           from urls y) TRE
                     GROUP BY PARENT) TRE ON QW.parent = TRE.parent) QWE
order by parent, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLS AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT id,
       QWE.parent,
       name,
       url,
       (CASE INDEXz

            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT id,TRE.parent,name,url,INDEXz,"COUNT(URL)" URLcOUNT FROM (select id,y.parent,name,url,parent,row_number() over (partition by parent) INDEXz from urls y) QW JOIN (SELECT COUNT(URL), TRE.PARENT FROM (select id,y.parent,name, url,parent from urls y) TRE GROUP BY TRE.PARENT) TRE ON QW.parent = TRE.parent) QWE
order by parent, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT id,
       QWE.parent,
       name,
       url,
       (CASE INDEXz

            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT id,TRE.parent,name,url,INDEXz,"COUNT(URL)" URLcOUNT FROM (select id,y.parent,name,url,parent,row_number() over (partition by parent) INDEXz from URLZ y) QW JOIN (SELECT COUNT(URL), TRE.PARENT FROM (select id,y.parent,name, url,parent from URLZ y) TRE GROUP BY TRE.PARENT) TRE ON QW.parent = TRE.parent) QWE
order by parent, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT id,
       QWE.parent,
       name,
       url,
       (CASE INDEXz

            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT id,TRE.parent,name,url,INDEXz,"COUNT(URL)" URLcOUNT FROM (select Bookmark,
                                                                              "index",
                                                                              title,
                                                                              folder, row_number() over (partition by folder) INDEXz from URLZ y) QW JOIN (SELECT COUNT(URL), TRE.PARENT FROM (select id,y.parent,name, url,parent from URLZ y) TRE GROUP BY TRE.PARENT) TRE ON QW.parent = TRE.parent) QWE
order by parent, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT Bookmark,
       "index",
       title,
       folder,
       INDEXz,
       PARENT,
       URLcOUNT,
       (CASE INDEXz

            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT Bookmark,
             "index",
             title,
             folder,
             INDEXz,
             PARENT,"COUNT(URL)" URLcOUNT FROM (select Bookmark,
                                                       "index",
                                                       title,
                                                       folder,row_number() over (partition by folder) INDEXz from URLZ y) QW JOIN (SELECT COUNT(URL), TRE.PARENT FROM (select id,y.parent,name, url,parent from URLZ y) TRE GROUP BY TRE.PARENT) TRE ON QW.parent = TRE.parent) QWE
order by parent, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT Bookmark,
       "index",
       title,
       folder,
       INDEXz,
       PARENT,
       URLcOUNT,
       (CASE INDEXz

            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT Bookmark,
             "index",
             title,
             folder,
             INDEXz,
             folder,C URLcOUNT FROM (select Bookmark,
                                                       "index",
                                                       title,
                                                       folder,row_number() over (partition by folder) INDEXz from URLZ y) QW JOIN (SELECT COUNT(BOOKMARK) C, "index", title, folder
                                                                                                                                   FROM URLZ TRE GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by parent, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT Bookmark,
       "index",
       title,
       folder,
       INDEXz,
       PARENT,
       URLcOUNT,
       (CASE INDEXz

            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT Bookmark,
             "index",
             title,
             folder,
             INDEXz,
             folder,C URLcOUNT FROM (select Bookmark,
                                                       "index",
                                                       title,
                                                       folder,row_number() over (partition by folder) INDEXz from URLZ y) QW JOIN (SELECT COUNT(BOOKMARK) C, folder
                                                                                                                                   FROM URLZ TRE GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by parent, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT Bookmark,
       "index",
       title,
       folder,
       INDEXz,
       PARENT,
       URLcOUNT,
       (CASE INDEXz

            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT Bookmark,
             "index",
             title,
             INDEXz,
             QW.folder,C URLcOUNT FROM (select Bookmark,
                                                       "index",
                                                       title,
                                                       folder,row_number() over (partition by folder) INDEXz from URLZ y) QW JOIN (SELECT COUNT(BOOKMARK) C, folder
                                                                                                                                   FROM URLZ TRE GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by parent, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT Bookmark,
       "index",
       title,
       folder,
       INDEXz,
       URLcOUNT,
       (CASE INDEXz

            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT Bookmark,
             "index",
             title,
             INDEXz,
             QW.folder,C URLcOUNT FROM (select Bookmark,
                                                       "index",
                                                       title,
                                                       folder,row_number() over (partition by folder) INDEXz from URLZ y) QW JOIN (SELECT COUNT(BOOKMARK) C, folder
                                                                                                                                   FROM URLZ TRE GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by parent, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT Bookmark,
       "index",
       title,
       folder,
       INDEXz,
       URLcOUNT,
       (CASE INDEXz

            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT Bookmark,
             "index",
             title,
             INDEXz,
             QW.folder,C URLcOUNT FROM (select Bookmark,
                                                       "index",
                                                       title,
                                                       folder,row_number() over (partition by folder) INDEXz from URLZ y) QW JOIN (SELECT COUNT(BOOKMARK) C, folder
                                                                                                                                   FROM URLZ TRE GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by FOLDER, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT Bookmark,
       "index",
       title,
       QWE.folder,
       INDEXz,
       URLcOUNT,
       (CASE INDEXz

            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE' || '/FOLDER></TITLE'
            WHEN 1 THEN 'FOLDER><TITLE'
            WHEN URLcOUNT THEN '/FOLDER></TITLE'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT Bookmark,
             "index",
             title,
             INDEXz,
             QW.folder,C URLcOUNT FROM (select Bookmark,
                                               "index",
                                               title,
                                               folder,row_number() over (partition by folder) INDEXz from URLZ y) QW JOIN (SELECT COUNT(BOOKMARK) C, folder
                                                                                                                                   FROM URLZ TRE GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by QWE.folder, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT Bookmark,
       "index",
       title,
       INDEXz,
       URLcOUNT,
       (CASE INDEXz
            WHEN URLcOUNT =1 THEN 'FOLDER><TITLE>' || QWE.folder || '</TITLE></FOLDER'
            WHEN 1 THEN 'FOLDER><TITLE>'  || QWE.folder || '</TITLE>'
            WHEN URLcOUNT THEN '</FOLDER>'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT Bookmark,
             "index",
             title,
             INDEXz,
             QW.folder,C URLcOUNT FROM (select Bookmark,
                                               "index",
                                               title,
                                               folder,row_number() over (partition by folder) INDEXz from URLZ y) QW JOIN (SELECT COUNT(BOOKMARK) C, folder
                                                                                                                                   FROM URLZ TRE GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by QWE.folder, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT Bookmark,
       "index",
       title,
       INDEXz,
       URLcOUNT,
       (CASE INDEXz
            WHEN URLcOUNT =1 THEN '<TITLE>' || QWE.folder || '</TITLE>'
            WHEN 1 THEN '<FOLDER><TITLE>'  || QWE.folder || '</TITLE>-'
            WHEN URLcOUNT THEN '</FOLDER>'
           ELSE NULL END) FOLDER,
       INDEXz,
       URLcOUNT
FROM (SELECT Bookmark,
             "index",
             title,
             INDEXz,
             QW.folder,C URLcOUNT FROM (select Bookmark,
                                               "index",
                                               title,
                                               folder,row_number() over (partition by folder) INDEXz from URLZ y) QW JOIN (SELECT COUNT(BOOKMARK) C, folder
                                                                                                                                   FROM URLZ TRE GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by QWE.folder, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
WITH URLz AS (select
       replace(replace(replace(replace(replace(replace(replace(replace(url, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       b.id 'index',
       replace(replace(replace(replace(replace(replace(replace(replace(a.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       replace(replace(replace(replace(replace(replace(replace(replace(b.name, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
from urls a inner join categories b on a.parent = b.id
where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>''
)




SELECT Bookmark,
       INDEXz "index",
       title,
       (CASE INDEXz
            WHEN URLcOUNT =1 THEN '<TITLE>' || QWE.folder || '</TITLE>'
            WHEN 1 THEN '<FOLDER><TITLE>'  || QWE.folder || '</TITLE>-'
            WHEN URLcOUNT THEN '</FOLDER>'
           ELSE NULL END) FOLDER
FROM (SELECT Bookmark,
             "index",
             title,
             INDEXz,
             QW.folder,C URLcOUNT FROM (select Bookmark,
                                               "index",
                                               title,
                                               folder,row_number() over (partition by folder) INDEXz from URLZ y) QW JOIN (SELECT COUNT(BOOKMARK) C, folder
                                                                                                                                   FROM URLZ TRE GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by QWE.folder, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
SELECT Bookmark,
       INDEXz "index",
       title,
       (CASE INDEXz
            WHEN URLcOUNT =1 THEN '<TITLE>' || QWE.folder || '</TITLE>'
            WHEN 1 THEN '<FOLDER><TITLE>'  || QWE.folder || '</TITLE>-'
            WHEN URLcOUNT THEN '</FOLDER>'
           ELSE NULL END) FOLDER
FROM (SELECT Bookmark,"index",title,INDEXz,QW.folder,C URLcOUNT FROM (select Bookmark,"index",title,folder,row_number() over (partition by folder) INDEXz from (select URL Bookmark, b.id 'index', A.NAME title, B.NAME folder from urls a inner join categories b on a.parent = b.id where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>'') URLZ y) QW JOIN (SELECT COUNT(BOOKMARK) C, folder FROM (select URL Bookmark, b.id 'index', A.NAME title, B.NAME folder from urls a inner join categories b on a.parent = b.id where instr(url,' ') = 0 AND instr(url,'.')<>0 AND instr(url,'/') <> 1 and  url <>'') TRE GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by QWE.folder, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
SELECT replace(replace(replace(replace(replace(replace(replace(replace(Bookmark, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       INDEXz "index",
       replace(replace(replace(replace(replace(replace(replace(replace(title, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       (CASE INDEXz
            WHEN URLcOUNT = 1 THEN '<TITLE>' || replace(replace(replace(replace(replace(replace(replace(replace(folder, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') || '</TITLE>'
            WHEN 1 THEN '<FOLDER><TITLE>' || replace(replace(replace(replace(replace(replace(replace(replace(folder, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+')  || '</TITLE>-'
            WHEN URLcOUNT THEN '</FOLDER>'
            ELSE NULL END) FOLDER
FROM (SELECT Bookmark, title, INDEXz, QW.folder, C URLcOUNT
      FROM (select Bookmark, "index", title, folder, row_number() over (partition by folder) INDEXz
            from (select URL Bookmark, b.id 'index', A.NAME title, B.NAME folder
                  from urls a
                           inner join categories b on a.parent = b.id
                  where instr(url, ' ') = 0
                    AND instr(url, '.') <> 0
                    AND instr(url, '/') <> 1
                    and url <> '') y) QW
               JOIN (SELECT COUNT(BOOKMARK) C, folder
                     FROM (select URL Bookmark, B.NAME folder
                           from urls a
                                    inner join categories b on a.parent = b.id
                           where instr(url, ' ') = 0
                             AND instr(url, '.') <> 0
                             AND instr(url, '/') <> 1
                             and url <> '') TRE
                     GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by QWE.folder, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
SELECT replace(replace(replace(replace(replace(replace(replace(replace(Bookmark, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       INDEXz "index",
       replace(replace(replace(replace(replace(replace(replace(replace(title, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       (CASE INDEXz
            WHEN URLcOUNT = 1 THEN '<TITLE>' || replace(replace(replace(replace(replace(replace(replace(replace(folder, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') || '</TITLE>'
            WHEN 1 THEN '<FOLDER><TITLE>' || replace(replace(replace(replace(replace(replace(replace(replace(folder, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+')  || '</TITLE>-'
            WHEN URLcOUNT THEN '</FOLDER>'
            ELSE NULL END) FOLDER
FROM (SELECT Bookmark, title, INDEXz, QW.folder, C URLcOUNT
      FROM (select Bookmark, "index", title, folder, row_number() over (partition by folder) INDEXz
            from (



                select URL Bookmark, urls.id 'index', urls.NAME title,(ry.name || '\' || q.name) folder from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''


                ) y) QW
               JOIN (SELECT COUNT(BOOKMARK) C, folder
                     FROM (

                select URL Bookmark, (ry.name || '\' || q.name) folder from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''


                         ) TRE
                     GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by QWE.folder, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
SELECT replace(replace(replace(replace(replace(replace(replace(replace(Bookmark, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       INDEXz "index",
       replace(replace(replace(replace(replace(replace(replace(replace(title, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       (CASE INDEXz
            WHEN URLcOUNT = 1 THEN '<TITLE>' || replace(replace(replace(replace(replace(replace(replace(replace(folder, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') || '</TITLE>'
            WHEN 1 THEN '<FOLDER><TITLE>' || replace(replace(replace(replace(replace(replace(replace(replace(folder, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+')  || '</TITLE>-'
            WHEN URLcOUNT THEN '</FOLDER>'
            ELSE NULL END) FOLDER
FROM (SELECT Bookmark, title, INDEXz, QW.folder, C URLcOUNT
      FROM (select Bookmark, "index", title, folder, row_number() over (partition by folder) INDEXz
            from (
                select URL Bookmark, urls.id 'index', urls.NAME title,(ry.name || '\' || q.name) folder from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''
                ) y) QW
               JOIN (SELECT COUNT(BOOKMARK) C, folder
                     FROM (
                select URL Bookmark, (ry.name || '\' || q.name) folder from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''
                         ) TRE
                     GROUP BY folder) TRE ON QW.folder = TRE.folder) QWE
order by QWE.folder, INDEXz;
;-- -. . -..- - / . -. - .-. -.--
select distinct id, name, urlw, url, c
from
(select id,name,url urlw from urls ) w
 join ( select url, count(z.name) c from urls z group by url) x on urlw = x.url where x.c > 1 order by urlw;
;-- -. . -..- - / . -. - .-. -.--
SELECT 
        (CASE INDEXz
            WHEN URLcOUNT = 1 THEN '<TITLE>' || folder || '</TITLE>'
            WHEN 1 THEN '<FOLDER><TITLE>' || folder  || '</TITLE>-'
            WHEN URLcOUNT THEN '</FOLDER>'
            ELSE NULL END) FOLDER,
       Bookmark,
       INDEXz "index",
       title,

       (CASE INDEXz
            WHEN URLcOUNT = 1 THEN '<TITLE>' || folder || '</TITLE>'
            WHEN 1 THEN '<FOLDER><TITLE>' || folder  || '</TITLE>-'
            WHEN URLcOUNT THEN '</FOLDER>'
            ELSE NULL END) F
from (
select replace(replace(replace(replace(replace(replace(replace(replace(Bookmark, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       replace(replace(replace(replace(replace(replace(replace(replace(title, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       INDEXz,
       replace(replace(replace(replace(replace(replace(replace(replace(folder, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
       ,C URLcOUNT
      FROM (select Bookmark, "index", title, folder, row_number() over (partition by folder) INDEXz
            from (
                select URL Bookmark, urls.id 'index', urls.NAME title,(ry.name || '\' || q.name) folder from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''
                ) y) QW
               JOIN (SELECT COUNT(BOOKMARK) C, folder
                     FROM (
                select URL Bookmark, (ry.name || '\' || q.name) folder from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''
                         ) TRE
                     GROUP BY folder) TRE ON QW.folder = TRE.folder
order by folder, INDEXz);
;-- -. . -..- - / . -. - .-. -.--
SELECT
        (CASE INDEXz
            WHEN URLcOUNT = 1 THEN '<TITLE>' || folder || '</TITLE>'
            WHEN 1 THEN '<FOLDER><TITLE>' || folder  || '</TITLE>-'
            WHEN URLcOUNT THEN '</FOLDER>'
            ELSE NULL END) FOLDER,
       Bookmark,
       INDEXz "index",
       title,

       (CASE INDEXz
            WHEN URLcOUNT = 1 THEN '<TITLE>' || folder || '</TITLE>'
            WHEN 1 THEN '<FOLDER><TITLE>' || folder  || '</TITLE>-'
            WHEN URLcOUNT THEN '</FOLDER>'
            ELSE NULL END) F
from (
select replace(replace(replace(replace(replace(replace(replace(replace(Bookmark, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       replace(replace(replace(replace(replace(replace(replace(replace(title, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       INDEXz,
       replace(replace(replace(replace(replace(replace(replace(replace(QW.folder, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
       ,C URLcOUNT
      FROM (select Bookmark, "index", title, folder, row_number() over (partition by folder) INDEXz
            from (
                select URL Bookmark, urls.id 'index', urls.NAME title,(ry.name || '\' || q.name) folder from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''
                ) y) QW
               JOIN (SELECT COUNT(BOOKMARK) C, folder
                     FROM (
                select URL Bookmark, (ry.name || '\' || q.name) folder from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''
                         ) TRE
                     GROUP BY folder) TRE ON QW.folder = TRE.folder
order by folder, INDEXz);
;-- -. . -..- - / . -. - .-. -.--
SELECT
        (CASE INDEXz
            WHEN URLcOUNT = 1 THEN '<TITLE>' || folder || '</TITLE>'
            WHEN 1 THEN '<FOLDER><TITLE>' || folder  || '</TITLE>-'
            ELSE NULL END) FOLDER,
       Bookmark,
       INDEXz "index",
       title,

       (CASE INDEXz
            WHEN URLcOUNT THEN '</FOLDER>'
            ELSE NULL END) F
from (
select replace(replace(replace(replace(replace(replace(replace(replace(Bookmark, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       replace(replace(replace(replace(replace(replace(replace(replace(title, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       INDEXz,
       replace(replace(replace(replace(replace(replace(replace(replace(QW.folder, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') folder
       ,C URLcOUNT
      FROM (select Bookmark, "index", title, folder, row_number() over (partition by folder) INDEXz
            from (
                select URL Bookmark, urls.id 'index', urls.NAME title,(ry.name || '\' || q.name) folder from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''
                ) y) QW
               JOIN (SELECT COUNT(BOOKMARK) C, folder
                     FROM (
                select URL Bookmark, (ry.name || '\' || q.name) folder from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''
                         ) TRE
                     GROUP BY folder) TRE ON QW.folder = TRE.folder
order by folder, INDEXz);
;-- -. . -..- - / . -. - .-. -.--
SELECT
        ryname, qname,
        (CASE INDEXz
            WHEN URLcOUNT = 1 THEN  '<folder id="'||ryid||'"><title>'||ryname||'</title><folder id="'||qid||'"><title>'||qname||'</title></folder>'
            WHEN 1 THEN '<folder id="'||ryid||'"><title>'||ryname||'</title><folder id="'||qid||'"><title>'||qname||'</title>'
            ELSE '' END) t,
       '<bookmark id="'|| INDEXz ||'" href="' || Bookmark || '">' b,
       title,
        '</bookmark>' a,
       (CASE INDEXz
            WHEN URLcOUNT THEN '</folder>'
            ELSE '' END) f
from ( 
select replace(replace(replace(replace(replace(replace(replace(replace(Bookmark, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       replace(replace(replace(replace(replace(replace(replace(replace(title, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       INDEXz,
       C URLcOUNT
       ,ryname,
       qname,
       qid,
       ryid
FROM (select Bookmark, "index",parent, title, ryname,qname,qid,ryid, y.folder, row_number() over (partition by y.folder) INDEXz
            from (
                select URL Bookmark, q.id parent,urls.id 'index', urls.NAME title,ry.name ryname,q.name qname,q.id qid,ry.id ryid,ry.name||q.name folder

                from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''
                ) y) QW
               JOIN (SELECT COUNT(BOOKMARK) C, folder
                     FROM (
                select URL Bookmark,

                       ry.name,q.name,q.id,ry.id,ry.name||q.name folder

                from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> ''
                         ) TRE
                     GROUP BY folder) TRE ON QW.folder = TRE.folder
order by QW.folder, INDEXz);
;-- -. . -..- - / . -. - .-. -.--
SELECT
       (CASE INDEXz
            WHEN URLcOUNT = 1 THEN  '<folder id="'||ryid||'"><title>'||ryname||'</title>'
            WHEN 1 THEN '<folder id="'||ryid||'"><title>'||ryname||'</title>'
            ELSE '' END)||(CASE INDEXz WHEN URLcOUNT = 1 THEN  '</folder>' ELSE '' END) t,
       (CASE INDEXy
            WHEN URLcOUNT = 1 THEN  '<folder id="'||qid||'"><title>'||qname||'</title>'
            WHEN 1 THEN '<folder id="'||qid||'"><title>'||qname||'</title>'
            ELSE '' END)||(CASE INDEXy WHEN URLcOUNT = 1 THEN  '</folder>' ELSE '' END) t,





       '<bookmark id="'|| INDEXz ||'" href="' || Bookmark || '">' b,
       title,
        '</bookmark>' a,



       (CASE INDEXz
            WHEN URLcOUNT THEN '</folder>'
            ELSE '' END) f,
        (CASE INDEXy
            WHEN URLcOUNTy THEN '</folder>'
            ELSE '' END) f
from (
select replace(replace(replace(replace(replace(replace(replace(replace(Bookmark, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       replace(replace(replace(replace(replace(replace(replace(replace(title, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       INDEXz,
       TRE.C URLcOUNT,
       XRE.C URLcOUNTy,
       replace(replace(replace(replace(replace(replace(replace(replace(ryname,'&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') ryname,
       replace(replace(replace(replace(replace(replace(replace(replace(qname,'&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') qname,
       qid,
       ryid
        indexy
FROM (select Bookmark, parent, title, ryname,qname,qid,ryid, y.folder, row_number() over (partition by y.folder) INDEXz, row_number() over (partition by foldery) indexy
      from (
               select URL               Bookmark,
                      q.id              parent,
                      urls.NAME         title,
                      ry.name           ryname,
                      q.name            qname,
                      q.id              qid,
                      ry.id             ryid,
                      ry.name  folder,
                      q.name foldery

               from urls
                        join categories q on urls.parent = q.id join categories ry on ry.id = q.parent
               where instr(url, ' ') = 0
                 AND instr(url, '.') <> 0
                 AND instr(url, '/') <> 1
                 and url <> ''
           ) y) QW
         JOIN (SELECT COUNT(BOOKMARK) C, folder
               FROM (
                        select URL               Bookmark,
                               q.name,
                               q.id,
                               ry.name || q.name folder
                        from urls
                                 join categories q on urls.parent = q.id
                                 join categories ry on ry.id = q.parent
                        where instr(url, ' ') = 0
                          AND instr(url, '.') <> 0
                          AND instr(url, '/') <> 1
                          and url <> ''
                    ) TRE
               GROUP BY folder) TRE ON QW.folder = TRE.folder
         JOIN (SELECT COUNT(BOOKMARK) C, folder
               FROM (
                        select URL               Bookmark,
                            ry.id,
                            ry.name,
                            ry.name || q.name folder
                        from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent
                        where instr(url, ' ') = 0
                          AND instr(url, '.') <> 0
                          AND instr(url, '/') <> 1
                          and url <> ''
                    ) XRE
               GROUP BY folder) XRE ON QW.folder = XRE.folder
order by QW.folder, INDEXz);
;-- -. . -..- - / . -. - .-. -.--
SELECT
       (CASE INDEXz
            WHEN URLcOUNT = 1 THEN  '<folder id="'||ryid||'"><title>'||ryname||'</title>'
            WHEN 1 THEN '<folder id="'||ryid||'"><title>'||ryname||'</title>'
            ELSE '' END)||(CASE INDEXz WHEN URLcOUNT = 1 THEN  '</folder>' ELSE '' END) t,
       (CASE INDEXy
            WHEN URLcOUNT = 1 THEN  '<folder id="'||qid||'"><title>'||qname||'</title>'
            WHEN 1 THEN '<folder id="'||qid||'"><title>'||qname||'</title>'
            ELSE '' END)||(CASE INDEXy WHEN URLcOUNT = 1 THEN  '</folder>' ELSE '' END) t,





       '<bookmark id="'|| INDEXz ||'" href="' || Bookmark || '">' b,
       title,
        '</bookmark>' a,



       (CASE INDEXz
            WHEN URLcOUNT THEN '</folder>'
            ELSE '' END) f,
        (CASE INDEXy
            WHEN URLcOUNTy THEN '</folder>'
            ELSE '' END) f
from (
select replace(replace(replace(replace(replace(replace(replace(replace(Bookmark, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') Bookmark,
       replace(replace(replace(replace(replace(replace(replace(replace(title, '&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') title,
       INDEXz,
       TRE.C URLcOUNT,
       XRE.C URLcOUNTy,
       replace(replace(replace(replace(replace(replace(replace(replace(ryname,'&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') ryname,
       replace(replace(replace(replace(replace(replace(replace(replace(qname,'&','+'), '?','+'), '#','+'), '»','+'), '<<','+'), '','+'), '','+'), '','+') qname,
       qid,
       ryid,
        indexy
FROM (select Bookmark, parent, title, ryname,qname,qid,ryid, y.folder, row_number() over (partition by y.folder) INDEXz, row_number() over (partition by foldery) indexy
      from (
               select URL               Bookmark,
                      q.id              parent,
                      urls.NAME         title,
                      ry.name           ryname,
                      q.name            qname,
                      q.id              qid,
                      ry.id             ryid,
                      ry.name  folder,
                      q.name foldery

               from urls
                        join categories q on urls.parent = q.id join categories ry on ry.id = q.parent
               where instr(url, ' ') = 0
                 AND instr(url, '.') <> 0
                 AND instr(url, '/') <> 1
                 and url <> ''
           ) y) QW
         JOIN (SELECT COUNT(BOOKMARK) C, folder
               FROM (
                        select URL               Bookmark,
                               q.name,
                               q.id,
                               ry.name || q.name folder
                        from urls
                                 join categories q on urls.parent = q.id
                                 join categories ry on ry.id = q.parent
                        where instr(url, ' ') = 0
                          AND instr(url, '.') <> 0
                          AND instr(url, '/') <> 1
                          and url <> ''
                    ) TRE
               GROUP BY folder) TRE ON QW.folder = TRE.folder
         JOIN (SELECT COUNT(BOOKMARK) C, folder
               FROM (
                        select URL               Bookmark,
                            ry.id,
                            ry.name,
                            ry.name || q.name folder
                        from urls join categories q on urls.parent = q.id join categories ry on ry.id = q.parent
                        where instr(url, ' ') = 0
                          AND instr(url, '.') <> 0
                          AND instr(url, '/') <> 1
                          and url <> ''
                    ) XRE
               GROUP BY folder) XRE ON QW.folder = XRE.folder
order by QW.folder, INDEXz);
;-- -. . -..- - / . -. - .-. -.--
select urls.id, urls.name, url, 
             Cat.id, Cat.name, 
             Xat.id, Xat.name
      from urls join categories Cat on urls.parent = Cat.id
                left outer join categories Xat on Cat.parent = Xat.id;
;-- -. . -..- - / . -. - .-. -.--
select urls.id, urls.name, url,
       Xat.id, Xat.name,      
       Cat.id, Cat.name       
      from urls join categories Cat on urls.parent = Cat.id
                left outer join categories Xat on Cat.parent = Xat.id;
;-- -. . -..- - / . -. - .-. -.--
select urls.id, urls.name, url,
       Xat.id CparId, Xat.name CparName,
       Cat.id, Cat.name       
      from urls join categories Cat on urls.parent = Cat.id
                left outer join categories Xat on Cat.parent = Xat.id;
;-- -. . -..- - / . -. - .-. -.--
select urls.id, urls.name, url,
       Xat.id FoldParId, Xat.name FoldParName,
       Cat.id BookFoldID, Cat.name BookFoldName
      from urls join categories Cat on urls.parent = Cat.id
                left outer join categories Xat on Cat.parent = Xat.id;
;-- -. . -..- - / . -. - .-. -.--
select Xat.id FoldParId, Xat.name FoldParName,
       urls.id, urls.name, url,
       
       Cat.id BookFoldID, Cat.name BookFoldName
      from urls join categories Cat on urls.parent = Cat.id
                left outer join categories Xat on Cat.parent = Xat.id;
;-- -. . -..- - / . -. - .-. -.--
select cat.parent,
       Xat.id FoldParId, Xat.name FoldParName,
       urls.id, urls.name, url,

       Cat.id BookFoldID, Cat.name BookFoldName
      from urls join categories Cat on urls.parent = Cat.id
                left outer join categories Xat on Cat.parent = Xat.id;
;-- -. . -..- - / . -. - .-. -.--
select
       substr(name,instr(url,host)+length(host)+1,length(url)) a,
       host,
       name,
       url
from (select
 SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) host
 ,name, url from urls where name = url)
where host <> ''
order by a desc, host;
;-- -. . -..- - / . -. - .-. -.--
select max(name),url,count(*) count from urls group by url order by count desc ,url
--update urls set name = url


name = substr(name,instr(url,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1)),length(url)) 
from urls
where name in ('Google Translate'
'Amateur video',
'Last Chart! - See the Music',
'Last.fm’s Playground',
'Redirect Notice'
   ) OR 
substr(url,instr(url,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1)),length(url)) = name;
;-- -. . -..- - / . -. - .-. -.--
select max(name),url,count(*) count from urls group by url order by count desc ,url,
--update urls set name = url


substr(name,instr(url,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1)),length(url)) namex
from urls
where name in ('Google Translate'
'Amateur video',
'Last Chart! - See the Music',
'Last.fm’s Playground',
'Redirect Notice'
   ) OR
substr(url,instr(url,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1)),length(url)) = namex;
;-- -. . -..- - / . -. - .-. -.--
select max(name),url,count(*) count from urls group by url order by count desc ,url,
substr(name,instr(url,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1)),length(url)) namex
from urls
where name in ('Google Translate'
'Amateur video',
'Last Chart! - See the Music',
'Last.fm’s Playground',
'Redirect Notice'
   ) OR
substr(url,instr(url,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1)),length(url)) = namex;
;-- -. . -..- - / . -. - .-. -.--
select max(name),url,count(*) count,
substr(name,instr(url,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1)),length(url)) namex
from urls 
where name in ('Google Translate',
'Amateur video',
'Last Chart! - See the Music',
'Last.fm’s Playground',
'Redirect Notice'
   ) OR
substr(url,instr(url,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1)),length(url)) = namex
group by url order by count desc ,url;
;-- -. . -..- - / . -. - .-. -.--
select max(name),
       url,
       count(*)                                                                                         count,
       substr(name, instr(url, SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1,
                                      INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)), length(url)) namex
from urls where
   substr(url, instr(url, SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1,INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)), length(url)) = namex
    or
name in ('Google Translate',
               'Amateur video',
               'Last Chart! - See the Music',
               'Last.fm’s Playground',
               'Redirect Notice'
    )
group by url
order by count desc, url;
;-- -. . -..- - / . -. - .-. -.--
select cat.parent,
       Xat.id FoldParId, Xat.name FoldParName,
       urls.id, urls.name, url,

       Cat.id BookFoldID, Cat.name BookFoldName
      from urls join categories Cat on urls.parent = Cat.id
                left outer join categories Xat on Cat.parent = Xat.id
where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> '';
;-- -. . -..- - / . -. - .-. -.--
select Xat.id FoldParId, Xat.name FoldParName,
       urls.id, urls.name, url,
       Cat.id BookFoldID, Cat.name BookFoldName
      from urls join categories Cat on urls.parent = Cat.id
                left outer join categories Xat on Cat.parent = Xat.id



where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> '';
;-- -. . -..- - / . -. - .-. -.--
select Xat.id FoldParId, Xat.name FoldParName,
       Cat.id BookFoldID, Cat.name BookFoldName,
       urls.id, urls.name, url
       
      
        from urls join categories Cat on urls.parent = Cat.id
                left outer join categories Xat on Cat.parent = Xat.id
where instr(url, ' ') = 0 AND instr(url, '.') <> 0 AND instr(url, '/') <> 1 and url <> '';
;-- -. . -..- - / . -. - .-. -.--
select 
       (case when name = url then null else name end ) name,
       replace(url,'http:','https:') url
       
from urls group by url;
;-- -. . -..- - / . -. - .-. -.--
select
       (case when name = url then null else name end ) name,
       replace(url,'http:','https:') url

from urls group by replace(url,'http:','https:');
;-- -. . -..- - / . -. - .-. -.--
select
       max(case when name = url then null else name end ) name,
       replace(url,'http:','https:') url

from urls group by replace(url,'http:','https:');
;-- -. . -..- - / . -. - .-. -.--
select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(url,'http:','https:');
;-- -. . -..- - / . -. - .-. -.--
select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url;
;-- -. . -..- - / . -. - .-. -.--
select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:');
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:'))

select 
       name,
       max(url)
       
from urls group by name;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url)
       
from urls group by name),

faulty as (select * from urls where instr(url, ' ') <> 0) 

select * from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url)

from urls group by name),

faulty as (select * from urls where instr(url, ' ') <> 0)

select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url)

from urls group by name),

faulty as (select * from urls where instr(url, ' ') <> 0 OR instr(url, '/') = 1 OR (instr(url,'.') <> 0 AND  instr(url,'/') = 0))

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

select * from faulty;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url)

from urls group by name),

faulty as (select * from urls where instr(url, ' ') <> 0 OR instr(url, '/') = 1 OR (instr(url,'.') <> 0 AND  instr(url,'/') = 0))

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

select * from groupedNames;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url)

from urls group by name),

faulty as (select * from groupedNames where instr(url, ' ') <> 0 OR instr(url, '/') = 1 OR (instr(url,'.') <> 0 AND  instr(url,'/') = 0))

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

select * from faulty;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where instr(url, ' ') <> 0 OR instr(url, '/') = 1 OR (instr(url,'.') <> 0 AND  instr(url,'/') = 0))

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

select * from faulty;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where instr(url, ' ') <> 0 OR instr(url, '/') = 1 OR (instr(url,'.') <> 0 AND  instr(url,'/') = 0))

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

select * from urls where not(name in(select name from faulty) AND url in( select url from faulty));
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where instr(url, ' ') <> 0 OR instr(url, '/') = 1 OR (instr(url,'.') <> 0 AND  instr(url,'/') = 0))

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) and instr(url,' ')<> 0;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where instr(url, ' ') <> 0 OR instr(url, '/') = 1 OR (instr(url,'.') <> 0 AND  instr(url,'/') = 0))

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) OR instr(url,' ')<> 0;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where instr(url, ' ') <> 0 OR instr(url, '/') = 1 OR (instr(url,'.') <> 0 AND  instr(url,'/') = 0))

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')<> 0;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where instr(url, ' ') <> 0 OR instr(url, '/') = 1 OR (instr(url,'.') <> 0 AND  instr(url,'/') = 0))

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')= 0;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where instr(url, ' ') <> 0 OR instr(url, '/') = 1 OR (instr(url,'.') <> 0 AND  instr(url,'/') = 0)),

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

filtered as (select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')= 0)

select name,
       max(url) url 
from filtered group by name,url;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where
                                            instr(url, ' ') <> 0
                                         OR instr(url, '/') = 1
                                         
                                        ),

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

filtered as (select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')= 0)

select name,
       max(url) url
from filtered group by name,url;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url
        
from urls where instr(url, '/') <> 1 group by name),

faulty as (select * from groupedNames where url = '' OR 
                                            instr(url, ' ') <> 0
                                         OR instr(url, '/') = 1
                                         
                                        ),

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

filtered as (select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')= 0)

select name,
       max(url) url
from filtered group by name,url;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where url = '' OR
                                            instr(url, ' ') <> 0
                                         OR instr(url, '/') = 1

                                        ),

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

filtered as (select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')= 0 AND instr(url, '/')<> 1 )

select name,
       max(url) url
from filtered group by name,url;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where url = '' OR
                                            instr(url, ' ') <> 0
                                         OR instr(url, '/') = 1

                                        ),

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

filtered as (select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')= 0 AND instr(url, '/')<> 1 )

select max(name),
       url
from filtered group by url;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where url = '' OR
                                            instr(url, ' ') <> 0
                                         OR instr(url, '/') = 1 OR instr(url,'.') <> 0

                                        ),

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

filtered as (select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')= 0 AND instr(url, '/')<> 1 )

select max(name),
       url
from filtered group by url;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where url = '' OR
                                            instr(url, ' ') <> 0
                                         OR instr(url, '/') = 1 OR instr(url,'.') <> 0

                                        ),

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

filtered as (select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')= 0 AND instr(url, '/')<> 1 AND instr(url,'.') <> 0 )

select max(name),
       url
from filtered group by url;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where url = '' OR
                                            instr(url, ' ') <> 0
                                         OR instr(url, '/') = 1 OR instr(url,'.') <> 0

                                        ),

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

filtered as (select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')= 0 AND instr(url, '/')<> 1 AND instr(url,'.') <> 0 )

select max(name) name,
       url
from filtered group by url;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where url = '' OR
                                            instr(url, ' ') <> 0
                                         OR instr(url, '/') = 1 OR instr(url,'.') <> 0

                                        ),

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

filtered as (select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')= 0 AND instr(url, '/')<> 1 AND instr(url,'.') <> 0 )

select instr(url, SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1,INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)) folder, 
       max(name) name,
       url
from filtered group by url;
;-- -. . -..- - / . -. - .-. -.--
with oneWay as (select
       max(case when name = url then null else name end ) name,
       replace(
           case when url = ''
           then name else url end
           ,'http:','https:') url

from urls group by replace(
           case when url = ''
           then name else url end
           ,'http:','https:')),

groupedNames as (select
       name,
       max(url) url

from urls group by name),

faulty as (select * from groupedNames where url = '' OR
                                            instr(url, ' ') <> 0
                                         OR instr(url, '/') = 1 OR instr(url,'.') <> 0

                                        ),

--select urls.name,urls.url from faulty join urls on instr(urls.url,rtrim(faulty.url)) where urls.url <> faulty.url group by urls.name, urls.url

filtered as (select * from urls where not(name in(select name from faulty) AND url in( select url from faulty)) AND instr(url,' ')= 0 AND instr(url, '/')<> 1 AND instr(url,'.') <> 0 )

select 
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
            ) folder
       
       
       ,
       max(name) name,
       url
from filtered group by url;
;-- -. . -..- - / . -. - .-. -.--
select * from urls left outer join db1.main.moz_places x on urls.url = x.url;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\ToDatabase\Bookmarks & webhistory\pron\PortableBookmarks.sqlite' as db1;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\ToDatabase\Bookmarks & webhistory\pron\PortableBookmarks.sqlite' as db3;
;-- -. . -..- - / . -. - .-. -.--
select * from urls left outer join
    db3.main.moz_places x on urls.url = x.url;
;-- -. . -..- - / . -. - .-. -.--
select * from urls left outer join
    [db3].[main].[moz_places] x on urls.url = x.url;
;-- -. . -..- - / . -. - .-. -.--
select * from urls left outer join
    [moz_places] x 
        on urls.url = x.url;
;-- -. . -..- - / . -. - .-. -.--
select (case when x.url is null then urls.url else x.url end) url from urls left outer join
    [moz_places] x
        on urls.url = x.url;
;-- -. . -..- - / . -. - .-. -.--
select
       (case when x.url is null then urls.url else x.url end) url,
       (case when x.url is null then 1 then x.visit_count end) visitcount,
        (case
             when (INSTR((case when x.url is null then urls.url else x.url end), 'https://') = 1 OR INSTR((case when x.url is null then urls.url else x.url end), 'http://') = 1) then case
                when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') < 10 AND INSTR((case when x.url is null then urls.url else x.url end), 'ww') <> 0)
                    then SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR((case when x.url is null then urls.url else x.url end), '/') <> 0)
                          then
                          case
                              when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1)
                                  then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, INSTR((case when x.url is null then urls.url else x.url end), '/') - instr((case when x.url is null then urls.url else x.url end), '.')-1)
                              else SUBSTR((case when x.url is null then urls.url else x.url end), 1, INSTR((case when x.url is null then urls.url else x.url end), '/') - 1) end
                      else case
                               when
                                   (INSTR((case when x.url is null then urls.url else x.url end), '.') <> 0)
                                   then
                                   case
                                       when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1) then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, length((case when x.url is null then urls.url else x.url end)))
                                       else (case when x.url is null then urls.url else x.url end) end
                               else ''
                          end end end
            ) domain

from urls left outer join
    [moz_places] x
        on urls.url = x.url;
;-- -. . -..- - / . -. - .-. -.--
select
       (case when x.url is null then urls.url else x.url end) url,
       (case when x.url is null then 1 else x.visit_count end) visitcount,
        (case
             when (INSTR((case when x.url is null then urls.url else x.url end), 'https://') = 1 OR INSTR((case when x.url is null then urls.url else x.url end), 'http://') = 1) then case
                when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') < 10 AND INSTR((case when x.url is null then urls.url else x.url end), 'ww') <> 0)
                    then SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR((case when x.url is null then urls.url else x.url end), '/') <> 0)
                          then
                          case
                              when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1)
                                  then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, INSTR((case when x.url is null then urls.url else x.url end), '/') - instr((case when x.url is null then urls.url else x.url end), '.')-1)
                              else SUBSTR((case when x.url is null then urls.url else x.url end), 1, INSTR((case when x.url is null then urls.url else x.url end), '/') - 1) end
                      else case
                               when
                                   (INSTR((case when x.url is null then urls.url else x.url end), '.') <> 0)
                                   then
                                   case
                                       when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1) then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, length((case when x.url is null then urls.url else x.url end)))
                                       else (case when x.url is null then urls.url else x.url end) end
                               else ''
                          end end end) domain
from urls left outer join
    [moz_places] x
        on urls.url = x.url;
;-- -. . -..- - / . -. - .-. -.--
select
       (case when x.url is null then urls.url else x.url end) url,
       (case when x.url is not null then x.visit_count else 1 end) visitcount,
        (case
             when (INSTR((case when x.url is null then urls.url else x.url end), 'https://') = 1 OR INSTR((case when x.url is null then urls.url else x.url end), 'http://') = 1) then case
                when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') < 10 AND INSTR((case when x.url is null then urls.url else x.url end), 'ww') <> 0)
                    then SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR((case when x.url is null then urls.url else x.url end), '/') <> 0)
                          then
                          case
                              when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1)
                                  then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, INSTR((case when x.url is null then urls.url else x.url end), '/') - instr((case when x.url is null then urls.url else x.url end), '.')-1)
                              else SUBSTR((case when x.url is null then urls.url else x.url end), 1, INSTR((case when x.url is null then urls.url else x.url end), '/') - 1) end
                      else case
                               when
                                   (INSTR((case when x.url is null then urls.url else x.url end), '.') <> 0)
                                   then
                                   case
                                       when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1) then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, length((case when x.url is null then urls.url else x.url end)))
                                       else (case when x.url is null then urls.url else x.url end) end
                               else ''
                          end end end) domain
from urls left outer join
    [moz_places] x
        on urls.url = x.url;
;-- -. . -..- - / . -. - .-. -.--
select
       (case when x.url is null then urls.url else x.url end) url,
       (case when x.url is not null then x.visit_count else 1 end) visitcount,
        (case
             when (INSTR((case when x.url is null then urls.url else x.url end), 'https://') = 1 OR INSTR((case when x.url is null then urls.url else x.url end), 'http://') = 1) then case
                when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') < 10 AND INSTR((case when x.url is null then urls.url else x.url end), 'ww') <> 0)
                    then SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR((case when x.url is null then urls.url else x.url end), '/') <> 0)
                          then
                          case
                              when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1)
                                  then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, INSTR((case when x.url is null then urls.url else x.url end), '/') - instr((case when x.url is null then urls.url else x.url end), '.')-1)
                              else SUBSTR((case when x.url is null then urls.url else x.url end), 1, INSTR((case when x.url is null then urls.url else x.url end), '/') - 1) end
                      else case
                               when
                                   (INSTR((case when x.url is null then urls.url else x.url end), '.') <> 0)
                                   then
                                   case
                                       when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1) then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, length((case when x.url is null then urls.url else x.url end)))
                                       else (case when x.url is null then urls.url else x.url end) end
                               else ''
                          end end end) domain
from urls full outer join
    [moz_places] x
        on urls.url = x.url
order by visitcount desc;
;-- -. . -..- - / . -. - .-. -.--
select
       (case when x.url is null then urls.url else x.url end) url,
       (case when x.url is not null then x.visit_count else 1 end) visitcount,
        (case
             when (INSTR((case when x.url is null then urls.url else x.url end), 'https://') = 1 OR INSTR((case when x.url is null then urls.url else x.url end), 'http://') = 1) then case
                when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') < 10 AND INSTR((case when x.url is null then urls.url else x.url end), 'ww') <> 0)
                    then SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR((case when x.url is null then urls.url else x.url end), '/') <> 0)
                          then
                          case
                              when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1)
                                  then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, INSTR((case when x.url is null then urls.url else x.url end), '/') - instr((case when x.url is null then urls.url else x.url end), '.')-1)
                              else SUBSTR((case when x.url is null then urls.url else x.url end), 1, INSTR((case when x.url is null then urls.url else x.url end), '/') - 1) end
                      else case
                               when
                                   (INSTR((case when x.url is null then urls.url else x.url end), '.') <> 0)
                                   then
                                   case
                                       when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1) then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, length((case when x.url is null then urls.url else x.url end)))
                                       else (case when x.url is null then urls.url else x.url end) end
                               else ''
                          end end end) domain
from urls left outer join
    [moz_places] x
        on urls.url = x.url
order by visitcount desc;
;-- -. . -..- - / . -. - .-. -.--
select max(url) url,count(url)+sum(visit_count) count,domain from
(
select
       (case when x.url is null then urls.url else x.url end) url,
       (case when x.url is not null then x.visit_count else 1 end) visitcount,
        (case
             when (INSTR((case when x.url is null then urls.url else x.url end), 'https://') = 1 OR INSTR((case when x.url is null then urls.url else x.url end), 'http://') = 1) then case
                when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') < 10 AND INSTR((case when x.url is null then urls.url else x.url end), 'ww') <> 0)
                    then SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR((case when x.url is null then urls.url else x.url end), '/') <> 0)
                          then
                          case
                              when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1)
                                  then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, INSTR((case when x.url is null then urls.url else x.url end), '/') - instr((case when x.url is null then urls.url else x.url end), '.')-1)
                              else SUBSTR((case when x.url is null then urls.url else x.url end), 1, INSTR((case when x.url is null then urls.url else x.url end), '/') - 1) end
                      else case
                               when
                                   (INSTR((case when x.url is null then urls.url else x.url end), '.') <> 0)
                                   then
                                   case
                                       when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1) then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, length((case when x.url is null then urls.url else x.url end)))
                                       else (case when x.url is null then urls.url else x.url end) end
                               else ''
                          end end end) domain
from urls left outer join
    [moz_places] x
        on urls.url = x.url
) group by  domain order by count desc;
;-- -. . -..- - / . -. - .-. -.--
select max(url) url,count(url)+sum(visitcount) count,domain from
(
select
       (case when x.url is null then urls.url else x.url end) url,
       (case when x.url is not null then x.visit_count else 1 end) visitcount,
        (case
             when (INSTR((case when x.url is null then urls.url else x.url end), 'https://') = 1 OR INSTR((case when x.url is null then urls.url else x.url end), 'http://') = 1) then case
                when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') < 10 AND INSTR((case when x.url is null then urls.url else x.url end), 'ww') <> 0)
                    then SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR((case when x.url is null then urls.url else x.url end), '/') <> 0)
                          then
                          case
                              when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1)
                                  then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, INSTR((case when x.url is null then urls.url else x.url end), '/') - instr((case when x.url is null then urls.url else x.url end), '.')-1)
                              else SUBSTR((case when x.url is null then urls.url else x.url end), 1, INSTR((case when x.url is null then urls.url else x.url end), '/') - 1) end
                      else case
                               when
                                   (INSTR((case when x.url is null then urls.url else x.url end), '.') <> 0)
                                   then
                                   case
                                       when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1) then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, length((case when x.url is null then urls.url else x.url end)))
                                       else (case when x.url is null then urls.url else x.url end) end
                               else ''
                          end end end) domain
from urls left outer join
    [moz_places] x
        on urls.url = x.url
) group by  domain order by count desc;
;-- -. . -..- - / . -. - .-. -.--
select * from 
(select max(url) url,count(url)+sum(visitcount) count,domain from
(
select
       (case when x.url is null then urls.url else x.url end) url,
       (case when x.url is not null then x.visit_count else 1 end) visitcount,
        (case
             when (INSTR((case when x.url is null then urls.url else x.url end), 'https://') = 1 OR INSTR((case when x.url is null then urls.url else x.url end), 'http://') = 1) then case
                when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') < 10 AND INSTR((case when x.url is null then urls.url else x.url end), 'ww') <> 0)
                    then SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR((case when x.url is null then urls.url else x.url end), '/') <> 0)
                          then
                          case
                              when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1)
                                  then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, INSTR((case when x.url is null then urls.url else x.url end), '/') - instr((case when x.url is null then urls.url else x.url end), '.')-1)
                              else SUBSTR((case when x.url is null then urls.url else x.url end), 1, INSTR((case when x.url is null then urls.url else x.url end), '/') - 1) end
                      else case
                               when
                                   (INSTR((case when x.url is null then urls.url else x.url end), '.') <> 0)
                                   then
                                   case
                                       when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1) then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, length((case when x.url is null then urls.url else x.url end)))
                                       else (case when x.url is null then urls.url else x.url end) end
                               else ''
                          end end end) domain
from urls left outer join
    [moz_places] x
        on urls.url = x.url
) group by  domain ) where 
 not(domain in (
                'github.com',
                'chrome.google.com',
                'chrome-extension:',
                'addons.mozilla.org',
                'mozilla.org',
                'opera.com',
                'raindrop.io',
                'reddit.com',
                '213.174.156.59',
                'chrome.google.com',
                'chrome-extension:',
                'addons.mozilla.org',
                'translate.google.com',
                's.1ts18.top',
                'ss.phncdn.com',
                'dlvr.xcash.com',
                'treatstudios.com',
                'app.raindrop.io',
                'archive.is',
                'chaturbate.com',
                'vividalt.com',
                'forums.opera.com',
                'guce.yahoo.com',
                'p.1ts11.top',
                'pierca.se',
                'repicsx.com',
                'sadsabz.com',
                'sadsatz.com',
                'sadsimz.com',
                'somacon.com',
                'superuser.com',
                'swedensexshop.com',
                'textmechanic.com',
                'tinybytes.me',
                'authorcentral.amazon.com',
                'c.smartclick.net',
                'change-avmsd.eu',
                'chomikuj.pl',
                'clipthe.com',
                'consent.yahoo.com',
                'covers.nmstudio.pl',
                'drive.google.com',
                'dtrk.slimcdn.com',
                'energy4ever.org',
                'facebook.com',
                'fadskis.com',
                'fadslims.com',
                'fapxl.com',
                'filestube.com',
                'fliiby.com',
                'forums.mydigitallife.info',
                'keywordseverywhere.com',
                'last.fm',
                'misswritenow.bandcamp.com',
                'oldapps.com',
                'omglolx.com',
                'open.spotify.com',
                'portableapps.com',
                's.wordpress.org',
                'se.linkedin.com',
                'support.mozilla.org',
                'textadventures.co.uk',
                'uk.answers.yahoo.com',
                '1status.sabs-news.info',
                '24.media.tumblr.com',
                '88.208.61.74',
                'adlibris.com',
                'ads.trafficjunky.net',
                'asddates.info',
                'biglots.com',
                'blog-well.com',
                'blog.ffextensionguru.com',
                'blogs.technet.com',
                'brand24.com',
                'cdtrrracks.com',
                'cn.last.fm',
                'craigslist.org',
                'cuntwars.com',
                'cvqgnkeqme.com',
                'daleswanson.org',
                'dawhois.com',
                'debrid-link.com',
                'developer.chrome.com',
                'developer.yahoo.com',
                'dotink.org',
                'etherwave.tumblr.com',
                'extrakoll.com',
                'facepunch.com',
                'filerepair1.com',
                'forgottenwars.com',
                'forums.mozillazine.org',
                'get.safelybrowsing.com'
     )
                     )

order by count desc;
;-- -. . -..- - / . -. - .-. -.--
select * from
(select max(url) url,count(url)+sum(visitcount) count,domain from
(
select
       (case when x.url is null then urls.url else x.url end) url,
       (case when x.url is not null then x.visit_count else 1 end) visitcount,
        (case
             when (INSTR((case when x.url is null then urls.url else x.url end), 'https://') = 1 OR INSTR((case when x.url is null then urls.url else x.url end), 'http://') = 1) then case
                when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') < 10 AND INSTR((case when x.url is null then urls.url else x.url end), 'ww') <> 0)
                    then SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR((case when x.url is null then urls.url else x.url end), '/') <> 0)
                          then
                          case
                              when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1)
                                  then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, INSTR((case when x.url is null then urls.url else x.url end), '/') - instr((case when x.url is null then urls.url else x.url end), '.')-1)
                              else SUBSTR((case when x.url is null then urls.url else x.url end), 1, INSTR((case when x.url is null then urls.url else x.url end), '/') - 1) end
                      else case
                               when
                                   (INSTR((case when x.url is null then urls.url else x.url end), '.') <> 0)
                                   then
                                   case
                                       when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1) then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, length((case when x.url is null then urls.url else x.url end)))
                                       else (case when x.url is null then urls.url else x.url end) end
                               else ''
                          end end end) domain
from urls left outer join
    [moz_places] x
        on urls.url = x.url
) group by  domain ) where
 not(domain in (select domain from MostApropirateDomain union select domain from NotApropirateDomain))

order by count desc;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\OneDrive\Portable\GoogleChromePortable\Data\profile\Default\History' as db4;
;-- -. . -..- - / . -. - .-. -.--
select * from
(select max(url) url,count(url)+sum(visitcount) count,domain from
(
select
       (case when x.url is null then urls.url else x.url end) url,
       (case when x.url is not null then x.visit_count else 1 end) visitcount,
        (case
             when (INSTR((case when x.url is null then urls.url else x.url end), 'https://') = 1 OR INSTR((case when x.url is null then urls.url else x.url end), 'http://') = 1) then case
                when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') < 10 AND INSTR((case when x.url is null then urls.url else x.url end), 'ww') <> 0)
                    then SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), 1, INSTR(SUBSTR((case when x.url is null then urls.url else x.url end), INSTR((case when x.url is null then urls.url else x.url end), '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR((case when x.url is null then urls.url else x.url end), '/') <> 0)
                          then
                          case
                              when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1)
                                  then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, INSTR((case when x.url is null then urls.url else x.url end), '/') - instr((case when x.url is null then urls.url else x.url end), '.')-1)
                              else SUBSTR((case when x.url is null then urls.url else x.url end), 1, INSTR((case when x.url is null then urls.url else x.url end), '/') - 1) end
                      else case
                               when
                                   (INSTR((case when x.url is null then urls.url else x.url end), '.') <> 0)
                                   then
                                   case
                                       when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') = 1) then substr((case when x.url is null then urls.url else x.url end), instr((case when x.url is null then urls.url else x.url end), '.')+1, length((case when x.url is null then urls.url else x.url end)))
                                       else (case when x.url is null then urls.url else x.url end) end
                               else ''
                          end end end) domain
from urls left outer join
    [moz_places] x
        on urls.url = x.url
) group by  domain ) where
 not(domain in (select domain from db4.MostApropirateDomain union select domain from db4.NotApropirateDomain))

order by count desc;