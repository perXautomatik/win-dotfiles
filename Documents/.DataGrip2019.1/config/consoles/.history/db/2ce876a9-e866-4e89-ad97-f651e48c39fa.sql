select * from textImport1 limit 5;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,7) time,substr(text,7) otherTxt from a )


select time,otherTxt from f;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,substr(text,8) otherTxt from a )


select time,otherTxt from f;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select (case when qt > 0 then substr(otherTxt,0,qt) else null end) event ,( case when qt > 0 then substr(otherTxt,qt) else otherTxt end) otherTxt   from q)

select * from y;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) else null end) event ,( case when qt > 0 then substr(otherTxt,qt) else otherTxt end) otherTxt   from q)

select * from y;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) else null end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt   from q)

select * from y;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) else null end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt   from q)
    ,f as (select *,instr(otherTxt,' in ') qt  from  from y)
    ,fgy as (select *,(case when qt > 0 then substr(otherTxt,0,qt) else null end) t1 ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt   from q)
select * from fgy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) else null end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt   from q)
    ,f as (select *,instr(otherTxt,' in ') qt  from  from y)
    ,fgy as (select *,(case when qt > 0 then substr(otherTxt,0,qt) else null end) t1 ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt   from f)
select * from fgy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) else null end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt   from q)
    ,f as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select *,(case when qt > 0 then substr(otherTxt,0,qt) else null end) t1 ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt   from f)
select * from fgy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) else null end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt   from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select *,(case when qt > 0 then substr(otherTxt,0,qt) else null end) t1 ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt   from f2)
select * from fgy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,
                    event,
                    qt,(case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) else otherTxt end) otherTxt from f2)
select * from fgy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,
                    event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) else otherTxt end) otherTxt from f2)
select * from fgy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) else otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
select * from qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) else otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  qt,(case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
select * from qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) else otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
select * from qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )

select * from rqu;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select *,
    (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
   select * from qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
   select * from qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
   select coalesce(action,t2,otherTxt) action,mod,nullif(coalesce(action,t2,otherTxt),otherTxt) otherTxt  from qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
   select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(coalesce(action,t2,otherTxt),otherTxt) otherTxt  from qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
   select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1 limit 5)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

select * from raw where not(mod is null AND otherTxt is null);
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

select * from raw where not(mod is null AND otherTxt is null);
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

--select * from raw where not(mod is null AND otherTxt is null)

SELECT * ,group_concat(distinct action) OVER (
    ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
    ) AS group_concat FROM qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

--select * from raw where not(mod is null AND otherTxt is null)

SELECT * ,group_concat(mod,'.') OVER (
    ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
    ) AS group_concat FROM qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

--select * from raw where not(mod is null AND otherTxt is null)

SELECT * ,group_concat(mod,'.') OVER (
    ROWS BETWEEN current row AND 1 FOLLOWING
    ) AS group_concat FROM qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

--select * from raw where not(mod is null AND otherTxt is null)

SELECT * ,group_concat(mod,'.') OVER (
    RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
    ) AS group_concat FROM qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

--select * from raw where not(mod is null AND otherTxt is null)

SELECT * ,group_concat(event,'.') filter (where mod is null)  OVER (

    ) AS group_concat FROM qy;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

--select * from raw where not(mod is null AND otherTxt is null)
select *, rank() over (event) from raw;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

--select * from raw where not(mod is null AND otherTxt is null)
select *, rank(event) over (ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) from raw;
;-- -. . -..- - / . -. - .-. -.--
select *, rank() over (ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) from raw;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

--select * from raw where not(mod is null AND otherTxt is null)
select *, rank() over (ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) q  from raw;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

--select * from raw where not(mod is null AND otherTxt is null)
select *, rank() over (partition by event) q  from raw;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)

--select * from raw where not(mod is null AND otherTxt is null)
select *,row_number() over ()q from raw;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null))

--select rows preceding current which event is null
select rank() over (partition by event order by rnr), * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null))
select * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select time||row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null))
select * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over ()||time rnr,* from raw where not(mod is null AND otherTxt is null))
select * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )
    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over ()||time rnr,* from raw where not(mod is null AND otherTxt is null))
--select * from rawnr



--select rows preceding current which event is null
select rank() over (partition by event order by rnr), * from rawnr order by;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over ()||time rnr,* from raw where not(mod is null AND otherTxt is null))
--select * from rawnr



--select rows preceding current which event is null
select rank() over (partition by event order by rnr), * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr



--select rows preceding current which event is null
select rank() over (partition by event order by rnr), * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr



--select rows preceding current which event is null
select dense_rank() over (partition by event ), * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr



--select rows preceding current which event is null
select dense_rank(event) over (order by rnr), * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr



--select rows preceding current which event is null
select dense_rank() over (partition by event order by rnr), * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr



--select rows preceding current which event is null
select dense_rank() over (partition by event order by rnr,event), * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr



