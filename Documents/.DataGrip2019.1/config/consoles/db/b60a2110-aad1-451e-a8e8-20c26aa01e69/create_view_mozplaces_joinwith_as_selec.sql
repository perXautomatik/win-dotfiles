CREATE VIEW "[MozPLaces]JoinWith" as
select *
from (select max(url) url, count(url) + sum(visitcount) count, domain
      from (select (case when x.url is null then urls.url else x.url end)      url,
                   (case when x.url is not null then x.visit_count else 1 end) visitcount,
                   (case
                        when (INSTR((case when x.url is null then urls.url else x.url end), 'https://') = 1 OR
                              INSTR((case when x.url is null then urls.url else x.url end), 'http://') = 1) then case
                     when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') <
                           10 AND
                           INSTR((case when x.url is null then urls.url else x.url end), 'ww') <>
                           0)
                         then SUBSTR(
                             SUBSTR(
                                     (case when x.url is null then urls.url else x.url end),
                                     INSTR((case when x.url is null then urls.url else x.url end), '.') +
                                     1),
                             1,
                             INSTR(
                                     SUBSTR(
                                             (case when x.url is null then urls.url else x.url end),
                                             INSTR((case when x.url is null then urls.url else x.url end), '.') +
                                             1),
                                     '/') -
                             1)
                     else SUBSTR(
                             SUBSTR(
                                     (case when x.url is null then urls.url else x.url end),
                                     INSTR((case when x.url is null then urls.url else x.url end), '//') +
                                     2),
                             1,
                             INSTR(
                                     SUBSTR(
                                             (case when x.url is null then urls.url else x.url end),
                                             INSTR((case when x.url is null then urls.url else x.url end), '//') +
                                             2),
                                     '/') -
                             1) end
                        else case
                                 when (INSTR((case when x.url is null then urls.url else x.url end), '/') <> 0)
                                     then case
                                              when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') =
                                                    1) then substr(
                                                      (case when x.url is null then urls.url else x.url end),
                                                      instr((case when x.url is null then urls.url else x.url end), '.') +
                                                      1,
                                                      INSTR((case when x.url is null then urls.url else x.url end), '/') -
                                                      instr((case when x.url is null then urls.url else x.url end), '.') -
                                                      1)
                                              else SUBSTR((case when x.url is null then urls.url else x.url end), 1,
                                                          INSTR((case when x.url is null then urls.url else x.url end), '/') -
                                                          1) end
                                 else case
                                          when (INSTR((case when x.url is null then urls.url else x.url end), '.') <> 0)
                                              then case
                                                       when (INSTR((case when x.url is null then urls.url else x.url end), 'ww') =
                                                             1) then substr(
                                                               (case when x.url is null then urls.url else x.url end),
                                                               instr((case when x.url is null then urls.url else x.url end), '.') +
                                                               1,
                                                               length((case when x.url is null then urls.url else x.url end)))
                                                       else (case when x.url is null then urls.url else x.url end) end
                                          else '' end end end)                 domain
            from urls
                     left outer join [moz_places] x on urls.url = x.url)
      group by domain)
where not (domain in (select domain from MostApropirateDomain union select domain from NotApropirateDomain))
order by count desc;

