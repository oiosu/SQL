-- 조건별로 분류하여 주문상태 출력하기 

-- FOOD_ORDER 테이블에서 5월 1일을 기준으로 
-- 주문 ID, 제품 ID, 출고일자, 출고여부를 조회
-- 출고여부는 5월 1일까지 출고완료로 이 후 날짜는 
-- 출고 대기로 미정이면 출고미정으로 출력
-- 결과는 주문 ID를 기준으로 오름차순 정렬 ASC

/* SELECT * FROM FOOD_ORDER
WHERE 5월 1일 기준 DATE_FORMAT 하고
출고 대기 = '출고미정'
ORDER BY ORDER_ID ASC  
하면 되지 않을까 추측 */

SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE, '%Y-%m-%d') AS OUT_DATE,
    CASE 
        WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'  
        WHEN OUT_DATE > '2022-05-01' THEN '출고대기'
        ELSE '출고미정'
    END '출고여부'
FROM FOOD_ORDER
ORDER BY ORDER_ID


/* 참고 : https://suminii.tistory.com/entry/MYSQL-%EC%A1%B0%EA%B1%B4%EB%B3%84%EB%A1%9C-%EB%B6%84%EB%A5%98%ED%95%98%EC%97%AC-%EC%A3%BC%EB%AC%B8%EC%83%81%ED%83%9C-%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0 */

/* 
1. 5월 1일을 기준으로 출고여부 표시
2. 주문 ID를 기준으로 오름차순 정렬 ORDER BY를 통해 정렬!
 */