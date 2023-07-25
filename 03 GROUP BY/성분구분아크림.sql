-- 성분으로 구분한 아이스크림 총 주문량 
-- 상반기 동안 각 아이스크림 성분 타입과 성분 타입에 대한 
-- 아이스크림의 총주문량을 총주문량이 작은 순서대로 조회
-- 이때 총주문량을 나타내는 컬럼명은 TOTAL_ORDER

SELECT A.INGREDIENT_TYPE, SUM(B.TOTAL_ORDER) AS TOTAL_ORDER
FROM ICECREAM_INFO A, FIRST_HALF B
WHERE A.FLAVOR = B.FLAVOR
GROUP BY A.INGREDIENT_TYPE
ORDER BY B.TOTAL_ORDER ASC