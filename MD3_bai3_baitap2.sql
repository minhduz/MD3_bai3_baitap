use quanlybanhang;
-- 1
select c.cid,c.cname,c.cage,p.pname
from customer c join orders o on c.cid = o.cid join ordersdetail od on od.oid = o.oid join product p on p.pid = od.pid;
-- 2
select * from customer where cid not
in(select c.cid
from customer c join orders o on c.cid = o.cid);
-- 3
select o.oid, o.odate, (od.odqty*p.pprice)as'Gia ban'
from orders o join ordersdetail od on o.oid = od.oid join product p on p.pid = od.pid;