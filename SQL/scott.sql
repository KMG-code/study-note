--1) 부서번호가 10번인 부서의 사람 중 사원번호, 이름, 월급 출력
select EMPNO, ENAME, SAL
from EMP
where deptno in 10;
--where deptno = 10;

--2) 사원번호가 7369인 사람 중 이름, 입사일, 부서번호를 출력
select Ename, hiredate, deptno
from emp
where empno in 7369;
--where empno = 7369;

--3) 이름이 ALLEN인 사람의 모든 정보를 출력
select *
from EMP
where ename like 'ALLEN';
--where ename = 'ALLEN';

--4) 입사일이 81/02/20인 사원의 이름, 부서번호, 월급을 출력하라
select Ename, deptno, sal
from emp
where hiredate in '81/02/20'; --TO_DATE('1981-02-20' , 'YYYY-MM-DD'); 형식 변환(오라클은 자동변환 해줌)
--where hiredate = '1981/02/20';

--5) 직업이 MANAGER가 아닌 사람의 모든 정보를 출력
select *
from emp
where JOB not in 'MANAGER';
--where job != 'MANAGER';
--where job <> 'MANAGER';

--6) 입사일이 81/04/02 이후에 입사한 사원의 정보를 출력
select *
from emp
where hiredate >= '81/04/02';

--7) 급여가 $800 이상인 사람의 이름, 급여, 부서번호 출력
select Ename, sal, deptno
from emp
where sal >= 800;

--8) 부서번호가 20번 이상인 사원의 모든 정보 출력
select *
from emp
where deptno >= 20;

--9) 이름이 K로 시작하는 사람보다 높은 이름을 가진 사람의 모든 정보 출력
select *
from emp
where ename > 'K' -- 첫번째 문자, 두번째 문자 순서대로 문자 다 비교함 / ename >= 'L'
and ename not like 'K%';
-- where ename > 'L';

--10) 입사일이 81/12/09보다 먼저 입사한 사람들의 모든 정보 출력
select *
from emp
where hiredate < '81/12/09';

--11) 직원번호가 7698보다 작거나 같은 사람들의 직원번호와 이름을 출력
select Empno, Ename
from emp
where Empno <=7698;

--12) 입사일이 81/04/02보다 같거나 늦고 82/12/09보다 같거나 빠른 사원의 이름, 월급, 부서번호 출력
select Ename, sal, deptno
from emp
where hiredate between '81/04/02' and '82/12/09';

--13) 급여가 $1600보다 크고 $3000보다 작은 직원의 이름, 직업, 급여 출력
select Ename, Job, sal
from emp
where sal > 1600
and sal < 3000;

--14) 직원번호가 7654와 7782 사이 이외의 직원의 모든 정보를 출력하라
select *
from emp
where empno not between 7654 and 7782;

--15) 이름이 B와J 사이의 모든 직원의 정보를 출력
select *
from emp
where Ename between 'B' and 'J';

--16) 입사일이 81년 이외에 입사한 직원의 모든 정보를 출력하라
select *
from emp
where hiredate not like '81/%/%';
--where hiredate not between '1981/01/01' and '1981/12/31';
--where To_char(hiredate, 'YYYY') <> 1981;

--17) 직업이 MANAGER이거나 SALESMAN인 직원의 모든 정보를 출력
select *
from emp
where job in('MANAGER' , 'SALESMAN');

--18) 부서번호가 20, 30번을 제외한 모든 직원의 이름, 사원번호, 부서번호 출력
select Ename, Empno, deptno
from emp
where deptno not in(20, 30);

--19)이름이 S로 시작하는 직원의 사원번호, 이름, 입사일, 부서번호를 출력
select Empno, Ename, Hiredate, deptno
from emp
where Ename like 'S%';

--20) 입사일이 81년도인 사람의 모든 정보를 출력
select *
from emp
where hiredate like '81/%/%';
--where hiredate between '1981/01/01' and '1981/12/31';

--21) 이름 중 S자가 들어가 있는 사람만 모든 정보를 출력
select *
from emp
where ename like '%S%';

--22) 이름은 M으로 시작하고 마지막 글자가 N인 사람의 모든정보를 출력(이름 전체 6자리)
select *
from emp
where ename like 'M%%N'; --'M____N'

--23) 이름의 첫 번째 문자는 관계업고, 두번째 문자가 A인 사람의 정보를 출력
select *
from emp
where ename like '_A%';

--24) 커미션이 NULL인 사람의 정보를 출력
select *
from emp
where comm is null;