--select rows preceding current which event is null
select dense_rank() over (order by rnr,event), * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select nullif(ifnull(event,rnr),rnr) q,* from rawnr)
select *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select nullif(ifnull(event,rnr),event) q,* from rawnr)
select *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event then rnr end  q,* from rawnr)
select *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select min() over (partition by q rows between current row and q following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select first_value() over (partition by q rows between current row and q following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select first_value() over (rows between current row and q following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select first_value() over (rows between current row and ifnull(q,0) following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select group_concat(q) over (rows between current row and ifnull(q,0) following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select group_concat(q) over (rows between current row and ifnull(q,rnr) following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select group_concat(q) over (rows between current row and ifnull(q,rnr+1) following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select group_concat(q) over (rows between coalesce(q,rnr) PRECEDING and coalesce(q,rnr+1) following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select group_concat(q) over (rows between coalesce(q,rnr) PRECEDING and coalesce(q,rnr)+1 following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select group_concat(q) over (rows between coalesce(q,rnr) PRECEDING and coalesce(q,rnr)-1 following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select group_concat(q) over (rows between current row  and coalesce(q,rnr)-1 following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
select group_concat(q) over (rows between current row  and coalesce(q,rnr)+1 following) qtr, *
from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
--select group_concat(q) over (rows between current row and first_value() filter (where  )) over (order by q) following --coalesce(q,rnr)+1 ) qtr, * from rawmrx;

select first_value() over (partition by q order by rnr) from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
--select group_concat(q) over (rows between current row and first_value() filter (where  )) over (order by q) following --coalesce(q,rnr)+1 ) qtr, * from rawmrx;

select first_value(q) over (order by rnr) from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
--select group_concat(q) over (rows between current row and first_value() filter (where  )) over (order by q) following --coalesce(q,rnr)+1 ) qtr, * from rawmrx;

select first_value(q) filter (where q is not null )  over (order by rnr) from rawmrx;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
--select group_concat(q) over (rows between current row and first_value() filter (where  )) over (order by q) following --coalesce(q,rnr)+1 ) qtr, * from rawmrx;

select first_value(q) over (order by rnr) from rawmrx where q is not null;
;-- -. . -..- - / . -. - .-. -.--
select distinct first_value(q) over (order by rnr) from rawmrx where q is not null;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
--select group_concat(q) over (rows between current row and first_value() filter (where  )) over (order by q) following --coalesce(q,rnr)+1 ) qtr, * from rawmrx;

select distinct first_value(q) over (order by rnr) from rawmrx where q is not null;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
--select group_concat(q) over (rows between current row and first_value() filter (where  )) over (order by q) following --coalesce(q,rnr)+1 ) qtr, * from rawmrx;

select first_value(select q from rawmrx where q is not null) over (order by rnr);
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
--select group_concat(q) over (rows between current row and first_value() filter (where  )) over (order by q) following --coalesce(q,rnr)+1 ) qtr, * from rawmrx;

select value(select distinct first_value(q) over (order by rnr) from rawmrx where q is not null);
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
--select group_concat(q) over (rows between current row and first_value() filter (where  )) over (order by q) following --coalesce(q,rnr)+1 ) qtr, * from rawmrx;

select (select distinct first_value(q) over (order by rnr) from rawmrx where q is not null);
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
--select group_concat(q) over (rows between current row and first_value() filter (where  )) over (order by q) following --coalesce(q,rnr)+1 ) qtr, * from rawmrx;
select *,(select distinct first_value(q) over (order by rnr) from rawmrx z where z.q is not null and y.rnr < z.rnr )from rawmrx y;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr);
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
select * from rawnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
--select group_concat(q) over (rows between current row and first_value() filter (where  )) over (order by q) following --coalesce(q,rnr)+1 ) qtr, * from rawmrx;

--superslowbut works
--select *,(select distinct first_value(q) over (order by rnr) from rawmrx z where z.q is not null and y.rnr < z.rnr ) from rawmrx y
select y.*,z.q from rawmrx y cross join (select rnr,first_value(q) over (order by rnr) q from rawmrx where q is not null ) z where y.rnr < z.rnr;
;-- -. . -..- - / . -. - .-. -.--
with a as (select * from textImport1)
    ,f as (select substr(text,0,8) time,trim(substr(text,8)) otherTxt from a )

    ,q as (select *,instr(otherTxt,':') qt  from f   )
    ,y as (select time,(case when qt > 0 then substr(otherTxt,0,qt) end) event ,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from q)
    ,f2 as (select *,instr(otherTxt,' in ') qt  from  y)
    ,fgy as (select time,event,
                    (case when qt > 0 then substr(otherTxt,0,qt) end) action ,trim( case when qt > 0 then substr(otherTxt,qt+3) end) mod, trim( case when qt = 0 then otherTxt end) otherTxt from f2)
   ,rqu as (select*, instr(othertxt,',') qt  from fgy  )
   ,qy as (select time,
                  event,
                  action,
                  mod,
                  (case when qt > 0 then substr(otherTxt,0,qt) end) t2,trim( case when qt > 0 then substr(otherTxt,qt+1) else otherTxt end) otherTxt from rqu)
    ,raw as (select time,event,coalesce(action,t2,otherTxt) action,mod,nullif(otherTxt,coalesce(action,t2,otherTxt)) otherTxt  from qy)
    ,rawnr as (select row_number() over () rnr,* from raw where not(mod is null AND otherTxt is null) order by rnr,time)
--select * from rawnr
    ,rawmrx as (select case when event is not null then rnr end  q,* from rawnr)
--select group_concat(q) over (rows between current row and first_value() filter (where  )) over (order by q) following --coalesce(q,rnr)+1 ) qtr, * from rawmrx;

--superslowbut works
--select *,(select distinct first_value(q) over (order by rnr) from rawmrx z where z.q is not null and y.rnr < z.rnr ) from rawmrx y
select distinct y.*,z.q from rawmrx y cross join (select rnr,first_value(q) over (order by rnr) q from rawmrx where q is not null ) z where y.rnr < z.rnr;