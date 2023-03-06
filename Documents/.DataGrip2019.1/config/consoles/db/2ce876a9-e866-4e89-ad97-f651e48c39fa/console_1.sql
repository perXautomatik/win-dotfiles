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
--faster but not correct
--select distinct y.*,z.q from rawmrx y cross join (select rnr,first_value(q) over (order by rnr) q from rawmrx where q is not null ) z where y.rnr < z.rnr
--goota be most efficently recursivly




--select min(nonNullNr) from rows higher
--group values between current and min(nonNullNr)

--select rows preceding current which event is null
--select dense_rank() over (order by rnr,event), * from rawnr



SELECT * ,group_concat(event,'.')
    filter (where mod is null)
    --filter ( where rnr >  )
        OVER (
order by rnr
            range between current row and unbounded preceding
    ) AS group_concat FROM rawnr


