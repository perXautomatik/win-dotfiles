create table Files (name nvarchar(MAX));
;-- -. . -..- - / . -. - .-. -.--
create table Files (name String);
;-- -. . -..- - / . -. - .-. -.--
select * from files;
;-- -. . -..- - / . -. - .-. -.--
SELECT substr(name, 1, pos-1) AS first_name,
       substr(name, pos+1) AS last_name
FROM
  (SELECT *,
          instr(name,' ') AS pos
   FROM files);
;-- -. . -..- - / . -. - .-. -.--
SELECT substr(name, 1, pos-1) AS first_name,
       substr(name, pos+1) AS last_name
FROM
  (SELECT *,
          instr(name,':') AS pos
   FROM files);
;-- -. . -..- - / . -. - .-. -.--
SELECT substr(path, 1, pos-1) AS DriverLetter,
       substr(path, pos+1) AS last_name
FROM (SELECT *,
             instr(path, ':') AS pos
      FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter,
                   substr(name, pos + 1)    AS path
            FROM (SELECT *,
                         instr(name, ':') AS pos
                  FROM files))
     );
;-- -. . -..- - / . -. - .-. -.--
CREATE FUNCTION [dbo].[Split]
(   
      @Sep char(1)
    , @S varchar(512)
)
RETURNS TABLE 
AS
RETURN 
(
    WITH Pieces(pn, start, stop) AS (
      SELECT 1, 1, CHARINDEX(@Sep, @S)
      UNION ALL
      SELECT pn + 1, stop + 1, CHARINDEX(@Sep, @S, stop + 1)
      FROM Pieces
      WHERE stop > 0
    )
    SELECT pn,
      SUBSTR(@S, start, CASE WHEN stop > 0 THEN stop-start ELSE 512 END) AS S
    FROM Pieces
);
;-- -. . -..- - / . -. - .-. -.--
CREATE FUNCTION [Split]
(
      @Sep char(1)
    , @S varchar(512)
)
RETURNS TABLE
AS
RETURN
(
    WITH Pieces(pn, start, stop) AS (
      SELECT 1, 1, CHARINDEX(@Sep, @S)
      UNION ALL
      SELECT pn + 1, stop + 1, CHARINDEX(@Sep, @S, stop + 1)
      FROM Pieces
      WHERE stop > 0
    )
    SELECT pn,
      SUBSTR(@S, start, CASE WHEN stop > 0 THEN stop-start ELSE 512 END) AS S
    FROM Pieces
);
;-- -. . -..- - / . -. - .-. -.--
CREATE FUNCTION [main].[Split]
(
      @Sep char(1)
    , @S varchar(512)
)
RETURNS TABLE
AS
RETURN
(
    WITH Pieces(pn, start, stop) AS (
      SELECT 1, 1, CHARINDEX(@Sep, @S)
      UNION ALL
      SELECT pn + 1, stop + 1, CHARINDEX(@Sep, @S, stop + 1)
      FROM Pieces
      WHERE stop > 0
    )
    SELECT pn,
      SUBSTR(@S, start, CASE WHEN stop > 0 THEN stop-start ELSE 512 END) AS S
    FROM Pieces
);
;-- -. . -..- - / . -. - .-. -.--
CREATE FUNCTION main.[Split]
(
      @Sep char(1)
    , @S varchar(512)
)
RETURNS TABLE
AS
RETURN
(
    WITH Pieces(pn, start, stop) AS (
      SELECT 1, 1, CHARINDEX(@Sep, @S)
      UNION ALL
      SELECT pn + 1, stop + 1, CHARINDEX(@Sep, @S, stop + 1)
      FROM Pieces
      WHERE stop > 0
    )
    SELECT pn,
      SUBSTR(@S, start, CASE WHEN stop > 0 THEN stop-start ELSE 512 END) AS S
    FROM Pieces
);
;-- -. . -..- - / . -. - .-. -.--
CREATE function main.[Split]
(
      @Sep char(1)
    , @S varchar(512)
)
RETURNS TABLE
AS
RETURN
(
    WITH Pieces(pn, start, stop) AS (
      SELECT 1, 1, CHARINDEX(@Sep, @S)
      UNION ALL
      SELECT pn + 1, stop + 1, CHARINDEX(@Sep, @S, stop + 1)
      FROM Pieces
      WHERE stop > 0
    )
    SELECT pn,
      SUBSTR(@S, start, CASE WHEN stop > 0 THEN stop-start ELSE 512 END) AS S
    FROM Pieces
);
;-- -. . -..- - / . -. - .-. -.--
SELECT substr(path, 1, pos-1) AS DriverLetter,
       substr(path, pos+1) AS path
        ,*
