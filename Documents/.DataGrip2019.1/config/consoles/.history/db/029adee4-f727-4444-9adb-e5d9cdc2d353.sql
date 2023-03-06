select * from node;
;-- -. . -..- - / . -. - .-. -.--
select max(node_id),
       name,
       txt
       
from node group by name,txt

except 

select min(node_id),
       name,
       txt
       
from node group by name,txt;
;-- -. . -..- - / . -. - .-. -.--
select * from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>';
;-- -. . -..- - / . -. - .-. -.--
select * from children where father_id in (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>');
;-- -. . -..- - / . -. - .-. -.--
select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>'
except
select node.node_id from node 
    inner join children on father_id = node.node_id
where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>';
;-- -. . -..- - / . -. - .-. -.--
select * from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>'
except
select node.node_id from node
    inner join children on father_id = node.node_id
where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id;
;-- -. . -..- - / . -. - .-. -.--
with
emptyNodesWithoutChildren as (select * from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>'
except
select node.node_id from node
    inner join children on father_id = node.node_id
where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
,theParrentsOfTheNodesWithChildren as (select );
;-- -. . -..- - / . -. - .-. -.--
with
emptyNodesWithoutChildren as (select * from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>'
except
select node.node_id from node
    inner join children on father_id = node.node_id
where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
,theParrentsOfTheNodesWithChildren as (select * from emptyNodesWithoutChildren)

select * from theParrentsOfTheNodesWithChildren;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node
                                            inner join (select node.node_id
                                                        from node
                                                        where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>'
                                                            except
                                                        select node.node_id
                                                        from node
                                                                 inner join children on father_id = node.node_id
                                                        where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe
                                                       on safe.node_id = node.node_id)


   , theParrentsOfTheNodesWithChildren as (select father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       
       )

select *
from theParrentsOfTheNodesWithChildren;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node
                                            inner join (select node.node_id
                                                        from node
                                                        where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>'
                                                            except
                                                        select node.node_id
                                                        from node
                                                                 inner join children on father_id = node.node_id
                                                        where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe
                                                       on safe.node_id = node.node_id)


   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id

       )

select group_concat(a.name) emptyChildren, b.name parrent 
from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node
                                            inner join (select node.node_id
                                                        from node
                                                        where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>'
                                                            except
                                                        select node.node_id
                                                        from node
                                                                 inner join children on father_id = node.node_id
                                                        where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe
                                                       on safe.node_id = node.node_id)


   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id

       )

select group_concat( distinct a.name) emptyChildren, b.name parrent
from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node
                                            inner join (select node.node_id
                                                        from node
                                                        where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>'
                                                            except
                                                        select node.node_id
                                                        from node
                                                                 inner join children on father_id = node.node_id
                                                        where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe
                                                       on safe.node_id = node.node_id)


   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id

       )

select distinct group_concat( distinct a.name) emptyChildren, b.name parrent
from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>' except select node.node_id from node inner join children on father_id = node.node_id where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )

select distinct b.name parrent, group_concat( distinct a.name) emptyChildren
from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>' except select node.node_id from node inner join children on father_id = node.node_id where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren
from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

--update node set txt = 
  select substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' 
from node inner join aq on q = node.node_id
where node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>' except select node.node_id from node inner join children on father_id = node.node_id where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren
from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

update node set txt = substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' 
where aq.q = node.node_id;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>' except select node.node_id from node inner join children on father_id = node.node_id where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

