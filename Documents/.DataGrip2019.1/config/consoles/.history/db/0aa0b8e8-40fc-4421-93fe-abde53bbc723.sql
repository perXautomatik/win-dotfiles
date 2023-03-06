select * from (SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from (SELECT
       count(url) uniqueURls,
        (select a.url from main.moz_places a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from (SELECT
       count(url) uniqueURls,
        (select a.url from main.moz_places a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed) typedCount,
       max(last_visit_time) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from (SELECT
       count(url) uniqueURls,
        (select a.url from main.moz_places a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed) typedCount,
       max(last_visit_date) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
Select * from moz_places where title = '';
;-- -. . -..- - / . -. - .-. -.--
Select * from moz_places where title isnull;
;-- -. . -..- - / . -. - .-. -.--
select * from (SELECT
       count(url) uniqueURls,
        (select a.url from main.moz_places a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed) typedCount,
       max(last_visit_date) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' AND not(title isnull)  then title
                                else shortestURl
                            end end end end end  end end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from (SELECT
       count(url) uniqueURls,
        (select a.url from main.moz_places a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed) typedCount,
       max(last_visit_date) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' AND not(title isnull)
                                then title
                            else
                                case when instr(url,1,'=') <> 0 then substr(substr(url,instr(url,1,'='),length(url)),1,instr(substr(url,instr(url,1,'='),length(url)),1,'='))
                                    else shortestURl
                                    
                            end end end end end  end end end end end  end)
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from (SELECT
       count(url) uniqueURls,
        (select a.url from main.moz_places a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed) typedCount,
       max(last_visit_date) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' AND not(title isnull)
                                then title
                            else
                                case when instr(url,1,'=') <> 0 then substr(substr(url,instr(url,1,'='),length(url)),1,instr(substr(url,instr(url,1,'='),length(url)),1,'='))
                                    else shortestURl

                            end end end end end  end end end end end  end)
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from (SELECT
       count(url) uniqueURls,
        (select a.url from main.moz_places a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed) typedCount,
       max(last_visit_date) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' AND not(title isnull)
                                then title
                            else
                                case
                                    when instr(url, 1, '=') <> 0
                                        then substr(
                                                substr(url, 
                                                    instr(url, 1, '=')
                                                    , length(url)
                                                    )
                                                , 1,
                                            0
                                            )
                                    else shortestURl

                            end end end end end  end end end end end  end)
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from (SELECT
       count(url) uniqueURls,
        (select a.url from main.moz_places a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed) typedCount,
       max(last_visit_date) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' AND not(title isnull)
                                then title
                            else
                                case
                                    when instr(url, '=') <> 0
                                        then substr(
                                                substr(url,
                                                    instr(url, '=')
                                                    , length(url)
                                                    )
                                                , 1,
                                            instr(
                                                substr(url, 
                                                    instr(url, '=')
                                                    , length(url))
                                                , 1, '=')
                                            )
                                    else shortestURl

                            end end end end end  end end end end end  end)
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from (SELECT
       count(url) uniqueURls,
        (select a.url from main.moz_places a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed) typedCount,
       max(last_visit_date) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' AND not(title isnull)
                                then title
                            else
                                case
                                    when instr(url, '=') <> 0
                                        then substr(
                                                substr(url,
                                                    instr(url, '=')
                                                    , length(url)
                                                    )
                                                , 1,
                                            instr(
                                                substr(url,
                                                    instr(url, '=')
                                                    , length(url))
                                                , '=')
                                            )
                                    else shortestURl

                            end end end end end  end end end end end  end)
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from (SELECT
       count(url) uniqueURls,
        (select a.url from main.moz_places a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

                      
                      
       (case
                                    when instr(url, '=') <> 0
                                        then substr(
                                                substr(url,
                                                    instr(url, '=')
                                                    , length(url)
                                                    )
                                                , 1,
                                            instr(
                                                substr(url,
                                                    instr(url, '=')
                                                    , length(url))
                                                , '=')
                                            )
           else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed) typedCount,
       max(last_visit_date) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' AND not(title isnull)
                                then title
                            else
                                case
                                    when instr(url, '=') <> 0
                                        then substr(
                                                substr(url,
                                                    instr(url, '=')
                                                    , length(url)
                                                    )
                                                , 1,
                                            instr(
                                                substr(url,
                                                    instr(url, '=')
                                                    , length(url))
                                                , '=')
                                            )
                                    else shortestURl

                            end end end end end  end end end end end  end)
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
Select * from moz_places where title isnull and instr(url, '=') <> 0;
;-- -. . -..- - / . -. - .-. -.--
Select url from moz_places where title isnull and instr(url, '=') <> 0;
;-- -. . -..- - / . -. - .-. -.--
Select url,substr(url,instr(url, '='),length(url)) from moz_places where title isnull and instr(url, '=') <> 0;
;-- -. . -..- - / . -. - .-. -.--
Select url,substr(url,instr(url, '=')+1,length(url)) from moz_places where title isnull and instr(url, '=') <> 0;
;-- -. . -..- - / . -. - .-. -.--
Select url,substr(url,instr(url, '=')+1,length(url)),instr(substr(url,instr(url, '=')+1,length(url)), '=')

from moz_places where title isnull and instr(url, '=') <> 0;
;-- -. . -..- - / . -. - .-. -.--
Select url,substr(url,instr(url, '=')+1,length(url)),instr(substr(url,instr(url, '=')+1,length(url)), '='),
       substr(substr(url,instr(url, '=')+1,length(url)),instr(substr(url,instr(url, '=')+1,length(url)), '='))

from moz_places where title isnull and instr(url, '=') <> 0;
;-- -. . -..- - / . -. - .-. -.--
Select url,substr(url,instr(url, '=')+1,length(url)),instr(substr(url,instr(url, '=')+1,length(url)), '='),
       substr(substr(url,instr(url, '=')+1,length(url)),1,instr(substr(url,instr(url, '=')+1,length(url))+1, '='))

from moz_places where title isnull and instr(url, '=') <> 0;
;-- -. . -..- - / . -. - .-. -.--
Select url,substr(url,instr(url, '=')+1,length(url)),instr(substr(url,instr(url, '=')+1,length(url)), '='),
       substr(substr(url,instr(url, '=')+1,length(url)),1,instr(substr(url,instr(url, '=')+1,length(url)), '='+1))

from moz_places where title isnull and instr(url, '=') <> 0;
;-- -. . -..- - / . -. - .-. -.--
Select url,substr(url,instr(url, '=')+1,length(url)),instr(substr(url,instr(url, '=')+1,length(url)), '='),
       substr(substr(url,instr(url, '=')+1,length(url)),1,instr(substr(url,instr(url, '=')+1,length(url)), '='))

from moz_places where title isnull and instr(url, '=') <> 0;
;-- -. . -..- - / . -. - .-. -.--
Select url,substr(url,instr(url, '=')+1,length(url)),instr(substr(url,instr(url, '=')+1,length(url)), '='),
       substr(substr(url,instr(url, '=')+1,length(url)),1,instr(substr(url,instr(url, '=')+1,length(url)), '=')-1)

from moz_places where title isnull and instr(url, '=') <> 0;
;-- -. . -..- - / . -. - .-. -.--
select * from (SELECT
       count(url) uniqueURls,
        (select a.url from main.moz_places a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,



       (case
                                    when instr(url, '=') <> 0
                                        then substr(substr(url,instr(url, '=')+1,length(url)),1,instr(substr(url,instr(url, '=')+1,length(url)), '=')-1)
           else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed) typedCount,
       max(last_visit_date) lastVisitTime,
       SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) HOST,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END))) TitBefD,
substr(title,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':'
END END END END
    END)),LENGTH(title)+1) TitafTD

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from main.moz_places) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    )
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title in ('Google') then 'Google Search' else

                            case when title <> '' AND not(title isnull)
                                then title
                            else
                                case
                                    when instr(url, '=') <> 0
                                        then substr(
                                                substr(url,
                                                    instr(url, '=')
                                                    , length(url)
                                                    )
                                                , 1,
                                            instr(
                                                substr(url,
                                                    instr(url, '=')
                                                    , length(url))
                                                , '=')
                                            )
                                    else shortestURl

                            end end end end end  end end end end end  end)
                        else
                            case when
                                t.host in ('www.patreon.com','svs-games.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select a.*, url from moz_bookmarks A left join moz_places on moz_places.id = a.id;
;-- -. . -..- - / . -. - .-. -.--
select * from moz_items_annos join moz_bookmarks on moz_bookmarks.id = moz_items_annos.id;
;-- -. . -..- - / . -. - .-. -.--
select * from moz_items_annos join moz_bookmarks on moz_bookmarks.id = moz_items_annos.item_id;
;-- -. . -..- - / . -. - .-. -.--
select moz_items_annos.id,
       item_id,
       anno_attribute_id,
       mime_type,
       content,
       flags,
       expiration,
       moz_items_annos.type,
       moz_items_annos.dateAdded,
       moz_items_annos.lastModified,
       moz_bookmarks.id,
       moz_bookmarks.type,
       fk,
       parent,
       position,
       title a,
       keyword_id,
       folder_type,
       moz_bookmarks.dateAdded,
       moz_bookmarks.lastModified,
       guid asd
        ,moz_places.url
from moz_items_annos join moz_bookmarks on moz_bookmarks.id = moz_items_annos.item_id join moz_places on item_id = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select moz_items_annos.id,
       item_id,
       anno_attribute_id,
       mime_type,
       content,
       flags,
       expiration,
       moz_items_annos.type,
       moz_items_annos.dateAdded,
       moz_items_annos.lastModified,
       moz_bookmarks.id,
       moz_bookmarks.type,
       fk,
       parent,
       position,
       title as a,
       keyword_id,
       folder_type,
       moz_bookmarks.dateAdded,
       moz_bookmarks.lastModified,
       guid asd
        ,moz_places.url
from moz_items_annos join moz_bookmarks on moz_bookmarks.id = moz_items_annos.item_id join moz_places on item_id = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select moz_items_annos.id,
       item_id,
       anno_attribute_id,
       mime_type,
       content,
       flags,
       expiration,
       moz_items_annos.type,
       moz_items_annos.dateAdded,
       moz_items_annos.lastModified,
       moz_bookmarks.id,
       moz_bookmarks.type,
       fk,
       parent,
       position,
       title as a,
       keyword_id,
       folder_type,
       moz_bookmarks.dateAdded,
       moz_bookmarks.lastModified,
       guid as asd
        ,moz_places.url
from moz_items_annos join moz_bookmarks on moz_bookmarks.id = moz_items_annos.item_id join moz_places on item_id = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select moz_items_annos.id,
       item_id,
       anno_attribute_id,
       mime_type,
       content,
       flags,
       expiration,
       moz_items_annos.type,
       moz_items_annos.dateAdded,
       moz_items_annos.lastModified,
       moz_bookmarks.id,
       moz_bookmarks.type,
       fk,
       parent,
       position,
       moz_bookmarks.title,
       keyword_id,
       folder_type,
       moz_bookmarks.dateAdded,
       moz_bookmarks.lastModified,
       guid as asd
        ,moz_places.url
from moz_items_annos join moz_bookmarks on moz_bookmarks.id = moz_items_annos.item_id join moz_places on item_id = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select moz_items_annos.id,
       item_id,
       anno_attribute_id,
       mime_type,
       content,
       flags,
       expiration,
       moz_items_annos.type,
       moz_items_annos.dateAdded,
       moz_items_annos.lastModified,
       moz_bookmarks.id,
       moz_bookmarks.type,
       fk,
       parent,
       position,
       moz_bookmarks.title,
       keyword_id,
       folder_type,
       moz_bookmarks.dateAdded,
       moz_bookmarks.lastModified
        ,moz_places.url
from moz_items_annos join moz_bookmarks on moz_bookmarks.id = moz_items_annos.item_id join moz_places on item_id = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select moz_items_annos.id,
       item_id,
       anno_attribute_id,
       mime_type,
       content,
       flags,
       expiration,
       moz_items_annos.type,
       moz_items_annos.dateAdded,
       moz_items_annos.lastModified,
       moz_bookmarks.id,
       moz_bookmarks.type,
       fk,
       parent,
       position,
       moz_bookmarks.title,
       keyword_id,
       folder_type,
       moz_bookmarks.dateAdded,
       moz_bookmarks.lastModified
    ,moz_places.url
from moz_items_annos join moz_bookmarks on moz_bookmarks.id = moz_items_annos.item_id join moz_places on moz_bookmarks.fk = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select moz_bookmarks.id,
       moz_bookmarks.type,
       fk,
       parent,
       position,
       moz_bookmarks.title,
       keyword_id,
       folder_type,
       moz_bookmarks.dateAdded,
       moz_bookmarks.lastModified
    ,moz_places.url,moz_places.title
from moz_bookmarks 
    join moz_places
    on moz_bookmarks.fk = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select moz_bookmarks.id,
       moz_bookmarks.type,
       fk,
       parent,
       position,
       moz_bookmarks.title,
       keyword_id,
       folder_type,
       moz_bookmarks.dateAdded,
       moz_bookmarks.lastModified
    ,moz_places.url,moz_places.title
from moz_bookmarks
    join moz_places
    on moz_bookmarks.fk = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select moz_bookmarks.id,
       fk,
       parent,
       moz_bookmarks.title
from moz_bookmarks
    join moz_places
    on moz_bookmarks.fk = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select moz_bookmarks.id,
       fk,
       parent,
       moz_bookmarks.title
        url
from moz_bookmarks
    join moz_places
    on moz_bookmarks.fk = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select moz_bookmarks.id,
       fk,
       parent,
       moz_bookmarks.title,
       
        url
from moz_bookmarks
    join moz_places
    on moz_bookmarks.fk = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select moz_bookmarks.id,
       parent,
       moz_bookmarks.title,

        url
from moz_bookmarks
    join moz_places
    on moz_bookmarks.fk = moz_places.id;
;-- -. . -..- - / . -. - .-. -.--
select 
       moz_bookmarks.id,
       parent,
       q.title,
       q.parent,
       moz_bookmarks.title,
        url
from moz_bookmarks
    join moz_places
    on moz_bookmarks.fk = moz_places.id
    join moz_bookmarks q 
on q.parent = moz_bookmarks.parent;
;-- -. . -..- - / . -. - .-. -.--
select
       moz_bookmarks.id,
       moz_bookmarks.parent,
       q.title,
       q.parent,
       moz_bookmarks.title,
        url
from moz_bookmarks
    join moz_places
    on moz_bookmarks.fk = moz_places.id
    join moz_bookmarks q
on q.parent = moz_bookmarks.parent;
;-- -. . -..- - / . -. - .-. -.--
select
       moz_bookmarks.id,
       moz_bookmarks.parent,
       q.title,
       q.parent,
       moz_bookmarks.title,
        url
from moz_bookmarks
    inner join moz_places
    on moz_bookmarks.fk = moz_places.id
    left join moz_bookmarks q
on q.parent = moz_bookmarks.parent;
;-- -. . -..- - / . -. - .-. -.--
select 
       moz_bookmarks.id,
       moz_bookmarks.parent,
       q.title,
       q.parent,
       moz_bookmarks.title,
       url
from moz_bookmarks
    inner join moz_places
    on moz_bookmarks.fk = moz_places.id
    left join moz_bookmarks q
on q.id = moz_bookmarks.parent;
;-- -. . -..- - / . -. - .-. -.--
select
    q.title category,
       moz_bookmarks.id,
       moz_bookmarks.parent,
       q.parent,
       moz_bookmarks.title,
       url
from moz_bookmarks
    inner join moz_places
    on moz_bookmarks.fk = moz_places.id
    left join moz_bookmarks q
on q.id = moz_bookmarks.parent;
;-- -. . -..- - / . -. - .-. -.--
select
    q.title category,
       moz_bookmarks.id,
       q.parent parrentF,
       moz_bookmarks.parent,
       moz_bookmarks.title,
       url
from moz_bookmarks
    inner join moz_places
    on moz_bookmarks.fk = moz_places.id
    left join moz_bookmarks q
on q.id = moz_bookmarks.parent;
;-- -. . -..- - / . -. - .-. -.--
select a.*, url from moz_bookmarks A left join moz_places on moz_places.guid = a.guid;