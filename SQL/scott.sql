--1) �μ���ȣ�� 10���� �μ��� ��� �� �����ȣ, �̸�, ���� ���
select EMPNO, ENAME, SAL
from EMP
where deptno in 10;
--where deptno = 10;

--2) �����ȣ�� 7369�� ��� �� �̸�, �Ի���, �μ���ȣ�� ���
select Ename, hiredate, deptno
from emp
where empno in 7369;
--where empno = 7369;

--3) �̸��� ALLEN�� ����� ��� ������ ���
select *
from EMP
where ename like 'ALLEN';
--where ename = 'ALLEN';

--4) �Ի����� 81/02/20�� ����� �̸�, �μ���ȣ, ������ ����϶�
select Ename, deptno, sal
from emp
where hiredate in '81/02/20'; --TO_DATE('1981-02-20' , 'YYYY-MM-DD'); ���� ��ȯ(����Ŭ�� �ڵ���ȯ ����)
--where hiredate = '1981/02/20';

--5) ������ MANAGER�� �ƴ� ����� ��� ������ ���
select *
from emp
where JOB not in 'MANAGER';
--where job != 'MANAGER';
--where job <> 'MANAGER';

--6) �Ի����� 81/04/02 ���Ŀ� �Ի��� ����� ������ ���
select *
from emp
where hiredate >= '81/04/02';

--7) �޿��� $800 �̻��� ����� �̸�, �޿�, �μ���ȣ ���
select Ename, sal, deptno
from emp
where sal >= 800;

--8) �μ���ȣ�� 20�� �̻��� ����� ��� ���� ���
select *
from emp
where deptno >= 20;

--9) �̸��� K�� �����ϴ� ������� ���� �̸��� ���� ����� ��� ���� ���
select *
from emp
where ename > 'K' -- ù��° ����, �ι�° ���� ������� ���� �� ���� / ename >= 'L'
and ename not like 'K%';
-- where ename > 'L';

--10) �Ի����� 81/12/09���� ���� �Ի��� ������� ��� ���� ���
select *
from emp
where hiredate < '81/12/09';

--11) ������ȣ�� 7698���� �۰ų� ���� ������� ������ȣ�� �̸��� ���
select Empno, Ename
from emp
where Empno <=7698;

--12) �Ի����� 81/04/02���� ���ų� �ʰ� 82/12/09���� ���ų� ���� ����� �̸�, ����, �μ���ȣ ���
select Ename, sal, deptno
from emp
where hiredate between '81/04/02' and '82/12/09';

--13) �޿��� $1600���� ũ�� $3000���� ���� ������ �̸�, ����, �޿� ���
select Ename, Job, sal
from emp
where sal > 1600
and sal < 3000;

--14) ������ȣ�� 7654�� 7782 ���� �̿��� ������ ��� ������ ����϶�
select *
from emp
where empno not between 7654 and 7782;

--15) �̸��� B��J ������ ��� ������ ������ ���
select *
from emp
where Ename between 'B' and 'J';

--16) �Ի����� 81�� �̿ܿ� �Ի��� ������ ��� ������ ����϶�
select *
from emp
where hiredate not like '81/%/%';
--where hiredate not between '1981/01/01' and '1981/12/31';
--where To_char(hiredate, 'YYYY') <> 1981;

--17) ������ MANAGER�̰ų� SALESMAN�� ������ ��� ������ ���
select *
from emp
where job in('MANAGER' , 'SALESMAN');

--18) �μ���ȣ�� 20, 30���� ������ ��� ������ �̸�, �����ȣ, �μ���ȣ ���
select Ename, Empno, deptno
from emp
where deptno not in(20, 30);

--19)�̸��� S�� �����ϴ� ������ �����ȣ, �̸�, �Ի���, �μ���ȣ�� ���
select Empno, Ename, Hiredate, deptno
from emp
where Ename like 'S%';

--20) �Ի����� 81�⵵�� ����� ��� ������ ���
select *
from emp
where hiredate like '81/%/%';
--where hiredate between '1981/01/01' and '1981/12/31';

--21) �̸� �� S�ڰ� �� �ִ� ����� ��� ������ ���
select *
from emp
where ename like '%S%';

--22) �̸��� M���� �����ϰ� ������ ���ڰ� N�� ����� ��������� ���(�̸� ��ü 6�ڸ�)
select *
from emp
where ename like 'M%%N'; --'M____N'

--23) �̸��� ù ��° ���ڴ� �������, �ι�° ���ڰ� A�� ����� ������ ���
select *
from emp
where ename like '_A%';

--24) Ŀ�̼��� NULL�� ����� ������ ���
select *
from emp
where comm is null;

--25) Ŀ�̼��� NULL�� �ƴ� ����� ��� ���� ���
select *
from emp
where comm is not null;

