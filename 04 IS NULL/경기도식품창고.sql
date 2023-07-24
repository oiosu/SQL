-- 경기도에 위치한 식품창고 목록 출력하기 
-- FOOD_WAREHOUSE 테이블에서 경기도에 위치한 창고의 ID, 이름, 주소, 
-- 냉동시설 여부를 조회
-- 이때 냉동시설 여부가 NULL인 경우, 'N'으로 출력
-- 결과는 창고 ID를 기준으로 오름차순 정렬

/* SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE FREEZER_YN = 'NULL'
ORDER BY WAREHOUSE_ID ASC */

SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, IFNULL(FREEZER_YN, 'N') AS FREEZER_YN
FROM FOOD_WAREHOUSE 
WHERE ADDRESS LIKE '경기%'
ORDER BY WAREHOUSE_ID

-- 경기도에 위치한 창고 WHERE 절에 LIKE를 사용하여 경기도에 위치한 창고 추출
-- 냉동시설 여부가 NULL인경우 N으로 출력 
-- ORDER BY를 사용하여 정렬