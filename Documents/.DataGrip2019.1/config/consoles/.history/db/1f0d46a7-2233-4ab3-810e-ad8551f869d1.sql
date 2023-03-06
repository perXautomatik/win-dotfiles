select
       left(Application,instr(Application,' ')) Application,
       Size,
       Version,
       Type,
       "Install Date" ad,
       Company,
       Website,
       Comment
from installedPrograms;
;-- -. . -..- - / . -. - .-. -.--
select
       left(Application,instr(Application,' ')) Application,
       Size,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms;
;-- -. . -..- - / . -. - .-. -.--
select


       Size,
       substr(Application,instr(Application,' ')) Application,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms;
;-- -. . -..- - / . -. - .-. -.--
select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       substr(Application,instr(Application,' ')) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms;
;-- -. . -..- - / . -. - .-. -.--
select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms;
;-- -. . -..- - / . -. - .-. -.--
select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from

(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms);
;-- -. . -..- - / . -. - .-. -.--
select Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms));
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       replace(replace(replace(replace(Size,' ',''),'KB',''),'MB','000'),'GB','000000') si,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select * from sources;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       replace(replace(replace(replace(replace(Size,' ',''),',',''),'KB',''),'MB','000'),'GB','000000') si,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select * from sources;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(replace(replace(replace(replace(replace(Size,' ',''),',',''),'KB',''),'MB','000'),'GB','000000') as integer)  si,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select * from sources;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select
       cast(replace(replace(replace(replace(replace(Size,' ',''),',',''),'KB',''),'MB','000'),'GB','000000') as integer)  si,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select sum(si)/1000000 gb,
       a1,
       group_concat(a2)a2,
       group_concat(a3)a3,
       group_concat(a4)a4
       from sources group by a1;
;-- -. . -..- - / . -. - .-. -.--
select
       cast(replace(replace(replace(replace(replace(Size,' ',''),',',''),'KB',''),'MB','000'),'GB','000000') as float)  si,
       cast(substr(Size,1,instr(Size,' '))  as float) c,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms));
;-- -. . -..- - / . -. - .-. -.--
select
       cast(replace(replace(replace(replace(replace(Size,' ',''),',',''),'KB',''),'MB','000'),'GB','000000') as float)  si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) c,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms));
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select
      
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G' > 0) then 1000 else 1  end)
           si,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select sum(si)/1000000 gb,
       a1,
       group_concat(a2)a2,
       group_concat(a3)a3,
       group_concat(a4)a4
       from sources group by a1;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G' > 0) then 1000 else 1  end)
           si,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select sum(si)/1000 gb,
       a1,
       group_concat(a2)a2,
       group_concat(a3)a3,
       group_concat(a4)a4
       from sources group by a1;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G' > 0) then 1000000 else 1  end)
           
           si,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select sum(si)/1000 gb,
       a1,
       group_concat(a2)a2,
       group_concat(a3)a3,
       group_concat(a4)a4
       from sources group by a1;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G' > 0) then 1000000 else 1  end)

           si,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select sum(si)/1000000 gb,
       a1,
       group_concat(a2)a2,
       group_concat(a3)a3,
       group_concat(a4)a4
       from sources group by a1;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G' > 0) then 1000000 else case when instr(Size,'M' > 0) then 1000 else 1  end end)

           si,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select sum(si)/1000000 gb,
       a1,
       group_concat(a2)a2,
       group_concat(a3)a3,
       group_concat(a4)a4
       from sources group by a1;
;-- -. . -..- - / . -. - .-. -.--
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G' > 0) then 1000000 else case when instr(Size,'M' > 0) then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G' > 0) then 1000000 else case when instr(Size,'M' > 0) then 1000 else 1  end end) v,
       Size
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms));
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select sum(si)/1000000 gb,

       a1,
       group_concat(a2)a2,
       group_concat(a3)a3,
       group_concat(a4)a4
       from sources group by a1;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select sum(si)/1000000 gb,

       a1,
       group_concat(a2)a2,
       group_concat(a3)a3,
       group_concat(a4)a4
       from sources group by a1;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select sum(si)/1000000 gb,

       a1,
       a2,
       group_concat(a3)a3,
       group_concat(a4)a4
       from sources group by a1,a2;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

select sum(si)/1000000 gb,

       a1||a2||a3,
       group_concat(a4)a4
       from sources group by a1,a2,a3;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(si)/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(si)/1000000 gb,a1,a2,a1||a2||group_concat(a3)||group_concat(a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(si)/1000000 gb,a1,a1||group_concat(a2)||group_concat(a3)||group_concat(a4) a4
       from sources group by a1)

select a1a.gb, a1a.a1, a1a.a4, a12a.gb, a12a.a2, a12a.a4, a123a.gb, a3, a123a.a4
 
 from a1a inner join a12a on a1a.a1 = a12a.a1
