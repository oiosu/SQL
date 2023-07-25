-- 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기 
-- CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 2022년 10월 16일에 대여 중인 
-- 자동차인 경우 '대여중' 이라고 표시
-- 대여 중이지 않은 자동차인 경우 '대여 가능'을 표시하는
-- 컬럼(컬럼명: AVAILABILITY)을 추가하여 자동차 ID와 
-- AVAILABILITY 리스트를 출력
-- 이때 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'으로 표시
-- 결과는 자동차 ID를 기준으로 내림차순 정렬

-- CASE 문을 사용한다. 
-- 서브쿼리를 사용하여  2022년 10월 16일이 대여 시작일자 와 대여 종료일자 사이에 있는 CAR_ID를 구한다.
-- GROUP BY를 통해 CAR_ID별로 위에서 구한 조건에 해당하는 CAR_ID라면 '대여중' 아니면 '대여 가능'으로 해준 후 
-- AVAILABILITY컬럼 추가

SELECT CAR_ID,
    CASE 
        WHEN CAR_ID IN (SELECT CAR_ID FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY WHERE '2022-10-16' BETWEEN START_DATE
        AND END_DATE) THEN '대여중'
        ELSE  '대여 가능'
    END "AVAILABILITY"
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC

