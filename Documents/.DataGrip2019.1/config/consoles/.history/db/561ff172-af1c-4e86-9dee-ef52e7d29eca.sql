select id,
       path,
       checksum,
       rating
from images order by rating desc,checksum,path;
;-- -. . -..- - / . -. - .-. -.--
with stash
as (select id,
       checksum,
       path,
       rating
from images order by rating desc,checksum,path)
digi as (select * from digi.images);
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\FastAccessDb\Digicam\digikam4.db' as digi;
;-- -. . -..- - / . -. - .-. -.--
with stash
as (select id,
       checksum,
       path,
       rating
from images order by rating desc,checksum,path),
digi as (select * from digi.images)
select * from digi;
;-- -. . -..- - / . -. - .-. -.--
with stash
as (select id,
       checksum,
       path,
       rating
from images order by rating desc,checksum,path),
digi as (select name,uniqueHash from digi.images)
select * from digi;
;-- -. . -..- - / . -. - .-. -.--
with stash
as (select id,
       checksum,
       path,
       rating
from images order by rating desc,checksum,path),
digi as (select name,uniqueHash from digi.images)
select * from digi inner join stash on path like '%'||name;
;-- -. . -..- - / . -. - .-. -.--
with stash
as (select id,
       checksum,
       path,
       rating
from images ),
digi as (select name,uniqueHash from digi.images)
select checksum,uniqueHash
       path,
       rating from digi inner join stash on path like '%'||name;
;-- -. . -..- - / . -. - .-. -.--
with stash
as (select id,
       checksum,
       path,
       rating
from images ),
digi as (select name,uniqueHash from digi.images)
select checksum,uniqueHash,
       path,
       rating from digi inner join stash on path like '%'||name;
;-- -. . -..- - / . -. - .-. -.--
with stash
as (select id,
       checksum,
       path,
       rating
from images ),
digi as (select name,uniqueHash from digi.images)
select checksum,uniqueHash,uniqueHash=checksum t,
       path,
       rating from digi inner join stash on path like '%'||name order by t;
;-- -. . -..- - / . -. - .-. -.--
select * from preformers;
;-- -. . -..- - / . -. - .-. -.--
with scenesLessColumns as (select path,title,details,url,date,rating,studio_id,o_counter,id from scenes),
     preformersScenes as (select performer_id id, scene_id from main.performers_scenes x),
     preformersAndSceneId as (select scene_id id, id performer_id, checksum, name from preformersScenes inner join main.performers p using (id)),
     scenesAndPreformers as (select distinct * from scenesLessColumns left outer join preformersAndSceneId using (id)),
     scenPrefTags as (select path,title,details,url,date,rating,studio_id,o_counter,x.id,performer_id,checksum,
                             x.name,group_concat(t.name) scene_tagName from scenesAndPreformers x
                                                                                left outer join  main.scenes_tags y on x.id = y.scene_id
                                                                                left outer join tags t on y.tag_id = t.id
                      group by path, title, details, url, date, rating, studio_id, o_counter, x.id, performer_id, checksum, x.name
     ),

     FinishedFilter as (select * from scenPrefTags
                        where (instr(reverse(lower(path)), reverse(lower(title))) not between 5 and 6)
                           OR (coalesce(nullif(details, ''), nullif(url, ''), rating, studio_id, performer_id,scene_tagName) is not null)
                           OR o_counter != 0)

select path scene_path, title scene_title, details scene_title, url, rating, o_counter, name preformer_name, scene_tagName
from FinishedFilter;
;-- -. . -..- - / . -. - .-. -.--
with scenesLessColumns as (select path,title,details,url,date,rating,studio_id,o_counter,id from scenes),
     preformersScenes as (select performer_id id, scene_id from main.performers_scenes x),
     preformersAndSceneId as (select scene_id id, id performer_id, checksum, name from preformersScenes inner join main.performers p using (id)),
     scenesAndPreformers as (select distinct path,title,details,url,date,rating,studio_id,o_counter,id,
                                             group_concat(name) preformersName
                             from scenesLessColumns left outer join preformersAndSceneId using (id) group by path,
                                                                                                             title, details, url, date, rating, studio_id, o_counter, id),
     scenPrefTags as (select path,title,details,url,date,rating,studio_id,o_counter,x.id,
                             x.preformersName,group_concat(t.name) scene_tagName from scenesAndPreformers x
                                                                                          left outer join  main.scenes_tags y on x.id = y.scene_id
                                                                                          left outer join tags t on y.tag_id = t.id
                      group by path, title, details, url, date, rating, studio_id, o_counter, x.id, x.preformersName
     ),
     FinishedFilter as (select path ,title ,details,url, rating, o_counter, preformersName,scene_tagName from scenPrefTags
                        where (instr(reverse(lower(path)), reverse(lower(title))) not between 5 and 6)
                           OR (coalesce(nullif(details, ''), nullif(url, ''), rating, studio_id, preformersName,scene_tagName) is not null)
                           OR o_counter != 0)

select *from FinishedFilter;
;-- -. . -..- - / . -. - .-. -.--
attach '\\192.168.0.30\disk4\X\Stash\stash-go.sqlite' as xold;
;-- -. . -..- - / . -. - .-. -.--
attach '\\192.168.0.30\disk4\X\Stash\stash-go.sqlite.main' as Xold;
;-- -. . -..- - / . -. - .-. -.--
with scenesLessColumns as (select path,title,details,url,date,rating,studio_id,o_counter,id from scenes),
     preformersScenes as (select performer_id id, scene_id from main.performers_scenes x),
     preformersAndSceneId as (select scene_id id, id performer_id, checksum, name from preformersScenes inner join main.performers p using (id)),
     scenesAndPreformers as (select distinct path,title,details,url,date,rating,studio_id,o_counter,id,group_concat(name) preformersName
                             from scenesLessColumns left outer join preformersAndSceneId using (id)
                             group by path, title, details, url, date, rating, studio_id, o_counter, id),
     scenPrefTags as (select path,title,details,url,date,rating,studio_id,o_counter,x.id,
                             x.preformersName,group_concat(t.name) scene_tagName from scenesAndPreformers x
                                                                                          left outer join  main.scenes_tags y on x.id = y.scene_id
                                                                                          left outer join tags t on y.tag_id = t.id
                      group by path, title, details, url, date, rating, studio_id, o_counter, x.id, x.preformersName
     ),
     FinishedFilter as (select path ,title ,details,url, rating, o_counter, preformersName,scene_tagName from scenPrefTags
                        where (instr(reverse(lower(path)), reverse(lower(title))) not between 5 and 6)
                           OR (coalesce(nullif(details, ''), nullif(url, ''), rating, studio_id, preformersName,scene_tagName) is not null)
                           OR o_counter != 0)

select *from FinishedFilter

inner join Xold.OrganizedContentByPath using (path);