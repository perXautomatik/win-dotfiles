with intialUrlAndVi as (select url urlid, from_visit visitId from (
    with ctx as (
        WITH RECURSIVE rcte AS (SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
            FROM main.visits mv UNION ALL
        SELECT mv.id, mv.url, mv.visit_time, mv.from_visit
            FROM rcte INNER JOIN main.visits mv ON rcte.from_visit = mv.id)
        SELECT * from rcte where from_visit != 0)
        select id, url, max(visit_time) maxVisit, count(visit_time) countVisit, from_visit
            from ctx group by from_visit, url))
   ,UrlIdOnly as (select urlid , url toUrl from intialUrlAndVi LEFT JOIN visits ON visitId = visits.id)
   ,urlidByOccurance as (select urlid uid,count(*) c  from (select urlid from UrlIdOnly union all select toUrl from UrlIdOnly) group by urlid)
    ,withOccurance as (select urlid fromUrl, toUrl, urlid_c lu, c ltu from (select urlid, toUrl, c urlid_c from UrlIdOnly inner join urlidByOccurance on UrlIdOnly.urlid = urlidByOccurance.uid) q inner join urlidByOccurance on q.toUrl = urlidByOccurance.uid)
   ,onlyUrls as (select iif(lu < ltu, toUrl, fromUrl) fromUrl, iif(lu < ltu, fromUrl, toUrl) toUrl from withOccurance)
   ,cu as (select url fromUrl, length(url) lu, toUrl, length(toUrl) ltu from (select fromUrl, url toUrl from onlyUrls  LEFT JOIN urls ON toUrl = urls.id)LEFT JOIN urls ON fromUrl = urls.id)

select distinct '' domain,* from cu order by fromUrl









