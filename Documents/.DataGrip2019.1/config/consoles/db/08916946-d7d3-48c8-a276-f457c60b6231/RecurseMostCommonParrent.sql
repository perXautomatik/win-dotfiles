with
replaced as (select distinct path from images where width+images.height < 400 and not(path like '/Media/Images/VueScan/Unsorted/%'))
   ,replaced1 as (select replace(path,'/Media/','//192.168.0.30/disk4/X/Images/') path from replaced)
   , dotSubstring as (select substr(path,0, (instr(path,'.'))) zer, substr(path, (instr(path,'.'))) af from replaced)

   , fj as (select path src,substr(path,0,(instr(path,'/'))+1) zer,substr(path,(instr(path,'/'))+1, length(path)) path from replaced)
   , fj2 as (select src, substr(path,0, (instr(path,'/')+1)) zer, substr(path,(instr(path,'/')) +1,length(path)) path from fj)
   ,fj3 as (select src, substr(path, 0,(instr(path,'/')+1)) zer, substr(path,(instr(path,'/'))+1,length(path)) path from fj2)
   ,fj4 as (select src, substr(path, 0,(instr(path,'/')+1)) zer, substr(path,(instr(path,'/'))+1,length(path)) path from fj3)

   ,withoutRec as ( select distinct replace(src, path, '')from (
         select *from fj4 union
         select *from fj3 union
         select *from fj2 union
         select *from fj
     )where instr(path, '/') = 0)

 ,withRec (src,path) as (
    select path src,path from replaced
    union
                select src ,substr(path,(instr(path,'/'))+1, length(path))
        from withRec
    where instr(path, '/') != 0
)

select count() c, replace(src, path, '') p
from withRec
where instr(path, '/') = 0
  and src != path
group by p

