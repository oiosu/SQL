-- 과일로 만든 아이스크림 고르기
-- 상반기 아이스크림 총 주문량이 3,000보다 높으면서 아이스크림의
-- 주 성분이 과일인 아이스크림의 맛을 총주문량이 큰 순서대로 조회하는 SQL

SELECT A.FLAVOR
FROM FIRST_HALF A
JOIN ICECREAM_INFO B ON A.FLAVOR = B.FLAVOR
WHERE (A.TOTAL_ORDER > 3000) AND (B.INGREDIENT_TYPE = 'fruit_based')
ORDER BY A.TOTAL_ORDER DESC

-- 각각의 컬럼에 해당하는 조건을 출력하기 위해 두 테이블 연결 (INNER JOIN)
-- 상반기 아이스크림 총주문량이 3000보다 높은 아이스크림 WHERE 절 사용
-- 아이스크림의 주 성분이 과일 WHERE 절 사용
-- 총 주문량이 큰 순서대로 조회 ORDER BY 총 주문량 DESC