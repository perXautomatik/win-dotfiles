CREATE VIEW "(Tool)TitleSplitByDelimeter" as
SELECT min(id) idMin,
             count(url)                                                                                                                                         uniqueURls,
             min(url) shortestUrl,
             --(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end)ORDER BY length(url)limit 1)   shortestURl,
             (case when title <> '' then title else url end)                                                                                                    title,
             --sum(visit_count)                                                                                                                                   visitCount,sum(typed_count)                                                                                                                                   typedCount,max(last_visit_time)                                                                                                                               lastVisitTime,
             SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) domainx,
             substr(title, 1, INSTR(title, (case when INSTR(title, ' â€“ ') <> 0 THEN ' â€“ ' ELSE case when INSTR(title, ' - ') <> 0 THEN ' - ' ELSE case when INSTR(title, ' | ') <> 0 THEN ' | ' ELSE case when INSTR(title, ' :: ') <> 0 THEN ' :: ' ELSE case when INSTR(title, ' -- ') <> 0 THEN ' -- ' ELSE ':' END END END END END))) TitBefD,
             substr(title, INSTR(title, (case when INSTR(title, ' â€“ ') <> 0 THEN ' â€“ ' ELSE case when INSTR(title, ' - ') <> 0 THEN ' - ' ELSE case when INSTR(title, ' | ') <> 0 THEN ' | ' ELSE case when INSTR(title, ' :: ') <> 0 THEN ' :: ' ELSE case when INSTR(title, ' -- ') <> 0 THEN ' -- ' ELSE ':' END END END END END)), LENGTH(title) + 1) TitafTD
      FROM (select id,url,
                   (

                           case
                               when (domain in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com', 'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'))
                                     then
                                         case when domain in ('www.patreon.com', 'svs-games.com') then
                                                    substr(title, INSTR(title, (case when INSTR(title, ' â€“ ') <> 0 THEN ' â€“ ' ELSE case when INSTR(title, ' - ') <> 0 THEN ' - ' ELSE case when INSTR(title, ' | ') <> 0 THEN ' | ' ELSE case when INSTR(title, ' :: ') <> 0 THEN ' :: ' ELSE case when INSTR(title, ' -- ') <> 0 THEN ' -- ' ELSE ':' END END END END END)), LENGTH(title) + 1)
                                         else (case when title = 'Facebook â€“ log in or sign up' then 'Facebook' else case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail', 'Gmail - Free Storage and Email from Google', 'Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else case when title in ('Timeline', '57Â°40''03.5"N 12Â°17''44.0"E - Google Maps') then 'Google Maps' else case when title in ('Edit photo - Google Photos', 'Albums - Google Photos', 'Photo - Google Photos') then 'Photos - Google Photos' else case when title in ('Unsorted - Google Drive') then 'Google Drive' else case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify â€“ Home' else case when title in ('Messages for web') then 'Messages by Google' else case when title in ('Google') then 'Google Search' else case when title <> '' then title else url end end end end end end end end end end )  end
                            else domain end
                               )
                        ,title, domain from urls) group by title
order by uniqueURls desc limit 500;

