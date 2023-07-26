-- 조건에 맞는 도서와 저자 리스트 출력하기

-- '경제' 카테고리에 속하는 도서들의 
-- 도서 ID(BOOK_ID), 저자명(AUTHOR_NAME), 출판일(PUBLISHED_DATE) 리스트를 출력
-- 결과는 출판일을 기준으로 오름차순 정렬


SELECT A.BOOK_ID, B.AUTHOR_NAME, DATE_FORMAT(A.PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK A JOIN AUTHOR B ON A.AUTHOR_ID = B.AUTHOR_ID
WHERE A.CATEGORY = '경제'
ORDER BY A.PUBLISHED_DATE




/* 
문제 풀이 참고 : https://suminii.tistory.com/entry/MYSQL-%EC%A1%B0%EA%B1%B4%EC%97%90-%EB%A7%9E%EB%8A%94-%EB%8F%84%EC%84%9C%EC%99%80-%EC%A0%80%EC%9E%90-%EB%A6%AC%EC%8A%A4%ED%8A%B8-%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0

1. AUTHOR_NAME를 알기 위해서는 AUTHOR 테이블과 BOOK 테이블을 JOIN 해야한다.
=> 이때 JOIN은 INNER JOIN을 사용해 두 테이블에 공통적으로 JOIN될 조건을 ON을 통해 걸어준다. (MYSQL에서 INNER는 생략가능)

2. 테이블 명 옆에 별칭을 사용해 쿼리문을 줄여줄 수 있다.
: BOOK을 A로, AUTHOR를 B로 별칭을 줘 가독성을 높여준다. (테이블 옆 별칭을 적어주기만 하면 된다.)
: JOIN할 때 동일한 컬럼명이 있다면 꼭 테이블 이름(또는 별칭).컬럼명 형식으로 표기한다.
(여기서는 공통 컬럼이 AUTHOR_ID 밖에 없기 때문에 AUTHOR_ID 앞에만 테이블 명을 붙여줘도 된다. )

3. 경제 카테고리에 속하는 도서 => WHERE 절을 사용해 카테고리가 '경제' 인 행들만 추출한다.

4. 정렬 => ORDER BY 를 통해 오름차순 정렬

5. DATE_FORMAT 함수를 사용하여 예시와 동일하게 출력 
 */


