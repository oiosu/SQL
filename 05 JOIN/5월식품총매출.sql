-- 5월 식품들의 총매출 조회하기 

-- FOOD_PRODUCT와 FOOD_ORDER 테이블에서 생산일자가 2022년 5월인
-- 식품들의 식품 ID, 식품 이름, 총매출을 조회
-- 결과는 총매출을 기준으로 내림차순 정렬
-- 총매출이 같다면 식품 ID를 기준으로 오름차순 정렬

SELECT a.PRODUCT_ID,	PRODUCT_NAME,	sum(AMOUNT*PRICE) AS TOTAL_SALES
FROM FOOD_PRODUCT a join FOOD_ORDER b ON a.PRODUCT_ID=b.PRODUCT_ID
WHERE PRODUCE_DATE LIKE '2022-05%'
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, a.PRODUCT_ID