inner join a123a on a123a.a2 = a12a.a2 and a123a.a1 =a12a.a1;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(si)/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(si)/1000000 gb,a1,a2,a1||a2||group_concat(a3)||group_concat(a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(si)/1000000 gb,a1,a1||group_concat(a2)||group_concat(a3)||group_concat(a4) a4
       from sources group by a1)

select a1a.gb, a1a.a1, a12a.gb, a12a.a2, a123a.gb, a3,a1a.a4, a12a.a4,  a123a.a4

 from a1a inner join a12a on a1a.a1 = a12a.a1
inner join a123a on a123a.a2 = a12a.a2 and a123a.a1 =a12a.a1;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(si)/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(si)/1000000 gb,a1,a2,a1||a2||group_concat(a3)||group_concat(a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(si)/1000000 gb,a1,a1||group_concat(a2)||group_concat(a3)||group_concat(a4) a4
       from sources group by a1)


select gb,a4 from a1a
union
select gb,a4 from a12a
union
select gb,a4 from a123a;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(si)/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(distinct a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(si)/1000000 gb,a1,a2,a1||a2||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(si)/1000000 gb,a1,a1||group_concat(distinct a2)||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1)


select gb,a4 from a1a
union
select gb,a4 from a12a
union
select gb,a4 from a123a;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(si)/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(distinct a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(si)/1000000 gb,a1,a2,a1||a2||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(si)/1000000 gb,a1,a1||group_concat(distinct a2)||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1)

select (gb/600),a4 from ( 
select gb,a4 from a1a
union
select gb,a4 from a12a
union
select gb,a4 from a123a
)
    order by gb desc;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(si)/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(distinct a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(si)/1000000 gb,a1,a2,a1||a2||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(si)/1000000 gb,a1,a1||group_concat(distinct a2)||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1)

select (gb/6) proc,a4 from (
select gb,a4 from a1a
union
select gb,a4 from a12a
union
select gb,a4 from a123a
)
    order by gb desc;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(si)/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(distinct a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(si)/1000000 gb,a1,a2,a1||a2||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(si)/1000000 gb,a1,a1||group_concat(distinct a2)||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1)

select substr((gb/6),0,5) proc,a4 from (
select gb,a4 from a1a
union
select gb,a4 from a12a
union
select gb,a4 from a123a
)
    order by gb desc;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(si)/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(distinct a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(si)/1000000 gb,a1,a2,a1||a2||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(si)/1000000 gb,a1,a1||group_concat(distinct a2)||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1)

select substr(''||(gb/6),0,5) proc,a4 from (
select gb,a4 from a1a
union
select gb,a4 from a12a
union
select gb,a4 from a123a
)
    order by gb desc;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(si)/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(distinct a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(si)/1000000 gb,a1,a2,a1||a2||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(si)/1000000 gb,a1,a1||group_concat(distinct a2)||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1)

select cast(substr(''||(gb/6),0,5) as float) proc,a4 from (
select gb,a4 from a1a
union
select gb,a4 from a12a
union
select gb,a4 from a123a
)
    order by gb desc;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(si)/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(distinct a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(si)/1000000 gb,a1,a2,a1||a2||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(si)/1000000 gb,a1,a1||group_concat(distinct a2)||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1)

select cast(substr(''||(gb/6),0,5) as float) proc,a4 from (
select gb,a4 from a1a
union
select gb,a4 from a12a
union
select gb,a4 from a123a
)
    order by proc desc;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(si)/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(distinct a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(si)/1000000 gb,a1,a2,a1||a2||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(si)/1000000 gb,a1,a1||group_concat(distinct a2)||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1)

select cast(substr(''||(gb/6),0,5) as float) proc,a4 from (
select cast(gb as float) gb,a4 from a1a
union
select cast(gb as float) gb,a4 from a12a
union
select cast(gb as float) gb,a4 from a123a
)
    order by proc desc;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(cast(si as float))/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(distinct a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(cast(si as float))/1000000 gb,a1,a2,a1||a2||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(cast(si as float))/1000000 gb,a1,a1||group_concat(distinct a2)||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1)

select cast(substr(''||(gb/6),0,5) as float) proc,a4 from (
select cast(gb as float) gb,a4 from a1a
union
select cast(gb as float) gb,a4 from a12a
union
select cast(gb as float) gb,a4 from a123a
)
    order by proc desc;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(cast(si as float))/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(distinct a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(cast(si as float))/1000000 gb,a1,a2,a1||a2||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(cast(si as float))/1000000 gb,a1,a1||group_concat(distinct a2)||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1)

select cast(substr(''||(gb/6),0,6) as float) proc,a4 from (
select cast(gb as float) gb,a4 from a1a
union
select cast(gb as float) gb,a4 from a12a
union
select cast(gb as float) gb,a4 from a123a
)
    order by proc desc;
