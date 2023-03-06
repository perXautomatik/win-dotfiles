create table SuperList
(
    lID                       INTEGER
        primary key autoincrement,
    lDate                     INTEGER,
    mText                     TEXT,
    lShortCut                 INTEGER,
    lDontAutoDelete           INTEGER,
    CRC                       INTEGER,
    bIsGroup                  INTEGER,
    lParentID                 INTEGER,
    QuickPasteText            TEXT,
    clipOrder                 REAL,
    clipGroupOrder            REAL,
    globalShortCut            INTEGER,
    lastPasteDate             INTEGER,
    stickyClipOrder           REAL,
    stickyClipGroupOrder      REAL,
    MoveToGroupShortCut       INTEGER,
    GlobalMoveToGroupShortCut INTEGER
);
;-- -. . -..- - / . -. - .-. -.--
select mText,
       count(mText)
from SuperList group by mText;
;-- -. . -..- - / . -. - .-. -.--
select max(lID)
       mText,
       count(mText)
from SuperList group by mText;
;-- -. . -..- - / . -. - .-. -.--
select max(lID),
       mText,
       count(mText)
from SuperList group by mText;
;-- -. . -..- - / . -. - .-. -.--
select max(lID),
       mText,
       count(mText) x
from SuperList group by mText order by x desc;
;-- -. . -..- - / . -. - .-. -.--
attach 'E:\ToDatabase\Sqlite\Ditto\Ditto.db' as Db0;