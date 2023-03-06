select z.*,x.column_1 from TextManipulation z cross join TextManipulation x where z.column_1 <> x.column_1 AND instr(z.column_1,x.column_1);
;-- -. . -..- - / . -. - .-. -.--
select q.*,w.parent from  TextManipulation q left outer join 
              
              
              (select z.*,x.column_1 parent from TextManipulation z cross join TextManipulation x where z.column_1 <> x.column_1 AND instr(z.column_1,x.column_1)) w

on q.column_1 = w.column_1;
;-- -. . -..- - / . -. - .-. -.--
select replace(column_1,parent) col1,column_2 from (select q.*,w.parent from  TextManipulation q left outer join


              (select z.*,x.column_1 parent from TextManipulation z cross join TextManipulation x where z.column_1 <> x.column_1 AND instr(z.column_1,x.column_1)) w

on q.column_1 = w.column_1);
;-- -. . -..- - / . -. - .-. -.--
select replace(column_1,parent,'') col1,column_2 from (select q.*,w.parent from  TextManipulation q left outer join


              (select z.*,x.column_1 parent from TextManipulation z cross join TextManipulation x where z.column_1 <> x.column_1 AND instr(z.column_1,x.column_1)) w

on q.column_1 = w.column_1);
;-- -. . -..- - / . -. - .-. -.--
select coalesce( replace(column_1,parent,''),column_1) col1,column_2 from (select q.*,w.parent from  TextManipulation q left outer join


              (select z.*,x.column_1 parent from TextManipulation z cross join TextManipulation x where z.column_1 <> x.column_1 AND instr(z.column_1,x.column_1)) w

on q.column_1 = w.column_1);
;-- -. . -..- - / . -. - .-. -.--
select coalesce(replace(column_1,parent,'/'||column_1),column_1) col1,column_2 from (select q.*,w.parent from  TextManipulation q left outer join


              (select z.*,x.column_1 parent from TextManipulation z cross join TextManipulation x where z.column_1 <> x.column_1 AND instr(z.column_1,x.column_1)) w

on q.column_1 = w.column_1);
;-- -. . -..- - / . -. - .-. -.--
update Ressult set c4 = replace(c4,'.',',') where c4 != 0;
;-- -. . -..- - / . -. - .-. -.--
select C2, C4/100
from Ressult where C4 != 0;
;-- -. . -..- - / . -. - .-. -.--
select C2, cast(C4 as float )/cast(100 as float )
from Ressult where C4 != 0;
;-- -. . -..- - / . -. - .-. -.--
select C2, cast(C4 as float )
from Ressult where C4 != 0;
;-- -. . -..- - / . -. - .-. -.--
update Ressult
set c4 = cast(replace(c4,',','.') as float )
where c4 != 0;
;-- -. . -..- - / . -. - .-. -.--
select * from Ressult order by SizeX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(sizeX,0,instr(SizeX,'.'))magnitude from Ressult order by magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(sizeX,0,instr(SizeX,'.')) magnitude from Ressult order by magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,instr(SizeX,'.'),substr(sizeX,0,instr(SizeX,'.')) magnitude from Ressult order by magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,instr(''||SizeX,'.'),substr(sizeX,0,instr(SizeX,'.')) magnitude from Ressult order by magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,''||SizeX,instr(''||SizeX,'.'),substr(sizeX,0,instr(SizeX,'.')) magnitude from Ressult order by magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(sizeX,0,2),''||SizeX,instr(''||SizeX,'.'),substr(sizeX,0,instr(SizeX,'.')) magnitude from Ressult order by magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(sizeX,1,2),''||SizeX,instr(''||SizeX,'.'),substr(sizeX,0,instr(SizeX,'.')) magnitude from Ressult order by magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr( ''|| sizeX,1,2),''||SizeX,instr(''||SizeX,'.'),substr(sizeX,0,instr(SizeX,'.')) magnitude from Ressult order by magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,group_concat(SizeX) magnitude from Ressult group by SizeX,PathX ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,group_concat(SizeX,PathX) magnitude from Ressult group by SizeX,PathX ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,SizeX*1000 magnitude from Ressult group by SizeX,PathX ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,SizeX*1000 magnitude from Ressult ORDER BY SizeX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,CAST( SizeX AS INTEGER) magnitude from Ressult ORDER BY SizeX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,CAST( SizeX AS float) magnitude from Ressult ORDER BY SizeX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,CAST( SizeX AS real) magnitude from Ressult ORDER BY SizeX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,CAST( SizeX AS numeric) magnitude from Ressult ORDER BY SizeX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,CAST( SizeX AS blob) magnitude from Ressult ORDER BY SizeX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,CAST( SizeX AS blob) magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,cast(CAST( SizeX AS blob) as integer) magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,cast(CAST( SizeX AS blob) as numeric) magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(CAST( SizeX AS blob),0,10) magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(CAST( SizeX AS blob),0,2) magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(CAST( SizeX AS blob),0,4) magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(CAST( SizeX AS blob),0,5) magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(CAST( SizeX AS blob),0,8) magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,cast(substr(CAST( SizeX AS blob),0,8) as integer) magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,replace(substr(CAST( SizeX AS blob),0,8),'.','') magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,replace(CAST( SizeX AS blob),'.','') magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(replace(CAST( SizeX AS blob),'.',' '),0,instr(replace(CAST( SizeX AS blob),' '))) magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(replace(CAST( SizeX AS blob),'.',' '),0,instr(replace(CAST( SizeX AS blob),'.',' '),' ')) magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,replace(CAST( SizeX AS blob),'.',' ') magnitude from Ressult ORDER BY magnitude desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(magnitude,0,instr(magnitude,' ')) from (select *,replace(CAST( SizeX AS blob),'.',' ') magnitude from Ressult ORDER BY magnitude desc);
;-- -. . -..- - / . -. - .-. -.--
select *,instr(magnitude,' '),substr(magnitude,0,instr(magnitude,' ')) from (select *,replace(CAST( SizeX AS blob),'.',' ') magnitude from Ressult ORDER BY magnitude desc);
;-- -. . -..- - / . -. - .-. -.--
select *,instr(magnitude,','),substr(magnitude,0,instr(magnitude,' ')) from (select *,replace(CAST( SizeX AS blob),'.',',') magnitude from Ressult ORDER BY magnitude desc);
;-- -. . -..- - / . -. - .-. -.--
select *,cast(magnitude as integer),substr(magnitude,0,instr(magnitude,' ')) from (select *,replace(CAST( SizeX AS blob),'.',',') magnitude from Ressult ORDER BY magnitude desc);
;-- -. . -..- - / . -. - .-. -.--
select *,cast(magnitude as float),substr(magnitude,0,instr(magnitude,' ')) from (select *,replace(CAST( SizeX AS blob),'.',',') magnitude from Ressult ORDER BY magnitude desc);
;-- -. . -..- - / . -. - .-. -.--
select *,cast(magnitude as blob),substr(magnitude,0,instr(magnitude,' ')) from (select *,replace(CAST( SizeX AS blob),'.',',') magnitude from Ressult ORDER BY magnitude desc);
;-- -. . -..- - / . -. - .-. -.--
select *,cast(magnitude as blob),substr(magnitude,0,instr(magnitude,' ')) from (select *,replace(CAST( SizeX AS blob),'.',',') magnitude from Ressult ORDER BY PathX desc);
;-- -. . -..- - / . -. - .-. -.--
select *,cast(magnitude as blob),substr(magnitude,0,instr(magnitude,' ')) from (select *,replace(CAST( SizeX AS blob),'.',',') magnitude from Ressult ORDER BY PathX asc);
;-- -. . -..- - / . -. - .-. -.--
select * from Ressult order by c4 desc;
;-- -. . -..- - / . -. - .-. -.--
select *,c4+1 from Ressult order by c4 desc;
;-- -. . -..- - / . -. - .-. -.--
select *,c4+c4 from Ressult order by c4 desc;
;-- -. . -..- - / . -. - .-. -.--
select *,substr(c4,0,1) from Ressult order by c4 desc;
;-- -. . -..- - / . -. - .-. -.--
select *,length(c4) from Ressult order by c4 desc;
;-- -. . -..- - / . -. - .-. -.--
select *,length(cast(c4 as blob) from Ressult order by c4 desc;
;-- -. . -..- - / . -. - .-. -.--
select *,length(cast(c4 as blob)) from Ressult order by c4 desc;
;-- -. . -..- - / . -. - .-. -.--
select *,length(cast(c4 as blob)) magnitude from Ressult order by magnitude desc, c4 desc;
;-- -. . -..- - / . -. - .-. -.--
select *,length(cast(c4 as blob)) magnitude from Ressult order by magnitude desc, c4 desc,c2;
;-- -. . -..- - / . -. - .-. -.--
select * from Ressult;
;-- -. . -..- - / . -. - .-. -.--
select * from Ressult where PathX != '';
;-- -. . -..- - / . -. - .-. -.--
select * from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,substr(pathX,instr(pathX,'',''),length(pathx)) from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,substr(pathX,instr(pathX,'',''),length(pathx)) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,substr(pathX,instr(pathX,','),length(pathx)) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,instr(pathX,',') asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,instr(cast(pathX as blob),',') asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,instr(PathX,';')-instr(cast(pathX as blob),',') asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,substr(pathX,instr(cast(pathX as blob),','),(instr(PathX,';')-instr(cast(pathX as blob),','))) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,substr(pathX,instr(PathX,';'),','),(instr(PathX,';')-instr(cast(pathX as blob),','))) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,substr(pathX,instr(PathX,';'),','),(instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,
        substr(pathX,6)
       
       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,
        substr(cast(pathX as blob),6)
       
       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,
        substr(cast(pathX as blob),instr(cast(pathX as blob),','))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,
        replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.','')

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,
        replace(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''),';')

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,
        replace(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''),';','')

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,
        
       
       substr(replace(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''),';',''),2,200)

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       substr(cast(replace(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''),';','') as string ) ,2,200)

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
ltrim(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''),',;');
;-- -. . -..- - / . -. - .-. -.--
select *,


       ltrim(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''),',;')

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       substr(cast(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.','') as blob),2)

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       hex(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       cast( (hex(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''))) as varchar)

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       cast( (hex(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''))) as text)

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       cast(  cast(hex(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.','')) as blob) as text)

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       cast(hex(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.','')) as blob)

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       typeof(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       round(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')),'.',''))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+2),'.',''))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4),'.',''))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4),length(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4))-2,'.',''))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4,length(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4))-2,'.','')))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4,length(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4))-2),'.',''))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4,length(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4))-3),'.',''))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       round(replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4,length(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4))-4),'.',''))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4,length(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4))-4),'.',''))

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';');
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4,length(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4))-4),'.','')) numberX

       ,
       (instr(PathX,';')-instr(cast(pathX as blob),',')) asdasd from Ressult where instr(PathX,';') order by asdasd desc,numberX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4,length(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4))-4),'.','')) numberX
        ,hex(pathX)
       ,
       (instr(PathX,';')-instr(hex(pathX),',')) asdasd 

