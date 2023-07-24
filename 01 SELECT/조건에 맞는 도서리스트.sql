-- 조건에 맞는 도서 리스트 출력하기
-- BOOK테이블에서 2021년에 출판된 '인문' 카테고리에 속하는
-- 도서 리스트를 찾아서 도서ID(BOOK_ID),
-- 출판일(PUBLISHED_DATE)을 출력하는 SQL
-- 결과는 출판일을 기준으로 오름차순 정렬

SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK 
WHERE CATEGORY = '인문' AND YEAR(PUBLISHED_DATE) = 2021
ORDER BY PUBLISHED_DATE

-- WHERE 구문과 ORDER BY 구문을 잘 활용할 수 있도록 연습하는 것이 필요
-- DATE_FORMAT(날짜, 형식) : 날짜를 지정한 형식으로 출력
-- YEAR() : 날짜, 시간과 관련된 함수 중 하나

