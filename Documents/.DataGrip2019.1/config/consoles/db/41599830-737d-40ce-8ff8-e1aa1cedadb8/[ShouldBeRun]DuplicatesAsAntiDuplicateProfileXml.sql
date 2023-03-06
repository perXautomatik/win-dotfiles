create temporary table output (path txt);
insert into output values ('<?xml version="1.0" encoding="utf-8"?><CoreOptions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"><searchOptions><subFolders>false</subFolders><system>false</system><hidden>false</hidden><JPEG>true</JPEG><BMP>true</BMP><GIF>true</GIF><PNG>true</PNG><TIFF>true</TIFF><EMF>true</EMF><WMF>true</WMF><EXIF>true</EXIF><ICON>true</ICON><JP2>true</JP2><PSD>true</PSD><DDS>false</DDS><TGA>true</TGA></searchOptions><compareOptions><checkOnEquality>true</checkOnEquality><transformedImage>false</transformedImage><sizeControl>false</sizeControl><typeControl>false</typeControl><ratioControl>true</ratioControl><thresholdDifference>5</thresholdDifference><minimalImageSize>64</minimalImageSize><maximalImageSize>8196</maximalImageSize><compareInsideOneFolder>true</compareInsideOneFolder><compareInsideOneSearchPath>true</compareInsideOneSearchPath><algorithmComparing>SquaredSum</algorithmComparing></compareOptions><defectOptions><checkOnDefect>true</checkOnDefect><checkOnBlockiness>false</checkOnBlockiness><blockinessThreshold>10</blockinessThreshold><checkOnBlockinessOnlyNotJpeg>false</checkOnBlockinessOnlyNotJpeg><checkOnBlurring>false</checkOnBlurring><blurringThreshold>4</blurringThreshold></defectOptions><advancedOptions><deleteToRecycleBin>true</deleteToRecycleBin><mistakeDataBase>true</mistakeDataBase><ratioResolution>32</ratioResolution><compareThreadCount>0</compareThreadCount><collectThreadCount>0</collectThreadCount><reducedImageSize>32</reducedImageSize><undoQueueSize>10</undoQueueSize><resultCountMax>100000</resultCountMax><ignoreFrameWidth>0</ignoreFrameWidth></advancedOptions><hintOptions><algorithmOfHintSetting>Set_by_algorithm</algorithmOfHintSetting></hintOptions><searchPath>')
;
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

    insert into output select path from pathList
;
insert into output    select '</searchPath><ignorePath><CorePathWithSubFolder><enableSubFolder>false</enableSubFolder><path>U:\1. Dedup\PortableApps\AntiDupl.NET-1.8.5.379\data</path></CorePathWithSubFolder></ignorePath><validPath /><deletePath /></CoreOptions>'
;
select * from output