;-- -. . -..- - / . -. - .-. -.--
with sources as (
select

       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float)
           * (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end)

           si,
       cast(substr(replace(Size,',','.'),1,instr(Size,' '))  as float) a,
       (case when instr(Size,'G') > 0 then 1000000 else case when instr(Size,'M') > 0 then 1000 else 1  end end) v,
       Size,
       a1,
       a2,
       substr(a3,1,instr(a3,' ')) a3,
       trim(substr(a3,instr(a3,' '))) a4,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select Size,
       a1,
       substr(a2,1,instr(a2,' ')) a2,
       trim(substr(a2,instr(a2,' '))) a3,
       Version,
       Type,
       Company,
       Website,
       Comment from
(select
       Size,
       substr(Application,1,instr(Application,' ')) a1,
       trim(substr(Application,instr(Application,' '))) a2,
       Version,
       Type,
       Company,
       Website,
       Comment
from installedPrograms)))

   ,a123a as (
select sum(cast(si as float))/1000000 gb,a1,a2,a3,a1||a2||a3||group_concat(distinct a4) a4
       from sources group by a1,a2,a3)

   ,a12a as (
select sum(cast(si as float))/1000000 gb,a1,a2,a1||a2||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1,a2)

   ,a1a as (
select sum(cast(si as float))/1000000 gb,a1,a1||group_concat(distinct a2)||group_concat(distinct a3)||group_concat(distinct a4) a4
       from sources group by a1)

select cast(substr(''||(gb/6),0,7) as float) proc,a4 from (
select cast(gb as float) gb,a4 from a1a
union
select cast(gb as float) gb,a4 from a12a
union
select cast(gb as float) gb,a4 from a123a
)
    order by proc desc;
;-- -. . -..- - / . -. - .-. -.--
create table boxes (
    x integer,
    y integer,
    z integer
                   
);
;-- -. . -..- - / . -. - .-. -.--
insert into boxes values 
(4,5,3),(2,3,2),(3,6,2),(1,5,4),(2,4,1),(1,2,2);
;-- -. . -..- - / . -. - .-. -.--
with solve (x2,y2,z2,totZ,path) as (
    
    select *,z,'('||x||','||y||','||z||')' from boxes
    union 
    select x,y,z,totZ+z,path||'('||x||','||y||','||z||')' from boxes
        inner join solve on boxes.z > solve.z2 and boxes.x > solve.x2 and boxes.y > solve.y2
    
)
select * from  solve order by totz desc;
;-- -. . -..- - / . -. - .-. -.--
with solve (x2,y2,z2,totZ,path) as (

    select *,z,'('||x||','||y||','||z||')' from boxes
    union
    select x,y,z,totZ+z,path||'('||x||','||y||','||z||')' from boxes
        inner join solve on boxes.z >= solve.z2 and boxes.x >= solve.x2 and boxes.y >= solve.y2

)
select * from  solve order by totz desc;
;-- -. . -..- - / . -. - .-. -.--
with solve (x2,y2,z2,totZ,path) as (

    select *,z,'('||x||','||y||','||z||')' from boxes
    union
    select x,y,z,totZ+z,path||'('||x||','||y||','||z||')' from boxes
        inner join solve on (boxes.z >= solve.z2 and boxes.x >= solve.x2 and boxes.y >= solve.y2) and (boxes.z <> solve.z2 and boxes.x <> solve.x2 and boxes.y <> solve.y2)

)
select * from  solve order by totz desc;
;-- -. . -..- - / . -. - .-. -.--
with solve (x2,y2,z2,totZ,path) as (

    select *,z,'('||x||','||y||','||z||')' from boxes
    union
    select x,y,z,totZ+z,path||'('||x||','||y||','||z||')' from boxes
        inner join solve on (boxes.z >= solve.z2 and boxes.x >= solve.x2 and boxes.y >= solve.y2) and 
                            not(boxes.z = solve.z2 and boxes.x = solve.x2 and boxes.y = solve.y2)

)
select * from  solve order by totz desc;
;-- -. . -..- - / . -. - .-. -.--
drop table boxes;
;-- -. . -..- - / . -. - .-. -.--
create table boxes (
    x integer,
    y integer,
    z integer

);
;-- -. . -..- - / . -. - .-. -.--
create index xid on boxes(x,y,z);
;-- -. . -..- - / . -. - .-. -.--
insert into boxes values
--(4,5,3),(2,3,2),(3,6,2),(1,5,4),(2,4,1),(1,2,2);
(5,2,1),(2,5,3),(4,5,1),
 (3,4,1),(2,1,2),(4,1,2),
 (5,3,3),(4,1,5),(2,2,4);
;-- -. . -..- - / . -. - .-. -.--
with solve (x2,y2,z2,totZ,path) as (

    select *,z,'('||x||','||y||','||z||')' from boxes
    union
    select x,y,z,totZ+z,path||'('||x||','||y||','||z||')' from boxes
        inner join solve on (boxes.z >= solve.z2 and boxes.x >= solve.x2 and boxes.y >= solve.y2) and
                            not(boxes.z = solve.z2 and boxes.x = solve.x2 and boxes.y = solve.y2)
)
select * from  solve order by totz desc;