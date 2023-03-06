select path from allexesinportableapps where app = '"BootDefrag';
;-- -. . -..- - / . -. - .-. -.--
select path from allexesinportableapps where app = 'BootDefrag';
;-- -. . -..- - / . -. - .-. -.--
select path from allexesinportableapps where app like '%BootDefrag';
;-- -. . -..- - / . -. - .-. -.--
select distinct path from allexesinportableapps where app like '%BootDefrag';
;-- -. . -..- - / . -. - .-. -.--
select distinct path from allexesinportableapps where app like '%bzip2';
;-- -. . -..- - / . -. - .-. -.--
select distinct path from allexesinportableapps where app like '%wininst-9.0';
;-- -. . -..- - / . -. - .-. -.--
select max(path), app, count(*) c
from allexesinportableapps group by app
order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select distinct path from allexesinportableapps where app like '%File Types Editor';
;-- -. . -..- - / . -. - .-. -.--
select * from (select max(path), app, count(*) c
from allexesinportableapps group by app
order by c desc) where c = 1;
;-- -. . -..- - / . -. - .-. -.--
select p, group_concat(app),sum(c) z from (select * from (select max(path) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc;
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(path) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(path) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(path) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%' then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else path ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%' then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else path end ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
        then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else
            case when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
        then 'E:\PortableApps\5. game\PortableApps\ff4\' else
            path end end ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
        then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else
            case when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
        then 'E:\PortableApps\5. game\PortableApps\ff4\' else
            case when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
        then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\' else
            
            path end end end ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
        then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else
            case when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
        then 'E:\PortableApps\5. game\PortableApps\ff4\' else
            case when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
        then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\' else
            case when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
        then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\' else

            path end end end end ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
        then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else
            case when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
        then 'E:\PortableApps\5. game\PortableApps\ff4\' else
            case when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
        then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\' else
            case when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
        then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\' else
                        case when path like 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
        then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\' else

            path end end end end end ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
        then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else
            case when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
        then 'E:\PortableApps\5. game\PortableApps\ff4\' else
            case when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
        then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\' else
            case when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
        then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\' else
                        case when path like 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
        then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\' else
                                    case when path like '%\PortableApps.comLauncher\%'
        then '%\PortableApps.comLauncher\%' else

            path end end end end end end ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
        then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else
            case when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
        then 'E:\PortableApps\5. game\PortableApps\ff4\' else
            case when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
        then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\' else
            case when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
        then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\' else
                        case when path like 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
        then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\' else
                                    case when path like '%\PortableApps.comLauncher\%'
        then '%\PortableApps.comLauncher\%' else
                                    case when path like '%Glary%'
        then 'E:\PortableApps\Glary Utilities 5\' else


            path end end end end end end end ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
        then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else
            case when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
        then 'E:\PortableApps\5. game\PortableApps\ff4\' else
            case when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
        then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\' else
            case when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
        then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\' else
                        case when path like 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
        then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\' else
                                    case when path like '%\PortableApps.comLauncher\%'
        then '%\PortableApps.comLauncher\%' else
                                    case when path like '%Glary%'
        then 'E:\PortableApps\Glary Utilities 5\' else
            case when path like 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\%'
        then 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\' else


            path end end end end end end end end) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by z desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
        then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else
            case when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
        then 'E:\PortableApps\5. game\PortableApps\ff4\' else
            case when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
        then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\' else
            case when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
        then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\' else
                        case when path like 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
        then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\' else
                                    case when path like '%\PortableApps.comLauncher\%'
        then '%\PortableApps.comLauncher\%' else
                                    case when path like '%Glary%'
        then 'E:\PortableApps\Glary Utilities 5\' else
            case when path like 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\%'
        then 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\' else
            case when path like 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\%'
        then 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\' else


            path end end end end end end end end end ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
        then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else
            case when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
        then 'E:\PortableApps\5. game\PortableApps\ff4\' else
            case when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
        then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\' else
            case when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
        then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\' else
                        case when path like 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
        then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\' else
                                    case when path like '%\PortableApps.comLauncher\%'
        then '%\PortableApps.comLauncher\%' else
                                    case when path like '%Glary%'
        then 'E:\PortableApps\Glary Utilities 5\' else
            case when path like 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\%'
        then 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\' else
            case when path like 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\%'
        then 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\' else
                        case when path like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\%'
        then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\' else


            path end end end end end end end end end end ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
        then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\' else
            case when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
        then 'E:\PortableApps\5. game\PortableApps\ff4\' else
            case when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
        then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\' else
            case when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
        then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\' else
                        case when path like 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
        then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\' else
                                    case when path like '%\PortableApps.comLauncher\%'
        then '%\PortableApps.comLauncher\%' else
                                    case when path like '%Glary%'
        then 'E:\PortableApps\Glary Utilities 5\' else
            case when path like 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\%'
        then 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\' else
            case when path like 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\%'
        then 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\' else
                        case when path like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\%'
        then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\' else
                            case when path like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\%'
        then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\' else


            path end end end end end end end end end end end) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case
