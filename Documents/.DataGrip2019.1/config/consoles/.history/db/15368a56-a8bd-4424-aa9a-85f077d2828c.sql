/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Track_name]
      ,[Artist_name]
      ,[LoveRow]
  FROM [FirstDb].[dbo].[loved2019]

select * from

[loved2019] as outerX
join 
(select top 2 *,DIFFERENCE(outerX.track_name + outerX.Artist_name,
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019] where not(Artist_name = outerX.Artist_name and Track_name = outerX.Track_name) order by diff) as diff

on diff.Artist_name = outerX.Artist_name and diff.Track_name = outerX.Track_name
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
[loved2019] as innerx

on Artist_name and Track_name
and Track_name+Artist_name =

    (select top 2 Track_name from (select Track_name+Artist_name,
    DIFFERENCE(track_name + Artist_name,
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019] where not([loved2019].Artist_name = innerx.Artist_name and [loved2019].Track_name = innerx.Track_name) order by diff) as diff)
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
[loved2019] as innerx

on Artist_name and Track_name
and Track_name+Artist_name =

    (select top 1 Track_name from (select Track_name+Artist_name,
    DIFFERENCE(track_name + Artist_name,
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019] where not([loved2019].Artist_name = innerx.Artist_name and [loved2019].Track_name = innerx.Track_name) order by diff) as diff)
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
[loved2019] as innerx

on Artist_name and Track_name
and Track_name+Artist_name =

    (select top 1 Track_name from (select Track_name+Artist_name,
    DIFFERENCE(track_name + Artist_name,
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019] where not([loved2019].Artist_name = innerx.Artist_name 
    and [loved2019].Track_name = innerx.Track_name) order by diff) as diff)
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
[loved2019] as innerx

on loved2019.Artist_name and innerx.Track_name
and loved2019.Track_name+innerx.Artist_name =

    (select top 1 Track_name from (select Track_name+Artist_name,
    DIFFERENCE(track_name + Artist_name,
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019] where not([loved2019].Artist_name = innerx.Artist_name
    and [loved2019].Track_name = innerx.Track_name) order by diff) as diff)
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
[loved2019] as innerx

on loved2019.Artist_name and innerx.Track_name
and loved2019.Track_name+innerx.Artist_name =

    (select top 1 innerx.Track_name from (select [Track_name]+[Artist_name],
    DIFFERENCE(loved2019.[track_name] + [Artist_name],
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019] where not([loved2019].Artist_name = innerx.Artist_name
    and [loved2019].Track_name = innerx.Track_name) order by diff) as diff)
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
[loved2019] as innerx

on loved2019.Artist_name and innerx.Track_name
and (loved2019.Track_name+innerx.Artist_name =

    (select top 1 innerx.Track_name from (select [Track_name]+[Artist_name],
    DIFFERENCE(loved2019.[track_name] + [Artist_name],
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019] where not([loved2019].Artist_name = innerx.Artist_name
    and [loved2019].Track_name = innerx.Track_name) order by diff) as diff))
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
[loved2019] as innerx

