select * from images inner join ImageTagProperties on id = imageid;
;-- -. . -..- - / . -. - .-. -.--
select * from images
    inner join ImageTags on id = imageid;
;-- -. . -..- - / . -. - .-. -.--
select * from images
    inner join ImageTags on id = imageid
    inner join tags on tagid = tags.id;
;-- -. . -..- - / . -. - .-. -.--
select 
       Images.name,
       imageid,
       tagid,
       Tags.name
from images
    inner join ImageTags on id = imageid
    inner join tags on tagid = tags.id;
;-- -. . -..- - / . -. - .-. -.--
select
       Images.name,
       imageid,
       tagid,
       Tags.name
from images
    inner join ImageTags on Images.id = imageid
    inner join tags on tagid = tags.id;
;-- -. . -..- - / . -. - .-. -.--
with x as (select
       Images.name,
       imageid,
       tagid,
       Tags.name as tName
from images
    inner join ImageTags on Images.id = imageid
    inner join tags on tagid = tags.id)

select x.tName,count(*) from x group by x.tName;
;-- -. . -..- - / . -. - .-. -.--
select * from ImageTags where tagid = 349;
;-- -. . -..- - / . -. - .-. -.--
delete from ImageTags where tagid = 349;
;-- -. . -..- - / . -. - .-. -.--
delete from ImageTags where tagid = 353;
;-- -. . -..- - / . -. - .-. -.--
delete from ImageTags where tagid = 352;
;-- -. . -..- - / . -. - .-. -.--
delete from ImageTags where tagid = 347;
;-- -. . -..- - / . -. - .-. -.--
delete from ImageTags where tagid = 351;
;-- -. . -..- - / . -. - .-. -.--
delete from ImageTags where tagid = 350;
;-- -. . -..- - / . -. - .-. -.--
delete from ImageTags where tagid = 346;
;-- -. . -..- - / . -. - .-. -.--
delete from ImageTags where tagid = 202;
;-- -. . -..- - / . -. - .-. -.--
with x as (select
       Images.name,
       imageid,
       tagid,
       Tags.name as tName
from images
    inner join ImageTags on Images.id = imageid
    inner join tags on tagid = tags.id)

select max(tagid) tagid,x.tName,count(*) from x group by x.tName;
;-- -. . -..- - / . -. - .-. -.--
with x as (select
       Images.name,
       imageid,
       tagid,
       Tags.name as tName
from images
    inner join ImageTags on Images.id = imageid
    inner join tags on tagid = tags.id)

select max(tagid) tagid,x.tName,count(*)   from x  
where  x.tName like '%adult%'
group by x.tName;
;-- -. . -..- - / . -. - .-. -.--
update imagetags set tagid = 1290
where tagid = 1397;
;-- -. . -..- - / . -. - .-. -.--
select imageid from
imagetags
where tagid = 1397;
;-- -. . -..- - / . -. - .-. -.--
update imagetags
set tagid = 1290
where imageid in (select imageid from
imagetags
where tagid = 1397);
;-- -. . -..- - / . -. - .-. -.--
select count(id) c, uniqueHash from images group by uniqueHash having c > 1;
;-- -. . -..- - / . -. - .-. -.--
select  uniqueHash from images group by uniqueHash having count(id) > 1;
;-- -. . -..- - / . -. - .-. -.--
select * from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash);
;-- -. . -..- - / . -. - .-. -.--
select album,
       name,
       fileSize,
       manualOrder,
       uniqueHash,
       Albums.id,
       albumRoot,
       relativePath
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID;
;-- -. . -..- - / . -. - .-. -.--
select i.*,
       Albums.id,
       albumRoot,
       relativePath,
       date,
       caption,
       collection,
       icon
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID;
;-- -. . -..- - / . -. - .-. -.--
select relativePath,
       name,
       fileSize,
       uniqueHash


from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
    ,pathList as (select relativePath || '/' || name from relativePathNameFileSizeUniqueHash)
select * from pathList;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
    ,pathList as (select AlbumRoots.specificPath,relativePath || '/' || name from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots
        )
select * from pathList;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
    ,pathList as (select AlbumRoots.*,relativePath || '/' || name from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots
        )
select * from pathList;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
    ,pathList as (select replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| specificPath||relativePath || specificPath || name from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots
        )
select * from pathList;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
    ,pathList as (select replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| relativePath || specificPath || name from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots
        )
