CREATE VIEW NotApropirateDomain  as
with urlsWithDomain as (                            select *
                                                              ,
                                                       (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
	     then case
                when (INSTR(url, 'ww') < 10 AND INSTR(url, 'ww') <> 0)
                    then SUBSTR(
		    SUBSTR(url, INSTR(url, '.') + 1),
		    1,
		    INSTR(SUBSTR(url, INSTR(url, '.') + 1), '/') - 1)
                        else
                            SUBSTR(
			    SUBSTR(url, INSTR(url, '//') + 2),
			    1,
			    INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url,
				  instr(url, '.')+1,
				  INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1)
				       then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
                      ) domain
                 from urls )
    select
     max(id),
     max(title) t,
     max(url) m,
     sum(visit_count) v,
     urlsWithDomain.domain from
     urlsWithDomain left outer join safe_dom using (domain) where
     safe_dom.domain is null
    group by
     domain order by
     v desc,
     domain;

