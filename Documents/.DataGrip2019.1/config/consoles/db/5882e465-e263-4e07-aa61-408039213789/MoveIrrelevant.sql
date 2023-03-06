
select url,title,visit_count,typed
from moz_places;



select url, title, visit_count, typed_count
from  DefaultHistory.urls;

insert into GistGithubHistory.urls (url, title, visit_count, typed_count,last_visit_time)
Select url,title,visit_count,typed,coalesce(visit_date,date()) from moz_places left outer join moz_historyvisits using (id)  where url like '%github%'
;
delete from moz_places where url like '%github%';

insert into SpotifyHistory.urls (url, title, visit_count, typed_count,last_visit_time)
Select url,title,visit_count,typed,coalesce(visit_date,date()) from moz_places left outer join moz_historyvisits using (id)  where url like '%spotify%'
;
delete from moz_places where url like '%spotify%';

insert into YoutubeHistory.urls (url, title, visit_count, typed_count,last_visit_time)
Select url,title,visit_count,typed,coalesce(visit_date,date()) from moz_places left outer join moz_historyvisits using (id)  where url like '%youtube%'
;
delete from moz_places where url like '%youtube%';