--26)�μ��� 30�� �μ��̰� �޿��� $1500 �̻��� ����� �̸�, �μ�, ������ ���
select Ename, Deptno, sal
from emp
where deptno in 30 --where deptno = 30
and sal >= 1500;

--27) �̸��� ù ���ڰ� K�� �����ϰų� �μ���ȣ�� 30�� ����� �����ȣ, �̸�, �μ���ȣ ���
select Empno, Ename, deptno
from emp
where Ename like 'K%'
or deptno = 30;

--28) �޿��� $1500 �̻��̰� �μ���ȣ�� 30���� ��� �� ������ MANAGER�� ����� ������ ���
select *
from emp
where sal >= 1500 and deptno = 30 and job = 'MANAGER';

--29) �μ���ȣ�� 30�� ����� ��� ������ ����ϰ� ������ȣ�� ����
select *
from emp
where deptno = 30
order by Empno ASC;

--30)�������� �޿��� ���� ������ ����
select *
from emp
order by sal desc;

--31) �μ���ȣ�� ASC ���� �� �� �޿��� ���� ��� ������ ���
select *
from emp
order by deptno asc, sal desc;

--32) �μ���ȣ�� DESC �����ϰ� �̸� ������ ASC����, �޿������� DESC����
select DEPTno, Ename, Sal
from emp
order by deptno desc, Ename ASC, sal DESC;

--33) 10�� �μ��� ��� �������� �޿��� 13%�� ���ʽ��� �����ϱ�� �Ͽ���. �̸�,�޿�,���ʽ��ݾ�,�μ���ȣ ���
select Ename, sal, ROUND(sal*0.13, 0)as BONUS, Deptno --ROUND(��, �ݿø��ڸ���) �ݿø��ڸ��� 0=�⺻(�Ҽ��� ù°�ڸ�)
from emp
where deptno = 10;

--34) ������ �̸�, �޿�, Ŀ�̼�, �Ѿ�(�޿�+Ŀ�̼�)�� ���Ͽ� �Ѿ��� ���� ������ ���
select Ename, sal, NVL(comm ,0), sal+NVL(comm,0) as total 
from emp
order by total desc;

select Ename, sal, NVL(comm ,0), coalesce(sal+comm, sal) as total -- COALESCE(1, 2) null���� ������ 2�� ó�� ������ 1�� ó��
from emp
order by total desc;

select Ename, sal, NVL(comm ,0), nvl2(comm, sal+comm, sal) as total --NVL2(a, 1, 2,) a�� ���� null�� �ƴϸ� 1��, null�� ��쿡 2��                                                                    
from emp
order by total desc;


--35) �޿��� $1500���� $3000 ������ ����� ���ؼ��� �޿��� 15%�� ȸ��� ����
      ��� ����� �̸�, �޿�, ȸ��(�Ҽ����� 2�ڸ����� �ݿø�)�� ���(ȸ��� �޷�ǥ��$�� ���� �Ҽ��� 1�ڸ����� ���)
select Ename, Sal, to_char(round(sal*0.15, 1), '$000.0') as ȸ�� -- ���ڿ� �������� $ǥ�ö� ǥ������, �Ҽ��� ����(9: �� ������ ǥ�� ���� / 0 : �� ������ 0���� ó��)
from emp                                                         -- 'L000.0' L= ����(����) ��ȭ�� ǥ��
where sal between 1500 and 3000;

--36) ������� 5���� �Ѵ� �μ��� �μ���� ����� ��ȸ
select Dname, count(E.EMPNO)
from dept, emp E
where dept.deptno = E.deptno
group by Dname
having count(E.EMPNO)>5;

--37) ������ �޿��հ谡 5000�� �ʰ��ϴ� �� ������ ���ؼ� ������ �� �޿� �հ踦 ��ȸ
        �� �Ǹſ�('SALESMAN')�� �����ϰ� �� �޿� �հ�� �������� ����
select JOB, sum(sal) �޿��հ�
from emp
where job != 'SALESMAN'
group by JOB
having sum(sal) >5000
order by sum(sal) desc;

--38) ������� �����ȣ, �����, �޿�, �޿����(grade)�� ���
--�񵿵� JOIN
select  EMPNO, ENAME, SAL, GRADE
from emp join salgrade s
on emp.sal between s.losal and s.hisal;

--39) �μ����� ����� ���� Ŀ�̼��� ���� ����� ���� ���
select deptno, count(empno) �����, count(comm) as "Ŀ�̼� ���� �����" --�����Լ� null�� ��� X / null���� �����ڷ� ���� ����� null ǥ��
from emp
group by deptno;

--40) �μ���ȣ�� 10�� '�ѹ���' / 20�� '���ߺ�' / 30�� '������'����Ͽ� �̸�, �μ���ȣ, �μ��� ������ ���
select ename,deptno, decode(deptno, 10, '�ѹ���',
                                    20, '���ߺ�',
                                    30, '������'
                            ) �μ���
from emp;