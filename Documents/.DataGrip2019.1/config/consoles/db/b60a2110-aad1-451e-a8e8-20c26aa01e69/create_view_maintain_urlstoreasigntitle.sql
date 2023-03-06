CREATE VIEW "(Maintain)urlsToReasignTitleTo" as

select urls.*
            from (select url
                       , group_concat(distinct title) title
                       , sum(x)+sum(t)                       t
                  from (
                           select url
                                , title
                                , instr(url, title) x
                                , (case when length(title) < 30 then instr(title, 'laterfap') + instr(title, 'likes') + instr(title, 'favorite') else 0 end) +
                                  instr(title, '%') + instr(title, 'http:') + instr(title, '<') + instr(title, ';') + instr(title, '#')+
                                  -- + instr(title, '+')
                                      instr(title, '.jpg') + instr(title, '.gif') + instr(title, '.html') t
                           from urls
                            where (instr(url,' ')+instr(url,'|')= 0 And instr(url,'.')*instr(url,'http') <> 0 and domain <> '0' and
                      ((title = '' or title is null or url = title) Or x+t > 0))
                      or title = 'www.google.se'
                      or length(title) > 200

                       ) c
                  group by url) urls
                  --  where instr(title,')')*instr(title,'(')=0
left outer join XenuImp on url = Address where "Status-Code" is null;

