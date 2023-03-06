select title,count() c from urls where nullif(title,'') is not null
group by title order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select count () from (select title,count() c from urls where nullif(title,'') is not null
group by title order by c desc);
;-- -. . -..- - / . -. - .-. -.--
with a as (select title,count() c from urls where nullif(title,'') is not null
           group by title order by c desc)

select count () from (a);
;-- -. . -..- - / . -. - .-. -.--
with
     a as (select title,count() c from urls where nullif(title,'') is not null
           group by title order by c desc)
    ,b as (select * from urls where nullif(title,'') is null )
select count () from (b);
;-- -. . -..- - / . -. - .-. -.--
with
     a as (select title,count() c from urls where nullif(title,'') is not null
           group by title order by c desc)
    ,b as (select * from urls where nullif(title,'') is null )
,c as (select count () from (b))
select * from b;
;-- -. . -..- - / . -. - .-. -.--
select id,
       guid,
       current_path,
       target_path,
       start_time,
       received_bytes,
       total_bytes,
       state,
       danger_type,
       interrupt_reason,
       hash,
       end_time,
       opened,
       last_access_time,
       transient,
       referrer,
       site_url,
       tab_url,
       tab_referrer_url,
       http_method,
       by_ext_id,
       by_ext_name,
       etag,
       last_modified,
       mime_type,
       original_mime_type
from downloads where current_path like '%crx';
;-- -. . -..- - / . -. - .-. -.--
select id,
       guid,
       current_path,
       target_path,
       start_time,
       received_bytes,
       total_bytes,
       state,
       danger_type,
       interrupt_reason,
       hash,
       end_time,
       opened,
       last_access_time,
       transient,
       referrer,
       site_url,
       tab_url,
       tab_referrer_url,
       http_method,
       by_ext_id,
       by_ext_name,
       etag,
       last_modified,
       mime_type,
       original_mime_type
from downloads where original_mime_type = 'application/x-chrome-extension';
;-- -. . -..- - / . -. - .-. -.--
select 
       site_url,
       tab_url
from downloads where original_mime_type = 'application/x-chrome-extension';
;-- -. . -..- - / . -. - .-. -.--
select 
       current_path,

       tab_url
from downloads where original_mime_type = 'application/x-chrome-extension';
;-- -. . -..- - / . -. - .-. -.--
select
       replace(current_path,'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Webstore Downloads\','') extensionHash ,
       tab_url
from downloads where original_mime_type = 'application/x-chrome-extension';
;-- -. . -..- - / . -. - .-. -.--
select
       replace(current_path,'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Webstore Downloads\','') extensionHash ,
       replace(tab_url,'https://microsoftedge.microsoft.com/addons/detail/','' ) urlName
from downloads where original_mime_type = 'application/x-chrome-extension';
;-- -. . -..- - / . -. - .-. -.--
select extensionHash, instr(urlName,'\')
from (select
       replace(current_path,'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Webstore Downloads\','') extensionHash ,
      replace(tab_url,'https://microsoftedge.microsoft.com/addons/detail/','' ) urlName
      from downloads where original_mime_type = 'application/x-chrome-extension');
;-- -. . -..- - / . -. - .-. -.--
select extensionHash, instr(urlName,'/')
from (select
       replace(current_path,'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Webstore Downloads\','') extensionHash ,
      replace(tab_url,'https://microsoftedge.microsoft.com/addons/detail/','' ) urlName
      from downloads where original_mime_type = 'application/x-chrome-extension');
;-- -. . -..- - / . -. - .-. -.--
select extensionHash, instr(urlName,'/'), instr(urlName,'?')
from (select
       replace(current_path,'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Webstore Downloads\','') extensionHash ,
      replace(tab_url,'https://microsoftedge.microsoft.com/addons/detail/','' ) urlName
      from downloads where original_mime_type = 'application/x-chrome-extension');
;-- -. . -..- - / . -. - .-. -.--
select extensionHash, substr(urlName,instr(urlName,'/'),instr(urlName,'?'))  
from (select
       replace(current_path,'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Webstore Downloads\','') extensionHash ,
      replace(tab_url,'https://microsoftedge.microsoft.com/addons/detail/','' ) urlName
      from downloads where original_mime_type = 'application/x-chrome-extension');
;-- -. . -..- - / . -. - .-. -.--
select extensionHash, substr(urlName,0,instr(urlName,'/'))  ,substr(urlName,instr(urlName,'/'),instr(urlName,'?'))
from (select
       replace(current_path,'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Webstore Downloads\','') extensionHash ,
      replace(tab_url,'https://microsoftedge.microsoft.com/addons/detail/','' ) urlName
      from downloads where original_mime_type = 'application/x-chrome-extension');
;-- -. . -..- - / . -. - .-. -.--
select substr(urlName,0,instr(urlName,'/'))  ,substr(urlName,instr(urlName,'/')+1,instr(urlName,'?'))
from (select
       replace(current_path,'C:\Users\chris\AppData\Local\Microsoft\Edge\User Data\Webstore Downloads\','') extensionHash ,
      replace(tab_url,'https://microsoftedge.microsoft.com/addons/detail/','' ) urlName
      from downloads where original_mime_type = 'application/x-chrome-extension');
;-- -. . -..- - / . -. - .-. -.--
select * from json_each;
;-- -. . -..- - / . -. - .-. -.--
select  fts3_tokenizer();
;-- -. . -..- - / . -. - .-. -.--
select * from fts3;
;-- -. . -..- - / . -. - .-. -.--
select * from fts5(history);
;-- -. . -..- - / . -. - .-. -.--
select fts5(url) from urls;
;-- -. . -..- - / . -. - .-. -.--
select fts3_tokenizer(title) from urls;
;-- -. . -..- - / . -. - .-. -.--
select rtreedepth(url) from urls;
;-- -. . -..- - / . -. - .-. -.--
select rtreedepth(3) from urls;
;-- -. . -..- - / . -. - .-. -.--
select rtreecheck() from urls;
;-- -. . -..- - / . -. - .-. -.--
select reverse(url) from urls;
;-- -. . -..- - / . -. - .-. -.--
select json(url) from urls;
;-- -. . -..- - / . -. - .-. -.--
select variance(url) from urls;
;-- -. . -..- - / . -. - .-. -.--
select variance(optimize()) from urls;
;-- -. . -..- - / . -. - .-. -.--
select optimize(url) from urls;
;-- -. . -..- - / . -. - .-. -.--
select nth_value(url,3) from urls;
;-- -. . -..- - / . -. - .-. -.--
select nth_value(url,3) from urls order by title;