on loved2019.Artist_name and innerx.Track_name
and (loved2019.Track_name+innerx.Artist_name =

    (select top 1 track from (select [Track_name]+[Artist_name] as track,
    DIFFERENCE(loved2019.[track_name] + [Artist_name],
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019] where not([loved2019].Artist_name = innerx.Artist_name
    and [loved2019].Track_name = innerx.Track_name) order by diff) as diff))
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
FirstDb.dbo.[top 5000 2019-05-24] as innerx
on loved2019.Artist_name and innerx.Track_name
and (loved2019.Track_name+innerx.Artist_name =

    (select top 1 track from (select [Track_name]+[Artist_name] as track,
    DIFFERENCE(loved2019.[track_name] + [Artist_name],
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019] where not([loved2019].Artist_name = innerx.Artist_name
    and [loved2019].Track_name = innerx.Track_name) order by diff) as diff))
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
FirstDb.dbo.[top 5000 2019-05-24] as innerx
on loved2019.Artist_name and innerx.Track_name
and (loved2019.Track_name+innerx.Artist_name =

    (select top 1 track from (select [Track_name]+[Artist_name] as track,
    DIFFERENCE(loved2019.[track_name] + [Artist_name],
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019])  as difz
    
     where not(difz.track = innerx.Artist_name + Track_name)  order by diff)
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
FirstDb.dbo.[top 5000 2019-05-24] as innerx
on loved2019.Artist_name and innerx.Track_name
and (loved2019.Track_name+innerx.Artist_name =

    (select top 1 track from (select [Track_name]+[Artist_name] as track,
    DIFFERENCE(loved2019.[track_name] + [Artist_name],
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019])  as difz

     where not(difz.track = innerx.Artist_name + Track_name)  order by diff)
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
FirstDb.dbo.[top 5000 2019-05-24] as innerx
on loved2019.Artist_name and innerx.Track_name
and (loved2019.Track_name+innerx.Artist_name =

    (select top 1 track from (select [Track_name]+[Artist_name] as track,
    DIFFERENCE(loved2019.[track_name] + [Artist_name],
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019])  as difz

     where not(difz.track = innerx.Artist_name + Track_name) order by diff))
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
join 
FirstDb.dbo.[top 5000 2019-05-24] as innerx
on loved2019.Artist_name and innerx.Track_name
and loved2019.Track_name+innerx.Artist_name =

    (select top 1 track from (select [Track_name]+[Artist_name] as track,
    DIFFERENCE(loved2019.[track_name] + [Artist_name],
    [loved2019].track_name + [loved2019].Artist_name
    ) as diff from [loved2019])  as difz

     where not(difz.track = innerx.Artist_name + Track_name) order by diff)
;-- -. . -..- - / . -. - .-. -.--
select * from

[loved2019]
cross join 
FirstDb.dbo.[top 5000 2019-05-24]
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       difference(loved2019.Track_name+loved2019.Artist_name, [top 5000 2019-05-24].Track_name+[top 5000 2019-05-24].Artist_name),
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from

[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       difference(loved2019.Track_name+loved2019.Artist_name, [top 5000 2019-05-24].Track_name+[top 5000 2019-05-24].Artist_name) as diff,
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       difference(loved2019.Track_name+loved2019.Artist_name, [top 5000 2019-05-24].Track_name+[top 5000 2019-05-24].Artist_name)/(
           len([top 5000 2019-05-24].Track_name+
               [top 5000 2019-05-24].Artist_name)-
                       len(loved2019.Track_name+
                           loved2019.Artist_name)

           ) as diff,
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       difference(loved2019.Track_name+loved2019.Artist_name, [top 5000 2019-05-24].Track_name+[top 5000 2019-05-24].Artist_name)/(
           len([top 5000 2019-05-24].Track_name+
               [top 5000 2019-05-24].Artist_name)-
                       len(loved2019.Track_name+
                           loved2019.Artist_name)
            +0.000001
           ) as diff,
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       difference(loved2019.Track_name+loved2019.Artist_name, [top 5000 2019-05-24].Track_name+[top 5000 2019-05-24].Artist_name)/(
           SQUARE(POWER((len([top 5000 2019-05-24].Track_name+
               [top 5000 2019-05-24].Artist_name)-
                       len(loved2019.Track_name+
                           loved2019.Artist_name)),2))
            +1
           ) as diff,
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       difference(loved2019.Track_name+loved2019.Artist_name, [top 5000 2019-05-24].Track_name+[top 5000 2019-05-24].Artist_name)

           /(
               SQUARE(POWER(len([top 5000 2019-05-24].Track_name- len(loved2019.Track_name),4))+
               SQUARE(POWER(len([top 5000 2019-05-24].Artist_name-loved2019.Artist_name),4))+
            +1
)) as diff,
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       difference(loved2019.Track_name+loved2019.Artist_name, [top 5000 2019-05-24].Track_name+[top 5000 2019-05-24].Artist_name)

           /(
               SQUARE(POWER(len([top 5000 2019-05-24].Track_name- len(loved2019.Track_name)),4)+
               SQUARE(POWER(len([top 5000 2019-05-24].Artist_name-loved2019.Artist_name),4))+
            +1
)) as diff,
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       difference(loved2019.Track_name+loved2019.Artist_name, [top 5000 2019-05-24].Track_name+[top 5000 2019-05-24].Artist_name)

           /(
               SQUARE(POWER(len([top 5000 2019-05-24].Track_name- len(loved2019.Track_name)),4))+
               SQUARE(POWER(len([top 5000 2019-05-24].Artist_name-loved2019.Artist_name),4))+
            +1
) as diff,
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       difference(loved2019.Track_name+loved2019.Artist_name, [top 5000 2019-05-24].Track_name+[top 5000 2019-05-24].Artist_name)

           /(
               SQUARE(POWER(len([top 5000 2019-05-24].Track_name)- len(loved2019.Track_name)),4)+
               SQUARE(POWER(len([top 5000 2019-05-24].Artist_name)-len(loved2019.Artist_name)),4)+
            +1
) as diff,
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       difference(loved2019.Track_name+loved2019.Artist_name, [top 5000 2019-05-24].Track_name+[top 5000 2019-05-24].Artist_name)

           /(
               SQUARE(POWER(len([top 5000 2019-05-24].Track_name)-len(loved2019.Track_name),4))+
               SQUARE(POWER(len([top 5000 2019-05-24].Artist_name)-len(loved2019.Artist_name),4))+
            +1
) as diff,
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       (difference(loved2019.Track_name,[top 5000 2019-05-24].Track_name)+
           difference(loved2019.Artist_name,[top 5000 2019-05-24].Artist_name)
           /
               SQUARE(POWER(len([top 5000 2019-05-24].Track_name)-  len(loved2019.Track_name),4))+
               SQUARE(POWER(len([top 5000 2019-05-24].Artist_name)-len(loved2019.Artist_name),4))+1
) as diff,
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       (difference(loved2019.Track_name,[top 5000 2019-05-24].Track_name)+
           difference(loved2019.Artist_name,[top 5000 2019-05-24].Artist_name)
           /
               ((SQUARE(POWER(len([top 5000 2019-05-24].Track_name)-  len(loved2019.Track_name),4))+
               SQUARE(POWER(len([top 5000 2019-05-24].Artist_name)-len(loved2019.Artist_name),4)))+1)
) as diff,
       [top 5000 2019-05-24].Track_name,
       [top 5000 2019-05-24].Artist_name

from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
UPDATE [top 5000 2019-05-24]
SET [index] =  ROW_NUMBER() OVER(ORDER BY %%physloc%%)
where [index] is null
;-- -. . -..- - / . -. - .-. -.--
with cte as
(
  select *
    , new_row_id=ROW_NUMBER() OVER (ORDER BY %%physloc%% desc)
  from [top 5000 2019-05-24]
  where [index] is null
)
update cte
set [index] = new_row_id
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       loved2019.LoveRow,
       (difference(loved2019.Track_name,[top 5000 2019-05-24].Track_name)+
           difference(loved2019.Artist_name,[top 5000 2019-05-24].Artist_name)
           /
               ((SQUARE(POWER(len([top 5000 2019-05-24].Track_name)-len(loved2019.Track_name),4))+
               SQUARE(POWER(len([top 5000 2019-05-24].Artist_name)-len(loved2019.Artist_name),4)))+1)
        ) as diff,
           [top 5000 2019-05-24].Track_name,
           [top 5000 2019-05-24].Artist_name,
            [top 5000 2019-05-24].[index]
from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)
order by diff,[index] desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
       loved2019.LoveRow,
       (difference(loved2019.Track_name,[top 5000 2019-05-24].Track_name)+
           difference(loved2019.Artist_name,[top 5000 2019-05-24].Artist_name)
           /
               ((SQUARE(POWER(len([top 5000 2019-05-24].Track_name)-len(loved2019.Track_name),4))+
               SQUARE(POWER(len([top 5000 2019-05-24].Artist_name)-len(loved2019.Artist_name),4)))+1)
        ) as diff,
           [top 5000 2019-05-24].Track_name,
           [top 5000 2019-05-24].Artist_name,
            [top 5000 2019-05-24].[index]
from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)

order by diff desc,[index] desc
;-- -. . -..- - / . -. - .-. -.--
select loved2019.Track_name,
       loved2019.Artist_name,
        [top 5000 2019-05-24].[index],
       (difference(loved2019.Track_name,[top 5000 2019-05-24].Track_name)+
           difference(loved2019.Artist_name,[top 5000 2019-05-24].Artist_name)
           /
               ((SQUARE(POWER(len([top 5000 2019-05-24].Track_name)-len(loved2019.Track_name),4))+
               SQUARE(POWER(len([top 5000 2019-05-24].Artist_name)-len(loved2019.Artist_name),4)))+1)
        ) as diff,
           [top 5000 2019-05-24].Track_name,
           [top 5000 2019-05-24].Artist_name,

            loved2019.LoveRow
from
[loved2019]
cross join
FirstDb.dbo.[top 5000 2019-05-24]
where not(dbo.[top 5000 2019-05-24].Artist_name = [loved2019].Artist_name and dbo.[top 5000 2019-05-24].Track_name = dbo.[loved2019].Track_name)

order by diff desc,[index] desc
;-- -. . -..- - / . -. - .-. -.--
select * from FirstDb.dbo.[per_automatik library artits] where artists not in (select FirstDb.dbo.[Artists 2019-05-24].Artist_name from FirstDb.dbo.[Artists 2019-05-24])
;-- -. . -..- - / . -. - .-. -.--
select * from FirstDb.dbo.[Artists 2019-05-24]  where Artist_name not in (select Artists from FirstDb.dbo.[per_automatik library artits])
;-- -. . -..- - / . -. - .-. -.--
select * from FirstDb.dbo.[Artists 2019-05-24] where not(Artist_name = (select Artists from FirstDb.dbo.[per_automatik library artits]))
;-- -. . -..- - / . -. - .-. -.--
select * from FirstDb.dbo.[Artists 2019-05-24] where not(Artist_name = any (select Artists from FirstDb.dbo.[per_automatik library artits]))
;-- -. . -..- - / . -. - .-. -.--
select * from FirstDb.dbo.[Artists 2019-05-24] full outer join FirstDb.dbo.[per_automatik library artits] on FirstDb.dbo.[Artists 2019-05-24].Artist_name = FirstDb.dbo.[per_automatik library artits].Artists 
where FirstDb.dbo.[Artists 2019-05-24].Artist_name is null
;-- -. . -..- - / . -. - .-. -.--
select * from FirstDb.dbo.[Artists 2019-05-24] full outer join FirstDb.dbo.[per_automatik library artits] on FirstDb.dbo.[Artists 2019-05-24].Track_name = FirstDb.dbo.[per_automatik library artits].Artists
where FirstDb.dbo.[Artists 2019-05-24].Track_name is null
;-- -. . -..- - / . -. - .-. -.--
select * from FirstDb.dbo.[Artists 2019-05-24] full outer join FirstDb.dbo.[per_automatik library artits] on FirstDb.dbo.[Artists 2019-05-24].Artist = FirstDb.dbo.[per_automatik library artits].Artists
where FirstDb.dbo.[Artists 2019-05-24].Artist is null
;-- -. . -..- - / . -. - .-. -.--
update cte
set [POSITION] = new_row_id
;-- -. . -..- - / . -. - .-. -.--
with cte as
(
  select *
    , new_row_id=ROW_NUMBER() OVER (ORDER BY %%physloc%% desc)
  from [artist list 2]
  where [POSITION] is null
)
update cte
set [POSITION] = cte.new_row_id
;-- -. . -..- - / . -. - .-. -.--
select * from FirstDb.dbo.[FirefoxHistoryList - 20190523.html]
;-- -. . -..- - / . -. - .-. -.--
select C1 as url, C2+C3+C4 as name from FirstDb.dbo.[FirefoxHistoryList - 20190523.html]
;-- -. . -..- - / . -. - .-. -.--
select C1 as url, C2 + ' ' + C3 + ' ' + C4 
    as name from FirstDb.dbo.[FirefoxHistoryList - 20190523.html]
;-- -. . -..- - / . -. - .-. -.--
select C1 as url, concat(C2,C3,C4)
    as name from FirstDb.dbo.[FirefoxHistoryList - 20190523.html]
;-- -. . -..- - / . -. - .-. -.--
select C1 as url, concat(C2,' ',C3,' ',C4)
    as name from FirstDb.dbo.[FirefoxHistoryList - 20190523.html]
;-- -. . -..- - / . -. - .-. -.--
create table [FirefoxHistoryList-20190523]
(
    C1 text,
    C2 text
)
;-- -. . -..- - / . -. - .-. -.--
select * from FirstDb.dbo.[Ablums 2019-05-24]
;-- -. . -..- - / . -. - .-. -.--
select *,len(name) as nameL,len(artist) as ArtistL from FirstDb.dbo.[Ablums 2019-05-24]
;-- -. . -..- - / . -. - .-. -.--
select *,len(try_Cast(name as nvarchar varying)) as nameL,len(try_Cast(artist as nvarchar varying)) as ArtistL from FirstDb.dbo.[Ablums 2019-05-24]
;-- -. . -..- - / . -. - .-. -.--
select *,
       len(try_Cast(name as nvarchar(256))) as nameL,
       len(try_Cast(artist as nvarchar(256))) as ArtistL


from FirstDb.dbo.[Ablums 2019-05-24]
;-- -. . -..- - / . -. - .-. -.--
select *,
       len(try_Cast(name as nvarchar(256))) as nameL,
       len(try_Cast(artist as nvarchar(256))) as ArtistL


from FirstDb.dbo.[Ablums 2019-05-24]
order by nameL desc, ArtistL desc
;-- -. . -..- - / . -. - .-. -.--
select *,
       len(try_Cast(name as nvarchar(256))) as nameL,
       len(try_Cast(artist as nvarchar(256))) as ArtistL


from FirstDb.dbo.[Ablums 2019-05-24]
order by ArtistL desc,nameL desc
;-- -. . -..- - / . -. - .-. -.--
select 
       artist,
       album,
       track,
       count(1)
from FirstDb.dbo.LastFmDataDump
group by artist,
       album,
       track
;-- -. . -..- - / . -. - .-. -.--
select
       artist,
       len(try_cast(artist as nvarchar(255))),
       album,
       len(try_cast(album as nvarchar(255))),
       track,
       len(try_cast(track as nvarchar(255)))
from FirstDb.dbo.LastFmDataDump
;-- -. . -..- - / . -. - .-. -.--
select
       artist,
       len(try_cast(artist as nvarchar(255))) as al,
       album,
       len(try_cast(album as nvarchar(255))) as ml,
       track,
       len(try_cast(track as nvarchar(255))) as tl
from FirstDb.dbo.LastFmDataDump
order by
;-- -. . -..- - / . -. - .-. -.--
select
       artist,
       len(try_cast(artist as nvarchar(255))) as al,
       album,
       len(try_cast(album as nvarchar(255))) as ml,
       track,
       len(try_cast(track as nvarchar(255))) as tl
from FirstDb.dbo.LastFmDataDump
order by al
;-- -. . -..- - / . -. - .-. -.--
select
       artist,
       len(try_cast(artist as nvarchar(255))) as al,
       album,
       len(try_cast(album as nvarchar(255))) as ml,
       track,
       len(try_cast(track as nvarchar(255))) as tl
from FirstDb.dbo.LastFmDataDump
order by al desc
;-- -. . -..- - / . -. - .-. -.--
select
       artist,
       len(try_cast(artist as nvarchar(255))) as al,
       album,
       len(try_cast(album as nvarchar(255))) as ml,
       track,
       len(try_cast(track as nvarchar(255))) as tl
from FirstDb.dbo.LastFmDataDump
order by ml desc
;-- -. . -..- - / . -. - .-. -.--
select
       artist,
       len(try_cast(artist as nvarchar(255))) as al,
       album,
       len(try_cast(album as nvarchar(255))) as ml,
       track,
       len(try_cast(track as nvarchar(255))) as tl
from FirstDb.dbo.LastFmDataDump
order by tl desc
;-- -. . -..- - / . -. - .-. -.--
select
       artist,
       album,
       track,
        count(1) as tl
from FirstDb.dbo.LastFmDataDump
group by artist,
       album,
       track
order by tl desc
;-- -. . -..- - / . -. - .-. -.--
select
       
       artist,
       album,
       track,
        count(1) as tl
from FirstDb.dbo.LastFmDataDump
group by artist,
       album,
       track
order by album desc
;-- -. . -..- - / . -. - .-. -.--
select

       artist,
       album,
       track,
        count(1) as tl
        ,amount
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) amount FROM FirstDb.dbo.LastFmDataDump
) on album


