-- 저자 별 카테고리 별 매출액 집계하기 

-- 다시 풀어보기 

-- 2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 
-- 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여
-- 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력
-- 결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬

/* 1) 항상 행, 열 인지 정확하게 인지하는 것이 중요하다
   2) 판매정보에 각 고유정보를 JOIN 후, 날짜로 분기하여 GROUP BY하여 SELECT문에서 SUM() 연산하기
 */

SELECT A.AUTHOR_ID, AUTHOR_NAME, CATEGORY, SUM((SALES * PRICE)) AS TOLTAL_SALES
FROM BOOK_SALES S
JOIN BOOK B ON S.BOOK_ID = B.BOOK_ID
JOIN AUTHOR A ON B.AUTHOR_ID = A.AUTHOR_ID
WHERE YEAR(S.SALES_DATE) = 2022 AND MONTH(S.SALES_DATE) = 1
GROUP BY CATEGORY, AUTHOR_ID
ORDER BY A.AUTHOR_ID, CATEGORY DESC

