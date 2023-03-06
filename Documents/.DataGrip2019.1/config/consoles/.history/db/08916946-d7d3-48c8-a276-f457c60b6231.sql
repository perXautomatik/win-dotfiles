select id, trim(name) name, created_at, updated_at
from tags;
;-- -. . -..- - / . -. - .-. -.--
select s.title, trim(t.name) t_name
 from scenes_tags inner join scenes s on s.id = scenes_tags.scene_id inner join tags t on t.id = scenes_tags.tag_id




order by s.title, t_name;
;-- -. . -..- - / . -. - .-. -.--
select s.title from
      scenes s
         left outer join
    (select trim(t.name) t_name, scene_id from tags t inner join scenes_tags on t.id = scenes_tags.tag_id) scenes_tags
     on s.id = scenes_tags.scene_id



order by s.title, t_name;
;-- -. . -..- - / . -. - .-. -.--
select s.title,t_name from
      scenes s
         left outer join
    (select trim(t.name) t_name, scene_id from tags t inner join scenes_tags on t.id = scenes_tags.tag_id) scenes_tags
     on s.id = scenes_tags.scene_id



order by s.title, t_name;
;-- -. . -..- - / . -. - .-. -.--
with
scenes_with_titles as (
select s.title,t_name from
      scenes s
         left outer join
    (select trim(t.name) t_name, scene_id from tags t inner join scenes_tags on t.id = scenes_tags.tag_id) scenes_tags
     on s.id = scenes_tags.scene_id
order by s.title, t_name)

select count() c, t_name  from scenes_with_titles group by t_name order by c desc;
;-- -. . -..- - / . -. - .-. -.--
with
scenes_with_titles as (
select s.title,t_name from
      scenes s
         left outer join
    (select trim(t.name) t_name, scene_id from tags t inner join scenes_tags on t.id = scenes_tags.tag_id) scenes_tags
     on s.id = scenes_tags.scene_id
order by s.title, t_name)

select count() c, t_name  from scenes_with_titles where t_name is not null group by t_name order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select * from images where width+images.height < 400;
;-- -. . -..- - / . -. - .-. -.--
select replace(path) from images where width+images.height < 400 and not(path like "/Media/Images/VueScan/Unsorted/%");
;-- -. . -..- - / . -. - .-. -.--
select path from images where width+images.height < 400 and not(path like "/Media/Images/VueScan/Unsorted/%");
;-- -. . -..- - / . -. - .-. -.--
select distinct path from images where width+images.height < 400 and not(path like "/Media/Images/VueScan/Unsorted/%");
;-- -. . -..- - / . -. - .-. -.--
select distinct replace(path,'/media/','//192.168.0.30/disk4/X/Images/') from images where width+images.height < 400 and not(path like "/Media/Images/VueScan/Unsorted/%");
;-- -. . -..- - / . -. - .-. -.--
select distinct replace(path,'\/media\/','\/\/192.168.0.30\/disk4\/X\/Images\/') from images where width+images.height < 400 and not(path like "/Media/Images/VueScan/Unsorted/%");
;-- -. . -..- - / . -. - .-. -.--
select distinct replace(path,'\/Media\/','\/\/192.168.0.30\/disk4\/X\/Images\/') from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%');
;-- -. . -..- - / . -. - .-. -.--
select distinct replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%');
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot(select instr(path,'.') dpt from replaced)
    select * from findDot;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt from replaced)
    select * from findDot;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt from replaced)

,findslash as (select instr(path,'/') dpt from replaced)
select * from findslash;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select
                      instr(path,'/')
                          dpt from replaced)
select * from dotSubstring;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select
                      instr(path,'/')
                          dpt, path from replaced)
   ,fj as( select substr(path,0,dpt) zer, substr(path,dpt) path  from findslash)



select * from fj;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select
                      instr(path,'/')
                          dpt, path from replaced)
   ,fj as( select substr(path,0,dpt) zer, substr(path,dpt) path  from findslash)
   ,findslash2 as (select
                      instr(path,'/')
                          dpt, path from fj)
   ,fj2 as( select substr(path,0,dpt) zer, substr(path,dpt) path  from findslash2)



select * from fj2;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select
                      instr(path,'/')
                          dpt, path from replaced)
   ,fj as( select substr(path,0,dpt) zer, substr(path,dpt) path  from findslash)
   ,findslash2 as (select
                      instr(path,'/')
                          dpt, path from fj)
   ,fj2 as( select substr(path,0,dpt) zer, substr(path,dpt) path  from findslash2)



select * from fj;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select
                      instr(path,'/')
                          dpt, path from replaced)
   ,fj as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash)
   ,findslash2 as (select
                      instr(path,'/')
                          dpt, path from fj)
   ,fj2 as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)



select * from fj;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select
                      instr(path,'/')
                          dpt, path from replaced)
   ,fj as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash)
   ,findslash2 as (select
                      instr(path,'/')
                          dpt, path from fj)
   ,fj2 as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)



select * from fj2;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select
                      instr(path,'/')+1
                          dpt, path from replaced)
   ,fj as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash)
   ,findslash2 as (select
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)



select * from fj2;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select
                      instr(path,'/')+1
                          dpt, path from replaced)
   ,fj as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash)
   ,findslash2 as (select
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)



select * from fj3;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select
                      instr(path,'/')+1
                          dpt, path from replaced)
   ,fj as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash)
   ,findslash2 as (select
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)
   ,findslash4 as (select
                           instr(path,'/')+1
                           dpt, path from fj3)
   ,fj4 as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash4)



select * from fj4;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select
                      instr(path,'/')+1
                          dpt, path from replaced)
   ,fj as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash)
   ,findslash2 as (select
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)
   ,findslash4 as (select
                           instr(path,'/')+1
                           dpt, path from fj3)
   ,fj4 as( select substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash4)



select *,instr(path,'/') i from fj4;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select path src,
                      instr(path,'/')+1
                          dpt, path from replaced)
   ,fj as( select src,
                  substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash)
   ,findslash2 as (select src,
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select  src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)
   ,findslash4 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj3)
   ,fj4 as( select src, substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash4)



select *,instr(path,'/') i from fj4  where i = 0;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select path src,
                      instr(path,'/')+1
                          dpt, path from replaced)
   ,fj as( select src,
                  substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash)
   ,findslash2 as (select src,
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select  src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)
   ,findslash4 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj3)
   ,fj4 as( select src, substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash4)



select distinct replace(src,path,'') from fj4 where instr(path,'/') = 0;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

,findDot as (select instr(path,'.') dpt,path from replaced)
,dotSubstring as( select substr(path,0,dpt) zer, substr(path,dpt) af  from findDot)
,findslash as (select path src,
                      instr(path,'/')+1
                          dpt, path from replaced)
   ,fj as( select src,
                  substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash)
   ,findslash2 as (select src,
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select  src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)
   ,findslash4 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj3)
   ,fj4 as( select src, substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash4)



select distinct replace(src,path,'')
from
     (
         select * from fj4 union
         select * from fj3 union
         select * from fj2 union
         select * from fj
         ) 
where instr(path,'/') = 0;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

, dotSubstring as (select substr(path,0, (instr(path,'.'))) zer, substr(path, (instr(path,'.'))) af from replaced)

   , fj as (select path src,
                   substr(path,0,(instr(path,'/'))+1) zer
                   ,substr(path,(instr(path,'/'))+1, length(path)) path
        from replaced)
   ,findslash2 as (select src,
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select  src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)
   ,findslash4 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj3)
   ,fj4 as( select src, substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash4)


,withoutRec as ( select distinct replace(src, path, '')
from (
         select *
         from fj4
         union
         select *
         from fj3
         union
         select *
         from fj2
         union
         select *
         from fj
     )
where instr(path, '/') = 0)

,withRec (src,path) as (
    select path src,path from replaced
    union
                select src ,substr(path,(instr(path,'/'))+1, length(path))
        from withRec
    where instr(path, '/') = 0 and src != path
)

select * from withRec;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