--25) 커미션이 NULL이 아닌 사람의 모든 정보 출력
select *
from emp
where comm is not null;

--26)부서가 30번 부서이고 급여가 $1500 이상인 사람의 이름, 부서, 월급을 출력
select Ename, Deptno, sal
from emp
where deptno in 30 --where deptno = 30
and sal >= 1500;

--27) 이름의 첫 글자가 K로 시작하거나 부서번호가 30인 사람의 사원번호, 이름, 부서번호 출력
select Empno, Ename, deptno
from emp
where Ename like 'K%'
or deptno = 30;

--28) 급여가 $1500 이상이고 부서번호가 30번인 사원 중 직업이 MANAGER인 사람의 정보를 출력
select *
from emp
where sal >= 1500 and deptno = 30 and job = 'MANAGER';

--29) 부서번호가 30인 사람의 모든 정보를 출력하고 직원번호로 정렬
select *
from emp
where deptno = 30
order by Empno ASC;

--30)직원들의 급여가 많은 순으로 정렬
select *
from emp
order by sal desc;

--31) 부서번호로 ASC 정렬 한 후 급여가 많은 사람 순으로 출력
select *
from emp
order by deptno asc, sal desc;

--32) 부서번호로 DESC 정렬하고 이름 순으로 ASC정렬, 급여순으로 DESC정렬
select DEPTno, Ename, Sal
from emp
order by deptno desc, Ename ASC, sal DESC;

--33) 10번 부서의 모든 직원에게 급여의 13%를 보너스로 지급하기로 하였다. 이름,급여,보너스금액,부서번호 출력
select Ename, sal, ROUND(sal*0.13, 0)as BONUS, Deptno --ROUND(값, 반올림자릿수) 반올림자릿수 0=기본(소수점 첫째자리)
from emp
where deptno = 10;

--34) 직원의 이름, 급여, 커미션, 총액(급여+커미션)을 구하여 총액이 많은 순서로 출력
select Ename, sal, NVL(comm ,0), sal+NVL(comm,0) as total 
from emp
order by total desc;

select Ename, sal, NVL(comm ,0), coalesce(sal+comm, sal) as total -- COALESCE(1, 2) null값이 있으면 2로 처리 없으면 1로 처리
from emp
order by total desc;

select Ename, sal, NVL(comm ,0), nvl2(comm, sal+comm, sal) as total --NVL2(a, 1, 2,) a의 값이 null이 아니면 1값, null일 경우에 2값                                                                    
from emp
order by total desc;


--35) 급여가 $1500부터 $3000 사이의 사원에 대해서만 급여의 15%를 회비로 지불
      모든 사원의 이름, 급여, 회비(소수이하 2자리에서 반올림)를 출력(회비는 달러표시$로 시작 소수점 1자리까지 출력)
select Ename, Sal, to_char(round(sal*0.15, 1), '$000.0') as 회비 -- 문자열 변경으로 $표시랑 표시형식, 소수점 변경(9: 값 없으면 표시 안함 / 0 : 값 없으면 0으로 처리)
from emp                                                         -- 'L000.0' L= 현지(로컬) 통화로 표시
where sal between 1500 and 3000;

--36) 사원수가 5명이 넘는 부서의 부서명과 사원수 조회
select Dname, count(E.EMPNO)
from dept, emp E
where dept.deptno = E.deptno
group by Dname
having count(E.EMPNO)>5;

--37) 직업별 급여합계가 5000을 초과하는 각 직무에 대해서 직무와 월 급여 합계를 조회
        단 판매원('SALESMAN')은 제외하고 월 급여 합계로 내림차순 정렬
select JOB, sum(sal) 급여합계
from emp
where job != 'SALESMAN'
group by JOB
having sum(sal) >5000
order by sum(sal) desc;

--38) 사원들의 사원번호, 사원명, 급여, 급여등급(grade)을 출력
--비동등 JOIN
select  EMPNO, ENAME, SAL, GRADE
from emp join salgrade s
on emp.sal between s.losal and s.hisal;

--39) 부서별로 사원의 수와 커미션을 받은 사원의 수를 출력
select deptno, count(empno) 사원수, count(comm) as "커미션 받은 사원수" --집계함수 null값 계산 X / null값을 연산자로 계산시 결과도 null 표시
from emp
group by deptno;

--40) 부서번호가 10은 '총무부' / 20은 '개발부' / 30은 '영업부'라고하여 이름, 부서번호, 부서명 순으로 출력
select ename,deptno, decode(deptno, 10, '총무부',
                                    20, '개발부',
                                    30, '영업부'
                            ) 부서명
from emp;