FROM (SELECT *,
             instr(path, ':') AS pos
      FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter,
                   substr(name, pos + 1)    AS path
            FROM (SELECT *,
                         instr(name, ':') AS pos
                  FROM files))
     );
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       substr(path, 1, pos-1) AS parrent1,
       substr(path, pos+1) AS path

FROM (SELECT *,
             instr(path, ':') AS pos
      FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter,
                   substr(name, pos + 1)    AS path
            FROM (SELECT *,
                         instr(name, ':') AS pos
                  FROM files))
     );
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       substr(path, 1, pos-1) AS parrent1,
       substr(path, pos+1) AS path

FROM (SELECT *,
             instr(path, '\') AS pos
      FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter,
                   substr(name, pos + 1)    AS path
            FROM (SELECT *,
                         instr(name, ':') AS pos
                  FROM files))
     );
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       substr(path, 1, pos-1) AS parrent1,
       substr(path, pos+1) AS path,
       pos
FROM (SELECT *,instr(path, '\') AS pos
      FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter,
                   substr(name, pos + 1)    AS path
            FROM (SELECT *,instr(name, ':') AS pos FROM files))
     );
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       substr(path, 1, pos-1) AS parrent1,
       substr(path, pos+1) AS path,
       pos
FROM (SELECT *,instr(path, '\') AS pos
      FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter,
                   substr(name, pos + 1)    AS path
            FROM (SELECT *,instr(name, ':\') AS pos FROM files))
     );
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       substr(path, 1, pos-1) AS parrent1,
       substr(path, pos+1) AS path,
       pos
FROM (SELECT *,instr(path, '\') AS pos
      FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter,
                   substr(name, pos + 2)    AS path
            FROM (SELECT *,instr(name, ':\') AS pos FROM files))
     );
;-- -. . -..- - / . -. - .-. -.--
SELECT *,
       substr(path, 1, pos-1) AS parrent,
       substr(path, pos+1) AS path
FROM
  (SELECT *,
          instr(path,' ') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent1,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))));
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       parrent1,       
       substr(path, 1, pos-1) AS parrent,
       substr(path, pos+1) AS path
FROM
  (SELECT *,
          instr(path,' ') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent1,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))));
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       parrent1,
       substr(path, 1, pos-1) AS parrent,
       substr(path, pos+1) AS path