update node
set txt = ( select substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' from aq where aq.q = node.node_id);
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>' except select node.node_id from node inner join children on father_id = node.node_id where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

--update node set txt = (
    select txt from aq
           
           --substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' from aq 
inner join node
where aq.q = node.node_id;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>' except select node.node_id from node inner join children on father_id = node.node_id where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

update node set txt = ( 
 select substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' from aq inner join node
where aq.q = node.node_id) where node.node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>' except select node.node_id from node inner join children on father_id = node.node_id where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

update node set txt = (
 select substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' from aq inner join node
where aq.q = node.node_id) where node.node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>' except select node.node_id from node inner join children on father_id = node.node_id where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

--update node set txt = (select substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' from aq inner join node where aq.q = node.node_id) where node.node_id in (select q from aq);
select * from node where node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>' except select node.node_id from node inner join children on father_id = node.node_id where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

--update node set txt = (select substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' from aq inner join node where aq.q = node.node_id) where node.node_id in (select q from aq);
select * from emptyNodesWithoutChildren;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>' except select node.node_id from node inner join children on father_id = node.node_id where txt = '<?xml version="1.0" ?><node><rich_text></rich_text></node>') safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

--update node set txt = (select substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' from aq inner join node where aq.q = node.node_id) where node.node_id in (select q from aq);
select * from theParrentsOfTheNodesWithChildren;
;-- -. . -..- - / . -. - .-. -.--
select

       group_concat(name) name,
       txt
       ,count() c
from node group by txt
order by c desc;
;-- -. . -..- - / . -. - .-. -.--
select

       group_concat(name) name,
       txt
       ,count() c
from node group by txt
order by c desc
limit 1;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = '<?xml version="1.0" encoding="UTF-8"?>
<node/>
'


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = '<?xml version="1.0" encoding="UTF-8"?>
<node/>
')
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

--update node set txt = (select substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' from aq inner join node where aq.q = node.node_id) where node.node_id in (select q from aq);
select * from theParrentsOfTheNodesWithChildren;
;-- -. . -..- - / . -. - .-. -.--
select
       txt
       ,count() c
from node group by txt
order by c desc
limit 1;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1)) 
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

--update node set txt = (select substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' from aq inner join node where aq.q = node.node_id) where node.node_id in (select q from aq);
select * from theParrentsOfTheNodesWithChildren;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

--update node set txt = (select substr(txt,0,length(txt)-length('</rich_text></node>')) || aq.emptyChildren || '</rich_text></node>' from aq inner join node where aq.q = node.node_id) where node.node_id in (select q from aq);
select * from aq;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

update node set txt = (select substr(txt,0,length(txt)-length('</node>')) || aq.emptyChildren || '</node>' from aq inner join node where aq.q = node.node_id) where node.node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

--update node set txt = (select substr(txt,0,length(txt)-length('</node>')) || aq.emptyChildren || '</node>' from aq inner join node where aq.q = node.node_id) where node.node_id in (select q from aq);
select * from aq;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

--update node set txt = (select substr(txt,0,length(txt)-length('</node>')) || aq.emptyChildren || '</node>' from aq inner join node where aq.q = node.node_id) where node.node_id in (select q from aq);
select txt from node where node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

update node set txt = (select substr(txt,0,length(txt)-length('</node>')) || aq.emptyChildren || '</node>' from aq where aq.q = node.node_id) where node.node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

update node set txt = (select
                              --substr(txt,0,length(txt)-length('</node>')) || aq.emptyChildren || '</node>'
                                replace(txt,'Fires And GasolineGeneratorsNeverEn','')
from aq where aq.q = node.node_id) where node.node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

--update node set txt = (select substr(txt,0,length(txt)-length('</node>')) || aq.emptyChildren || '</node>' from aq where aq.q = node.node_id) where node.node_id in (select q from aq);
select txt from node where node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)


update node set txt = (select
                              --substr(txt,0,length(txt)-length('</node>'))
                              '<?xml version="1.0" encoding="UTF-8"?>'
                                  || aq.emptyChildren ||
                              '</node>' from aq where aq.q = node.node_id) where node.node_id in (select q from aq) and txt is null;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)


--update node set txt = (select substr(txt,0,length(txt)-length('</node>')) || aq.emptyChildren || '</node>' from aq where aq.q = node.node_id) where node.node_id in (select q from aq) and txt is null;


select txt from node where node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)


--update node set txt = (select substr(txt,0,length(txt)-length('</node>')) || aq.emptyChildren || '</node>' from aq where aq.q = node.node_id) where node.node_id in (select q from aq) and txt is null;

select * from aq;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)


--update node set txt = (select substr(txt,0,length(txt)-length('</node>')) || aq.emptyChildren || '</node>' from aq where aq.q = node.node_id) where node.node_id in (select q from aq) and txt is null;

select * from aq inner join node on q=node_id where txt is null;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)