group by artist,
       album,
       track
order by amount desc, album
;-- -. . -..- - / . -. - .-. -.--
select

       artist,
       LastFmDataDump.album,
       track,
        count(1) as tl
        ,amount
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) amount FROM FirstDb.dbo.LastFmDataDump
    group by album
) as aa on LastFmDataDump.album


group by artist,
       LastFmDataDump.album,
       track, amount
order by amount desc, album
;-- -. . -..- - / . -. - .-. -.--
select

       artist,
       LastFmDataDump.album,
       track,
        count(1) as tl
        ,amount
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       LastFmDataDump.album,
       track, amount
order by amount desc, album
;-- -. . -..- - / . -. - .-. -.--
select

       artist,
       LastFmDataDump.album,
       track,
        count(1) as tl
        ,amount
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(album) as amount FROM FirstDb.dbo.LastFmDataDump
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       LastFmDataDump.album,
       track, amount
order by amount desc, album
;-- -. . -..- - / . -. - .-. -.--
select

       artist,
       LastFmDataDump.album,
       track,
        count(1) as tl
        ,amount
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       LastFmDataDump.album,
       track, amount
order by amount desc, album
;-- -. . -..- - / . -. - .-. -.--
select

       artist,
       LastFmDataDump.album,
       track,
        count(1) as tl
        ,amount, concat('https://www.last.fm/user/konstruktor_k/library/music/',artist,'/',aa.album)
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       LastFmDataDump.album,
       track, amount
