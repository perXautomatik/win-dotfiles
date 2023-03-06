SELECT title, sum(visit_count), sum(typed_count), max(last_visit_time)
FROM urls t group by title;
;-- -. . -..- - / . -. - .-. -.--
SELECT count(url), title, sum(visit_count), sum(typed_count), max(last_visit_time)
FROM urls t group by title;
;-- -. . -..- - / . -. - .-. -.--
SELECT count(url), title, sum(visit_count), sum(typed_count), max(last_visit_time)
FROM urls t group by title order by sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT count(url), (case when title <> '' then title else url end) title, sum(visit_count), sum(typed_count), max(last_visit_time)
FROM urls t group by title order by sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
select * from urls where title = 'LiveJasmin.com - Hot Live Sex Shows!';
;-- -. . -..- - / . -. - .-. -.--
SELECT count(url), (case when title <> '' then title else url end) title, sum(visit_count), sum(typed_count), max(last_visit_time)
FROM urls t group by  (case when title <> '' then title else url end) order by sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url),
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) b,





       (case when title <> '' then title else url end) title,
       sum(visit_count),
       sum(typed_count),
       max(last_visit_time)
FROM urls t
group by (case when title <> '' then title else url end)
order by sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t
group by (case when title <> '' then title else url end)
order by sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t
group by (case when title <> '' then title else url end)
order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t
group by (case when (case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else title end) <> '' then title else url end)
order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(case when (case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else title end) <> '' then title else url end) shortestURl,


       (case when title <> '' then title else url end) title,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t
group by (case when (case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else title end) <> '' then title else url end)
order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when (case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else title end) <> '' then title else url end) title,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t
group by (case when (case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else title end) <> '' then title else url end)
order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case
                        when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail'
                        else 
                            case when title <> '' then title
                                else url end
                            end)
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (case
                        when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail'
                        else 
                            case when title <> '' then title
                                else url end
                            end)
                            


order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (case
                        when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail'
                        else
                            case when title <> '' then title
                                else url end
                            end)



order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else


                            case when title <> '' then title
                                else url end
                            end
    end )



order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else



                            case when title <> '' then title
                                else url end
                            end end
    end )



order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else


                            case when title <> '' then title
                                else url end
                            end end
    end )



order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else


                            case when title <> '' then title
                                else url end
                            end end end
    end )



order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else

                            case when title <> '' then title
                                else url end
                            end end end
    end )



order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else

                            case when title <> '' then title
                                else url end
                            end end end end
    end )



order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else
                                                case when title = 'Inbox (13) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else

                            case when title <> '' then title
                                else url end
                            end end end end
    end )



order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where t.title = a.title ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else
                                                case when title = 'Inbox (13) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else

                            case when title <> '' then title
                                else url end
                            end end end end end
    end )



order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else
                                                case when title = 'Inbox (13) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else

                            case when title <> '' then title
                                else url end
                            end end end end end
    end )



order by count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else
                                                case when title = 'Inbox (13) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else

                            case when title <> '' then title
                                else url end
                            end end end end end
    end )



order by title, count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else
                                                case when title = 'Inbox (13) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                                    case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title <> '' then title
                                else url end
                            end end end end end
    end )



order by title, count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else
                                                case when title = 'Inbox (13) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                                    case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title <> '' then title
                                else url end
                            end end end end end end
    end )



order by title, count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else
                                                case when title = 'Inbox (13) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                                    case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else
case when title = 'Facebook – log in or sign up' then 'Facebook' else
                            case when title <> '' then title
                                else url end
                            end end end end end end end
    end )



order by title, count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else
                                                case when title = 'Inbox (13) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                                    case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else
case when title = 'Facebook – log in or sign up' then 'Facebook' else
                            case when title <> '' then title
                                else url end
                            end end end end end end end
    end )



order by shortestURl, title, count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else
                                                case when title = 'Inbox (13) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                                    case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else
                            case when title = 'Photo - Google Photos' then 'Photo - Google Photos' else

                            case when title <> '' then title
                                else url end
                            end end end end end end end end
    end )



