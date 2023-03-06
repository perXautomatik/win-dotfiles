CREATE VIEW UnReffedUrl as
with
    firstReplace as (select
                            group_concat(distinct replace(title,'pornSOS / ','')) title,
                            replace(replace(replace(replace(replace(replace(replace(url, "%3A", ":"), "%20", " "), "%2F", "/"), "%3F", "?"), "%28", "("), "%29", ")"), "%3D", "=") url,
                                domain,
                            replace(replace(replace(replace(replace(replace(replace(url, "%3A", ":"), "%20", " "), "%2F", "/"), "%3F", "?"), "%28", "("), "%29", ")"), "%3D", "=") urlz
                                from urls where instr(url, 'https://www.pornsos.com/movies/') = 1
                                group by urlz
        ),extra as (select title,domain, url,
        substr(substr(url, instr(url, domain) + length(domain)), instr(substr(url, instr(url, domain) + length(domain)), 'http') + length('http')) urlz
         from firstReplace)
     ,
     extra2 as (select group_concat(distinct title) title,max(domain) domain, max(url) url,
                       trim(substr(urlz,1, case when instr(urlz,'?') = 0 then length(urlz) else instr(urlz,'?')-1 end )) urlx
         from extra group by urlx),firster as (select title,domain, url, 'http' || urlx as urlz from extra2)

select urlz, url, title from firster group by title, url, urlz order by urlz, title;

