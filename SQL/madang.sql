select bookname, price
from book;

select price, bookname
from book;

select bookid, bookname, publisher, price
from book;

select *
from book;

select publisher
from book;

select distinct publisher  --Distinct �ߺ��� ����
from book;

select *
from book
where price < 20000;

select *
from book
where publisher in ('�½�����', '���ѹ̵��');

select *
from book
where publisher not in ('�½�����', '���ѹ̵��');

select bookname, publisher
from book
where bookname like '�౸�� ����';

select bookname, publisher
from book
where bookname like '%�౸%'; -- %**% = **����

select * 
from book 
where bookname like '_��%'; -- _*% = �ι�° ��ġ�� *�� ��

select * 
from book 
where bookname like '�౸%' And price >= 20000;

select * 
from book 
where publisher='�½�����' OR publisher='���ѹ̵��';

select * 
from book 
where publisher like '�½�����' or publisher like '���ѹ̵��';

select * 
from book 
order BY bookname;

select * 
from book 
order BY price, bookname; -- order by <1>, <2> = 1�� ������ ���� ������ ����

select * 
from book 
order BY price DESC, publisher ASC; -- desc �������� / asc ��������

select sum(saleprice) 
from orders;

select sum(saleprice) AS �Ѹ��� -- AS <> = �Ӽ��̸� ��Ī ����
from orders;

select sum(saleprice) as �Ѹ��� 
from orders where custid=2;

select sum(saleprice) as total, 
        avg(saleprice) as average, 
        min(saleprice) as MInimum, 
        max(saleprice) as Maximum 
from orders;

select COUNT(*)
from orders;

select custid, count(*) AS ��������, SUM(saleprice) AS �Ѿ� 
from orders 
group by custid; -- ������ **�� �׷����� ����, select���� group by�� ����� �Ӽ��̳� �����Լ��� ����

select custid, count(*) as �������� 
from orders 
where saleprice >=8000 
group by custid 
having count(*) >=2; -- �ݵ�� group by ���� ���� ��� / where���� �ڿ� / <�˻�����>�� �����Լ�

--------------------------------------------------------------------------------

1.(1) ������ȣ�� 1�� ������ �̸�

1.(2)������ 20.000�� �̻��� ������ �̸�

1.(3)�������� �� ���ž�

1.(4)�������� ������ ������ ��

2.(1)���缭�� ������ �� ����

2.(2)���缭���� ������ ����ϴ� ���ǻ��� �� ����

2.(3)��� ���� �̸�, �ּ�

2.(4)2014�� 7�� 4�� ~ 7�� 7�� ���̿� �ֹ����� ������ �ֹ���ȣ

2.(5)2014�� 7�� 4�� ~ 7�� 7�� ���̿� �ֹ����� ������ ������ ������ �ֹ���ȣ

2.(6)���� '��' ���� ���� �̸��� �ּ�

2.(7)���� '��' ���̰� �̸��� '��'�� ������ ���� �̸��� �ּ�\

--------------------------------------------------------------------------------

select * 
from customer, orders;

select * 
from customer, orders 
where customer.custid=orders.custid;

select * 
from customer, orders 
where customer.custid=orders.custid 
order by customer.custid;

select name, saleprice 
from customer,orders 
where customer.custid=orders.custid 
order by customer.custid;

select name,sum(saleprice) 
from customer,orders 
where customer.custid=orders.custid 
group by customer.name 
order by customer.name;

select customer.name, book.bookname 
from customer,orders,book 
where customer.custid=orders.custid 
and orders.bookid=book.bookid;

select customer.name, book.bookname 
from customer,book,orders 
where customer.custid=orders.custid 
and orders.bookid=book.bookid 
and book.price=20000;

select customer.name, saleprice 
from customer 
left outer join orders 
on customer.custid=orders.custid; -- 

select bookname 
from book 
where price=(select max(price) 
                from book);

select name 
from customer 
where custid IN (select custid 
                    from orders);

select name 
from customer 
where custid IN (select custid 
                    from orders 
                    where bookid IN (select bookid 
                                        from book 
                                        where publisher ='���ѹ̵��')); -- ���������� 1 -> 2 -> 3 ������ �� ����

select b1.bookname 
from book b1 
where b1.price > (select avg(b2.price) 
                    from book b2 
                    where b2.publisher=b1.publisher);

