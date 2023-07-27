-- 자동차 대여 기록에서 장기/단기 대여 구분하기 

-- CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서
-- 대여 시작일이 2022년 9월에 속하는 
-- 기록에 대해서 대여 기간이 30일 이상이면 ~'장기 대여' 
-- 그렇지 않으면 '단기 대여'로 표시하는 컬럼(컬럼명: RENT_TYPE)을 추가하여 
-- 대여기록을 출력 AND 
-- 결과는 대여 기록 ID를 기준으로 내림차순 정렬


SELECT HISTORY_ID, CAR_ID, 
	   DATE_FORMAT (START_DATE, "%Y-%m-%d") AS START_DATE, 
	   DATE_FORMAT (END_DATE, "%Y-%m-%d") AS END_DATE,
       /* 기록에 대해서 대여 기간이 30일 이상이면 '장기 대여'  */
       /* 그렇지 않으면 '단기 대여'로 표시하는 컬럼  */
CASE WHEN DATEDIFF(END_DATE, START_DATE) < 29 then '단기 대여' 
            ELSE '장기 대여' 
            /* (컬럼명: RENT_TYPE)을 추가 */
            END AS  RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE LIKE '2022-09-%'
/* 대여 기록 ID를 기준으로 내림차순 정렬 */
ORDER BY HISTORY_ID DESC;


/* 참고 : https://velog.io/@nellroll/%EC%9E%90%EB%8F%99%EC%B0%A8-%EB%8C%80%EC%97%AC-%EA%B8%B0%EB%A1%9D%EC%97%90%EC%84%9C-%EC%9E%A5%EA%B8%B0%EB%8B%A8%EA%B8%B0-%EB%8C%80%EC%97%AC-%EA%B5%AC%EB%B6%84%ED%95%98%EA%B8%B0 */