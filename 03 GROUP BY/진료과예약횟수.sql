-- 진료과별 총 예약 횟수 출력하기 
-- APPOINTMENT 테이블에서 2022년 5월에 예약한 환자 수를 진료과코드 별로 조회
-- 이때, 컬럼명은 '진료과 코드', '5월예약건수'로 지정
-- 결과는 진료과별 예약한 환자 수를 기준으로 오름차순 정렬
--  예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차순 정렬


-- 내가 생각한 것들
-- MCDP_CD 진료과 코드 AS '진료과 코드'
-- 5월예약 APNT_YMD LIKE "2022-05%"
-- ORDER BY PT_NO ASC
-- 또 ORDER BY해서 진료과 코드를 기준으로 오름차순 정렬을 해줘야 하는건가?
-- 어렵다.

SELECT MCDP_CD AS '진료과코드', COUNT(MCDP_CD) AS '5월예약건수'
FROM APPOINTMENT
WHERE APNT_YMD LIKE '2022-05%'
GROUP BY MCDP_CD
ORDER BY COUNT(MCDP_CD) ASC, MCDP_CD ASC