order by amount desc, album
;-- -. . -..- - / . -. - .-. -.--
select

       artist,
       LastFmDataDump.album,
       track,
        count(1) as tl
        ,amount, concat('https://www.last.fm/user/konstruktor_k/library/music/',artist,'/',aa.album) as url
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       LastFmDataDump.album,
       track, amount
order by amount desc, album
;-- -. . -..- - / . -. - .-. -.--
select

       artist,
       LastFmDataDump.album,
       track,
        count(1) as tl
        ,amount, concat('https://www.last.fm/user/konstruktor_k/library/music/',artist,'/',aa.album) as url
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       dbo.LastFmDataDump.album,
       track, amount
order by amount desc, [album]
;-- -. . -..- - / . -. - .-. -.--
select

       artist,
       LastFmDataDump.album,
       track,
        count(1) as tl
        ,amount, concat('https://www.last.fm/user/konstruktor_k/library/music/',artist,'/',LastFmDataDump.album) as url
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       dbo.LastFmDataDump.album,
       track, amount
order by amount desc, [album]
;-- -. . -..- - / . -. - .-. -.--
select

       artist,
       LastFmDataDump.album,
       track,
        count(1) as playcount
        ,amount as albumPlayCount, concat('https://www.last.fm/user/konstruktor_k/library/music/',artist,'/',LastFmDataDump.album) as url
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       dbo.LastFmDataDump.album,
       track, amount
order by albumPlayCount desc, [album], playcount desc
;-- -. . -..- - / . -. - .-. -.--
with albumsByPlays as (select
       artist,
       LastFmDataDump.album,
       track,
        count(1) as playcount
        ,amount as albumPlayCount, concat('https://www.last.fm/user/konstruktor_k/library/music/',artist,'/',LastFmDataDump.album) as url
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       dbo.LastFmDataDump.album,
       track, amount
order by albumPlayCount desc, [album], playcount desc)


select albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       albumsByPlays.playcount,
       url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join albumsByPlays on albumsByPlays.artist = albumless.artist and albumsByPlays.track = albumless.track
order by [playcount] desc
;-- -. . -..- - / . -. - .-. -.--
with albumsByPlays as (select
       artist,
       LastFmDataDump.album,
       track,
        count(1) as playcount
        ,amount as albumPlayCount, concat('https://www.last.fm/user/konstruktor_k/library/music/',artist,'/',LastFmDataDump.album) as url
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       dbo.LastFmDataDump.album,
       track, amount
order by albumPlayCount desc, [album], playcount desc)


select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       albumsByPlays.playcount,
       url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join albumsByPlays on albumsByPlays.artist = albumless.artist and albumsByPlays.track = albumless.track
order by [playcount] desc
;-- -. . -..- - / . -. - .-. -.--
with albumsByPlays as (select
       artist,
       LastFmDataDump.album,
       track,
        count(1) as playcount
        ,amount as albumPlayCount, concat('https://www.last.fm/user/konstruktor_k/library/music/',artist,'/',LastFmDataDump.album) as url
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       dbo.LastFmDataDump.album,
       track, amount
order by albumPlayCount desc, [album], playcount desc)


select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       albumsByPlays.playcount,
       url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join albumsByPlays on albumsByPlays.artist = albumless.artist and albumsByPlays.track = albumless.track
order by 3 desc
;-- -. . -..- - / . -. - .-. -.--
select
       artist,
       LastFmDataDump.album,
       track,
        count(1) as playcount
        ,amount as albumPlayCount, concat('https://www.last.fm/user/konstruktor_k/library/music/',artist,'/',LastFmDataDump.album) as url
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       dbo.LastFmDataDump.album,
       track, amount
order by albumPlayCount desc, [album], playcount desc
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW TracksByAlbum AS

select
       artist,
       LastFmDataDump.album,
       track,
        count(1) as playcount
        ,amount as albumPlayCount, concat('https://www.last.fm/user/konstruktor_k/library/music/',artist,'/',LastFmDataDump.album) as url
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       dbo.LastFmDataDump.album,
       track, amount
order by albumPlayCount desc, [album], playcount desc
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW TracksByAlbum AS

select
       artist,
       LastFmDataDump.album,
       track,
        count(1) as playcount
        ,amount as albumPlayCount, concat('https://www.last.fm/user/konstruktor_k/library/music/',artist,'/',LastFmDataDump.album) as url
from FirstDb.dbo.LastFmDataDump

Left outer join
(
    SELECT album, count(1) as amount FROM FirstDb.dbo.LastFmDataDump
    where album <> ''
    group by album
) as aa on LastFmDataDump.album = aa.album


group by artist,
       dbo.LastFmDataDump.album,
       track, amount
;-- -. . -..- - / . -. - .-. -.--
select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,
       url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
order by 3 desc
;-- -. . -..- - / . -. - .-. -.--
select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,
       url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
order by 3 desc
;-- -. . -..- - / . -. - .-. -.--
select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,
       url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
order by 3 desc, TracksByAlbum.playcount desc
;-- -. . -..- - / . -. - .-. -.--
select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,
       url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
order by 3 desc, 4, TracksByAlbum.playcount desc
;-- -. . -..- - / . -. - .-. -.--
select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,
       url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
order by 3 desc, 2, TracksByAlbum.playcount desc
;-- -. . -..- - / . -. - .-. -.--
select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,
       url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
order by 5 desc, 3 desc, 2, TracksByAlbum.playcount desc
;-- -. . -..- - / . -. - .-. -.--
select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,
       url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
order by 5 desc, 3 desc, 2
;-- -. . -..- - / . -. - .-. -.--
select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,
       
        albumless.playcount/TracksByAlbum.playcount as urgence,
url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
order by 5 desc, 3 desc, 2
;-- -. . -..- - / . -. - .-. -.--
select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,

        try_cast(albumless.playcount/TracksByAlbum.playcount as float ) as urgence,
url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
order by 5 desc, 3 desc, 2
;-- -. . -..- - / . -. - .-. -.--
select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,

         CAST(albumless.playcount AS float) / CAST(TracksByAlbum.playcount AS float) as urgence,
url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
order by 5 desc, 3 desc, 2
;-- -. . -..- - / . -. - .-. -.--
select top 500 albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,

         CAST(albumless.playcount AS float) / CAST(TracksByAlbum.playcount AS float) as urgence,
url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
order by urgence desc, 5 desc, 3 desc, 2
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW ToCorrectAlbumName AS
select albumless.artist,
       albumless.track,
       albumless.playcount,
       album,
       TracksByAlbum.playcount,

         CAST(albumless.playcount AS float) / CAST(TracksByAlbum.playcount AS float) as urgence,
url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
;-- -. . -..- - / . -. - .-. -.--
CREATE VIEW ToCorrectAlbumName AS
select albumless.artist,
       albumless.track,
       albumless.playcount as playCountWithoutAlbum,
       album,
       TracksByAlbum.playcount as playCountTotal,

         CAST(albumless.playcount AS float) / CAST(TracksByAlbum.playcount AS float) as urgence,
url
from
     (select
       LastFmDataDump.artist,
       LastFmDataDump.track,
       count(1) as playcount

from FirstDb.dbo.LastFmDataDump
where LastFmDataDump.album = ''
group by LastFmDataDump.artist,
       LastFmDataDump.track) as albumless

left outer join TracksByAlbum on TracksByAlbum.artist = albumless.artist and TracksByAlbum.track = albumless.track
where album  <> ''
;-- -. . -..- - / . -. - .-. -.--
select TrackList.Track_name,
       TrackList.Artist_name,
        tracklist2.[Order],
       cast((difference(TrackList.Track_name,tracklist2.Track_name))+
           difference(TrackList.Artist_name,tracklist2.Artist_name)as float)
           /
               cast(((SQUARE(POWER(len(tracklist2.Track_name)-len(TrackList.Track_name),4))+
               SQUARE(POWER(len(tracklist2.Artist_name)-len(TrackList.Artist_name),4)))+1)as float)
         as diff,
           tracklist2.Track_name,
           tracklist2.Artist_name,

            TrackList.OrderAdded