update node set txt = (select ifnull(substr(txt,0,length(txt)-length('</node>')),'<?xml version="1.0" encoding="UTF-8"?>')  || aq.emptyChildren || '</node>' from aq where aq.q = node.node_id) where node.node_id in (select q from aq)  and txt is null;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)


--update node set txt = (select ifnull(substr(txt,0,length(txt)-length('</node>')),'<?xml version="1.0" encoding="UTF-8"?>')  || aq.emptyChildren || '</node>' from aq where aq.q = node.node_id) where node.node_id in (select q from aq)  and txt is null;

select * from aq inner join node on q=node_id where txt is null;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)


--update node set txt = (select ifnull(substr(txt,0,length(txt)-length('</node>')),'<?xml version="1.0" encoding="UTF-8"?>')  || aq.emptyChildren || '</node>' from aq where aq.q = node.node_id) where node.node_id in (select q from aq)  and txt is null;

select *,(select ifnull(substr(txt,0,length(txt)-length('</node>')),'<?xml version="1.0" encoding="UTF-8"?>')  || aq.emptyChildren || '</node>'
from aq inner join node on q=node_id where txt is null


--select txt from node where node_id in (select q from aq)

--;each parrent, update by titles of empty, move empty nodes under EmptyNodes

;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)


--update node set txt = (select ifnull(substr(txt,0,length(txt)-length('</node>')),'<?xml version="1.0" encoding="UTF-8"?>')  || aq.emptyChildren || '</node>' from aq where aq.q = node.node_id) where node.node_id in (select q from aq)  and txt is null;

select *, ifnull(substr(txt,0,length(txt)-length('</node>')),'<?xml version="1.0" encoding="UTF-8"?>')  || aq.emptyChildren || '</node>'
from aq inner join node on q=node_id where txt is null;
;-- -. . -..- - / . -. - .-. -.--
select * from node where txt is null;
;-- -. . -..- - / . -. - .-. -.--
select * from node where txt is null order by node_id desc;
;-- -. . -..- - / . -. - .-. -.--
with emptyNodesWithoutChildren as (select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))


                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id)
   , theParrentsOfTheNodesWithChildren as (select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id
       )
,
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)


--update node set txt = (select ifnull(substr(txt,0,length(txt)-length('</node>')),'<?xml version="1.0" encoding="UTF-8"?>')  || aq.emptyChildren || '</node>' from aq where aq.q = node.node_id) where node.node_id in (select q from aq)  and txt is null;

select *, ifnull(substr(txt,0,length(txt)-length('</node>')),'<?xml version="1.0" encoding="UTF-8"?>')  || aq.emptyChildren || '</node>' from aq inner join node on q=node_id where txt is null;
;-- -. . -..- - / . -. - .-. -.--
select * from node where txt is null order by node_id;
;-- -. . -..- - / . -. - .-. -.--
select node_id from node where name like '%empty%';
;-- -. . -..- - / . -. - .-. -.--
select name,node_id from node where name like '%empty%';
;-- -. . -..- - / . -. - .-. -.--
create view     emptyNodesWithoutChildren as 
    select *
                                   from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))

                                    except select node.node_id
                                   from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                       )
                                       safe on safe.node_id = node.node_id;
;-- -. . -..- - / . -. - .-. -.--
create view     theParrentsOfTheNodesWithChildren as select name,father_id from emptyNodesWithoutChildren
       inner join children on emptyNodesWithoutChildren.node_id = children.node_id;
;-- -. . -..- - / . -. - .-. -.--
select distinct node_id from emptyNodesWithoutChildren;
;-- -. . -..- - / . -. - .-. -.--
update children set father_id = 419 where children.node_id in (select node_id from emptyNodesWithoutChildren);
;-- -. . -..- - / . -. - .-. -.--
create view     emptyNodesWithoutChildren as 
         select *
                                        from node inner join (select node.node_id from node where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
     
                                         except select node.node_id
                                        from node inner join children on father_id = node.node_id where txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
                                            )
                                            safe on safe.node_id = node.node_id;
