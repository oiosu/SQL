-- 자동차 평균 대여 기간 구하기 

-- CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 평균 대여 기간이 7일 이상인 
-- 자동차들의 자동차 ID와 평균 대여 기간(컬럼명 : AVERAGE_DURATION) 리스트를 출력
-- 평균 대여 기간은 소수점 두번째 자리에서 반올림
-- 결과는 평균 대여 기간을 기준으로 내림차순 정렬
-- 평균 대여 기간이 같으면 자동차를 ID기준으로 내림차순 정렬

/* 

자동차 별 평균 대여 기간은

    자동차 ID가 1인 자동차의 경우, 대여 기간이 각각 5일, 33일, 30일인 기록이 존재하므로 평균 22.7일
    자동차 ID가 2인 자동차의 경우, 대여 기간이 각각 1일, 3일인 기록이 존재하므로 평균 2일
    자동차 ID가 3인 자동차의 경우, 대여 기간이 30일인 기록만 존재하므로 
    평균 30일 입니다. 평균 대여 기간이 7일 이상인 자동차는 자동차 ID가 1, 3인 
    자동차이고, 평균 대여 기간 내림차순 및 자동차 ID를 기준으로 내림차순 정렬하면 
    다음과 같이 나와야 합니다.
 
 */

 SELECT CAR_ID, ROUND(AVG(DATEDIFF(END_DATE, START_DATE)+1), 1) AS AVERAGE_DURATION
 FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
 GROUP BY CAR_ID
 HAVING AVERAGE_DURATION >= 7
 ORDER BY AVERAGE_DURATION DESC, CAR_ID DESC