, dotSubstring as (select substr(path,0, (instr(path,'.'))) zer, substr(path, (instr(path,'.'))) af from replaced)

   , fj as (select path src,
                   substr(path,0,(instr(path,'/'))+1) zer
                   ,substr(path,(instr(path,'/'))+1, length(path)) path
        from replaced)
   ,findslash2 as (select src,
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select  src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)
   ,findslash4 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj3)
   ,fj4 as( select src, substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash4)


,withoutRec as ( select distinct replace(src, path, '')
from (
         select *
         from fj4
         union
         select *
         from fj3
         union
         select *
         from fj2
         union
         select *
         from fj
     )
where instr(path, '/') = 0)

,withRec (src,path) as (
    select path src,path from replaced
    union
                select src ,substr(path,(instr(path,'/'))+1, length(path))
        from withRec
    where instr(path, '/') = 0 and src != path
)

select replace(src, path, '') from withRec;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

, dotSubstring as (select substr(path,0, (instr(path,'.'))) zer, substr(path, (instr(path,'.'))) af from replaced)

   , fj as (select path src,
                   substr(path,0,(instr(path,'/'))+1) zer
                   ,substr(path,(instr(path,'/'))+1, length(path)) path
        from replaced)
   ,findslash2 as (select src,
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select  src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)
   ,findslash4 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj3)
   ,fj4 as( select src, substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash4)


,withoutRec as ( select distinct replace(src, path, '')
from (
         select *
         from fj4
         union
         select *
         from fj3
         union
         select *
         from fj2
         union
         select *
         from fj
     )
where instr(path, '/') = 0)

,withRec (src,path) as (
    select path src,path from replaced
    union
                select src ,substr(path,(instr(path,'/'))+1, length(path))
        from withRec
    where instr(path, '/') = 0 and src != path
)

select distinct replace(src, path, '') from withRec;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

, dotSubstring as (select substr(path,0, (instr(path,'.'))) zer, substr(path, (instr(path,'.'))) af from replaced)

   , fj as (select path src,
                   substr(path,0,(instr(path,'/'))+1) zer
                   ,substr(path,(instr(path,'/'))+1, length(path)) path
        from replaced)
   ,findslash2 as (select src,
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select  src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)
   ,findslash4 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj3)
   ,fj4 as( select src, substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash4)


,withoutRec as ( select distinct replace(src, path, '')
from (
         select *
         from fj4
         union
         select *
         from fj3
         union
         select *
         from fj2
         union
         select *
         from fj
     )
where instr(path, '/') = 0)

,withRec (src,path) as (
    select path src,path from replaced
    union
                select src ,substr(path,(instr(path,'/'))+1, length(path))
        from withRec
    where instr(path, '/') != 0
)

select distinct replace(src, path, '') from withRec
where instr(path, '/') = 0 and src != path;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

, dotSubstring as (select substr(path,0, (instr(path,'.'))) zer, substr(path, (instr(path,'.'))) af from replaced)

   , fj as (select path src,
                   substr(path,0,(instr(path,'/'))+1) zer
                   ,substr(path,(instr(path,'/'))+1, length(path)) path
        from replaced)
   ,findslash2 as (select src,
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select  src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)
   ,findslash4 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj3)
   ,fj4 as( select src, substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash4)


,withoutRec as ( select distinct replace(src, path, '')
from (
         select *
         from fj4
         union
         select *
         from fj3
         union
         select *
         from fj2
         union
         select *
         from fj
     )
where instr(path, '/') = 0)

,withRec (src,path) as (
    select path src,path from replaced
    union
                select src ,substr(path,(instr(path,'/'))+1, length(path))
        from withRec
    where instr(path, '/') != 0
)

select  replace(src, path, '') from withRec
where instr(path, '/') = 0 and src != path;
;-- -. . -..- - / . -. - .-. -.--
with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)