order by shortestURl, title, count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Inbox (1) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                case when title = 'Edit photo - Google Photos' then 'Photo - Google Photos' else
                                    case when title = 'Timeline' then 'Google Maps' else
                                        case when title = '57°40''03.5"N 12°17''44.0"E - Google Maps' then 'Google Maps' else
                                            case when title = 'Gmail - Free Storage and Email from Google' then 'Gmail' else
                                                case when title = 'Inbox (13) - christoffer.broback@gmail.com - Gmail' then 'Gmail' else
                                                    case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else
                            case when title = 'Photo - Google Photos' then 'Photos - Google Photos' else

                            case when title <> '' then title
                                else url end
                            end end end end end end end end
    end )



order by shortestURl, title, count(url) desc ,sum(visit_count) desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else


                            case when title <> '' then title
                                else url end
                            end end end end end end end end
    end );
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else


                            case when title <> '' then title
                                else url end
                            end end end end
    end );
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else


                            case when title <> '' then title
                                else url end
                            end end end end
    end )



order by uniqueURls;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else


                            case when title <> '' then title
                                else url end
                            end end end end
    end )



order by uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else


                            case when title <> '' then title
                                else url end
                            end end end end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                                case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title <> '' then title
                                else url end
                            end end end end end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                                case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT


       count(url) uniqueURls,
(select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,


       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime
FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                                case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
ltrim(title,instr(7,title,'/'))        
FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
ltrim(title,INSTR(title,' - '))
FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
substr(title,1,INSTR(title,' - ')) TitBefD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
substr(title,1,INSTR(title,' – ')) TitBefD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
substr(title,1,INSTR(title,(case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE ' - ' END))) TitBefD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
substr(title,1,INSTR(title,(case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE 
    case when INSTR(title,' - ') <> 0 THEN ' | ' ELSE
    ' - ' END
    END))) TitBefD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
substr(title,1,INSTR(title,(case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
    case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
    ' | ' END
    END))) TitBefD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
substr(title,1,INSTR(title,(case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
    case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
    ' | ' END
    END))) TitBefD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE 
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE ' :: ' 
END END
    END))) TitBefD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE ' -- '
END END END
    END))) TitBefD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
substr(title,1,INSTR(title,(
    case when INSTR(title,' – ') <> 0 THEN ' – ' ELSE
        case when INSTR(title,' - ') <> 0 THEN ' - ' ELSE
            case when INSTR(title,' | ') <> 0 THEN ' | ' ELSE
                case when INSTR(title,' :: ') <> 0 THEN ' :: ' ELSE 
                    case when INSTR(title,' -- ') <> 0 THEN ' -- ' ELSE ':' 
END END END END
    END))) TitBefD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
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
    END)),LENGTH(title)-1) TitafTD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
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
    END)),LENGTH(title)-2) TitafTD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
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
    END)),LENGTH(title)) TitafTD


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
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


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
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
    END)),LENGTH(title)+1) TitafTD,
INSTR(url,7,'/')


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
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
    END)),LENGTH(title)+1) TitafTD,
INSTR(url,'/')


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
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
    END)),LENGTH(title)+1) TitafTD,
SUBSTR(url,INSTR(url,'//')) INSTR(url,'//')


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
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
    END)),LENGTH(title)+1) TitafTD,
SUBSTR(url,INSTR(url,'//')) 


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
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
    END)),LENGTH(title)+1) TitafTD,
INSTR(SUBSTR(url,INSTR(url,'//')+2),'/') 


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
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
    END)),LENGTH(title)+1) TitafTD,
SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/'))
       
       


FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       count(url) uniqueURls,
        (select a.url from urls a where (case when t.title <> '' then t.title else t.url end) = (case when a.title <> '' then a.title else a.url end) ORDER BY length(url) limit 1 ) shortestURl,

       (case when title <> '' then title else url end) title
       ,
       sum(visit_count) visitCount,
       sum(typed_count) typedCount,
       max(last_visit_time) lastVisitTime,
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
    END)),LENGTH(title)+1) TitafTD,
SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1)




FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
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
    




FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else


                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
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

FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by  visitCount, HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
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

FROM urls t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by  visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
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

FROM urls t

group by SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1), (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by  visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
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

FROM (selct *,SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by  visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t

group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by  visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by t.host)
group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else url end
                            end end end end end  end end
    end )



order by  visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by t.host)
group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end
    end )



