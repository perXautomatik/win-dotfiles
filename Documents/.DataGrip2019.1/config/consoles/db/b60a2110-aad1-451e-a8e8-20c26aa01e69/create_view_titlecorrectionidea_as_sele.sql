CREATE VIEW TitleCorrectionIDea as
select *
from (SELECT count(url)                                                                                                                                         uniqueURls
           , (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end)ORDER BY length(url)limit 1)                                                                                                                                          shortestURl
           , (case when instr(url, '=') <> 0 then substr(substr(url, instr(url, '=') + 1, length(url)), 1, instr(substr(url, instr(url, '=') + 1, length(url)), '=') - 1)else url end)                                                                                                                                 title
           , sum(visit_count)                                                                                                                                   visitCount
           --, sum(typed)                                                                                                                                         typedCount
           --, max(last_visit_date)                                                                                                                               lastVisitTime
           , domain || ' // ' || SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1)                                                    HOST
           , substr(title, 1, INSTR(title, (case when INSTR(title, ' â€“ ') <> 0 THEN ' â€“ ' ELSE case when INSTR(title, ' - ') <> 0 THEN ' - ' ELSE case when INSTR(title, ' | ') <> 0 THEN ' | ' ELSE case when INSTR(title, ' :: ') <> 0 THEN ' :: ' ELSE case when INSTR(title, ' -- ') <> 0 THEN ' -- ' ELSE ':' END END END END END))) TitBefD
           , substr(title, INSTR(title, (case when INSTR(title, ' â€“ ') <> 0 THEN ' â€“ ' ELSE case when INSTR(title, ' - ') <> 0 THEN ' - ' ELSE case when INSTR(title, ' | ') <> 0 THEN ' | ' ELSE case when INSTR(title, ' :: ') <> 0 THEN ' :: ' ELSE case when INSTR(title, ' -- ') <> 0 THEN ' -- ' ELSE ':' END END END END END)), LENGTH(title) + 1)                                                                                                                          TitafTD
from urls t group by title

limit 100
);

