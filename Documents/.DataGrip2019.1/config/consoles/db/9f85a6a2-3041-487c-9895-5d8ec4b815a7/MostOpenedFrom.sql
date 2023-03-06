select fromX, sum(tot) tots, group_concat(toUrl) toUrls
from (select group_concat(urlsurl) fromX,
             sum(fromToCount)      tot,
             wurl                  toUrl
      from (select distinct
                   w.url wurl,
                   fromToCount,
                   urls.url urlsurl

            from (select t.*,x.url urlx from (select url,visitId, fromToCount from (select *from (select distinct url urlId,from_visit visitId,count(*) fromToCount from visits where from_visit != 0 group by url,from_visit
                                                                                                 ) q
                                                                                                     left outer join urls v on v.id = q.urlId)) t left outer join visits x on id = visitId) w
                     left outer join urls on w.urlx = urls.id)
      group by toUrl)
group by fromX
having length(fromX) < length(toUrls)
order by tots desc,length(toUrls) desc






