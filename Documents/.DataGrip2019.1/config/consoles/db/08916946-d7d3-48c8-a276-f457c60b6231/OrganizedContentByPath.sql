create view OrganizedContentByPath as
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





