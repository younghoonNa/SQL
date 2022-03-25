## Using Mysql

### week2 에서 배운 점.
- % 기호는 0~n개 까지의 substring 
- _ 기호는 하나의 substring
-  따라서 "_h%" 는 두번째 글자가 h인 substring, "%i%"는 중간에 i가 들어가는 substring
-  union은 합집합. (중복 포함 x), 중복 포함은 union all
-  join - 카티션 곱 -> from student, instructor -> student * instructor 수 만큼의 row 생성.
-  inner join -> 공통 칼럼이 같은 데이터만을 배치
-  outer join (left) -> 왼쪽 테이블 기준.  outer join(right) -> 오른쪽 테이블 기준. 

---
### Week3 에서 배운 점.


```{p}

select name, salary, dept_name
from instructor
where dept_name in
(
  select dept_name
  from student
  where dept_name like '_i%'
);

```

다음과 같은 중첩 부질의에서 알아야 할 점은 `ALL`이라고 할 수 있다. <br>
ALL`은 하위의 조건을 모두 만족시키는 튜플을 찾아서 반환한다. <br>
첫번째 where 절이 없을 경우 중간에 i가 들어가는 튜플의 65,000부터 시작하여 80,000 .. 등등 작게는 62,000 부터 크게는 95,000까지 나오게 되는데 <br>
이 값들을 모두 만족시키는 튜플을 찾으면 된다. 즉 i가 중간에 들어가는 instructor 테이블의 salary값 보다 모두 작은 값을 찾아 반환한다. <br>
반대의 값 으로는 `SOME`이 있다. 그렇다면 이 값은 가장 큰 값인 95,000 보단 작은 경우는 없으므로 95,000을 가지는 값만 나오지 않을 것이다. <br>
```{p}
select name, salary
from instructor
where salary < ALL
(
  select salary
  from instructor
  where name like '%i%'
);
```



---
### week4 에서 배운 점.
