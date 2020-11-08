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

select distinct publisher  --Distinct 중복값 제거
from book;

select *
from book
where price < 20000;

select *
from book
where publisher in ('굿스포츠', '대한미디어');

select *
from book
where publisher not in ('굿스포츠', '대한미디어');

select bookname, publisher
from book
where bookname like '축구의 역사';

select bookname, publisher
from book
where bookname like '%축구%'; -- %**% = **포함

select * 
from book 
where bookname like '_구%'; -- _*% = 두번째 위치에 *가 들어감

select * 
from book 
where bookname like '축구%' And price >= 20000;

select * 
from book 
where publisher='굿스포츠' OR publisher='대한미디어';

select * 
from book 
where publisher like '굿스포츠' or publisher like '대한미디어';

select * 
from book 
order BY bookname;

select * 
from book 
order BY price, bookname; -- order by <1>, <2> = 1로 정렬한 값이 같으면 정렬

select * 
from book 
order BY price DESC, publisher ASC; -- desc 내림차순 / asc 오름차순

select sum(saleprice) 
from orders;

select sum(saleprice) AS 총매출 -- AS <> = 속성이름 별칭 지정
from orders;

select sum(saleprice) as 총매출 
from orders where custid=2;

select sum(saleprice) as total, 
        avg(saleprice) as average, 
        min(saleprice) as MInimum, 
        max(saleprice) as Maximum 
from orders;

select COUNT(*)
from orders;

select custid, count(*) AS 도서수량, SUM(saleprice) AS 총액 
from orders 
group by custid; -- 투플을 **값 그룹으로 묶음, select에는 group by에 사용한 속성이나 집계함수만 가능

select custid, count(*) as 도서수량 
from orders 
where saleprice >=8000 
group by custid 
having count(*) >=2; -- 반드시 group by 절과 같이 사용 / where보다 뒤에 / <검색조건>엔 집계함수

--------------------------------------------------------------------------------

1.(1) 도서번호가 1인 도서의 이름

1.(2)가격이 20.000원 이상인 도서의 이름

1.(3)박지성의 총 구매액

1.(4)박지성이 구매한 도서의 수

2.(1)마당서점 도서의 총 개수

2.(2)마당서점에 도서를 출고하는 출판사의 총 개수

2.(3)모든 고객의 이름, 주소

2.(4)2014년 7월 4일 ~ 7월 7일 사이에 주문받은 도서의 주문번호

2.(5)2014년 7월 4일 ~ 7월 7일 사이에 주문받은 도서를 제외한 도서의 주문번호

2.(6)성이 '김' 씨인 고객의 이름과 주소

2.(7)성이 '김' 씨이고 이름이 '아'로 끝나는 고객의 이름과 주소\

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
                                        where publisher ='대한미디어')); -- 마지막부터 1 -> 2 -> 3 순서로 값 필터

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
where custid IN(select custid from orders); --차집합

select name, address 
from customer
where exists(select * 
                from orders
                where customer.custid = orders.custid); -- 조건에 맞는 튜플이 존재하면 결과에 포함

--------------------------------------------------------------------------------

1.(5) 박지성이 구매한 도서의 출판사 수

1.(6) 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이

1.(7) 박지성이 구매하지 않은 도서의 이름

2.(8) 주문하지 않은 고객의 이름(join 사용)

2.(9) 주문 금액의 총액과 주문의 평균 금액

2.(10) 고객의 이름과 고객별 구매액

2.(11) 고객의 이름과 고객이 구매한 도서 목록

2.(12) 도서의 가격(book table)과 판매가격(orders table)의 차이가 가장 많은 주문

2.(13) 도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------

3.(1) 박지성이 구매한 도서의 출판사와 같은 출판사에서 도서를 구매한 고객의 이름
select DISTINCT name
from customer, orders, book
where customer.custid = orders.custid
and orders.bookid = book.bookid
and publisher in 
( select publisher
    from customer, orders, book
    where customer.custid = orders.custid
    and orders.bookid=book.bookid
    and name like '박지성')
    and name != '박지성';
--
select distinct name
from book, orders, customer
where book.bookid=orders.bookid
and customer.custid=orders.custid
and publisher in (select publisher
                    from customer,book,orders
                    where customer.custid=orders.custid
                    and orders.bookid=book.bookid
                    and name like '박지성')
and name not like '박지성';

3.(2) 두 개 이상의 서로 다른 출판사에서 도서를 구매한 고객의 이름
select name
from (select name, count(DISTINCT publisher) cnt
        from customer, book, orders
        where customer.custid=orders.custid
        and book.bookid=orders.bookid
        group by name)
where cnt >= 2;
-- 방법1. 그룹
select name --,count(distinct publisher) / having에 사용해서 생략가능
from customer, book, orders
where customer.custid=orders.custid
and orders.bookid=book.bookid
group by name
having count(distinct publisher) >=2;
--방법2. 상관쿼리
select name
from customer
where (select count(distinct publisher)
        from book, orders
        where book.bookid=orders.bookid
        and customer.custid=orders.custid)>=2;

3.(3) 전체 고객의 30% 이상이 구매한 도서
select count(customer.custid)*0.3 cnt
from customer;
--
select bookname--, count(bookid)
from book,orders
where book.bookid=orders.bookid
group by bookname
having count(book.bookid) >= (select count(*)
                                from customer)*0.3;
--방법2. 상관커리
select bookname
from book b1
where (select COUNT(book.bookid)
        from book, orders
        where book.bookid=orders.bookid
        and b1.bookid=book.bookid) >= (select count(*) from customer)*0.3;

4.(1) 새로운 도서 ('스포츠 세계', '대한미디어', 10000원)이 마당서점에 입고되었다.
        삽입이 안 될 경우 필요한 데이터가 더 있는지 찾아보자.
insert into book(bookid, bookname, publisher, price) values(11,'스포츠 세계','대한미디어',10000);
insert into book(bookid, bookname, publisher) values(12,'스포츠 세계22','대한미디어');
insert into book(bookid, bookname, publisher) values(13,'스포츠 세계','대한미디어');
-- 4-4에서 대한미디어를 대한출판사로 바꿨기 때문에 4-4를 역으로 수행하고 진행해야함

4.(2) '삼성당'에서 출판한 도서를 삭제해야 한다.
delete from book where publisher like '삼성당';

4.(3) '이상미디어'에서 출판한 도서를 삭제해야한다.
        삭제가 안 될 경우 원인을 생각해보자.
delete from book where publisher like '이상미디어';
원인 : 자식테이블(연결된 정보)가 있음
        
4.(4) 출판사 '대한미디어'가 '대한출판사'로 이름을 바꾸었다.
update book set publisher = '대한출판사' where publisher like '대한미디어';