from
TrackList
cross join
FirstDb.dbo.tracklist2
where not(upper(dbo.tracklist2.Artist_name) = upper((TrackList.Artist_name)) and upper(dbo.tracklist2.Track_name) = upper(dbo.TrackList.Track_name))

order by diff desc,[Order] desc
;-- -. . -..- - / . -. - .-. -.--
select TrackList.Track_name,
       TrackList.Artist_name,
       -- tracklist2.[Order],
       --    tracklist2.Track_name,
       --    tracklist2.Artist_name,

            TrackList.OrderAdded,
(
select top 1
            Track_name
            Artist_name,
            [Order],
            cast((difference(TrackList.Track_name,tracklist2.Track_name))+
            difference(TrackList.Artist_name,tracklist2.Artist_name) as float)
            /
            cast(
            (SQUARE(POWER(len(tracklist2.Track_name)-len(TrackList.Track_name),4))+
            SQUARE(POWER(len(tracklist2.Artist_name)-len(TrackList.Artist_name),4))+1
            )as float)
         as diff
        from firstDb.dbo.tracklist2
        Order by diff desc
    )

from
TrackList
;-- -. . -..- - / . -. - .-. -.--
select TrackList.Track_name,
       TrackList.Artist_name,
       -- tracklist2.[Order],
       --    tracklist2.Track_name,
       --    tracklist2.Artist_name,

            TrackList.OrderAdded,
(
select top 1
            concat('https://www.last.fm/user/konstruktor_k/library/music/',Artist_name,'/_/', Track_name)
        from firstDb.dbo.tracklist2
        Order by cast((difference(TrackList.Track_name,tracklist2.Track_name))+
            difference(TrackList.Artist_name,tracklist2.Artist_name) as float)
            /
            cast(
            (SQUARE(POWER(len(tracklist2.Track_name)-len(TrackList.Track_name),4))+
            SQUARE(POWER(len(tracklist2.Artist_name)-len(TrackList.Artist_name),4))+1
            )as float) desc
    )

from
TrackList
;-- -. . -..- - / . -. - .-. -.--
select TrackList.Track_name,
       TrackList.Artist_name,
       -- tracklist2.[Order],
       --    tracklist2.Track_name,
       --    tracklist2.Artist_name,

            TrackList.OrderAdded,
(
select top 1
            concat('https://www.last.fm/user/konstruktor_k/library/music/',Artist_name,'/_/', Track_name)
        from firstDb.dbo.tracklist2
        Order by cast((difference(TrackList.Track_name,tracklist2.Track_name))+
            difference(TrackList.Artist_name,tracklist2.Artist_name) as float)
            /
            cast(
            (SQUARE(POWER(len(tracklist2.Track_name)-len(TrackList.Track_name),4))+
            SQUARE(POWER(len(tracklist2.Artist_name)-len(TrackList.Artist_name),4))+1
            )as float) desc
    )

from
TrackList
order by OrderAdded desc
;-- -. . -..- - / . -. - .-. -.--
select TrackList.Track_name,
       TrackList.Artist_name,
       -- tracklist2.[Order],
       --    tracklist2.Track_name,
       --    tracklist2.Artist_name,

            TrackList.[Order],
(
select top 1
            concat('https://www.last.fm/user/konstruktor_k/library/music/',Artist_name,'/_/', Track_name)
        from TrackList as tracklist2
        Order by cast((difference(TrackList.Track_name,tracklist2.Track_name))+
            difference(TrackList.Artist_name,tracklist2.Artist_name) as float)
            /
            cast(
            (SQUARE(POWER(len(tracklist2.Track_name)-len(TrackList.Track_name),4))+
            SQUARE(POWER(len(tracklist2.Artist_name)-len(TrackList.Artist_name),4))+1
            )as float) desc
    )

from
firstDb.dbo.tracklist2 as trackList
order by [Order] desc
;-- -. . -..- - / . -. - .-. -.--
select TrackList.Track_name,
       TrackList.Artist_name,
       -- tracklist2.[Order],
       --    tracklist2.Track_name,
       --    tracklist2.Artist_name,

            TrackList.[Order],
(
select top 1
            concat('https://www.last.fm/user/konstruktor_k/library/music/',Artist_name,'/_/', Track_name)
        from TrackList as tracklist2
        where not(upper(dbo.tracklist2.Artist_name) = upper((TrackList.Artist_name)) and upper(dbo.tracklist2.Track_name) = upper(dbo.TrackList.Track_name))
        Order by cast((difference(TrackList.Track_name,tracklist2.Track_name))+
            difference(TrackList.Artist_name,tracklist2.Artist_name) as float)
            /
            cast(
            (SQUARE(POWER(len(tracklist2.Track_name)-len(TrackList.Track_name),4))+
            SQUARE(POWER(len(tracklist2.Artist_name)-len(TrackList.Artist_name),4))+1
            )as float) desc
            
    )

from
firstDb.dbo.tracklist2 as trackList
order by [Order] desc
;-- -. . -..- - / . -. - .-. -.--
select TrackList.Track_name,
       TrackList.Artist_name,
       -- tracklist2.[Order],
       --    tracklist2.Track_name,
       --    tracklist2.Artist_name,

            TrackList.[Order],
(
select top 1
            concat('https://www.last.fm/user/konstruktor_k/library/music/',Artist_name,'/_/', Track_name)
        from TrackList as tracklist2
        where not(upper(trackList.Artist_name) = upper((tracklist2.Artist_name)) and upper(trackList.Track_name) = upper(tracklist2.Track_name))
        Order by cast((difference(TrackList.Track_name,tracklist2.Track_name))+
            difference(TrackList.Artist_name,tracklist2.Artist_name) as float)
            /
            cast(
            (SQUARE(POWER(len(tracklist2.Track_name)-len(TrackList.Track_name),4))+
            SQUARE(POWER(len(tracklist2.Artist_name)-len(TrackList.Artist_name),4))+1
            )as float) desc

    )