order by  visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by t.host)
group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end )



order by  visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by t.host)
group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end )



order by uniqueURls, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by t.host)
group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end )



order by uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host = 'www.google.com' then title else t.host end)
    )
group by (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end )



order by uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host = 'www.google.com' then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end ) else t.host end)
    )



order by uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com')

                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end ) else t.host end)
    )



order by uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com')

                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end ) else t.host end)
    )



order by uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','www.patreon.com')

                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end ) else t.host end)
    )



order by uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','www.patreon.com','chrome.google.com')

                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end ) else t.host end)
    )



order by uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','www.patreon.com','chrome.google.com','www.google.se')

                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end ) else t.host end)
    )



order by uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','www.patreon.com','chrome.google.com','www.google.se')

                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone','Music for everyone ') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end ) else t.host end)
    )



order by uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','www.patreon.com','chrome.google.com','www.google.se','www.spotify.com')

                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end ) else t.host end)
    )



order by uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','www.patreon.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com')

                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end ) else t.host end)
    )



order by uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','www.patreon.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com')

                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end ) else t.host end)
    )



order by HOST, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','www.patreon.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com')

                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end
    end ) else t.host end)
    )



order by HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','www.patreon.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com')
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com')
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com')
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by   visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com')
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by   visitCount/uniqueURls ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com')
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by   visitCount/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com')
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by   (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com')
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com','www.furaffinity.net','www.systembolaget.se')
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('www.google.com','svs-games.com','www.bing.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com','www.furaffinity.net')
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from urls where title = 'Google Search';
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('mybrowseraddon.com','www.google.com','svs-games.com','www.bing.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com','www.furaffinity.net')
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('github.com','mybrowseraddon.com','www.google.com','svs-games.com','www.bing.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com','www.furaffinity.net')
                 then (
                            case when title = 'Facebook – log in or sign up' then 'Facebook' else

                            case when title = 'Google Sheets: Free Online Spreadsheets for Personal Use' then 'Google Sheets' else

                            case when title in ('Inbox (1) - christoffer.broback@gmail.com - Gmail','Gmail - Free Storage and Email from Google','Inbox (13) - christoffer.broback@gmail.com - Gmail') then 'Gmail' else

                            case when title in ('Timeline','57°40''03.5"N 12°17''44.0"E - Google Maps') then 'Google Maps' else

                            case when title in ('Edit photo - Google Photos','Albums - Google Photos','Photo - Google Photos') then 'Photos - Google Photos' else

                            case when title in ('Unsorted - Google Drive') then 'Google Drive' else

                            case when title in ('Spotify - Web Player: Music for everyone') then 'Spotify – Home' else

                            case when title in ('Messages for web') then 'Messages by Google' else

                            case when title <> '' then title
                                else shortestURl
                            end end end end end  end end end end )
                        else
                            case when
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from urls where title = 'Google';
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host in ('github.com','mybrowseraddon.com','www.google.com','svs-games.com','www.bing.com','chrome.google.com','www.google.se','www.spotify.com','open.spotify.com','www.furaffinity.net')
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
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'svs-games.com', 'www.bing.com',
                     'chrome.google.com', 'www.google.se', 'www.spotify.com', 'open.spotify.com', 'www.furaffinity.net'
                    ,'www.computerperformance.co.uk'
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
                                t.host in ('www.patreon.com') then TitBefD
                            else
                                t.host

                 end end)
    )



order by  uniqueURls, (visitCount*visitCount)/uniqueURls desc ,visitCount desc, HOST, TitafTD, uniqueURls desc, visitCount desc , HOST,  TitBefD,shortestURl, uniqueURls desc;
;-- -. . -..- - / . -. - .-. -.--
select * from urls where title = 'PowerShell Basics: Start, Stop & Restart a Service, Cmdlet | Examples';
;-- -. . -..- - / . -. - .-. -.--
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
    group by
             (case when t.host
                 in ('github.com', 'mybrowseraddon.com', 'www.google.com', 'svs-games.com', 'www.bing.com',
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

FROM (select * , SUBSTR(SUBSTR(url,INSTR(url,'//')+2),1,INSTR(SUBSTR(url,INSTR(url,'//')+2),'/')-1) 'host' from urls) t
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