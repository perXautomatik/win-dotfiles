select * from moz_bookmarks where parent = 45866;
;-- -. . -..- - / . -. - .-. -.--
select * from moz_bookmarks join moz_places on moz_places.id = moz_bookmarks.id where parent = 45866;
;-- -. . -..- - / . -. - .-. -.--
select * from ( select * from moz_bookmarks where parent = 45866 ) a join moz_places on moz_places.id = a.id;
;-- -. . -..- - / . -. - .-. -.--
select * from ( select * from moz_bookmarks where parent = 45866 ) a join moz_places on moz_places.title = a.title;
;-- -. . -..- - / . -. - .-. -.--
select 
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
            ) domain,
                  url,
                  a.title
 from ( select * from moz_bookmarks where parent = 45866 ) a join moz_places on moz_places.title = a.title;
;-- -. . -..- - / . -. - .-. -.--
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
            ) domain,
                  url,
                  a.title
 from ( select * from moz_bookmarks where parent = 45866 ) a join moz_places on moz_places.title = a.title;
;-- -. . -..- - / . -. - .-. -.--
select domain, title
from 
(select
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
            ) domain,
                  url,
                  a.title
 from ( select * from moz_bookmarks where parent = 45866 ) a join moz_places on moz_places.title = a.title) q group by domain, title;
;-- -. . -..- - / . -. - .-. -.--
select domain, title
from
(select
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
            ) domain,url,a.title
 from ( select * from moz_bookmarks where parent = 45866 ) a join moz_places on moz_places.title = a.title) q where domain <> 'chrome-extension:' group by domain, title;
;-- -. . -..- - / . -. - .-. -.--
select domain from
(select domain, title
from
(select
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
            ) domain,url,a.title
 from ( select * from moz_bookmarks where parent = 45866 ) a join moz_places on moz_places.title = a.title) q where domain <> 'chrome-extension:' group by domain, title
    ) group by domain;
;-- -. . -..- - / . -. - .-. -.--
select * from moz_places join moz_bookmarks on moz_places.id = moz_bookmarks.fk;
;-- -. . -..- - / . -. - .-. -.--
select moz_places.url,moz_bookmarks.* from moz_places join moz_bookmarks on moz_places.id = moz_bookmarks.fk;
;-- -. . -..- - / . -. - .-. -.--
select count(url),moz_places.title,parent from moz_bookmarks join moz_places on moz_places.id = moz_bookmarks.fk where type = 1 group by parent, title;
;-- -. . -..- - / . -. - .-. -.--
select count(url),moz_places.title,parent from moz_bookmarks join moz_places on moz_places.id = moz_bookmarks.fk where type = 1 group by parent, moz_places.title;
;-- -. . -..- - / . -. - .-. -.--
select max(titCard), title, parent from (select count(url) titCard ,moz_places.title,parent from moz_bookmarks join moz_places on moz_places.id = moz_bookmarks.fk where type = 1 group by parent, moz_places.title) where titCard > 1 group by title, parent;
;-- -. . -..- - / . -. - .-. -.--
select * from (select count(url) titCard ,moz_places.title,parent from moz_bookmarks join moz_places on moz_places.id = moz_bookmarks.fk where type = 1 group by parent, moz_places.title) where titCard > 1;
;-- -. . -..- - / . -. - .-. -.--
select *, row_number() over (partition  by parent order by titCard desc) from (select
          count(url) titCard ,
          moz_places.title,
          parent from moz_bookmarks
              join moz_places
                  on moz_places.id = moz_bookmarks.fk
                    where type = 1 group by parent, moz_places.title)
where titCard > 1;
;-- -. . -..- - / . -. - .-. -.--
select *, row_number() over (partition  by parent order by titCard desc) ors from (select
          count(url) titCard ,
          moz_places.title,
          parent from moz_bookmarks
              join moz_places
                  on moz_places.id = moz_bookmarks.fk
                    where type = 1 group by parent, moz_places.title)