from
firstDb.dbo.tracklist2 as trackList
order by [Order] desc
;-- -. . -..- - / . -. - .-. -.--
select TrackList.track,
       TrackList.artist,
       -- tracklist2.[Order],
       --    tracklist2.Track_name,
       --    tracklist2.Artist_name,

            TrackList.playcount,
(
select top 1
            concat('https://www.last.fm/user/konstruktor_k/library/music/',tracklist2.Artist_name,'/_/', tracklist2.Track_name)
        from TrackList as tracklist2
        where not(upper(trackList.Artist) = upper((tracklist2.Artist_name)) and upper(trackList.Track) = upper(tracklist2.Track_name))
        Order by cast((difference(TrackList.Track,tracklist2.Track_name))+
            difference(TrackList.Artist,tracklist2.Artist_name) as float)
            /
            cast(
            (SQUARE(POWER(len(tracklist2.Track_name)-len(TrackList.Track),4))+
            SQUARE(POWER(len(tracklist2.Artist_name)-len(TrackList.Artist),4))+1
            )as float) desc

    )

from
TracksByAlbum as trackList
order by playcount desc
;-- -. . -..- - / . -. - .-. -.--
select TOP (1000) TrackList.track,
       TrackList.artist,
       -- tracklist2.[Order],
       --    tracklist2.Track_name,
       --    tracklist2.Artist_name,

            TrackList.playcount,
(
select top 1
            concat('https://www.last.fm/user/konstruktor_k/library/music/',tracklist2.Artist_name,'/_/', tracklist2.Track_name)
        from TrackList as tracklist2
        where not(upper(trackList.Artist) = upper((tracklist2.Artist_name)) and upper(trackList.Track) = upper(tracklist2.Track_name))
        Order by cast((difference(TrackList.Track,tracklist2.Track_name))+
            difference(TrackList.Artist,tracklist2.Artist_name) as float)
            /
            cast(
            (SQUARE(POWER(len(tracklist2.Track_name)-len(TrackList.Track),4))+
            SQUARE(POWER(len(tracklist2.Artist_name)-len(TrackList.Artist),4))+1
            )as float) desc

    )

from
TracksByAlbum as trackList
order by playcount desc
;-- -. . -..- - / . -. - .-. -.--
select TOP (1000) TrackList.track,
       TrackList.artist,
            TrackList.playcount,
                  concat('https://www.last.fm/user/konstruktor_k/library/music/',TrackList.artist,'/_/', TrackList.track) as sw1,
(
select top 1
            concat('https://www.last.fm/user/konstruktor_k/library/music/',tracklist2.Artist_name,'/_/', tracklist2.Track_name)
        from TrackList as tracklist2
        where not(upper(trackList.Artist) = upper((tracklist2.Artist_name)) and upper(trackList.Track) = upper(tracklist2.Track_name))
        Order by cast((difference(TrackList.Track,tracklist2.Track_name))+
            difference(TrackList.Artist,tracklist2.Artist_name) as float)
            /
            cast(
            (SQUARE(POWER(len(tracklist2.Track_name)-len(TrackList.Track),4))+
            SQUARE(POWER(len(tracklist2.Artist_name)-len(TrackList.Artist),4))+1
            )as float) desc

    ) as sw2, difference([sw1],[sw2])

from
TracksByAlbum as trackList
order by playcount desc
;-- -. . -..- - / . -. - .-. -.--
with assasdasd as(
         select TOP (1000) TrackList.track,
    TrackList.artist,
            TrackList.playcount,
         concat('https://www.last.fm/user/konstruktor_k/library/music/',TrackList.artist,'/_/', TrackList.track) as sw1,
    (
         select top 1 concat('https://www.last.fm/user/konstruktor_k/library/music/', tracklist2.Artist_name, '/_/',
                             tracklist2.Track_name)
         from TrackList as tracklist2
         where not (upper(trackList.Artist) = upper((tracklist2.Artist_name)) and
                    upper(trackList.Track) = upper(tracklist2.Track_name))
         Order by cast((difference(TrackList.Track, tracklist2.Track_name)) +
                       difference(TrackList.Artist, tracklist2.Artist_name) as float)
                      /
                  cast(
                          (SQUARE(POWER(len(tracklist2.Track_name) - len(TrackList.Track), 4)) +
                           SQUARE(POWER(len(tracklist2.Artist_name) - len(TrackList.Artist), 4)) + 1
                              ) as float) desc

         ) as sw2

from
    TracksByAlbum as trackList

)

select *,difference(sw2,sw1) as diff from assasdasd
order by diff desc
;-- -. . -..- - / . -. - .-. -.--
with assasdasd as(
         select TOP (1000) TrackList.track,
    TrackList.artist,
            TrackList.playcount,
         concat('https://www.last.fm/user/konstruktor_k/library/music/',TrackList.artist,'/_/', TrackList.track) as sw1,
    (
         select top 1 concat('https://www.last.fm/user/konstruktor_k/library/music/', tracklist2.Artist_name, '/_/',
                             tracklist2.Track_name)
         from TrackList as tracklist2
         where not (upper(trackList.Artist) = upper((tracklist2.Artist_name)) and
                    upper(trackList.Track) = upper(tracklist2.Track_name))
         Order by cast((difference(TrackList.Track, tracklist2.Track_name)) +
                       difference(TrackList.Artist, tracklist2.Artist_name) as float)
                      /
                  cast(
                          (SQUARE(POWER(len(tracklist2.Track_name) - len(TrackList.Track), 4)) +
                           SQUARE(POWER(len(tracklist2.Artist_name) - len(TrackList.Artist), 4)) + 1
                              ) as float) desc

         ) as sw2

from
    TracksByAlbum as trackList

)