, dotSubstring as (select substr(path,0, (instr(path,'.'))) zer, substr(path, (instr(path,'.'))) af from replaced)

   , fj as (select path src,
                   substr(path,0,(instr(path,'/'))+1) zer
                   ,substr(path,(instr(path,'/'))+1, length(path)) path
        from replaced)
   ,findslash2 as (select src,
                      instr(path,'/')+1
                          dpt, path from fj)
   ,fj2 as( select src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash2)
   ,findslash3 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj2)
   ,fj3 as( select  src,substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash3)
   ,findslash4 as (select src,
                           instr(path,'/')+1
                           dpt, path from fj3)
   ,fj4 as( select src, substr(path,0,dpt) zer, substr(path,dpt,length(path)) path  from findslash4)


,withoutRec as ( select distinct replace(src, path, '')
from (
         select *
         from fj4
         union
         select *
         from fj3
         union
         select *
         from fj2
         union
         select *
         from fj
     )
where instr(path, '/') = 0)

,withRec (src,path) as (
    select path src,path from replaced
    union
                select src ,substr(path,(instr(path,'/'))+1, length(path))
        from withRec
    where instr(path, '/') != 0
)

select count() c, replace(src, path, '') p from withRec
where instr(path, '/') = 0 and src != path group by p;
;-- -. . -..- - / . -. - .-. -.--
select * from preformers_scenes x;
;-- -. . -..- - / . -. - .-. -.--
select * from main.performers_scenes x;
;-- -. . -..- - / . -. - .-. -.--
select * from main.performers_scenes x
inner join main.performers p on x.performer_id = p.id;
;-- -. . -..- - / . -. - .-. -.--
select performer_id id, scene_id
from main.performers_scenes x


inner join main.performers p using (id);
;-- -. . -..- - / . -. - .-. -.--
select * from (select performer_id id, scene_id
from main.performers_scenes x)


inner join main.performers p using (id);
;-- -. . -..- - / . -. - .-. -.--
select scene_id,
       id,
       checksum,
       name
from (select performer_id id, scene_id
      from main.performers_scenes x)


inner join main.performers p using (id);
;-- -. . -..- - / . -. - .-. -.--
select * from (select scene_id id,
       id performer_id,
       checksum,
       name
from (select performer_id id, scene_id
      from main.performers_scenes x)


inner join main.performers p using (id))
inner join scenes using (id);
;-- -. . -..- - / . -. - .-. -.--
select * from (select scene_id id,
       id performer_id,
       checksum,
       name
from (select performer_id id, scene_id
      from main.performers_scenes x)


inner join main.performers p using (id))
right outer join scenes using (id);
;-- -. . -..- - / . -. - .-. -.--
select * from
    scenes
        left outer join
 
(select scene_id id,
       id performer_id,
       checksum,
       name
from (select performer_id id, scene_id
      from main.performers_scenes x)


inner join main.performers p using (id))
using (id);
;-- -. . -..- - / . -. - .-. -.--
select distinct * from scenes left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id);
;-- -. . -..- - / . -. - .-. -.--
select distinct * from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                        from scenes)left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id);
;-- -. . -..- - / . -. - .-. -.--
select distinct * from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                        from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id);
;-- -. . -..- - / . -. - .-. -.--
select distinct * from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                                ,id
                        from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id);
;-- -. . -..- - / . -. - .-. -.--
select distinct instr(reverse(path),reverse(title)),* from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                                ,id
                        from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id)
where path




main.tags;
;-- -. . -..- - / . -. - .-. -.--
select distinct instr(reverse(path),reverse(title)),* from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                                ,id
                        from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id)
where path;
;-- -. . -..- - / . -. - .-. -.--
select distinct instr(reverse(path),reverse(title)),* from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                                ,id
                        from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id);
;-- -. . -..- - / . -. - .-. -.--
select distinct * from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                                ,id
                        from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id)
where instr(reverse(path),reverse(title)) not between 5 and 6;
;-- -. . -..- - / . -. - .-. -.--
select distinct * from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                                ,id
                        from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id)
where instr(reverse(lower(path)),reverse(lower(title))) not between 5 and 6;
;-- -. . -..- - / . -. - .-. -.--
select distinct * from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                                ,id
                        from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id)