FROM
  (SELECT *,
          instr(path,'\') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent1,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))));
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       parrent1,
       parrent,       
       substr(path, 1, pos-1) AS parrent,
       substr(path, pos+1) AS path
FROM
  (SELECT *,
          instr(path,' ') AS pos
   FROM (
SELECT DriverLetter,
       parrent1,
       substr(path, 1, pos-1) AS parrent,
       substr(path, pos+1) AS path
FROM
  (SELECT *,
          instr(path,'\') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent1,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))))


));
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       parrent1,
       parrent,       
       substr(path, 1, pos-1) AS parrent,
       substr(path, pos+1) AS path
FROM
  (SELECT *,
          instr(path,'´\') AS pos
   FROM (
SELECT DriverLetter,parrent1,substr(path, 1, pos-1) AS parrent, substr(path, pos+1) AS path FROM
  (SELECT *,
          instr(path,'\') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent1,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))))


));
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       parrent1,
       parrent,
       substr(path, 1, pos-1) AS parrent2,
       substr(path, pos+1) AS path
FROM
  (SELECT *,
          instr(path,'´\') AS pos
   FROM (
SELECT DriverLetter,parrent1,substr(path, 1, pos-1) AS parrent, substr(path, pos+1) AS path FROM
  (SELECT *,
          instr(path,'\') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent1,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))))


));
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       parrent,
       parrent1,
       substr(path, 1, pos-1) AS parrent2,
       substr(path, pos+1) AS path
FROM
  (SELECT *,
          instr(path,'´\') AS pos
   FROM (
SELECT DriverLetter,parrent,substr(path, 1, pos-1) AS parrent1, substr(path, pos+1) AS path FROM
  (SELECT *,
          instr(path,'\') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))))


));
;-- -. . -..- - / . -. - .-. -.--
SELECT DriverLetter,
       parrent,
       parrent1,
       substr(path, 1, pos-1) AS parrent2,
       substr(path, pos+1) AS path
FROM
  (SELECT *,
          instr(path,'´\') AS pos
   FROM (
SELECT DriverLetter,parrent,substr(path, 1, pos-1) AS parrent1, substr(path, pos+1) AS path FROM
  (SELECT *,
          instr(path,'\') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))))
));
;-- -. . -..- - / . -. - .-. -.--
(SELECT *,
          instr(path,'´\') AS pos
   FROM (
SELECT DriverLetter,parrent,substr(path, 1, pos-1) AS parrent1, substr(path, pos+1) AS path FROM
  (SELECT *,
          instr(path,'\') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))))
);
;-- -. . -..- - / . -. - .-. -.--
(SELECT *,
          instr(path,'´\') AS pos
   FROM (
SELECT DriverLetter,parrent,substr(path, 1, pos-1) AS parrent1, substr(path, pos+1) AS path FROM
  (SELECT *,
          instr(path,'\') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))))
));
;-- -. . -..- - / . -. - .-. -.--
SELECT *,
          instr(path,'´\') AS pos
   FROM (
SELECT DriverLetter,parrent,substr(path, 1, pos-1) AS parrent1, substr(path, pos+1) AS path FROM
  (SELECT *,
          instr(path,'\') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))))
);
;-- -. . -..- - / . -. - .-. -.--
SELECT *,
       substr(path, 1, pos-1) AS parrent2,
       substr(path, pos+1) AS path
FROM
  (SELECT *,
          instr(path,'´\') AS pos
   FROM (
SELECT DriverLetter,parrent,substr(path, 1, pos-1) AS parrent1, substr(path, pos+1) AS path FROM
  (SELECT *,
          instr(path,'\') AS pos
   FROM (SELECT DriverLetter,substr(path, 1, pos-1) AS parrent,substr(path, pos+1) AS path
    FROM (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files)))))
));
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files))),
     phase2 as (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 1)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM phase1)))


select * from phase1;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files))),
     phase2 as (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 1)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM phase1)))


select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2)    AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files))),
     phase2 as (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(phase1.path, 1, pos - 1) AS DriverLetter, substr(phase1.path, pos + 1)    AS path FROM (SELECT *,instr(phase1.path, ':\') AS pos FROM phase1)))


select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files))),
     phase2 as (SELECT *,instr(path, '\') AS pos FROM (SELECT substr(phase1.path, 1, pos1 - 1) AS DriverLetter, substr(phase1.path, pos1 + 1)    AS path FROM (SELECT *,instr(phase1.path, ':\') AS pos1 FROM phase1)))


select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path,instr(path, '\') AS pos FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path FROM (SELECT *,instr(name, ':\') AS pos FROM files))),
     phase2 as (SELECT *,instr(phase1.path, '\') AS pos FROM (SELECT substr(phase1.path, 1, pos1 - 1) AS DriverLetter, substr(phase1.path, pos1 + 1)    AS path FROM (SELECT *,instr(phase1.path, ':\') AS pos1 FROM phase1)))


select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path, instr(path, '\') AS pos
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM files))),

     phase2 as (SELECT *,instr(phase1.path, '\') AS pos FROM (SELECT substr(phase1.path, 1, pos1 - 1) AS DriverLetter, substr(phase1.path, pos1 + 1)    AS path FROM (SELECT *,instr(phase1.path, ':\') AS pos1 FROM phase1)))


select * from phase1;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase1 as (SELECT *
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM phase1))),

select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase2 as (SELECT *
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM phase1))),

select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase2 as (SELECT *
                FROM (SELECT substr(path, 1, pos - 1) AS DriverLetter, substr(path, pos + 2) AS path
                      FROM (SELECT *, instr(path, ':\') AS pos FROM phase1))),

select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase2 as (SELECT *
                FROM (SELECT substr(path, 1, pos - 1) AS DriverLetter, substr(path, pos + 2) AS path
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase1))),

select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase2 as (SELECT *
                FROM (SELECT substr(path, 1, pos - 1) AS parrent, substr(path, pos + 2) AS path
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase1))),;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase2 as (SELECT *
                FROM (SELECT substr(path, 1, pos - 1) AS parrent, substr(path, pos + 2) AS path
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase1)))

select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase2 as (SELECT *
                FROM (SELECT substr(path, 1, pos - 1) AS parrent, substr(path, pos + 2) AS path,*
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase1)))

select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase2 as (SELECT *
                FROM (SELECT *,substr(path, 1, pos - 1) AS parrent, substr(path, pos + 2) AS path
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase1)))

select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase2 as (SELECT *
                FROM (SELECT *,substr(path, 1, pos - 1) AS parrent, substr(path, pos + 2) AS path
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase1))),

phase2 as (SELECT *
                FROM (SELECT *,substr(path, 1, pos - 1) AS parrent, substr(path, pos + 2) AS path
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase2)))

select * from phase2;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase2 as (SELECT *
                FROM (SELECT *,substr(path, 1, pos - 1) AS parrent, substr(path, pos + 2) AS path
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase1))),

phase3 as (SELECT *
                FROM (SELECT *,substr(path, 1, pos - 1) AS parrent, substr(path, pos + 2) AS path
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase2)))

select * from phase3;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase2 as (SELECT *
                FROM (SELECT *,substr(path, 1, pos - 1) AS parrent, substr(path, pos + 1) AS path
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase1))),

phase3 as (SELECT *
                FROM (SELECT *,substr(path, 1, pos - 1) AS parrent, substr(path, pos + 1) AS path
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase2)))

select * from phase3;
;-- -. . -..- - / . -. - .-. -.--
with original as (select * from Files ),
     phase1 as (SELECT DriverLetter, path
                FROM (SELECT substr(name, 1, pos - 1) AS DriverLetter, substr(name, pos + 2) AS path
                      FROM (SELECT *, instr(name, ':\') AS pos FROM original))),

     phase2 as (SELECT DriverLetter, path, parrent1, path1
                FROM (SELECT *,substr(path, 1, pos - 1) AS parrent1, substr(path, pos + 1) AS path1
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase1))),

phase3 as (SELECT DriverLetter,
                  path,
                  parrent1,
                  path1,
                  parrent2,
                  path2
           FROM (SELECT *,substr(path, 1, pos - 1) AS parrent2, substr(path, pos + 1) AS path2
                      FROM (SELECT *, instr(path, '\') AS pos FROM phase2)))

select * from phase3;
;-- -. . -..- - / . -. - .-. -.--
ebvisum;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from main.Files limit 1)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
        SELECT lvl,name,parrent from split where name != '' order by parrent, lvl;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from main.Files)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
     ,ressultSplit as (SELECT lvl,name,parrent from split where name != '')
    select distinct name,count(parrent) from ressultSplit where lvl <3 group by name;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from main.Files)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
     ,ressultSplit as (SELECT lvl,group_concat(name,'/'),parrent from split where name != '')
    select distinct name,count(*) from ressultSplit where lvl <3 group by parrent;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from main.Files)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
     ,ressultSplit as (SELECT lvl,group_concat(name,'/') name,parrent from split where name != '')
    select distinct name,count(*) from ressultSplit where lvl <3 group by parrent;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from main.Files)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
     ,ressultSplit as (SELECT lvl, name,parrent from split where name != '')
    select distinct group_concat(name,'/'),count(*) from ressultSplit where lvl <3 group by parrent;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from main.Files)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
     ,ressultSplit as (SELECT lvl, name,parrent from split where name != '')
    select distinct group_concat(name,'/') name,count(*) from ressultSplit where lvl <3 group by name;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from main.Files)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
     ,ressultSplit as (SELECT lvl, name,parrent from split where name != '')
    select distinct group_concat(name) name,count(*) from ressultSplit where lvl <3 group by parrent;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from main.Files)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
     ,ressultSplit as (SELECT lvl, name,parrent from split where name != '')
    select distinct group_concat(name,'/') name,count(*) from ressultSplit group by parrent;
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from main.Files)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
     ,ressultSplit as (SELECT lvl, name,parrent from split where name != '');
;-- -. . -..- - / . -. - .-. -.--
with files as (select name title from main.Files)
    ,split(name,rest,parrent,lvl)
        AS (SELECT '', title || '\', title, 0 from  files
            UNION ALL
            SELECT substr(rest, 0, instr(rest, '\')),substr(rest, instr(rest, '\') + 1),parrent, lvl + 1
            FROM split
            WHERE instr(rest, '\') != 0)
     ,ressultSplit as (SELECT lvl, name,parrent from split where name != '')
--    select distinct group_concat(name,'/') name from ressultSplit group by parrent
select * from ressultSplit;