select *,difference(sw2,sw1) as diff from assasdasd
order by diff desc, sw1, sw2
;-- -. . -..- - / . -. - .-. -.--
.Artist_name
;-- -. . -..- - / . -. - .-. -.--
with assasdasd as(
         select TOP (1000) TrackList.track,
    TrackList.artist,
            TrackList.playcount,
         concat('https://www.last.fm/user/konstruktor_k/library/music/',TrackList.artist,'/_/', TrackList.track) as sw1,
    (
         select top 1 concat('https://www.last.fm/user/konstruktor_k/library/music/', tracklist2.[Artist name], '/_/',
                             tracklist2.[Track name])
         from FirstDb.dbo.[My Lastfm Playlist_1] as tracklist2
         where not (upper(trackList.Artist) = upper((tracklist2.[Artist name])) and
                    upper(trackList.Track) = upper(tracklist2.[Track name]))
         Order by cast((difference(TrackList.Track, tracklist2.[Track name])) +
                       difference(TrackList.Artist, tracklist2.[Artist name]) as float)
                      /
                  cast(
                          (SQUARE(POWER(len(tracklist2.[Track name]) - len(TrackList.Track), 4)) +
                           SQUARE(POWER(len(tracklist2.[Artist name]) - len(TrackList.Artist), 4)) + 1
                              ) as float) desc

         ) as sw2

from
    TracksByAlbum as trackList

)

select *,difference(sw2,sw1) as diff from assasdasd
order by diff desc, sw1, sw2
;-- -. . -..- - / . -. - .-. -.--
with assasdasd as(
         select TOP (1000)      TrackList.track,
                                TrackList.artist,
                                TrackList.playcount,
                                concat('https://www.last.fm/user/konstruktor_k/library/music/',TrackList.artist,'/_/', TrackList.track) as sw1,
    (
         select top 1 concat('https://www.last.fm/user/konstruktor_k/library/music/', tracklist2.[Artist name], '/_/',
                             tracklist2.[Track name])
         from FirstDb.dbo.[My Lastfm Playlist_1] as tracklist2
         where not (upper(trackList.Artist) = upper((tracklist2.[Artist name])) and
                    upper(trackList.Track) = upper(tracklist2.[Track name]))
         Order by cast((difference(TrackList.Track, tracklist2.[Track name])) +
                       difference(TrackList.Artist, tracklist2.[Artist name]) as float)
                      /
                  cast(
                          (SQUARE(POWER(len(tracklist2.[Track name]) - len(TrackList.Track), 4)) +
                           SQUARE(POWER(len(tracklist2.[Artist name]) - len(TrackList.Artist), 4)) + 1
                              ) as float) desc

         ) as sw2

from
    TracksByAlbum as trackList

)

select *,difference(sw2,sw1) as diff from assasdasd
order by diff desc, sw1, sw2
;-- -. . -..- - / . -. - .-. -.--
select TrackList.track,
       TrackList.Artist,
       TrackList.playcount,
       
           tracklist2.[Artist name],
           tracklist2.[Track name],
            cast(difference(TrackList.Track, tracklist2.[Track name])+ difference(TrackList.Artist, tracklist2.[Artist name]) as float)
       / cast((SQUARE(POWER(len(tracklist2.[Track name]) - len(TrackList.Track), 4)) + SQUARE(POWER(len(tracklist2.[Artist name]) - len(TrackList.Artist), 4)) + 1) as float) as diff
from
TracksByAlbum as trackList
cross join
FirstDb.dbo.[My Lastfm Playlist_1] as tracklist2
where not(case(dbo.tracklist2.Artist_name) = case(TrackList.Artist) and case(dbo.tracklist2.Track_name) = case(dbo.TrackList.Track_name))
order by diff desc,playcount desc
;-- -. . -..- - / . -. - .-. -.--
select TrackList.track,
       TrackList.Artist,
       TrackList.playcount,
       
           tracklist2.[Artist name],
           tracklist2.[Track name],
            cast(difference(TrackList.Track, tracklist2.[Track name])+ difference(TrackList.Artist, tracklist2.[Artist name]) as float)
       / cast((SQUARE(POWER(len(tracklist2.[Track name]) - len(TrackList.Track), 4)) + SQUARE(POWER(len(tracklist2.[Artist name]) - len(TrackList.Artist), 4)) + 1) as float) as diff
from
TracksByAlbum as trackList
cross join
FirstDb.dbo.[My Lastfm Playlist_1] as tracklist2

where 
      not(
          upper(dbo.tracklist2.Artist_name) = upper(TrackList.Artist) 
                                                     and
        upper(dbo.tracklist2.Track_name) = upper(dbo.TrackList.Track_name)
          )

order by diff desc,playcount desc
;-- -. . -..- - / . -. - .-. -.--
select TrackList.track,
       TrackList.Artist,
       TrackList.playcount,
       tracklist2.[Artist name],
       tracklist2.[Track name],
            cast(difference(TrackList.Track, tracklist2.[Track name])+ difference(TrackList.Artist, tracklist2.[Artist name]) as float)
       / cast((SQUARE(POWER(len(tracklist2.[Track name]) - len(TrackList.Track), 4)) + SQUARE(POWER(len(tracklist2.[Artist name]) - len(TrackList.Artist), 4)) + 1) as float) as diff
from
TracksByAlbum as trackList
cross join
FirstDb.dbo.[My Lastfm Playlist_1] as tracklist2

where
      not(
          upper(tracklist2.[Artist name]) = upper(TrackList.Artist)
                                                     and
        upper(tracklist2.[Track name]) = upper(dbo.TrackList.Track_name)
          )

order by diff desc,playcount desc
;-- -. . -..- - / . -. - .-. -.--
select TrackList.track,
       TrackList.Artist,
       TrackList.playcount,
       tracklist2.[Artist name],
       tracklist2.[Track name],
            cast(difference(TrackList.Track, tracklist2.[Track name])+ difference(TrackList.Artist, tracklist2.[Artist name]) as float)
       / cast((SQUARE(POWER(len(tracklist2.[Track name]) - len(TrackList.Track), 4)) + SQUARE(POWER(len(tracklist2.[Artist name]) - len(TrackList.Artist), 4)) + 1) as float) as diff
from
TracksByAlbum as trackList
cross join
FirstDb.dbo.[My Lastfm Playlist_1] as tracklist2

where
      not(
          upper(tracklist2.[Artist name]) = upper(TrackList.Artist)
                                                     and
        upper(tracklist2.[Track name]) = upper(TrackList.Track)
          )

order by diff desc,playcount desc