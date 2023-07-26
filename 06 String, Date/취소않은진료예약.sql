-- 취소되지 않은 진료 예약 조회하기

-- PATIENT, DOCTOR 그리고 APPOINTMENT 테이블에서
-- 2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회
-- 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 
-- 진료예약일시 항목이 출력
--  결과는 진료예약일시를 기준으로 오름차순 정렬

SELECT A.APNT_NO, B.PT_NAME, A.PT_NO, A.MCDP_CD, C.DR_NAME, A.APNT_YMD
FROM APPOINTMENT AS A
INNER JOIN PATIENT AS B
ON A.PT_NO = B.PT_NO
INNER JOIN DOCTOR AS C
ON A.MDDR_ID = C.DR_ID
WHERE A.APNT_YMD LIKE '2022-04-13%'
AND A.MCDP_CD = 'CS'
AND A.APNT_CNCL_YN = 'N'
ORDER BY A.APNT_YMD ASC  

/* JOIN 들어가면 어렵게 느껴지는 나 반성해 */