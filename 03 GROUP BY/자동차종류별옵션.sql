-- 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
-- CAR_RENTAL_COMPANY_CAR 테이블에서 '통풍시트', '열선시트', '가죽시트' 중
-- 하나 이상의 옵션이 포함된 자동차가 자동차 종류 별로 몇 대인지 출력
-- 이때 자동차 수에 대한 컬럼명은 CARS로 지정하고, 결과는 자동차 종류를 기준으로 오름차순 정렬

/* SELECT CAR_TYPE, CARS
FROM CAR_RENTAL_COMPANY_CAR */
/* COUNT를 하면서 옵션별로 자동차 수를 구한다음 */
/* 컬럼명 수정하고 오름차순 정렬로 하면 되는 걸까? */


SELECT CAR_TYPE, COUNT(CAR_TYPE) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%열선시트%' OR OPTIONS LIKE '%통풍시트%' OR OPTIONS LIKE '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC;