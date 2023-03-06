select * from moz_places;
;-- -. . -..- - / . -. - .-. -.--
select * from moz_bookmarks;
;-- -. . -..- - / . -. - .-. -.--
select group_concat( distinct title) title, group_concat(id) id from moz_places group by url;
;-- -. . -..- - / . -. - .-. -.--
select group_concat( distinct title) title, group_concat(id) id, count(*) c from moz_places group by url order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select group_concat(url), title, group_concat(id), group_concat(c) c
from (select url, group_concat( distinct title) title, group_concat(id) id, count(*) c from moz_places group by url order by c desc)group by title;
;-- -. . -..- - / . -. - .-. -.--
select group_concat(url), title, group_concat(id), sum(c) c
from (select url, group_concat( distinct title) title, group_concat(id) id, count(*) c from moz_places group by url )group by title order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select * from moz_places where id in (select id from 
(select group_concat(url), title, group_concat(id) id, sum(c) c
from (select url, group_concat( distinct title) title, group_concat(id) id, count(*) c from moz_places group by url )group by title order by c desc)
 limit 1  );
;-- -. . -..- - / . -. - .-. -.--
select * from moz_places where id in (select ','||id||'' from
(select group_concat(url), title, group_concat(id) id, sum(c) c
from (select url, group_concat( distinct title) title, group_concat(id) id, count(*) c from moz_places group by url )group by title order by c desc)
 limit 1  );
;-- -. . -..- - / . -. - .-. -.--
select * from moz_places where (select id from
(select group_concat(url), title, group_concat(id) id, sum(c) c
from (select url, group_concat( distinct title) title, group_concat(id) id, count(*) c from moz_places group by url )group by title order by c desc)
 limit 1  ) like '%'||id||'%';
;-- -. . -..- - / . -. - .-. -.--
select * from moz_places where (select ','||id||',' from
(select group_concat(url), title, group_concat(id) id, sum(c) c
from (select url, group_concat( distinct title) title, group_concat(id) id, count(*) c from moz_places group by url )group by title order by c desc)
 limit 1  ) like '%'||id||'%';
;-- -. . -..- - / . -. - .-. -.--
WITH reverse(i, c,src) AS (
    values(-1, '','')
    UNION ALL SELECT i-1, substr(src, i, 1) AS r FROM reverse
    WHERE r!=''
)
SELECT group_concat(c, '') AS reversed FROM reverse cross join moz_places where reverse.src = rev_host;
;-- -. . -..- - / . -. - .-. -.--
SELECT group_concat(c, '') AS reversed FROM (WITH reverse(i, c,src) AS (
    values(-1, '','')
    UNION ALL SELECT i-1, substr(src, i, 1) AS r FROM reverse
    WHERE r!=''
)select * from reverse) as reverse cross join moz_places where reverse.src = rev_host;
;-- -. . -..- - / . -. - .-. -.--
select *,
       (WITH reverse(i, c) AS (
    values(-1, '')
    UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse
    WHERE r!=''
) SELECT group_concat(c, '') AS reversed FROM reverse)
       
       from moz_places where title = 'likes';
;-- -. . -..- - / . -. - .-. -.--
with
     url as (select *,
       (WITH reverse(i, c) AS (
    values(-1, '')
    UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse
    WHERE r!=''
) SELECT group_concat(c, '') AS reversed FROM reverse) domain

       from moz_places ),
     urlWithDomain as (select * from url),
     
     domz as (select 'google.se' dom union select 'Google Custom Search' union select 'Redirecting' )

select count(url) c,max(url) u,
(case when title is null then domain else title end) title , domain from urlWithDomain

where title in (select dom from domz
)
group by url
    having domain in ( 'bing.com', 'one-tab.com', 'google.com',
         'google.se');
