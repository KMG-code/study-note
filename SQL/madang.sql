select * from book; -- å ���̺� ��� �� ��ȸ
select * from book where BOOKID = 10; -- ��ID 10���� ��ȸ

select bookname, price from book;
select price, bookname from book;
select bookid, bookname, publisher, price from book;
select * from book;
select publisher from book;
select DISTINCT publisher from book; -- DISTINCT �ߺ��� ����

select * from book where price <20000;
select * from book where price BETWEEN 10000 and 20000;
select * from book where price >=10000 and price <=20000;

select * from book where publisher IN('�½�����', '���ѹ̵��');
select * from book where publisher not in('�½�����', '���ѹ̵��');
select bookname, publisher from book where bookname Like '�౸�� ����';
select bookname, publisher from book where bookname Like '%�౸%';

select * from book where bookname like '_��%';

select * from book where bookname like '�౸%' And price >= 20000;
select * from book where publisher='�½�����' OR publisher='���ѹ̵��';
select * from book where publisher like '�½�����' or publisher like '���ѹ̵��';

select * from book order BY bookname;
select * from book order BY price, bookname;

select * from book order BY price DESC, publisher ASC; 
select sum(saleprice) from orders;

select sum(saleprice) AS �Ѹ��� from orders;

select sum(saleprice) as �Ѹ��� from orders where custid=2;

select sum(saleprice) as total, avg(saleprice) as average, min(saleprice) as MInimum, max(saleprice) as Maximum from orders;

select COUNT(*)from orders;

select custid, count(*) AS ��������, SUM(saleprice) AS �Ѿ� from orders group by custid;

select custid, count(*) as �������� from orders where saleprice >=8000 group by custid having count(*) >=2;
------------------------ 3�� �ǽ� ���� 1 ----------------------------------------
select bookname from book where bookid = 1;

select bookname from book where price >= 20000;

select custid from customer where name like '������';
select sum(saleprice) as �ѱ��ž� from orders where custid=1;

select count(orderid) as ���ŵ����� from orders where custid=1;



select count(bookid) as �����Ѱ��� from book;
select count(DISTINCT publisher) as ���ǻ��Ѽ� from book;

select name,address from customer;

select orderid from orders where orderdate between '14/07/04' and '14/07/07';
select orderid from orders where orderdate not between '14/07/04' and '14/07/07';

select name,address from customer where name like '%��%';
select name,address from customer where name like '��%' and name like '%��';
--------------------------------------------------------------------------------

select * from customer, orders;

select * from customer, orders where customer.custid=orders.custid;
select * from customer inner join orders on customer.custid=orders.custid;

select * from customer, orders where customer.custid=orders.custid order by customer.custid;
select * from customer inner join orders on customer.custid=orders.custid order by customer.custid;

select name, saleprice from customer,orders where customer.custid=orders.custid order by customer.custid;
select name, saleprice from customer inner join orders on customer.custid=orders.custid order by customer.custid;

select name,sum(saleprice) from customer,orders where customer.custid=orders.custid group by customer.name order by customer.name;
select name,sum(saleprice) from customer inner join orders on customer.custid=orders.custid group by customer.name order by customer.name;

select customer.name, book.bookname 
from customer,orders,book 
where customer.custid=orders.custid and orders.bookid=book.bookid;
select customer.name, book.bookname 
from customer inner join orders on customer.custid=orders.custid
inner join book on orders.bookid=book.bookid;

select customer.name, book.bookname from customer,book,orders where customer.custid=orders.custid and orders.bookid=book.bookid and book.price=20000;
select customer.name, book.bookname 
from customer inner join orders on customer.custid=orders.custid 
inner join book on orders.bookid=book.bookid 
where book.price=20000;

select customer.name, saleprice from customer left outer join orders on customer.custid=orders.custid;

select bookname from book where price=(select max(price) from book);

select name from customer where custid IN (select custid from orders);

select name from customer where custid IN (select custid from orders where bookid IN (select bookid from book where publisher ='���ѹ̵��'));

select b1.bookname 
from book b1 
where b1.price > (select avg(b2.price) from book b2 where b2.publisher=b1.publisher);

select name from customer minus select name from customer where custid IN(select custid from orders);

select name, address from customer cs 
where exists(select * from orders od where cs.custid=od.custid);

---------------- 3�� �ǽ� ���� 2----------------------

--1.5
select count(publisher)
from customer inner join book on customer.custid=book.bookid 
where customer.name = '������';

--1.6
select bookname, saleprice, (book.price-orders.saleprice) as �������ǸŰ�������
from orders inner join book on orders.bookid = book.bookid 
inner join customer on customer.custid=orders.custid
where customer.name = '������';

--1.7 �������� �������� ���� ������ �̸�
select bookname
from customer, book, orders
where orders.bookid=book.bookid and customer.custid = orders.custid and not customer.name = '������';

--2.8
select name from customer 
minus select name from customer join orders on customer.custid=orders.custid;



--2.9
select sum(saleprice), avg(saleprice)
from orders;

--2.10
select name, saleprice
from customer join orders on orders.custid=customer.custid;

--2.11
select name, bookname
from customer join orders on orders.custid=customer.custid
join book on orders.bookid=book.bookid;

--2.12. ������ ���ݰ� �ǸŰ����� ���̰� ���� ū �ֹ�
select orderid
from orders, book
where orders.bookid=book.bookid and 
price-saleprice=(select max(price-saleprice)
from book, orders
where orders.bookid=book.bookid);

--2.13 ������ �Ǹž� ��պ��� �ڽ��� ���ž� ����� �� ���� ���� �̸�
select name
from book, customer, order
where 