DELETE t1 FROM [Fetching page2] as t1
        INNER JOIN
    [Fetching page2] as t2
where t1.Date = t2.Date and t1.Album = t2.Album and t1.Artist = t2.Artist and t1.Title = t2.Title and t1.id < t2.id
;-- -. . -..- - / . -. - .-. -.--
DELETE t1 
    FROM [Fetching page2] t2
        INNER JOIN
    [Fetching page2] t1
    on t1.Date = t2.Date and t1.Album = t2.Album and t1.Artist = t2.Artist and t1.Title = t2.Title
where t1.id < t2.id
;-- -. . -..- - / . -. - .-. -.--
t1.id < t2.id
;-- -. . -..- - / . -. - .-. -.--
DELETE t1
    FROM [2] t2
        INNER JOIN
    [2] t1
    on t1.Artist_title = t2.Artist_title
where t1.id < t2.id
;-- -. . -..- - / . -. - .-. -.--
with library as (SELECT t.track, t.artist, count(1) as plays, max(t.dateUtc) as date FROM database_name.dbo.LastFmDataDump t
    group by t.track, t.artist)



SELECT top 200 Track_name, Artist_name, plays,date
FROM database_name.dbo.[loved2019 - 20190525] t join library on t.Artist_name = artist and t.Track_name = library.track
order by plays, date
;-- -. . -..- - / . -. - .-. -.--
with library as (SELECT t.track, t.artist, count(1) as plays, max(t.dateUtc) as date
                 FROM database_name.dbo.LastFmDataDump t
                 group by t.track, t.artist)


SELECT top 200 Track_name, Artist_name, plays, library.date
FROM database_name.dbo.[2019 - 20190525] t
         join library on t.Artist_name = artist and t.Track_name = library.track
order by plays, date
;-- -. . -..- - / . -. - .-. -.--
with library as (SELECT l.track, l.artist, count(1) as plays, max(l.dateUtc) as date
                 FROM database_name.dbo.LastFmDataDump l
                 group by l.track, l.artist)


SELECT top 200 Track_name, ' - ', Artist_name --, plays, library.date
FROM database_name.dbo.[2019 - 20190525] t
         join library on t.Artist_name = artist and t.Track_name = library.track
order by plays, date
;-- -. . -..- - / . -. - .-. -.--
with library as (SELECT l.track, l.artist, count(1) as plays, max(l.dateUtc) as date
                 FROM database_name.dbo.LastFmDataDump l
                 group by l.track, l.artist)


SELECT top 200 Track_name, ' - ', Artist_name --, plays, library.date
FROM database_name.dbo.[2019 - 20190525] t
         join library on t.Artist_name = artist and t.Track_name = library.track
order by plays, library.date
;-- -. . -..- - / . -. - .-. -.--
with library as (SELECT l.track, l.artist, count(1) as plays, max(l.dateUtc) as date
                 FROM database_name.dbo.EveryLastFmplay l
                 group by l.track, l.artist)


SELECT top 50 Artist_name, ' - ', Track_name --, plays, library.date
FROM database_name.dbo.[2019 - 20190525] t
         join library on t.Artist_name = artist and t.Track_name = library.track
order by plays, library.date
;-- -. . -..- - / . -. - .-. -.--
with library as (SELECT l.track, l.artist, count(1) as plays, max(l.dateUtc) as datex
                 FROM database_name.dbo.EveryLastFmplay l
                 group by l.track, l.artist)


SELECT top 50 Artist_name, ' - ', Track_name, plays, library.datex
FROM database_name.dbo.[2019 - 20190525] t
         join library on t.Artist_name = artist and t.Track_name = library.track
order by plays, library.datex
;-- -. . -..- - / . -. - .-. -.--
with library as (SELECT l.track, l.artist, count(1) as plays, max(l.dateUtc) as datex, max(l.track_mbid) as trackMid
                 FROM database_name.dbo.EveryLastFmplay l
                 group by l.track, l.artist)


SELECT top 50 Artist_name, ' - ', Track_name, plays, library.datex
FROM database_name.dbo.[2019 - 20190525] t
         join library
             on t.Artist_name = artist and t.Track_name = library.track
order by plays, library.datex, trackMid
;-- -. . -..- - / . -. - .-. -.--
with library as (SELECT l.track, l.artist, count(1) as plays, max(l.uts) as datex, max(l.track_mbid) as trackMid
                 FROM database_name.dbo.EveryLastFmplay l
                 group by l.track, l.artist)


SELECT top 50 Artist_name, ' - ', Track_name, plays, library.datex
FROM database_name.dbo.[2019 - 20190525] t
         join library
             on t.Artist_name = artist and t.Track_name = library.track
order by plays, library.datex, trackMid
;-- -. . -..- - / . -. - .-. -.--
with library as (SELECT l.track, l.artist, count(1) as plays, max(l.uts) as datex
                 FROM database_name.dbo.EveryLastFmplay l
                 group by l.track, l.artist)