select name 
from customer 
minus 
select name 
from customer 
where custid IN(select custid from orders); --������

select name, address 
from customer
where exists(select * 
                from orders
                where customer.custid = orders.custid); -- ���ǿ� �´� Ʃ���� �����ϸ� ����� ����

--------------------------------------------------------------------------------

1.(5) �������� ������ ������ ���ǻ� ��

1.(6) �������� ������ ������ �̸�, ����, ������ �ǸŰ����� ����

1.(7) �������� �������� ���� ������ �̸�

2.(8) �ֹ����� ���� ���� �̸�(join ���)

2.(9) �ֹ� �ݾ��� �Ѿװ� �ֹ��� ��� �ݾ�

2.(10) ���� �̸��� ���� ���ž�

2.(11) ���� �̸��� ���� ������ ���� ���

2.(12) ������ ����(book table)�� �ǸŰ���(orders table)�� ���̰� ���� ���� �ֹ�

2.(13) ������ �Ǹž� ��պ��� �ڽ��� ���ž� ����� �� ���� ���� �̸�

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------

3.(1) �������� ������ ������ ���ǻ�� ���� ���ǻ翡�� ������ ������ ���� �̸�
select DISTINCT name
from customer, orders, book
where customer.custid = orders.custid
and orders.bookid = book.bookid
and publisher in 
( select publisher
    from customer, orders, book
    where customer.custid = orders.custid
    and orders.bookid=book.bookid
    and name like '������')
    and name != '������';
--
select distinct name
from book, orders, customer
where book.bookid=orders.bookid
and customer.custid=orders.custid
and publisher in (select publisher
                    from customer,book,orders
                    where customer.custid=orders.custid
                    and orders.bookid=book.bookid
                    and name like '������')
and name not like '������';

3.(2) �� �� �̻��� ���� �ٸ� ���ǻ翡�� ������ ������ ���� �̸�
select name
from (select name, count(DISTINCT publisher) cnt
        from customer, book, orders
        where customer.custid=orders.custid
        and book.bookid=orders.bookid
        group by name)
where cnt >= 2;
-- ���1. �׷�
select name --,count(distinct publisher) / having�� ����ؼ� ��������
from customer, book, orders
where customer.custid=orders.custid
and orders.bookid=book.bookid
group by name
having count(distinct publisher) >=2;
--���2. �������
select name
from customer
where (select count(distinct publisher)
        from book, orders
        where book.bookid=orders.bookid
        and customer.custid=orders.custid)>=2;

3.(3) ��ü ���� 30% �̻��� ������ ����
select count(customer.custid)*0.3 cnt
from customer;
--
select bookname--, count(bookid)
from book,orders
where book.bookid=orders.bookid
group by bookname
having count(book.bookid) >= (select count(*)
                                from customer)*0.3;
--���2. ���Ŀ��
select bookname
from book b1
where (select COUNT(book.bookid)
        from book, orders
        where book.bookid=orders.bookid
        and b1.bookid=book.bookid) >= (select count(*) from customer)*0.3;

4.(1) ���ο� ���� ('������ ����', '���ѹ̵��', 10000��)�� ���缭���� �԰�Ǿ���.
        ������ �� �� ��� �ʿ��� �����Ͱ� �� �ִ��� ã�ƺ���.
insert into book(bookid, bookname, publisher, price) values(11,'������ ����','���ѹ̵��',10000);
insert into book(bookid, bookname, publisher) values(12,'������ ����22','���ѹ̵��');
insert into book(bookid, bookname, publisher) values(13,'������ ����','���ѹ̵��');
-- 4-4���� ���ѹ̵� �������ǻ�� �ٲ�� ������ 4-4�� ������ �����ϰ� �����ؾ���

4.(2) '�Ｚ��'���� ������ ������ �����ؾ� �Ѵ�.
delete from book where publisher like '�Ｚ��';

4.(3) '�̻�̵��'���� ������ ������ �����ؾ��Ѵ�.
        ������ �� �� ��� ������ �����غ���.
delete from book where publisher like '�̻�̵��';
���� : �ڽ����̺�(����� ����)�� ����
        
4.(4) ���ǻ� '���ѹ̵��'�� '�������ǻ�'�� �̸��� �ٲپ���.
update book set publisher = '�������ǻ�' where publisher like '���ѹ̵��';