select * from pathList;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
    ,pathList as (select replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| relativePath || specificPath || name path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots
        )
select * from pathList order by path;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
    ,pathList as (select replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| relativePath || specificPath || name path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots
        )
select * from pathList order by path desc;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
   ,prefixSufix as (select '<path>' prefixSufix)
   ,pathList as (select prefixSufix || replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| relativePath || specificPath || name || prefixSufix path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots cross join prefixSufix
        )
select * from pathList order by path desc;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
   ,prefixSufix as (select '<path>' prefix,'</path>' Sufix)
   ,pathList as (select prefix || replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| relativePath || specificPath || name || Sufix path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots cross join prefixSufix
        )
select * from pathList order by path desc;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
   ,prefixSufix as (select '<path>' prefix,'</path>' Sufix)
   ,pathList as (select prefix || replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| replace(relativePath || specificPath || name,'/','\') || Sufix path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots cross join prefixSufix
        )
select * from pathList order by path desc;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
   ,prefixSufix as (select '<CorePathWithSubFolder><enableSubFolder>false</enableSubFolder><path>' prefix,'</path></CorePathWithSubFolder>' Sufix)
   ,pathList as (select prefix || replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| replace(relativePath || specificPath || name,'/','\') || Sufix path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots cross join prefixSufix
        )
select * from pathList order by path desc;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
   ,trueOrfalse as (select 'true' state)
   ,prefixSufix as (select '<CorePathWithSubFolder><enableSubFolder>' || 'true' || '</enableSubFolder><path>' prefix,'</path></CorePathWithSubFolder>' Sufix )
   ,pathList as (select prefix || replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| replace(relativePath || specificPath || name,'/','\') || Sufix path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots cross join prefixSufix
        )
select * from pathList order by path desc;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
   ,trueOrfalse as (select 'true' state)
   ,prefixSufix as (select '<CorePathWithSubFolder><enableSubFolder>' || 'true' || '</enableSubFolder><path>' prefix,'</path></CorePathWithSubFolder>' Sufix )
   ,pathList as (select prefix || replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| replace(relativePath || specificPath || name,'/','\') || Sufix path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots cross join prefixSufix
        )
,endrow as (select '</searchPath><ignorePath><CorePathWithSubFolder><enableSubFolder>false</enableSubFolder><path>U:\1. Dedup\PortableApps\AntiDupl.NET-1.8.5.379\data</path></CorePathWithSubFolder></ignorePath><validPath /><deletePath /></CoreOptions>')
select * from pathList union select * from endrow;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
   ,trueOrfalse as (select 'true' state)
   ,prefixSufix as (select '<CorePathWithSubFolder><enableSubFolder>' || 'true' || '</enableSubFolder><path>' prefix,'</path></CorePathWithSubFolder>' Sufix )
   ,pathList as (select prefix || replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| replace(relativePath || specificPath || name,'/','\') || Sufix path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots cross join prefixSufix
        )
,endrow as (select '</searchPath><ignorePath><CorePathWithSubFolder><enableSubFolder>false</enableSubFolder><path>U:\1. Dedup\PortableApps\AntiDupl.NET-1.8.5.379\data</path></CorePathWithSubFolder></ignorePath><validPath /><deletePath /></CoreOptions>')
 select * from endrow union select * from pathList;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
   ,trueOrfalse as (select 'true' state)
   ,prefixSufix as (select '<CorePathWithSubFolder><enableSubFolder>' || 'true' || '</enableSubFolder><path>' prefix,'</path></CorePathWithSubFolder>' Sufix )
   ,pathList as (select prefix || replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| replace(relativePath || specificPath || name,'/','\') || Sufix path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots cross join prefixSufix
        )
,endrow as (select '</searchPath><ignorePath><CorePathWithSubFolder><enableSubFolder>false</enableSubFolder><path>U:\1. Dedup\PortableApps\AntiDupl.NET-1.8.5.379\data</path></CorePathWithSubFolder></ignorePath><validPath /><deletePath /></CoreOptions>')
,firstrow as (select '<?xml version="1.0" encoding="utf-8"?><CoreOptions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"><searchOptions><subFolders>false</subFolders><system>false</system><hidden>false</hidden><JPEG>true</JPEG><BMP>true</BMP><GIF>true</GIF><PNG>true</PNG><TIFF>true</TIFF><EMF>true</EMF><WMF>true</WMF><EXIF>true</EXIF><ICON>true</ICON><JP2>true</JP2><PSD>true</PSD><DDS>false</DDS><TGA>true</TGA></searchOptions><compareOptions><checkOnEquality>true</checkOnEquality><transformedImage>false</transformedImage><sizeControl>false</sizeControl><typeControl>false</typeControl><ratioControl>true</ratioControl><thresholdDifference>5</thresholdDifference><minimalImageSize>64</minimalImageSize><maximalImageSize>8196</maximalImageSize><compareInsideOneFolder>true</compareInsideOneFolder><compareInsideOneSearchPath>true</compareInsideOneSearchPath><algorithmComparing>SquaredSum</algorithmComparing></compareOptions><defectOptions><checkOnDefect>true</checkOnDefect><checkOnBlockiness>false</checkOnBlockiness><blockinessThreshold>10</blockinessThreshold><checkOnBlockinessOnlyNotJpeg>false</checkOnBlockinessOnlyNotJpeg><checkOnBlurring>false</checkOnBlurring><blurringThreshold>4</blurringThreshold></defectOptions><advancedOptions><deleteToRecycleBin>true</deleteToRecycleBin><mistakeDataBase>true</mistakeDataBase><ratioResolution>32</ratioResolution><compareThreadCount>0</compareThreadCount><collectThreadCount>0</collectThreadCount><reducedImageSize>32</reducedImageSize><undoQueueSize>10</undoQueueSize><resultCountMax>100000</resultCountMax><ignoreFrameWidth>0</ignoreFrameWidth></advancedOptions><hintOptions><algorithmOfHintSetting>Set_by_algorithm</algorithmOfHintSetting></hintOptions><searchPath>')
select path
from pathList union select *from firstrow
union
select *from endrow
order by path;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
   ,trueOrfalse as (select 'true' state)
   ,prefixSufix as (select '<CorePathWithSubFolder><enableSubFolder>' || 'true' || '</enableSubFolder><path>' prefix,'</path></CorePathWithSubFolder>' Sufix )
   ,pathList as (select prefix || replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| replace(relativePath || specificPath || name,'/','\') || Sufix path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots cross join prefixSufix
        )

    insert into output select path from pathList;
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
select * from relativePathNameFileSizeUniqueHash;
;-- -. . -..- - / . -. - .-. -.--
with i as (select * from images),
     relativePathNameFileSizeUniqueHash as (select relativePath, name, fileSize, uniqueHash
                                            from i
                                                     inner join Albums on i.album = albums.ID)
select *
from relativePathNameFileSizeUniqueHash;
;-- -. . -..- - / . -. - .-. -.--
create temporary table output (path txt);
;-- -. . -..- - / . -. - .-. -.--
insert into output values ('<?xml version="1.0" encoding="utf-8"?><CoreOptions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"><searchOptions><subFolders>false</subFolders><system>false</system><hidden>false</hidden><JPEG>true</JPEG><BMP>true</BMP><GIF>true</GIF><PNG>true</PNG><TIFF>true</TIFF><EMF>true</EMF><WMF>true</WMF><EXIF>true</EXIF><ICON>true</ICON><JP2>true</JP2><PSD>true</PSD><DDS>false</DDS><TGA>true</TGA></searchOptions><compareOptions><checkOnEquality>true</checkOnEquality><transformedImage>false</transformedImage><sizeControl>false</sizeControl><typeControl>false</typeControl><ratioControl>true</ratioControl><thresholdDifference>5</thresholdDifference><minimalImageSize>64</minimalImageSize><maximalImageSize>8196</maximalImageSize><compareInsideOneFolder>true</compareInsideOneFolder><compareInsideOneSearchPath>true</compareInsideOneSearchPath><algorithmComparing>SquaredSum</algorithmComparing></compareOptions><defectOptions><checkOnDefect>true</checkOnDefect><checkOnBlockiness>false</checkOnBlockiness><blockinessThreshold>10</blockinessThreshold><checkOnBlockinessOnlyNotJpeg>false</checkOnBlockinessOnlyNotJpeg><checkOnBlurring>false</checkOnBlurring><blurringThreshold>4</blurringThreshold></defectOptions><advancedOptions><deleteToRecycleBin>true</deleteToRecycleBin><mistakeDataBase>true</mistakeDataBase><ratioResolution>32</ratioResolution><compareThreadCount>0</compareThreadCount><collectThreadCount>0</collectThreadCount><reducedImageSize>32</reducedImageSize><undoQueueSize>10</undoQueueSize><resultCountMax>100000</resultCountMax><ignoreFrameWidth>0</ignoreFrameWidth></advancedOptions><hintOptions><algorithmOfHintSetting>Set_by_algorithm</algorithmOfHintSetting></hintOptions><searchPath>');
;-- -. . -..- - / . -. - .-. -.--
with relativePathNameFileSizeUniqueHash as (select relativePath,
       name,
       fileSize,
       uniqueHash
from images i inner join (select uniqueHash from images group by uniqueHash having count(id) > 1) q using (uniqueHash)inner join Albums on i.album = albums.ID)
   ,trueOrfalse as (select 'true' state) -- doesn't work, use a xml output profile instead.
   ,prefixSufix as (select '<CorePathWithSubFolder><enableSubFolder>' || 'true' || '</enableSubFolder><path>' prefix,'</path></CorePathWithSubFolder>' Sufix )
   ,pathList as (select prefix || replace(AlbumRoots.identifier,'networkshareid:?mountpath=','')|| replace(relativePath || specificPath || name,'/','\') || Sufix path from relativePathNameFileSizeUniqueHash
            cross join AlbumRoots cross join prefixSufix
        )

    insert into output select path from pathList;
;-- -. . -..- - / . -. - .-. -.--
insert into output    select '</searchPath><ignorePath><CorePathWithSubFolder><enableSubFolder>false</enableSubFolder><path>U:\1. Dedup\PortableApps\AntiDupl.NET-1.8.5.379\data</path></CorePathWithSubFolder></ignorePath><validPath /><deletePath /></CoreOptions>'
;
;-- -. . -..- - / . -. - .-. -.--
select * from output;
;-- -. . -..- - / . -. - .-. -.--
with 
x as (select
       Images.name,
       imageid,
       tagid,
       Tags.name as tName
from images
    inner join ImageTags on Images.id = imageid
    inner join tags on tagid = tags.id)

select max(tagid) tagid,x.tName,count(*)   from x
where  x.tName like '%adult%'
group by x.tName;
;-- -. . -..- - / . -. - .-. -.--
with q as (select uniqueHash from images group by uniqueHash having count(id) > 1),
     i as (select *from images inner join q using (uniqueHash))
select * from i;
;-- -. . -..- - / . -. - .-. -.--
with i as (select * from images),
     countRelativePaths as (select relativePath, count() c
                                            from i
                                                     inner join Albums on i.album = albums.ID
                                                group by relativePath
         )
select *
from countRelativePaths order by c desc;
;-- -. . -..- - / . -. - .-. -.--
with
     relativePathNameFileSizeUniqueHash as (select relativePath,
                                                   name,
                                                   fileSize,
                                                   uniqueHash
                                            from images i

                                                     inner join Albums on i.album = albums.ID)
select *
from relativePathNameFileSizeUniqueHash;
;-- -. . -..- - / . -. - .-. -.--
with countRelativePaths as (select relativePath,album, count() c
                                            from  images i
                                                     inner join Albums on i.album = albums.ID
                                                group by relativePath,album
         )
select *
from countRelativePaths
order by c desc;
;-- -. . -..- - / . -. - .-. -.--
with countRelativePaths as (select relativePath,album,Albums.albumRoot, count() c
                                            from  images i
                                                     inner join Albums on i.album = albums.ID
                                                group by relativePath,album,Albums.albumRoot
         )
select *
from countRelativePaths
order by c desc;
;-- -. . -..- - / . -. - .-. -.--
with countRelativePaths as (select AlbumRoots.label || relativePath path, count() c
                                            from  images i
                                                     inner join Albums on i.album = albums.ID
                                                    inner join AlbumRoots on albumRoots.id = Albums.albumRoot
                                                group by label,relativePath
         )
select *
from countRelativePaths
order by c desc;
;-- -. . -..- - / . -. - .-. -.--
with
x as (select
       Images.name,
       imageid,
       tagid,
       Tags.name as tName
from images
    inner join ImageTags on Images.id = imageid
    inner join tags on tagid = tags.id)

select max(tagid) tagid,x.tName,count(*) c   from x
where  x.tName like '%adult%'
group by x.tName order by c desc;