where (instr(reverse(lower(path)),reverse(lower(title))) not between 5 and 6) OR (coalesce(details,url,rating,studio_id)) OR o_counter != 0;
;-- -. . -..- - / . -. - .-. -.--
select distinct * from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                                ,id
                        from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id)
where (instr(reverse(lower(path)),reverse(lower(title))) not between 5 and 6) OR (coalesce(details,url,rating,studio_id,performer_id) is not null) OR o_counter != 0;
;-- -. . -..- - / . -. - .-. -.--
select distinct * from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                                ,id
                        from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id)
where
      (instr(reverse(lower(path)),reverse(lower(title))) not between 5 and 6)
   OR (coalesce(nullif(details,''),url,rating,studio_id,performer_id) is not null)
   OR o_counter != 0;
;-- -. . -..- - / . -. - .-. -.--
select distinct * from (select path,
                                title,
                               details,
                               url,
                               date,
                               rating,
                               studio_id,
                               o_counter
                                ,id
                        from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id)
where
      (instr(reverse(lower(path)),reverse(lower(title))) not between 5 and 6)
   OR (coalesce(nullif(details,''),nullif(url,''),rating,studio_id,performer_id) is not null)
   OR o_counter != 0;
;-- -. . -..- - / . -. - .-. -.--
select path scene_path,
       title scene_title,
       details scene_title,
       url,
       rating,
       o_counter,
       name preformer_name
from (select distinct *from (select path,title,details,url,date,rating,studio_id,o_counter,id
                             from scenes) left outer join
(select scene_id id, id performer_id, checksum, name
from (select performer_id id, scene_id from main.performers_scenes x)
inner join main.performers p using (id))
using (id)
      where
      (instr(reverse(lower(path)),reverse(lower(title))) not between 5 and 6)
   OR (coalesce(nullif(details,''),nullif(url,''),rating,studio_id,performer_id) is not null)
   OR o_counter != 0
    );
;-- -. . -..- - / . -. - .-. -.--
with scenesLessColumns as (select path,title,details,url,date,rating,studio_id,o_counter,id from scenes),
     preformersScenes as (select performer_id id, scene_id from main.performers_scenes x),
     preformersAndSceneId as (select scene_id id, id performer_id, checksum, name from preformersScenes inner join main.performers p using (id)),
     scenesAndPreformers as (select distinct * from scenesLessColumns left outer join preformersAndSceneId using (id)),
    scenPrefTags as (select x.*,t.name scene_tagName from scenesAndPreformers x
                                left outer join  main.scenes_tags y on x.id = y.scene_id
                                left outer join tags t on y.tag_id = t.id
        ),

     FinishedFilter as (select * from scenPrefTags
                                 where (instr(reverse(lower(path)), reverse(lower(title))) not between 5 and 6)
                                    OR (coalesce(nullif(details, ''), nullif(url, ''), rating, studio_id, performer_id,scene_tagName) is not null)
                                    OR o_counter != 0)

select path scene_path, title scene_title, details scene_title, url, rating, o_counter, name preformer_name
from FinishedFilter;
;-- -. . -..- - / . -. - .-. -.--
with scenesLessColumns as (select path,title,details,url,date,rating,studio_id,o_counter,id from scenes),
     preformersScenes as (select performer_id id, scene_id from main.performers_scenes x),
     preformersAndSceneId as (select scene_id id, id performer_id, checksum, name from preformersScenes inner join main.performers p using (id)),
     scenesAndPreformers as (select distinct * from scenesLessColumns left outer join preformersAndSceneId using (id)),
    scenPrefTags as (select path,
                            title,
                            details,
                            url,
                            date,
                            rating,
                            studio_id,
                            o_counter,
                            x.id,
                            performer_id,
                            checksum,
                            x.name,group_concat(t.name) scene_tagName from scenesAndPreformers x
                                left outer join  main.scenes_tags y on x.id = y.scene_id
                                left outer join tags t on y.tag_id = t.id
                     group by path,
                              title,
                              details,
                              url,
                              date,
                              rating,
                              studio_id,
                              o_counter,
                              x.id,
                              performer_id,
                              checksum,
                              x.name
        ),

     FinishedFilter as (select * from scenPrefTags
                                 where (instr(reverse(lower(path)), reverse(lower(title))) not between 5 and 6)
                                    OR (coalesce(nullif(details, ''), nullif(url, ''), rating, studio_id, performer_id,scene_tagName) is not null)
                                    OR o_counter != 0)