when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\'
else
case
when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
then 'E:\PortableApps\5. game\PortableApps\ff4\'
else
case
when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\'
else
case
when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\'
else
case
when path like
'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\'
else
case
when path like '%\PortableApps.comLauncher\%'
then '%\PortableApps.comLauncher\%'
else
case
when path like '%Glary%'
then 'E:\PortableApps\Glary Utilities 5\'
else
case
when path like
'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\%'
then 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\'
else
case
when path like 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\%'
then 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedyFoxPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedyFoxPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedCrunchPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedCrunchPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpaceMonger-Wine Comp\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpaceMonger-Wine Comp\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SnapTimerPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SnapTimerPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\PortableApps.comInstaller\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\PortableApps.comInstaller\'
else


            path end end end end end end end end end end end end end end end end) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case
when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\'
else
case
when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
then 'E:\PortableApps\5. game\PortableApps\ff4\'
else
case
when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\'
else
case
when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\'
else
case
when path like
'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\'
else
case
when path like '%\PortableApps.comLauncher\%'
then '%\PortableApps.comLauncher\%'
else
case
when path like '%Glary%'
then 'E:\PortableApps\Glary Utilities 5\'
else
case
when path like
'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\%'
then 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\'
else
case
when path like 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\%'
then 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedyFoxPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedyFoxPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedCrunchPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedCrunchPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpaceMonger-Wine Comp\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpaceMonger-Wine Comp\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SnapTimerPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SnapTimerPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\PortableApps.comInstaller\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\PortableApps.comInstaller\'
else
    case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\sPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\sPortable\'
else


            path end end end end end end end end end end end end end end end end end ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case
when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\'
else
case
when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
then 'E:\PortableApps\5. game\PortableApps\ff4\'
else
case
when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\'
else
case
when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\'
else
case
when path like
'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\'
else
case
when path like '%\PortableApps.comLauncher\%'
then '%\PortableApps.comLauncher\%'
else
case
when path like '%Glary%'
then 'E:\PortableApps\Glary Utilities 5\'
else
case
when path like
'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\%'
then 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\'
else
case
when path like 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\%'
then 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedyFoxPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedyFoxPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedCrunchPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedCrunchPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpaceMonger-Wine Comp\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpaceMonger-Wine Comp\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SnapTimerPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SnapTimerPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\PortableApps.comInstaller\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\PortableApps.comInstaller\'
else
    case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\sPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\sPortable\'
else
        case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\GeanyPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\GeanyPortable\'
else


            path end end end end end end end end end end end end end end end end end end ) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case
when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\'
else
case
when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
then 'E:\PortableApps\5. game\PortableApps\ff4\'
else
case
when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\'
else
case
when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\'
else
case
when path like
'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\'
else
case
when path like '%\PortableApps.comLauncher\%'
then '%\PortableApps.comLauncher\%'
else
case
when path like '%Glary%'
then 'E:\PortableApps\Glary Utilities 5\'
else
case
when path like
'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\%'
then 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\'
else
case
when path like 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\%'
then 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedyFoxPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedyFoxPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedCrunchPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedCrunchPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpaceMonger-Wine Comp\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpaceMonger-Wine Comp\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SnapTimerPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SnapTimerPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\PortableApps.comInstaller\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\PortableApps.comInstaller\'
else
    case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\sPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\sPortable\'