SELECT top 200 Artist_name, ' - ', Track_name, plays, library.datex
FROM database_name.dbo.[2019 - 20190525] t
         join library
             on t.Artist_name = artist and t.Track_name = library.track
order by plays, library.datex
;-- -. . -..- - / . -. - .-. -.--
create view LovedTracksPlays as SELECT Artist_name, ' - ', Track_name, plays, library.datex
FROM database_name.dbo.[2019 - 20190525] t
         join (SELECT l.track, l.artist, count(1) as plays, max(l.uts) as datex
               FROM database_name.dbo.EveryLastFmplay l
               group by l.track, l.artist) library
              on t.Artist_name = artist and t.Track_name = library.track
;-- -. . -..- - / . -. - .-. -.--
create view LovedTracksPlays as SELECT Artist_name, ' - ' as delimiter, Track_name, plays, library.datex
FROM database_name.dbo.[2019 - 20190525] t
         join (SELECT l.track, l.artist, count(1) as plays, max(l.uts) as datex
               FROM database_name.dbo.EveryLastFmplay l
               group by l.track, l.artist) library
              on t.Artist_name = artist and t.Track_name = library.track
;-- -. . -..- - / . -. - .-. -.--
create view LovedTracksPlays as SELECT [Artist name], ' - ' as delimiter, [Track name], plays, library.datex
FROM database_name.dbo.[My Lastfm Playlist_1] t
         join (SELECT l.track, l.artist, count(1) as plays, max(l.uts) as datex
               FROM database_name.dbo.EveryLastFmplay l
               group by l.track, l.artist) library
              on t.[Artist name] = artist and t.[Track name] = library.track
;-- -. . -..- - / . -. - .-. -.--
UPDATE artistsLocaly
SET occurense = (select top 1 count(c1) from artistsLocaly as l where artistsLocaly.C1 = l.c1 group by l.c1)
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT *,
       RN = ROW_NUMBER()OVER(PARTITION BY 1 ORDER BY 1)
   FROM artistsLocaly
)
select FROM CTE WHERE RN > 1
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT *,
       RN = ROW_NUMBER()OVER(PARTITION BY 1 ORDER BY 1)
   FROM artistsLocaly
)
select * FROM CTE WHERE RN > 1
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT *,
       RN = ROW_NUMBER()OVER(PARTITION BY 1 ORDER BY %%physical%%)
   FROM artistsLocaly
)
select * FROM CTE WHERE RN > 1
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT *,
       RN = ROW_NUMBER()OVER(PARTITION BY 1 ORDER BY %%physloc%%)
   FROM artistsLocaly
)
select * FROM CTE WHERE RN > 1
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT *,
       RN = ROW_NUMBER()OVER(PARTITION BY C1 ORDER BY %%physloc%%)
   FROM artistsLocaly
)
select * FROM CTE WHERE RN > 1
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT *,
       RN = ROW_NUMBER()OVER(PARTITION BY C1 ORDER BY %%physloc%%)
   FROM artistsLocaly
)
delete * FROM CTE WHERE RN > 1
;-- -. . -..- - / . -. - .-. -.--
WITH CTE AS(
   SELECT  *,
       RN = ROW_NUMBER()OVER(PARTITION BY C1 ORDER BY %%physloc%%)
   FROM artistsLocaly
)
delete FROM CTE WHERE RN > 1
;-- -. . -..- - / . -. - .-. -.--
BEGIN TRAN
;-- -. . -..- - / . -. - .-. -.--
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE [dbo].[ArtistUrl] (
		[Url]        [nvarchar](100) COLLATE Finnish_Swedish_CI_AS NULL,
		[Date]       [date] NOT NULL,
		[Artist]     [nvarchar](255) COLLATE Finnish_Swedish_CI_AS NOT NULL,
		CONSTRAINT [PK_ArtistUrl]
		PRIMARY KEY
		CLUSTERED
		([Artist])
	WITH (IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = OFF, ALLOW_PAGE_LOCKS = OFF)
)
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE [dbo].[ArtistUrl]
	ADD
	CONSTRAINT [DF__Tracks-014__Date__44CA3770_ArtistUrl]
	DEFAULT ('2013-01-23') FOR [Date]
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO [dbo].[ArtistUrl](Url, [Date], Artist)
SELECT DISTINCT Url, [Date], Artist
FROM [dbo].[ Tracks-014034]
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE [dbo].[ Tracks-014034] DROP CONSTRAINT [DF__Tracks-014__Date__44CA3770]
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE [dbo].[ Tracks-014034] DROP COLUMN [Url]
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE [dbo].[ Tracks-014034] DROP COLUMN [Date]
;-- -. . -..- - / . -. - .-. -.--
IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
;-- -. . -..- - / . -. - .-. -.--
IF @@TRANCOUNT>0
	COMMIT

SET NOEXEC OFF