from Ressult where instr(PathX,';') order by asdasd desc,numberX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4,length(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4))-4),'.','')) numberX
        ,cast(pathX as blob)
       ,
       (instr(PathX,';')-instr(hex(pathX),',')) asdasd

from Ressult where instr(PathX,';') order by asdasd desc,numberX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4,length(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4))-4),'.','')) numberX
        ,cast(pathX as blob)
       ,
       (instr(PathX,';')-instr(hex(pathX),'2C002700')) asdasd

from Ressult where instr(PathX,';') order by asdasd desc,numberX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(hex(pathX),'2C002700'),length(substr(cast(pathX as blob),instr(cast(pathX as blob),',')+4))-4),'.','')) numberX
        ,cast(pathX as blob)
       ,
       (instr(PathX,';')-instr(hex(pathX),'2C002700')) asdasd

from Ressult where instr(PathX,';') order by asdasd desc,numberX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,


       (replace(substr(cast(pathX as blob),instr(hex(pathX),'2C002700'),length(substr(cast(pathX as blob),instr(hex(pathX),'2C002700')))))) numberX
        ,cast(pathX as blob)
       ,
       (instr(PathX,';')-instr(hex(pathX),'2C002700')) asdasd

from Ressult where instr(PathX,';') order by asdasd desc,numberX desc;
;-- -. . -..- - / . -. - .-. -.--
select *,


       ((substr(cast(pathX as blob),instr(hex(pathX),'2C002700'),length(substr(cast(pathX as blob),instr(hex(pathX),'2C002700')))))) numberX
        ,cast(pathX as blob)
       ,
       (instr(PathX,';')-instr(hex(pathX),'2C002700')) asdasd

from Ressult where instr(PathX,';') order by asdasd desc,numberX desc;