;-- -. . -..- - / . -. - .-. -.--
with
     url as (select *,(WITH reverse(i, c) AS (values(-1, '')UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='') SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places ),
     domz as (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' )

    ,x as (select count(url)                                           c,
       max(url)                                             url,
       (case when title is null then domain else title end) title,
       domain
from url urlWithDomain inner join domz using (title))

     select * from x;
;-- -. . -..- - / . -. - .-. -.--
with
     url as (select *,(WITH reverse(i, c) AS (values(-1, '')UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='') SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places ),
     domz as (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' )
    ,x as (select count(url)  c, max(url)  url,
                  (case when title is null then domain else title end) title,
                  domain from url urlWithDomain inner join domz using (title))

     select * from x
group by url;
;-- -. . -..- - / . -. - .-. -.--
with
     url as (select *,(WITH reverse(i, c) AS (values(-1, '')UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='') SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places ),
     domz as (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' )
    ,x as (select count(url)  c, max(url)  url,
                  (case when title is null then domain else title end) title,
                  domain from url urlWithDomain inner join domz using (title))

     select * from x
group by url;
;-- -. . -..- - / . -. - .-. -.--
with
     url as (select *,(WITH reverse(i, c) AS (values(-1, '')UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='') SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places ),
     domz as (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' )
    ,x as (select count(url)  c, max(url)  url,
                  (case when title is null then domain else title end) title,
                  domain from url urlWithDomain inner join domz using (title))

     select * from x;
;-- -. . -..- - / . -. - .-. -.--
with
     url as (select *,(WITH reverse(i, c) AS (values(-1, '')UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='') SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places ),
     domz as (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' )
    ,x as (select count(url)  c, max(url)  url,
                  ifnull(domz.title,domain) title,
                  domain from url urlWithDomain inner join domz on lower(domz.title) = lower(url.title))

     select * from x;
;-- -. . -..- - / . -. - .-. -.--
with
     url as (select *,(WITH reverse(i, c) AS (values(-1, '')UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='') SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places ),
     domz as (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' )
    ,x as (select count(url)  c, max(url)  url,
                  ifnull(url.title,domain) title,
                  domain from url urlWithDomain inner join domz on lower(domz.title) = lower(url.title))

     select * from x
group by url;
;-- -. . -..- - / . -. - .-. -.--
with
     url as (select *,(WITH reverse(i, c) AS (values(-1, '')UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='') SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,domz as (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' )
    ,x as (select count(url)  c, max(url)  url,
                  ifnull(url.title,domain) title,
                  domain from url urlWithDomain inner join domz on lower(domz.title) = lower(url.title))

     select * from x;
;-- -. . -..- - / . -. - .-. -.--
with
     urlQ as (select *,(WITH reverse(i, c) AS (values(-1, '')UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='') SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,domz as (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' )
    ,x as (select count(url)  c, max(url)  url,
                  ifnull(urlQ.title,domain) title,
                  domain from urlQ urlWithDomain inner join domz on lower(domz.title) = lower(urlQ.title))

     select * from x;
;-- -. . -..- - / . -. - .-. -.--
with
     urlQ as (select id,
                     url,
                     title,
                     rev_host,
                     visit_count,
                     hidden,
                     typed,
                     frecency,
                     last_visit_date,
                     guid,
                     foreign_count,
                     url_hash,
                     description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,domz as (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' )
    ,x as (select count(url)  c, max(url)  url,
                  ifnull(urlQ.title,domain) title,
                  domain from urlQ urlWithDomain inner join domz on lower(domz.title) = lower(urlQ.title))

     select * from x;
;-- -. . -..- - / . -. - .-. -.--
with
     urlQ as (select id,
                     url,
                     title,
                     rev_host,
                     visit_count,
                     hidden,
                     typed,
                     frecency,
                     last_visit_date,
                     guid,
                     foreign_count,
                     url_hash,
                     description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,x as (select count(url)  c, max(url)  url,
                  ifnull(urlQ.title,domain) title,
                  domain from urlQ urlWithDomain inner join (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' ) domz on lower(domz.title) = lower(urlQ.title))

select *
from x
group by url;
;-- -. . -..- - / . -. - .-. -.--
with
     urlQ as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   , x as (select count(url)                c,max(url) url,
                  ifnull(urlQ.title,domain) title,
                  domain from urlQ urlWithDomain inner join (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' ) domz on lower(domz.title) = lower(urlQ.title)
       group by title)

select *
from x;
;-- -. . -..- - / . -. - .-. -.--
with
     urlQ as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,x as (select * from urlQ)
select *
from x;
;-- -. . -..- - / . -. - .-. -.--
with
     urlQ as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,x as (select * from urlQ urlWithDomain inner join (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' ) domz on lower(domz.title) = lower(urlQ.title))
select *
from x;
;-- -. . -..- - / . -. - .-. -.--
with
     urlQ as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,x as (select * from urlQ urlWithDomain inner join (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' ) domz on lower(domz.title) = lower(urlWithDomain.title))
select *
from x;
;-- -. . -..- - / . -. - .-. -.--
with
     urlWithDomain as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,x as (select * from urlWithDomain 
        inner join 
             (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' ) titleFilter
             on lower(titleFilter.title) = lower(urlWithDomain.title))
select *
from x;
;-- -. . -..- - / . -. - .-. -.--
select * from moz_places where (select ','||id||',' from
(select group_concat(url), title, group_concat(id) id, sum(c) c
from (select url, group_concat( distinct title) title, group_concat(id) id, count(*) c from moz_places group by url )group by title order by c desc)
 limit 1  ) like '%,'||id||',%';
;-- -. . -..- - / . -. - .-. -.--
with
     urlWithDomain as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,x as (select * from urlWithDomain
        inner join
             (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' ) titleFilter
             on lower(titleFilter.title) = lower(urlWithDomain.title))
select *
from urlWithDomain;
;-- -. . -..- - / . -. - .-. -.--
with
     urlWithDomain as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,x as (select * from urlWithDomain
        inner join
             (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' ) titleFilter
             on lower(titleFilter.title) = lower(urlWithDomain.title))
select *
from urlWithDomain where title = 'like';
;-- -. . -..- - / . -. - .-. -.--
with
     urlWithDomain as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,x as (select * from urlWithDomain
        inner join
             (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'like' ) titleFilter
             on lower(titleFilter.title) = lower(urlWithDomain.title))
select *
from urlWithDomain where title = 'likes';
;-- -. . -..- - / . -. - .-. -.--
with
     urlWithDomain as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,x as (select * from urlWithDomain
        inner join
             (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'likes' ) titleFilter
             on lower(titleFilter.title) = lower(urlWithDomain.title))
select * from x;
;-- -. . -..- - / . -. - .-. -.--
with
     urlWithDomain as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,xt as (select id,
                  url,
                  urlWithDomain.title,
                  rev_host,
                  visit_count,
                  hidden,
                  typed,
                  frecency,
                  last_visit_date,
                  guid,
                  foreign_count,
                  url_hash,
                  description,
                  preview_image_url,
                  domain
           from urlWithDomain
        inner join
             (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'likes' ) titleFilter
             on lower(titleFilter.title) = lower(urlWithDomain.title))



   , x as (select count(url)                c,max(url) url,
                  ifnull(title,domain) title,
                  domain
   from xt
       group by title)

select * from x;
;-- -. . -..- - / . -. - .-. -.--
with
     urlWithDomain as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,xt as (select id,
                  url,
                  urlWithDomain.title,
                  rev_host,
                  visit_count,
                  hidden,
                  typed,
                  frecency,
                  last_visit_date,
                  guid,
                  foreign_count,
                  url_hash,
                  description,
                  preview_image_url,
                  domain
           from urlWithDomain
        inner join
             (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'likes' ) titleFilter
             on lower(titleFilter.title) = lower(urlWithDomain.title))



   , x as (select count(url)                c,max(url) url,
                  ifnull(title,domain) title,
                  domain
   from xt
       group by ifnull(title,domain))

select * from x;
;-- -. . -..- - / . -. - .-. -.--
with
     urlWithDomain as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,xt as (select id,
                  url,
                  urlWithDomain.title,
                  rev_host,
                  visit_count,
                  hidden,
                  typed,
                  frecency,
                  last_visit_date,
                  guid,
                  foreign_count,
                  url_hash,
                  description,
                  preview_image_url,
                  domain
           from urlWithDomain
        inner join
             (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'likes' ) titleFilter
             on lower(titleFilter.title) = lower(urlWithDomain.title))



   , x as (select count(url)                c,
                  max(url) url,
                  ifnull(title,domain) title,
                  domain
   from xt
       group by ifnull(domain,title))

select * from x;
;-- -. . -..- - / . -. - .-. -.--
with
     urlWithDomain as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,xt as (select id,
                  url,
                  urlWithDomain.title,
                  rev_host,
                  visit_count,
                  hidden,
                  typed,
                  frecency,
                  last_visit_date,
                  guid,
                  foreign_count,
                  url_hash,
                  description,
                  preview_image_url,
                  domain
           from urlWithDomain
        inner join
             (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'likes' ) titleFilter
             on lower(titleFilter.title) = lower(urlWithDomain.title))
   , x as (select count(url)                c,
                  max(url) url,
                  ifnull(title,domain) title,
                  domain
   from xt
       group by ifnull(domain,title))

select * from xt 
where not (domain in ( 'xhamster.com'
    , 'routgveriprt.com'
    , 'pornsos.com'
    , 'xvideos.com'
    , 'toesuddenlyon.com'
    , 'pervertslut.com'
    , 'pornhub.com'
    , 'bestialitytaboo.tv'
    , 'riosso.xyz'
    , 'luxuretv.com'
    , 'tnaflix.com'
    , 'femefun.com'
    , 'mylust.com'
    , 'justporno.tv'
    , 'youporn.com'
    , '3animalsextube.com'
    , 'nonamebrdn36.live'
    , 'zooskoolvideos.com'
    , 'ezysl.com'
    , 'empflix.com'
    , 'pornzoovideos.com'
    , 'pornsocket.com'
    , 'pornskirt.com'
    , 'alphaporno.com'
    , 'daily-bbw-porn.com'
    , 'xnxx.com'
    , 'voyeurstyle.com'
    , 'zoofiliavids.com'
    , 'bestialitysextaboo.com'
    , 'adult-empire.com'
    , 'zoofilianet.com'
    , 'eoredi.com'
    , 'nuggitgames.com'
    , 'pornspark.com'
    , 'proporn.com'
    , 'syndicpop.com'
    , 'pornfay.org'
    , 'trueamateurmodels.com'
    , 'fadsoks.com'
    , 'eroprofile.com'
    , 'homemoviestube.com'
    , 'livejasmin.com'
    , 'zoomobileporn.com'
    , 'bestialzoo.org'
    , 'erkiss.org'
    , 'indianpornvideos2.com'
    , 'lifematures.com'
    , 'xhamsterpremium.com'
    , 'ampugi334f.com'
    , 'animalsexfun.com'
    , 'backetrut.pro'
    , 'fadsips.com'
    , 'girlscv.com'
    , 'gotporn.com'
    , 'imagefap.com'
    , 'instantresp.com'
    , 'motherless.com'
    , 'nesaporn.com'
    , 'pornorio.net'
    , 'pornscum.com'
    , 'pornvideoq.com'
    , 'sexuhot.com'
    , 'tumblr.com'
    , 'dirtydoglinks.com'
    , 'forumophilia.com'
    , 'hotpornshow.com'
    , 'image-dreams.com'
    , 'porntopic.com'
    , 'pornvideos.rs'
    , 'spankbang.com'
    , 'tensorflow.org'
    , 'thumbzilla.com'
    , 'tube8.com'
    , 'yahoo.com'
    , 'adxpartner.com'
    , 'bbwfuckpic.com'
    , 'bestialitygirls.com'
    , 'blackbustybabes.com'
    , 'h2porn.com'
    , 'heavy-r.com'
    , 'hotsexyaunty.com'
    , 'k9thumbs.org'
    , 'message-alert.info'
    , 'myzoowife.com'
    , 'nudevista.com'
    , 'opera.com'
    , 'pornmd.com'
    , 'raindrop.io'
    , 'redtube.com'
    , 'sheamateur.com'
    , 'totalav.com'
    , 'usingenglish.com'
    , 'xxgasm.com'
    , 'xxxvogue.net'
    , 'xxvideoclips.us'
    , 'xxxvideoclips.us'
    , 'xxdessert.com'
    , 'xxxdessert.com'
    , 'xxbunker.com'
    , 'xxxbunker.com'
    , 'xvideo.us'
    , 'xxvideo.us'
    , 'xxlmag.com'
    , 'xvideoshome.com'
    , 'xvideosde.com'
    , 'xvideos.com'
    , 'xvideohost.com'
    , 'xtube.com'
    , 'xlgirls.com'
    , 'xixtube.com'
    , 'hamsterpremiumpass.com'
    , 'hamsterhq.com'
    , 'xhamsterhq.com'
    , 'hamster.com'
    , '99.nudevista.com'
    , 'ww.zootube365.com'
    , 'ww.yuvutu.com'
    , 'ww.youporn.com'
    , 'zzztube.com'
    , 'zootube365.com'
    , 'yuppix.com'
    , 'youjizzlive.com'
    , 'youjizz.com'
    , 'xhamsterpremiumpass.com'
    , 'xfreehosting.com'
    , 'x99.nudevista.com'
    , 'yobt.com'
    , 'yehfun.com'
    , 'xsharebox.com'
    , 'yuvutu.com'
    , 'yehfun.com'
    , 'yobt.com'
    , 'xsharebox.com'
    , 'wearehairy.com'
    , 'wankspider.com'
    , 'wanknews.com'
    , 'vidsvidsvids.com'
    , 'videosz.com'
    , 'vid2c.com'
    , 'trinity-productions.com'
    , 'vaginapageant.com'
    , 'tubemonsoon.com'
    , 'tubebond.com'
    , 'tube.nu'
    , 'sunporno.com'
    , 'submityourtapes.com'
    , 'spankwire.com'
    , 'slutload.com'
    , 'shufuni.com'
    , 'sextubest.com'
    , 'sextube.com'
    , 'sextasytube.net'
    , 'sexmums.com'
    , 'sexfreedomtube.com'
    , 'teensoloporn.com'
    , 'teenboat.com'
    , 'rule34.paheal.net'
    , 'mrstiff.com'
    , 'gaybeast.com'
    , 'boobpedia.com'
    , 'mrsnake.com'
    , 'richporntube.com'
    , 'images.google.com'
    , 'fapdu.com'
    , 'ah-me.com'
    , 'video.xnxx.com'
    , 'rawtube.com'
    , 'porn.com'
    , 'grandpabangsgrandma.com'
    , 'freeones.com'
    , 'board.freeones.com'
    , 'scarlettsabet.com'
    , 'nataliedee.com'
    , 'drtuber.com'
    , 'desihoes.com'
    , 'moviesvintage.com'
    , 'nuvid.com'
    , 'hardsextube.com'
    , 'fatmomtube.com'
    , 'adultrental.com'
    , 'jimslip.com'
    , 'fuckthegeek.com'
    , 'eporner.com'
    , 'boomporntube.com'
    , 'audrawolfmann.net'
    , 'amateur-gangbangers.com'
    , 'real-sexxx.com'
    , 'porntubese.com'
    , 'pornoxo.com'
    , 'pornbaytube.com'
    , 'longporntube.com'
    , 'largeporntube.com'
    , 'hottubeclips.com'
    , 'freeporn.com'
    , 'free-vidz.com'
    , 'askforporn.com'
    , 'rude.com'
    , 'ct.adultrental.com'
    , 'agriculteursgay.socialparody.com'
    , 'vodpornos.com'
    , 'utubefat.com'
    , 'sextubster.com'
    , 'retrotubeclips.com'
    , 'rabbitsreviews.com'
    , 'pussyteenporn.com'
    , 'porntubest.com'
    , 'pornstarsjobs.com'
    , 'pornstarnetwork.com'
    , 'pornqik.com'
    , 'oopsmovs.com'
    , 'nudevista.se'
    , 'nastydirectory.com'
    , 'maturetubesite.net'
    , 'lesbiansfromindia.com'
    , 'kenny-glenn.net'
    , 'keezmovies.com'
    , 'interracialexpert.com'
    , 'iafd.com'
    , 'freshteenxxx.com'
    , 'dinotube.com'
    , 'clearclips.com'
    , 'boysfood.com'
    , 'bollywoodhungama.com'
    , 'blackonslut.com'
    , 'badjojo.com'
    , 'africanfucktours.com'
    , '1teentube.com'
    , 'wild-galls.com'
    , 'keporn.com'
    , 'watch2porn.net'
    , 'vp7.com'
    , 'vintageporn69.com'
    , 'trustedporntube.com'
    , 'spicysextube.com'
    , 'showteensex.com'
    , 'sex2mix.com'
    , 'redtoptube.com'
    , 'porn-wikipedia.com'
    , 'pikdit.com'
    , 'movies.askjolene.com'
    , 'klub.co.in'
    , 'hotxvideos.net'
    , 'hardcoredumper.com'
    , 'gangbangbecky.com'
    , 'freshxxxtube.com'
    , 'cdn1.public.youporn.phncdn.com'
    , 'amateurfetishclips.com'
    , '6aa.info'
    , 'tjoob.com'
    , 'shockingtube.com'
    , 'sexyfatgirls.net'
    , 'sexspaghetti.com'
    , 'redcitadel.com'
    , 'racialthumbs.com'
    , 'pornyeah.com'
    , 'pornxix.com'
    , 'porntubesearch.org'
    , 'porntitan.com'
    , 'porngeographic.com'
    , 'porn-w.org'
    , 'popoholic.com'
    , 'peeingshow.com'
    , 'panicporn.com'
    , 'nastyvideotube.com'
    , 'myvideo.de'
    , 'myvaginasite.com'
    , 'mypornbutler.com'
    , 'movieslinksfree.com'
    , 'moofmoof.com'
    , 'mistressdestiny.com'
    , 'mcxtube.com'
    , 'kporno.com'
    , 'juxmovies.com'
    , 'interracialparty.net'
    , 'interracialexposed.com'
    , 'huntmodelz.com'
    , 'hqseek.com'
    , 'hindilinks4u.net'
    , 'hdvirgin.com'
    , 'hairyempire.com'
    , 'grannysex.in'
    , 'freeones.se'
    , 'free.cbttube.com'
    , 'fatalfemdoms.com'
    , 'excaliburfilms.com'
    , 'desitorrents.com'
    , 'desigupshupp.com'
    , 'britishbukkakebabes.com'
    , 'bravomamas.com'
    , 'blacksalamis.com'
    , 'blackmonsterride.com'
    , 'blackbabesboned.com'
    , 'bigcamtube.com'
    , 'beastiality.com'
    , 'azgals.com'
    , 'animalsex-tube.com'
    , 'amateurindex.com'
    , 'africanfucktour.com'
    , '777xporn.com'
    , '2shared.com'
    , 'wtchporn.com'
    , 'wivespornmovies.com'
    , 'widget.clips4sale.com'
    , 'whois.domaintools.com'
    , 'watchmovies7z.blogspot.se'
    , 'violetmonroe.net'
    , 'vintageporntv.com'
    , 'vidgrab.net'
    , 'videos.videomasti.net'
    , 'videomasti.net'
    , 'videofreakz.com'
    , 'twomovies.name'
    , 'thingsmydickdoes.tumblr.com'
    , 'teenpornstreams.com'
    , 'teen-movs.com'
    , 'sxplanet.com'
    , 'start.badults.se'
    , 'shufflecam.net'
    , 'shaggyblossom.com'
    , 'sexylosers.com'
    , 'sextasytube.com'
    , 'sensibleerection.com'
    , 'rexxx.com'
    , 'pussyteentube.com'
    , 'pornwiki.com'
    , 'pornviet.net'
    , 'pornobistro.com'
    , 'planetpornvideos.com'
    , 'pixocafe.com'
    , 'overthumbs.com'
    , 'oldgrannysex.net'
    , 'my.nudevista.se'
    , 'mobile.spankwire.com'
    , 'minkasicklinger.com'
    , 'mb.indecentes-voisines.com'
    , 'keyporntube.com'
    , 'join.wearehairy.com'
    , 'jithuwap.mobie.in'
    , 'jesporn.com'
    , 'interracial-thumbs.org'
    , 'images.arcadja.com'
    , 'hits.britishbukkakebabes.com'
    , 'hilltopads.net'
    , 'h2freeporn.com'
    , 'galleries.videosz.com'
    , 'galleries.hairy-women-pussy.net'
    , 'full-online-movies.blogspot.se'
    , 'fucksia.tumblr.com'
    , 'fuckinghomepage.com'
    , 'freethenipple.com'
    , 'fitgirlsohyeah.tumblr.com'
    , 'fashionista.com'
    , 'fantasti.cc'
    , 'easymovielink.blogspot.se'
    , 'creatives.livejasmin.com'
    , 'cdn1.mobile.spankwire.phncdn.com'
    , 'cams.com'
    , 'blog.youporn.com'
    , 'askaguywholikesfatchicks.tumblr.com'
    , 'adv.h2porn.com'
    , '88.208.61.4'
    , '88.208.61.11'
    , '88.208.58.83'
    , '88.208.52.191'
    , '88.208.24.205'
    , '88.208.24.199'
    , '213.174.156.59'
    , 'vintage-pinup.com'
    , 'vintage-computer.com'
    , 'royalporntube.com'
    , 'pornostars-collection.ru'
    , 'moviefap.com'
    , 'free-vintage.com'
    , 'vintageporndrawings.porncolection.com'
    , 'vintage.wanknews.com'
    , 'retro-porn.maniacpass.com'
    , 'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc' ));
;-- -. . -..- - / . -. - .-. -.--
with
     urlWithDomain as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,xt as (select id,
                  url,
                  urlWithDomain.title,
                  rev_host,
                  visit_count,
                  hidden,
                  typed,
                  frecency,
                  last_visit_date,
                  guid,
                  foreign_count,
                  url_hash,
                  description,
                  preview_image_url,
                  domain
           from urlWithDomain
        inner join
             (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'likes' ) titleFilter
             on lower(titleFilter.title) = lower(urlWithDomain.title))
   , x as (select count(url)                c,
                  max(url) url,
                  ifnull(title,domain) title,
                  domain
   from xt group by ifnull(domain,title))

select * from x where not (domain in ( 'xhamster.com', 'routgveriprt.com', 'pornsos.com', 'xvideos.com', 'toesuddenlyon.com', 'pervertslut.com', 'pornhub.com', 'bestialitytaboo.tv', 'riosso.xyz', 'luxuretv.com', 'tnaflix.com', 'femefun.com', 'mylust.com', 'justporno.tv', 'youporn.com', '3animalsextube.com', 'nonamebrdn36.live', 'zooskoolvideos.com', 'ezysl.com', 'empflix.com', 'pornzoovideos.com', 'pornsocket.com', 'pornskirt.com', 'alphaporno.com', 'daily-bbw-porn.com', 'xnxx.com', 'voyeurstyle.com', 'zoofiliavids.com', 'bestialitysextaboo.com', 'adult-empire.com', 'zoofilianet.com', 'eoredi.com', 'nuggitgames.com', 'pornspark.com', 'proporn.com', 'syndicpop.com', 'pornfay.org', 'trueamateurmodels.com', 'fadsoks.com', 'eroprofile.com', 'homemoviestube.com', 'livejasmin.com', 'zoomobileporn.com', 'bestialzoo.org', 'erkiss.org', 'indianpornvideos2.com', 'lifematures.com', 'xhamsterpremium.com', 'ampugi334f.com', 'animalsexfun.com', 'backetrut.pro', 'fadsips.com', 'girlscv.com', 'gotporn.com', 'imagefap.com', 'instantresp.com', 'motherless.com', 'nesaporn.com', 'pornorio.net', 'pornscum.com', 'pornvideoq.com', 'sexuhot.com', 'tumblr.com', 'dirtydoglinks.com', 'forumophilia.com', 'hotpornshow.com', 'image-dreams.com', 'porntopic.com', 'pornvideos.rs', 'spankbang.com', 'tensorflow.org', 'thumbzilla.com', 'tube8.com', 'yahoo.com', 'adxpartner.com', 'bbwfuckpic.com', 'bestialitygirls.com', 'blackbustybabes.com', 'h2porn.com', 'heavy-r.com', 'hotsexyaunty.com', 'k9thumbs.org', 'message-alert.info', 'myzoowife.com', 'nudevista.com', 'opera.com', 'pornmd.com', 'raindrop.io', 'redtube.com', 'sheamateur.com', 'totalav.com', 'usingenglish.com', 'xxgasm.com', 'xxxvogue.net', 'xxvideoclips.us', 'xxxvideoclips.us', 'xxdessert.com', 'xxxdessert.com', 'xxbunker.com', 'xxxbunker.com', 'xvideo.us', 'xxvideo.us', 'xxlmag.com', 'xvideoshome.com', 'xvideosde.com', 'xvideos.com', 'xvideohost.com', 'xtube.com', 'xlgirls.com', 'xixtube.com', 'hamsterpremiumpass.com', 'hamsterhq.com', 'xhamsterhq.com', 'hamster.com', '99.nudevista.com', 'ww.zootube365.com', 'ww.yuvutu.com', 'ww.youporn.com', 'zzztube.com', 'zootube365.com', 'yuppix.com', 'youjizzlive.com', 'youjizz.com', 'xhamsterpremiumpass.com', 'xfreehosting.com', 'x99.nudevista.com', 'yobt.com', 'yehfun.com', 'xsharebox.com', 'yuvutu.com', 'yehfun.com', 'yobt.com', 'xsharebox.com', 'wearehairy.com', 'wankspider.com', 'wanknews.com', 'vidsvidsvids.com', 'videosz.com', 'vid2c.com', 'trinity-productions.com', 'vaginapageant.com', 'tubemonsoon.com', 'tubebond.com', 'tube.nu', 'sunporno.com', 'submityourtapes.com', 'spankwire.com', 'slutload.com', 'shufuni.com', 'sextubest.com', 'sextube.com', 'sextasytube.net', 'sexmums.com', 'sexfreedomtube.com', 'teensoloporn.com', 'teenboat.com', 'rule34.paheal.net', 'mrstiff.com', 'gaybeast.com', 'boobpedia.com', 'mrsnake.com', 'richporntube.com', 'images.google.com', 'fapdu.com', 'ah-me.com', 'video.xnxx.com', 'rawtube.com', 'porn.com', 'grandpabangsgrandma.com', 'freeones.com', 'board.freeones.com', 'scarlettsabet.com', 'nataliedee.com', 'drtuber.com', 'desihoes.com', 'moviesvintage.com', 'nuvid.com', 'hardsextube.com', 'fatmomtube.com', 'adultrental.com', 'jimslip.com', 'fuckthegeek.com', 'eporner.com', 'boomporntube.com', 'audrawolfmann.net', 'amateur-gangbangers.com', 'real-sexxx.com', 'porntubese.com', 'pornoxo.com', 'pornbaytube.com', 'longporntube.com', 'largeporntube.com', 'hottubeclips.com', 'freeporn.com', 'free-vidz.com', 'askforporn.com', 'rude.com', 'ct.adultrental.com', 'agriculteursgay.socialparody.com', 'vodpornos.com', 'utubefat.com', 'sextubster.com', 'retrotubeclips.com', 'rabbitsreviews.com', 'pussyteenporn.com', 'porntubest.com', 'pornstarsjobs.com', 'pornstarnetwork.com', 'pornqik.com', 'oopsmovs.com', 'nudevista.se', 'nastydirectory.com', 'maturetubesite.net', 'lesbiansfromindia.com', 'kenny-glenn.net', 'keezmovies.com', 'interracialexpert.com', 'iafd.com', 'freshteenxxx.com', 'dinotube.com', 'clearclips.com', 'boysfood.com', 'bollywoodhungama.com', 'blackonslut.com', 'badjojo.com', 'africanfucktours.com', '1teentube.com', 'wild-galls.com', 'keporn.com', 'watch2porn.net', 'vp7.com', 'vintageporn69.com', 'trustedporntube.com', 'spicysextube.com', 'showteensex.com', 'sex2mix.com', 'redtoptube.com', 'porn-wikipedia.com', 'pikdit.com', 'movies.askjolene.com', 'klub.co.in', 'hotxvideos.net', 'hardcoredumper.com', 'gangbangbecky.com', 'freshxxxtube.com', 'cdn1.public.youporn.phncdn.com', 'amateurfetishclips.com', '6aa.info', 'tjoob.com', 'shockingtube.com', 'sexyfatgirls.net', 'sexspaghetti.com', 'redcitadel.com', 'racialthumbs.com', 'pornyeah.com', 'pornxix.com', 'porntubesearch.org', 'porntitan.com', 'porngeographic.com', 'porn-w.org', 'popoholic.com', 'peeingshow.com', 'panicporn.com', 'nastyvideotube.com', 'myvideo.de', 'myvaginasite.com', 'mypornbutler.com', 'movieslinksfree.com', 'moofmoof.com', 'mistressdestiny.com', 'mcxtube.com', 'kporno.com', 'juxmovies.com', 'interracialparty.net', 'interracialexposed.com', 'huntmodelz.com', 'hqseek.com', 'hindilinks4u.net', 'hdvirgin.com', 'hairyempire.com', 'grannysex.in', 'freeones.se', 'free.cbttube.com', 'fatalfemdoms.com', 'excaliburfilms.com', 'desitorrents.com', 'desigupshupp.com', 'britishbukkakebabes.com', 'bravomamas.com', 'blacksalamis.com', 'blackmonsterride.com', 'blackbabesboned.com', 'bigcamtube.com', 'beastiality.com', 'azgals.com', 'animalsex-tube.com', 'amateurindex.com', 'africanfucktour.com', '777xporn.com', '2shared.com', 'wtchporn.com', 'wivespornmovies.com', 'widget.clips4sale.com', 'whois.domaintools.com', 'watchmovies7z.blogspot.se', 'violetmonroe.net', 'vintageporntv.com', 'vidgrab.net', 'videos.videomasti.net', 'videomasti.net', 'videofreakz.com', 'twomovies.name', 'thingsmydickdoes.tumblr.com', 'teenpornstreams.com', 'teen-movs.com', 'sxplanet.com', 'start.badults.se', 'shufflecam.net', 'shaggyblossom.com', 'sexylosers.com', 'sextasytube.com', 'sensibleerection.com', 'rexxx.com', 'pussyteentube.com', 'pornwiki.com', 'pornviet.net', 'pornobistro.com', 'planetpornvideos.com', 'pixocafe.com', 'overthumbs.com', 'oldgrannysex.net', 'my.nudevista.se', 'mobile.spankwire.com', 'minkasicklinger.com', 'mb.indecentes-voisines.com', 'keyporntube.com', 'join.wearehairy.com', 'jithuwap.mobie.in', 'jesporn.com', 'interracial-thumbs.org', 'images.arcadja.com', 'hits.britishbukkakebabes.com', 'hilltopads.net', 'h2freeporn.com', 'galleries.videosz.com', 'galleries.hairy-women-pussy.net', 'full-online-movies.blogspot.se', 'fucksia.tumblr.com', 'fuckinghomepage.com', 'freethenipple.com', 'fitgirlsohyeah.tumblr.com', 'fashionista.com', 'fantasti.cc', 'easymovielink.blogspot.se', 'creatives.livejasmin.com', 'cdn1.mobile.spankwire.phncdn.com', 'cams.com', 'blog.youporn.com', 'askaguywholikesfatchicks.tumblr.com', 'adv.h2porn.com', '88.208.61.4', '88.208.61.11', '88.208.58.83', '88.208.52.191', '88.208.24.205', '88.208.24.199', '213.174.156.59', 'vintage-pinup.com', 'vintage-computer.com', 'royalporntube.com', 'pornostars-collection.ru', 'moviefap.com', 'free-vintage.com', 'vintageporndrawings.porncolection.com', 'vintage.wanknews.com', 'retro-porn.maniacpass.com', 'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc' ))

order by c desc;
;-- -. . -..- - / . -. - .-. -.--
with
     urlWithDomain as (select id,url,title,rev_host,visit_count,hidden,typed,frecency,last_visit_date,guid,foreign_count,url_hash,description,
                     preview_image_url,(WITH reverse(i, c) AS (values(-1, '') UNION ALL SELECT i-1, substr(rev_host, i, 1) AS r FROM reverse WHERE r!='')SELECT group_concat(c, '') AS reversed FROM reverse) domain from moz_places )
   ,xt as (select id,
                  url,
                  urlWithDomain.title,
                  rev_host,
                  visit_count,
                  hidden,
                  typed,
                  frecency,
                  last_visit_date,
                  guid,
                  foreign_count,
                  url_hash,
                  description,
                  preview_image_url,
                  domain
           from urlWithDomain
        inner join
             (select 'google.se' title union select 'Google Custom Search' union select 'Redirecting' union select 'likes' ) titleFilter
             on lower(titleFilter.title) = lower(urlWithDomain.title))
   , x as (select count(url)                c,
                  max(url) u,
                  ifnull(title,domain) title,
                  domain
   from xt group by ifnull(domain,title))

select * from x where not (domain in ( 'xhamster.com', 'routgveriprt.com', 'pornsos.com', 'xvideos.com', 'toesuddenlyon.com', 'pervertslut.com', 'pornhub.com', 'bestialitytaboo.tv', 'riosso.xyz', 'luxuretv.com', 'tnaflix.com', 'femefun.com', 'mylust.com', 'justporno.tv', 'youporn.com', '3animalsextube.com', 'nonamebrdn36.live', 'zooskoolvideos.com', 'ezysl.com', 'empflix.com', 'pornzoovideos.com', 'pornsocket.com', 'pornskirt.com', 'alphaporno.com', 'daily-bbw-porn.com', 'xnxx.com', 'voyeurstyle.com', 'zoofiliavids.com', 'bestialitysextaboo.com', 'adult-empire.com', 'zoofilianet.com', 'eoredi.com', 'nuggitgames.com', 'pornspark.com', 'proporn.com', 'syndicpop.com', 'pornfay.org', 'trueamateurmodels.com', 'fadsoks.com', 'eroprofile.com', 'homemoviestube.com', 'livejasmin.com', 'zoomobileporn.com', 'bestialzoo.org', 'erkiss.org', 'indianpornvideos2.com', 'lifematures.com', 'xhamsterpremium.com', 'ampugi334f.com', 'animalsexfun.com', 'backetrut.pro', 'fadsips.com', 'girlscv.com', 'gotporn.com', 'imagefap.com', 'instantresp.com', 'motherless.com', 'nesaporn.com', 'pornorio.net', 'pornscum.com', 'pornvideoq.com', 'sexuhot.com', 'tumblr.com', 'dirtydoglinks.com', 'forumophilia.com', 'hotpornshow.com', 'image-dreams.com', 'porntopic.com', 'pornvideos.rs', 'spankbang.com', 'tensorflow.org', 'thumbzilla.com', 'tube8.com', 'yahoo.com', 'adxpartner.com', 'bbwfuckpic.com', 'bestialitygirls.com', 'blackbustybabes.com', 'h2porn.com', 'heavy-r.com', 'hotsexyaunty.com', 'k9thumbs.org', 'message-alert.info', 'myzoowife.com', 'nudevista.com', 'opera.com', 'pornmd.com', 'raindrop.io', 'redtube.com', 'sheamateur.com', 'totalav.com', 'usingenglish.com', 'xxgasm.com', 'xxxvogue.net', 'xxvideoclips.us', 'xxxvideoclips.us', 'xxdessert.com', 'xxxdessert.com', 'xxbunker.com', 'xxxbunker.com', 'xvideo.us', 'xxvideo.us', 'xxlmag.com', 'xvideoshome.com', 'xvideosde.com', 'xvideos.com', 'xvideohost.com', 'xtube.com', 'xlgirls.com', 'xixtube.com', 'hamsterpremiumpass.com', 'hamsterhq.com', 'xhamsterhq.com', 'hamster.com', '99.nudevista.com', 'ww.zootube365.com', 'ww.yuvutu.com', 'ww.youporn.com', 'zzztube.com', 'zootube365.com', 'yuppix.com', 'youjizzlive.com', 'youjizz.com', 'xhamsterpremiumpass.com', 'xfreehosting.com', 'x99.nudevista.com', 'yobt.com', 'yehfun.com', 'xsharebox.com', 'yuvutu.com', 'yehfun.com', 'yobt.com', 'xsharebox.com', 'wearehairy.com', 'wankspider.com', 'wanknews.com', 'vidsvidsvids.com', 'videosz.com', 'vid2c.com', 'trinity-productions.com', 'vaginapageant.com', 'tubemonsoon.com', 'tubebond.com', 'tube.nu', 'sunporno.com', 'submityourtapes.com', 'spankwire.com', 'slutload.com', 'shufuni.com', 'sextubest.com', 'sextube.com', 'sextasytube.net', 'sexmums.com', 'sexfreedomtube.com', 'teensoloporn.com', 'teenboat.com', 'rule34.paheal.net', 'mrstiff.com', 'gaybeast.com', 'boobpedia.com', 'mrsnake.com', 'richporntube.com', 'images.google.com', 'fapdu.com', 'ah-me.com', 'video.xnxx.com', 'rawtube.com', 'porn.com', 'grandpabangsgrandma.com', 'freeones.com', 'board.freeones.com', 'scarlettsabet.com', 'nataliedee.com', 'drtuber.com', 'desihoes.com', 'moviesvintage.com', 'nuvid.com', 'hardsextube.com', 'fatmomtube.com', 'adultrental.com', 'jimslip.com', 'fuckthegeek.com', 'eporner.com', 'boomporntube.com', 'audrawolfmann.net', 'amateur-gangbangers.com', 'real-sexxx.com', 'porntubese.com', 'pornoxo.com', 'pornbaytube.com', 'longporntube.com', 'largeporntube.com', 'hottubeclips.com', 'freeporn.com', 'free-vidz.com', 'askforporn.com', 'rude.com', 'ct.adultrental.com', 'agriculteursgay.socialparody.com', 'vodpornos.com', 'utubefat.com', 'sextubster.com', 'retrotubeclips.com', 'rabbitsreviews.com', 'pussyteenporn.com', 'porntubest.com', 'pornstarsjobs.com', 'pornstarnetwork.com', 'pornqik.com', 'oopsmovs.com', 'nudevista.se', 'nastydirectory.com', 'maturetubesite.net', 'lesbiansfromindia.com', 'kenny-glenn.net', 'keezmovies.com', 'interracialexpert.com', 'iafd.com', 'freshteenxxx.com', 'dinotube.com', 'clearclips.com', 'boysfood.com', 'bollywoodhungama.com', 'blackonslut.com', 'badjojo.com', 'africanfucktours.com', '1teentube.com', 'wild-galls.com', 'keporn.com', 'watch2porn.net', 'vp7.com', 'vintageporn69.com', 'trustedporntube.com', 'spicysextube.com', 'showteensex.com', 'sex2mix.com', 'redtoptube.com', 'porn-wikipedia.com', 'pikdit.com', 'movies.askjolene.com', 'klub.co.in', 'hotxvideos.net', 'hardcoredumper.com', 'gangbangbecky.com', 'freshxxxtube.com', 'cdn1.public.youporn.phncdn.com', 'amateurfetishclips.com', '6aa.info', 'tjoob.com', 'shockingtube.com', 'sexyfatgirls.net', 'sexspaghetti.com', 'redcitadel.com', 'racialthumbs.com', 'pornyeah.com', 'pornxix.com', 'porntubesearch.org', 'porntitan.com', 'porngeographic.com', 'porn-w.org', 'popoholic.com', 'peeingshow.com', 'panicporn.com', 'nastyvideotube.com', 'myvideo.de', 'myvaginasite.com', 'mypornbutler.com', 'movieslinksfree.com', 'moofmoof.com', 'mistressdestiny.com', 'mcxtube.com', 'kporno.com', 'juxmovies.com', 'interracialparty.net', 'interracialexposed.com', 'huntmodelz.com', 'hqseek.com', 'hindilinks4u.net', 'hdvirgin.com', 'hairyempire.com', 'grannysex.in', 'freeones.se', 'free.cbttube.com', 'fatalfemdoms.com', 'excaliburfilms.com', 'desitorrents.com', 'desigupshupp.com', 'britishbukkakebabes.com', 'bravomamas.com', 'blacksalamis.com', 'blackmonsterride.com', 'blackbabesboned.com', 'bigcamtube.com', 'beastiality.com', 'azgals.com', 'animalsex-tube.com', 'amateurindex.com', 'africanfucktour.com', '777xporn.com', '2shared.com', 'wtchporn.com', 'wivespornmovies.com', 'widget.clips4sale.com', 'whois.domaintools.com', 'watchmovies7z.blogspot.se', 'violetmonroe.net', 'vintageporntv.com', 'vidgrab.net', 'videos.videomasti.net', 'videomasti.net', 'videofreakz.com', 'twomovies.name', 'thingsmydickdoes.tumblr.com', 'teenpornstreams.com', 'teen-movs.com', 'sxplanet.com', 'start.badults.se', 'shufflecam.net', 'shaggyblossom.com', 'sexylosers.com', 'sextasytube.com', 'sensibleerection.com', 'rexxx.com', 'pussyteentube.com', 'pornwiki.com', 'pornviet.net', 'pornobistro.com', 'planetpornvideos.com', 'pixocafe.com', 'overthumbs.com', 'oldgrannysex.net', 'my.nudevista.se', 'mobile.spankwire.com', 'minkasicklinger.com', 'mb.indecentes-voisines.com', 'keyporntube.com', 'join.wearehairy.com', 'jithuwap.mobie.in', 'jesporn.com', 'interracial-thumbs.org', 'images.arcadja.com', 'hits.britishbukkakebabes.com', 'hilltopads.net', 'h2freeporn.com', 'galleries.videosz.com', 'galleries.hairy-women-pussy.net', 'full-online-movies.blogspot.se', 'fucksia.tumblr.com', 'fuckinghomepage.com', 'freethenipple.com', 'fitgirlsohyeah.tumblr.com', 'fashionista.com', 'fantasti.cc', 'easymovielink.blogspot.se', 'creatives.livejasmin.com', 'cdn1.mobile.spankwire.phncdn.com', 'cams.com', 'blog.youporn.com', 'askaguywholikesfatchicks.tumblr.com', 'adv.h2porn.com', '88.208.61.4', '88.208.61.11', '88.208.58.83', '88.208.52.191', '88.208.24.205', '88.208.24.199', '213.174.156.59', 'vintage-pinup.com', 'vintage-computer.com', 'royalporntube.com', 'pornostars-collection.ru', 'moviefap.com', 'free-vintage.com', 'vintageporndrawings.porncolection.com', 'vintage.wanknews.com', 'retro-porn.maniacpass.com', 'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc' ))

order by c desc,u desc, title desc;
;-- -. . -..- - / . -. - .-. -.--
WITH Pieces(pn, start, stop) AS (
      SELECT 1, 1, CHARINDEX(@Sep, @S)
      UNION ALL
      SELECT pn + 1, stop + 1, CHARINDEX(@Sep, @S, stop + 1)
      FROM Pieces
      WHERE stop > 0
    )
    SELECT pn, SUBSTR(@S, start, CASE WHEN stop > 0 THEN stop-start ELSE 512 END) AS S
    FROM Pieces;
;-- -. . -..- - / . -. - .-. -.--
WITH Pieces(pn, start, stop) AS (
      SELECT 1, 1, CHARINDEX(q, å)
      UNION ALL
      SELECT pn + 1, stop + 1, CHARINDEX(q, å, stop + 1)
      FROM Pieces
      WHERE stop > 0
    )
    select * from pieces;