else
        case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\GeanyPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\GeanyPortable\'
else
        case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Digsby\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Digsby\'
else


            path end end end end end end end end end end end end end end end end end end end) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(
    case
when path like 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\%'
then 'E:\PortableApps\NirSoft Software - Wine Comp\NirSoft\'
else
case
when path like 'E:\PortableApps\5. game\PortableApps\ff4\%'
then 'E:\PortableApps\5. game\PortableApps\ff4\'
else
case
when path like 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\%'
then 'E:\PortableApps\4. windows Customize\PortableApps\XP Tools\'
else
case
when path like 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\%'
then 'E:\PortableApps\5. video\PortableApps\AvidemuxPortable\'
else
case
when path like
'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\%'
then 'E:\PortableApps\2. file Organization\PortableApps\ShortcutsSearchAndReplacePortable\'
else
case
when path like '%\PortableApps.comLauncher\%'
then '%\PortableApps.comLauncher\%'
else
case
when path like '%Glary%'
then 'E:\PortableApps\Glary Utilities 5\'
else
case
when path like
'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\%'
then 'E:\PortableApps\1. Dedup\PortableApps\Duplicate File Detector 4.7 Portable\'
else
case
when path like 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\%'
then 'E:\PortableApps\1. Dedup\PortableApps\DiffImgPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\visualvm_138\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\USB_Drive_Template\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedyFoxPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedyFoxPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedCrunchPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SpeedCrunchPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SnapTimerPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\SnapTimerPortable\'
else
case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\PortableApps.comInstaller\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\PortableApps.comInstaller\'
else
    case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\sPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\sPortable\'
else
        case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\GeanyPortable\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\GeanyPortable\'
else
        case
when path like
'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Digsby\%'
then 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Digsby\'
else


            path end end end end end end end end end end end end end end end end end end) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
select * from allexesinportableapps q cross join allexesinportableapps t where q.path != t.path and q.path like t.path || '%';
;-- -. . -..- - / . -. - .-. -.--
select q.path pz, group_concat(t.path, t.app) 
from allexesinportableapps q cross join allexesinportableapps t where q.path != t.path and q.path like t.path || '%'
group by pz;
;-- -. . -..- - / . -. - .-. -.--
select q.path pz, group_concat(q.app, t.app)
from allexesinportableapps q cross join allexesinportableapps t where q.path != t.path and q.path like t.path || '%'
group by pz;
;-- -. . -..- - / . -. - .-. -.--
select * from allexesinportableapps q cross join allexesinportableapps t where q.path != t.path 
  and q.path like t.path || '%';
;-- -. . -..- - / . -. - .-. -.--
select distinct * from allexesinportableapps q cross join allexesinportableapps t where q.path != t.path
  and q.path like t.path || '%';
;-- -. . -..- - / . -. - .-. -.--
select distinct q.path q, t.path tp
from allexesinportableapps q cross join allexesinportableapps t where q.path != t.path
                                                                  and q.path like t.path || '%';
;-- -. . -..- - / . -. - .-. -.--
select distinct q.path q, group_concat(t.path )tp 
from allexesinportableapps q cross join allexesinportableapps t where q.path != t.path
                                                                  and q.path like t.path || '%'
group by q;
;-- -. . -..- - / . -. - .-. -.--
select distinct path  
from allexesinportableapps
    where path not in       
                                (select distinct t.path from allexesinportableapps q cross join allexesinportableapps t where q.path != t.path
                                                                  and q.path like t.path || '%' );
;-- -. . -..- - / . -. - .-. -.--
select distinct path
from allexesinportableapps x left outer join 
                                   (select distinct q.path from allexesinportableapps q cross join allexesinportableapps t where q.path != t.path
                                                                  and q.path like t.path || '%' ) w
on x.path = w.path
where w.path is null;
;-- -. . -..- - / . -. - .-. -.--
select distinct x.path
from allexesinportableapps x left outer join
                                   (select distinct q.path from allexesinportableapps q cross join allexesinportableapps t where q.path != t.path
                                                                  and q.path like t.path || '%' ) w