select path scene_path, title scene_title, details scene_title, url, rating, o_counter, name preformer_name,
from FinishedFilter;
;-- -. . -..- - / . -. - .-. -.--
with scenesLessColumns as (select path,title,details,url,date,rating,studio_id,o_counter,id from scenes),
     preformersScenes as (select performer_id id, scene_id from main.performers_scenes x),
     preformersAndSceneId as (select scene_id id, id performer_id, checksum, name from preformersScenes inner join main.performers p using (id)),
     scenesAndPreformers as (select distinct * from scenesLessColumns left outer join preformersAndSceneId using (id)),
    scenPrefTags as (select path,
                            title,
                            details,
                            url,
                            date,
                            rating,
                            studio_id,
                            o_counter,
                            x.id,
                            performer_id,
                            checksum,
                            x.name,group_concat(t.name) scene_tagName from scenesAndPreformers x
                                left outer join  main.scenes_tags y on x.id = y.scene_id
                                left outer join tags t on y.tag_id = t.id
                     group by path,
                              title,
                              details,
                              url,
                              date,
                              rating,
                              studio_id,
                              o_counter,
                              x.id,
                              performer_id,
                              checksum,
                              x.name
        ),

     FinishedFilter as (select * from scenPrefTags
                                 where (instr(reverse(lower(path)), reverse(lower(title))) not between 5 and 6)
                                    OR (coalesce(nullif(details, ''), nullif(url, ''), rating, studio_id, performer_id,scene_tagName) is not null)
                                    OR o_counter != 0)

select path scene_path, title scene_title, details scene_title, url, rating, o_counter, name preformer_name, scene_tagName
from FinishedFilter;
;-- -. . -..- - / . -. - .-. -.--
select width+height tot
from images

group by width+height order by tot;
;-- -. . -..- - / . -. - .-. -.--
with
scenes_with_tags as (
select s.title,t_name from
      scenes s
         left outer join
    (select trim(t.name) t_name, scene_id from tags t inner join scenes_tags on t.id = scenes_tags.tag_id) scenes_tags
     on s.id = scenes_tags.scene_id
order by s.title, t_name)

,tagStatistics as (select count() c, t_name  from scenes_with_tags where t_name is not null group by t_name order by c desc)

select * from tagStatistics;
;-- -. . -..- - / . -. - .-. -.--
with scenesLessColumns as (select path,title,details,url,date,rating,studio_id,o_counter,id from scenes),
     preformersScenes as (select performer_id id, scene_id from main.performers_scenes x),
     preformersAndSceneId as (select scene_id id, id performer_id, checksum, name from preformersScenes inner join main.performers p using (id)),
     scenesAndPreformers as (select distinct path,
                                             title,
                                             details,
                                             url,
                                             date,
                                             rating,
                                             studio_id,
                                             o_counter,
                                             id,
                                             group_concat(name) preformersName
                             from scenesLessColumns left outer join preformersAndSceneId using (id)),
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
with scenesLessColumns as (select path,title,details,url,date,rating,studio_id,o_counter,id from scenes),
     preformersScenes as (select performer_id id, scene_id from main.performers_scenes x),
     preformersAndSceneId as (select scene_id id, id performer_id, checksum, name from preformersScenes inner join main.performers p using (id)),
     scenesAndPreformers as (select distinct path,
                                             title,
                                             details,
                                             url,
                                             date,
                                             rating,
                                             studio_id,
                                             o_counter,
                                             id,
                                             group_concat(name) preformersName
                             from scenesLessColumns left outer join preformersAndSceneId using (id) group by path,
    title,
    details,
    url,
    date,
    rating,
    studio_id,
    o_counter,
    id),
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

select *from FinishedFilter;
;-- -. . -..- - / . -. - .-. -.--
select * from OrganizedContentByPath;