;-- -. . -..- - / . -. - .-. -.--
create view     theParrentsOfTheNodesWithChildren as select name,father_id from emptyNodesWithoutChildren
            inner join children on emptyNodesWithoutChildren.node_id = children.node_id;
;-- -. . -..- - / . -. - .-. -.--
create view Duplicates as
select max(node_id),
       name,
       txt

from node group by name,txt

except

select min(node_id),
       name,
       txt

from node group by name,txt;
;-- -. . -..- - / . -. - .-. -.--
select * from children inner join emptyNodesWithoutChildren where children.node_id = emptyNodesWithoutChildren.node_id;
;-- -. . -..- - / . -. - .-. -.--
select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name;
;-- -. . -..- - / . -. - .-. -.--
with
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

update node set txt = (select
                        ifnull(
                              ifnull(substr(txt,0,length(txt)-length('</node>')),'<?xml version="1.0" encoding="UTF-8"?>')
                                  || aq.emptyChildren || '</node>',
                                (select txt from (select txt ,count() c from node group by txt order by c desc limit 1)
                            ))
from aq where aq.q = node.node_id) where node.node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with
aq as (select distinct b.node_id q, group_concat( distinct a.name) emptyChildren from theParrentsOfTheNodesWithChildren a inner join node b on a.father_id = b.node_id group by b.name)

update node set txt = (select
                        
case when txt = (select txt from (select txt ,count() c from node group by txt order by c desc limit 1))
    then '<?xml version="1.0" encoding="UTF-8"?>' || aq.emptyChildren || '</node>' else
                              ifnull(
                              ifnull(substr(txt,0,length(txt)-length('</node>')),'<?xml version="1.0" encoding="UTF-8"?>')
                                  || aq.emptyChildren || '</node>',
                                (select txt from (select txt ,count() c from node group by txt order by c desc limit 1)
                            ))
end



from aq where aq.q = node.node_id) where node.node_id in (select q from aq);
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(id,id2) as (
    select 0,419
    union
    select node_id, father_id
    from childrenOfFather innwe join children on id2 = children.father_id
    where node_id is not null
)
select * from childrenOfFather;
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(id,id2) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on id2 = children.father_id
    where node_id is not null
)
select * from childrenOfFather;
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father,son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)
select Father from childrenOfFather
union 
select son from childrenOfFather;
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father,son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)
select Father from childrenOfFather
union
select son from childrenOfFather
where Father != 0;
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)
select Father from childrenOfFather where Father != 0
union
select son from childrenOfFather;
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)
select Father from childrenOfFather where Father != 0
union
select son from childrenOfFather where son != 419;
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)

select children.node_id from children inner join emptyNodesWithoutChildren q where children.node_id = q.node_id
    except select 
(select Father from childrenOfFather where Father != 0
union
select son from childrenOfFather where son != 419)
;
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)

select children.node_id from children inner join emptyNodesWithoutChildren q where children.node_id = q.node_id
    except 
select Father from childrenOfFather where Father != 0
union
select son from childrenOfFather where son != 419;
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)

select node_id from emptyNodesWithoutChildren q 
    except
select Father from childrenOfFather where Father != 0
union
select son from childrenOfFather where son != 419;
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)

select node_id from emptyNodesWithoutChildren q
    except
select (select Father from childrenOfFather where Father != 0
union
select son from childrenOfFather where son != 419)
;
;-- -. . -..- - / . -. - .-. -.--
select father_id from children where node_id in (11
,14
,17
,21
,24
,25
,26
,30
,31
,32
,35
,41
,44
,60
,61
,152
,154
,155
,157
,158
,159
,160
,161
,244
,245
,248
,457
,458
,459
,460
,463
,475
,477
,478
,489
,496
,497
,511
,512
,535
,539
,542
,547
,549
,550
,551
,552
,553
,556
,570
,571
,572
,573
,574
,575
,576
,578
,579
,580
,581
,582
,583
,585
,586
,587
,656
,657
,658
,659
,661
,662
,664
,671
,673
,674
,676
,680
,683
,687
,689
,690
,693
,706
,708
,709
,720
,726
,727
,743
,747
,748
,749
) group by father_id;
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)