on x.path = w.path
where w.path is null;
;-- -. . -..- - / . -. - .-. -.--
select * from
(select p, group_concat(app),sum(c) z from (select * from (select max(path) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%');
;-- -. . -..- - / . -. - .-. -.--
with
uniqueAppnames as (select p path, app, z
                   from
(select p, group_concat(app) app,sum(c) z from (select * from (select max(path) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%')
    )

select distinct x.path
from uniqueAppnames x left outer join
                                   (select q.path from uniqueAppnames q cross join uniqueAppnames t where q.path != t.path
                                                                  and q.path like t.path || '%' ) w
on x.path = w.path
where w.path is null;
;-- -. . -..- - / . -. - .-. -.--
with
uniqueAppnames as (select p path, app, z
                   from
(select p, group_concat(app) app,sum(c) z from (select * from (select max(path) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%')
    )

   ,motherPaths as (select distinct x.path
from uniqueAppnames x left outer join
                                   (select q.path from uniqueAppnames q cross join uniqueAppnames t where q.path != t.path
                                                                  and q.path like t.path || '%' ) w
on x.path = w.path
where w.path is null)

select 
     uniqueAppnames.path, app, z, motherPaths.path mpath 
     
     from uniqueAppnames left outer join motherPaths on uniqueAppnames.path like motherPaths.path || '%';
;-- -. . -..- - / . -. - .-. -.--
with
uniqueAppnames as (select p path, app, z
                   from
(select p, group_concat(app) app,sum(c) z from (select * from (select max(path) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%')
    )

   ,motherPaths as (select distinct x.path
from uniqueAppnames x left outer join
                                   (select q.path from uniqueAppnames q cross join uniqueAppnames t where q.path != t.path
                                                                  and q.path like t.path || '%' ) w
on x.path = w.path
where w.path is null)

select
     coalesce(motherPaths.path,uniqueAppnames.path) path, group_concat(app), sum(z) s

     from uniqueAppnames left outer join motherPaths on uniqueAppnames.path like motherPaths.path || '%'
group by coalesce(motherPaths.path,uniqueAppnames.path);
;-- -. . -..- - / . -. - .-. -.--
with
uniqueAppnames as (select p path, app, z
                   from
(select p, group_concat(app) app,sum(c) z from (select * from (select max(path) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p
order by p desc
    ) where not( p like 'E:\Downloads\Installations\%') and not( p like 'E:\OneDrive - Region Gotland\%') and not( p like 'E:\PortableApps\10. unknown Legacy Broken\PortableApps\Guportable%')
    )

   ,motherPaths as (select distinct x.path
from uniqueAppnames x left outer join
                                   (select q.path from uniqueAppnames q cross join uniqueAppnames t where q.path != t.path
                                                                  and q.path like t.path || '%' ) w
on x.path = w.path
where w.path is null)

select
     coalesce(motherPaths.path,uniqueAppnames.path) path, group_concat(app), sum(z) s

     from uniqueAppnames left outer join motherPaths on uniqueAppnames.path like motherPaths.path || '%'
group by coalesce(motherPaths.path,uniqueAppnames.path)
order by s desc;
;-- -. . -..- - / . -. - .-. -.--
with
uniqueAppnames as (select p path, app, z
                   from
(select p, group_concat(app) app,sum(c) z from (select * from (select max(path) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p

    )
    )

   ,motherPaths as (select distinct x.path
from uniqueAppnames x left outer join
                                   (select q.path from uniqueAppnames q cross join uniqueAppnames t where q.path != t.path
                                                                  and q.path like t.path || '%' ) w
on x.path = w.path
where w.path is null)

select
     coalesce(motherPaths.path,uniqueAppnames.path) path, group_concat(app), sum(z) s

     from uniqueAppnames left outer join motherPaths on uniqueAppnames.path like motherPaths.path || '%'
group by coalesce(motherPaths.path,uniqueAppnames.path)
order by s desc;
;-- -. . -..- - / . -. - .-. -.--
with
uniqueAppnames as (select p path, app, z
                   from
(select p, group_concat(app) app,sum(c) z from (select * from (select max(path) p, app, count(*) c
from allexesinportableapps group by app) where c = 1) group by p

    )
    )

   ,motherPaths as (
       select * from
       (select distinct x.path
from uniqueAppnames x left outer join
                                   (select q.path from uniqueAppnames q cross join uniqueAppnames t where q.path != t.path
                                                                  and q.path like t.path || '%' ) w
on x.path = w.path
where w.path is null)
       union 
       select 'Glary'
       union 
       select 'NirSoft'
       
       )

select
     coalesce(motherPaths.path,uniqueAppnames.path) path, group_concat(app), sum(z) s

     from uniqueAppnames left outer join motherPaths on uniqueAppnames.path like motherPaths.path || '%'
group by coalesce(motherPaths.path,uniqueAppnames.path)
order by s desc;
;-- -. . -..- - / . -. - .-. -.--
with
     firstReplacer as (select replace('E:\OneDrive - Region Gotland\PortableApps\','E:\PortableApps\') path, app from allexesinportableapps),

uniqueAppnames as (select p path, app, z
                   from
(select p, group_concat(app) app,sum(c) z from (select * from (select max(path) p, app, count(*) c
from firstReplacer group by app) where c = 1) group by p

    )
    )

   ,motherPaths as (
       select * from
       (select distinct x.path
from uniqueAppnames x left outer join
                                   (select q.path from uniqueAppnames q cross join uniqueAppnames t where q.path != t.path
                                                                  and q.path like t.path || '%' ) w
on x.path = w.path
where w.path is null)
       )

select
     coalesce(motherPaths.path,uniqueAppnames.path) path, group_concat(app), sum(z) s

     from uniqueAppnames left outer join motherPaths on uniqueAppnames.path like motherPaths.path || '%'
group by coalesce(motherPaths.path,uniqueAppnames.path)
order by s desc;
;-- -. . -..- - / . -. - .-. -.--
with
     firstReplacer as (select replace(path,'E:\OneDrive - Region Gotland\PortableApps\','E:\PortableApps\') path, app from allexesinportableapps),

uniqueAppnames as (select p path, app, z
                   from
(select p, group_concat(app) app,sum(c) z from (select * from (select max(path) p, app, count(*) c
from firstReplacer group by app) where c = 1) group by p

    )
    )

   ,motherPaths as (
       select * from
       (select distinct x.path
from uniqueAppnames x left outer join
                                   (select q.path from uniqueAppnames q cross join uniqueAppnames t where q.path != t.path
                                                                  and q.path like t.path || '%' ) w
on x.path = w.path
where w.path is null)
       )

select
     coalesce(motherPaths.path,uniqueAppnames.path) path, group_concat(app), sum(z) s

     from uniqueAppnames left outer join motherPaths on uniqueAppnames.path like motherPaths.path || '%'
group by coalesce(motherPaths.path,uniqueAppnames.path)
order by s desc;
;-- -. . -..- - / . -. - .-. -.--
with
     firstReplacer as (select replace(path,'E:\OneDrive - Region Gotland\PortableApps\','E:\PortableApps\') path, replace(app,'.bak','') app from allexesinportableapps),

uniqueAppnames as (select p path, app, z
                   from
(select p, group_concat(app) app,sum(c) z from (select * from (select max(path) p, app, count(*) c
from firstReplacer group by app) where c = 1) group by p

    )
    )

   ,motherPaths as (
       select * from
       (select distinct x.path
from uniqueAppnames x left outer join
                                   (select q.path from uniqueAppnames q cross join uniqueAppnames t where q.path != t.path
                                                                  and q.path like t.path || '%' ) w
on x.path = w.path
where w.path is null)
       )

select
     coalesce(motherPaths.path,uniqueAppnames.path) path, group_concat(app), sum(z) s

     from uniqueAppnames left outer join motherPaths on uniqueAppnames.path like motherPaths.path || '%'
group by coalesce(motherPaths.path,uniqueAppnames.path)
order by s desc;