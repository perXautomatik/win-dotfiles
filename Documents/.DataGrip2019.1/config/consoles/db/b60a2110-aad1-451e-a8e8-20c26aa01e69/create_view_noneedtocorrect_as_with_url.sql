CREATE VIEW NoNeedtoCorrect2 as
    with urlss as (select id, case
                             when instr(x.url, 'http%3A') + instr(x.url, 'https%3A') > 0 then replace(
                                     replace(replace(replace(replace(x.url, "%20", " "), "%2F", "/"), "%28", "("),
                                             "%29", ")"), "%3A", ":")
                             else x.url end url, title, visit_count, typed_count, last_visit_time, hidden from urls x ),
         urlsx as (select id,
                          case when

                          instr(url,'http') <> 1
                          then
                              'https://' || url
                           else url end url
                              ,
                          title, visit_count, typed_count, last_visit_time, hidden from urlss),

         x1 as (select max(x.id) id, group_concat(distinct x.title) title, x.url
                from urlsx x
                         left outer join toCorrect y on x.id = y.id
                where y.id is null
                group by  x.url
    )

    select t.*
    from x1 t
             left outer join (select title from (select title, count(url) c from x1 group by title) t where c > 2) z
                             on t.title = z.title
    where z.title is null
    order by length(t.url),t.id,length(t.title), t.title, t.url;