select son from childrenOfFather where son != 419;
;-- -. . -..- - / . -. - .-. -.--
select son from childrenOfFather
where not son in (11
,14
,17
,21
,24
,25
,26
,30
,31
,32
,35
,41
,44
,60
,61
,152
,154
,155
,157
,158
,159
,160
,161
,244
,245
,248
,457
,458
,459
,460
,463
,475
,477
,478
,489
,496
,497
,511
,512
,535
,539
,542
,547
,549
,550
,551
,552
,553
,556
,570
,571
,572
,573
,574
,575
,576
,578
,579
,580
,581
,582
,583
,585
,586
,587
,656
,657
,658
,659
,661
,662
,664
,671
,673
,674
,676
,680
,683
,687
,689
,690
,693
,706
,708
,709
,720
,726
,727
,743
,747
,748
,749
);
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)


select son from childrenOfFather
where not son in (11
,14
,17
,21
,24
,25
,26
,30
,31
,32
,35
,41
,44
,60
,61
,152
,154
,155
,157
,158
,159
,160
,161
,244
,245
,248
,457
,458
,459
,460
,463
,475
,477
,478
,489
,496
,497
,511
,512
,535
,539
,542
,547
,549
,550
,551
,552
,553
,556
,570
,571
,572
,573
,574
,575
,576
,578
,579
,580
,581
,582
,583
,585
,586
,587
,656
,657
,658
,659
,661
,662
,664
,671
,673
,674
,676
,680
,683
,687
,689
,690
,693
,706
,708
,709
,720
,726
,727
,743
,747
,748
,749
);
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)
select son from childrenOfFather where not son in (11,14,17,21,24,25,26,30,31,32,35,41,44,60,61,152,154,155,157,158,159,160,161,244,245,248,457,458,459,460,463,475,477,478,489,496,497,511,512,535,539,542,547,549,550,551,552,553,556,570,571,572,573,574,575,576,578,579,580,581,582,583,585,586,587,656,657,658,659,661,662,664,671,673,674,676,680,683,687,689,690,693,706,708,709,720,726,727,743,747,748,749);
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)
--select son from childrenOfFather where not son in (11,14,17,21,24,25,26,30,31,32,35,41,44,60,61,152,154,155,157,158,159,160,161,244,245,248,457,458,459,460,463,475,477,478,489,496,497,511,512,535,539,542,547,549,550,551,552,553,556,570,571,572,573,574,575,576,578,579,580,581,582,583,585,586,587,656,657,658,659,661,662,664,671,673,674,676,680,683,687,689,690,693,706,708,709,720,726,727,743,747,748,749)



--update children set father_id = 419 where children.node_id in (
    select node_id from emptyNodesWithoutChildren except select son from childrenOfFather;
;-- -. . -..- - / . -. - .-. -.--
update children set father_id = 419 where children.node_id in (
    select node_id from emptyNodesWithoutChildren except select son from childrenOfFather
    );
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)
--select son from childrenOfFather where not son in (11,14,17,21,24,25,26,30,31,32,35,41,44,60,61,152,154,155,157,158,159,160,161,244,245,248,457,458,459,460,463,475,477,478,489,496,497,511,512,535,539,542,547,549,550,551,552,553,556,570,571,572,573,574,575,576,578,579,580,581,582,583,585,586,587,656,657,658,659,661,662,664,671,673,674,676,680,683,687,689,690,693,706,708,709,720,726,727,743,747,748,749)



update children set father_id = 419 where children.node_id in (
    select node_id from emptyNodesWithoutChildren except select son from childrenOfFather
    );
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
);
;-- -. . -..- - / . -. - .-. -.--
with childrenOfFather(Father, son) as (
    select 0,419
    union
    select father_id, node_id
    from childrenOfFather innwe join children on son = children.father_id
    where node_id is not null
)
select son from childrenOfFather;
;-- -. . -..- - / . -. - .-. -.--
select * from children order by father_id,sequence;