-- 오프라인/온라인 판매 데이터 통합하기 
-- ONLINE_SALE 테이블과 OFFLINE_SALE 테이블에서 2022년 3월의 
-- 오프라인/온라인 상품 판매 데이터의 판매 날짜, 상품ID, 유저ID, 판매량을 출력
-- OFFLINE_SALE 테이블의 판매 데이터의 USER_ID 값은 NULL 로 표시
-- 결과는 판매일을 기준으로 오름차순 정렬
-- 판매일이 같다면 상품 ID를 기준으로 오름차순
-- 상품ID까지 같다면 유저 ID를 기준으로 오름차순 정렬

SELECT date_format(SALES_DATE,'%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE
WHERE year(SALES_DATE) = 2022 AND month(SALES_DATE) = 3

UNION ALL

SELECT date_format(SALES_DATE,'%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, NULL USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE
WHERE year(SALES_DATE) = 2022 AND month(SALES_DATE) = 3

ORDER BY SALES_DATE, PRODUCT_ID, USER_ID

-- 설명
-- 오프라인에 들어간 데이터와 온라인에 들어간 데이터 각각 뽑아서 합치기
-- 합치는 명령어 : UNION or UNION ALL 둘 중 하나를 사용 ?
-- UNION DISTINCT : 쿼리의 결과를 합치지만 중복된 행은 제거
-- UNION ALL : 쿼리의 결과를 중복도 제거하지 않고 합치기 
