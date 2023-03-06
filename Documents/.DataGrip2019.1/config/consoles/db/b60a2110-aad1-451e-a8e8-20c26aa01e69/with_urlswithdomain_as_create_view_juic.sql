--with urlsWithDomain as ( create view juicyurlswithoutDomain as

.read safDoms.sql

.read unsafeDoms.sql
;
create view IF NOT EXISTS juicyurlswithoutDomain as
    with urlsWithDomain as (
select  *,(case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1) then case
                when (INSTR(url, 'ww') <> 0)
                    then SUBSTR(SUBSTR(url, INSTR(url, '.') + 1), 1, INSTR(SUBSTR(url, INSTR(url, '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url, instr(url, '.')+1, INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1) then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
                        ) domain                 from urls)

  select urlsWithDomain.* from urlsWithDomain inner join unSafe_dom

    order by visit_count desc

select * from juicyurlswithoutDomain