where titCard > 1 order by parent,ors;
;-- -. . -..- - / . -. - .-. -.--
select *, row_number() over (partition  by parent order by titCard desc) ors from (select
          count(url) titCard ,
          moz_places.title,
          parent from moz_bookmarks
              join moz_places
                  on moz_places.id = moz_bookmarks.fk
                    where type = 1 group by parent, moz_places.title)
where titCard > 1 AND ors = 1;
;-- -. . -..- - / . -. - .-. -.--
select * from (select *, row_number() over (partition  by parent order by titCard desc) ors from (select
          count(url) titCard ,
          moz_places.title,
          parent from moz_bookmarks
              join moz_places
                  on moz_places.id = moz_bookmarks.fk
                    where type = 1 group by parent, moz_places.title)
where titCard > 1) where ors = 1;
;-- -. . -..- - / . -. - .-. -.--
select parent,title from (select *, row_number() over (partition  by parent order by titCard desc) ors from (select
          count(url) titCard ,
          moz_places.title,
          parent from moz_bookmarks
              join moz_places
                  on moz_places.id = moz_bookmarks.fk
                    where type = 1 group by parent, moz_places.title)
where titCard > 1) where ors = 1;
;-- -. . -..- - / . -. - .-. -.--
update moz_bookmarks
            set title = (select title from (select *, row_number() over (partition  by parent order by titCard desc) ors from (select count(url) titCard ,moz_places.title, parent from moz_bookmarks x join moz_places on moz_places.id = x.fk where type = 1 group by parent, moz_places.title) where titCard > 1) where ors = 1 and parent = moz_bookmarks.id)
 where moz_bookmarks.id in
            (select parent from (select parent, row_number() over (partition  by parent order by titCard desc) ors from (select count(url) titCard ,moz_places.title, parent from moz_bookmarks join moz_places on moz_places.id = moz_bookmarks.fk where type = 1 group by parent, moz_places.title) where titCard > 1) where ors = 1);
;-- -. . -..- - / . -. - .-. -.--
Select * from moz_bookmarks where moz_bookmarks.fk = 374;
;-- -. . -..- - / . -. - .-. -.--
select * from moz_bookmarks where id in((Select parent from moz_bookmarks where moz_bookmarks.fk = 374));
;-- -. . -..- - / . -. - .-. -.--
Select parent from moz_bookmarks where moz_bookmarks.fk = 374;
;-- -. . -..- - / . -. - .-. -.--
Select *from moz_bookmarks where moz_bookmarks.fk = 374;
;-- -. . -..- - / . -. - .-. -.--
select * from moz_bookmarks where parent in( select parent from moz_bookmarks where moz_bookmarks.fk = 374);
;-- -. . -..- - / . -. - .-. -.--
select * from moz_place where id in(select fk from moz_bookmarks where parent in( select parent from moz_bookmarks where moz_bookmarks.fk = 374));
;-- -. . -..- - / . -. - .-. -.--
select * from moz_places where id in(select fk from moz_bookmarks where parent in( select parent from moz_bookmarks where moz_bookmarks.fk = 374));
;-- -. . -..- - / . -. - .-. -.--
delete from moz_bookmarks where fk in(
select fk from moz_bookmarks where parent in( select parent from moz_bookmarks where moz_bookmarks.fk = 374));
;-- -. . -..- - / . -. - .-. -.--
select fk from moz_bookmarks where parent in( select parent from moz_bookmarks where moz_bookmarks.fk = 374);
;-- -. . -..- - / . -. - .-. -.--
select id,
       type,
       fk,
       parent,
       position,
       title,
       keyword_id,
       folder_type,
       dateAdded,
       lastModified
from moz_bookmarks where fk is null;
;-- -. . -..- - / . -. - .-. -.--
select min(id),
       title
from moz_bookmarks where fk is null group by title;
;-- -. . -..- - / . -. - .-. -.--
select * from (select min(id), title 
from moz_bookmarks where type = 2 group by title);