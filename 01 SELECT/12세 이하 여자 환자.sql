-- 12세 이하인 여자 환자 목록 출력하기 

-- PATIENT 테이블에서 12세 이하인 여자환자의 환자이름, 환자번호,
-- 성별코드, 나이, 전화번호를 조회하는 SQL문을 작성하기
-- 이때 전화번호가 없는 경우 'NONE'으로 출력시켜 주고 
-- 결과는 나이를 기준으로 내림차순 정렬 
-- 나이 같다면 환자 이름 기준으로 오름차순 정렬

SELECT PT_NAME, PT_NO, GEND_CD, AGE, IFNULL(TLNO, 'NONE')
-- 환자이름, 환자번호, 성별 코드, 나이, 전화번호가 PATIENT 테이블의 전체이기 때문에
-- SELECT *을 입력하려고 했으나 전화번호의 NULL 값은 
-- NONE 으로 변경해줘야 하기에 전체를 적고 TLNO 는 IFNULL 함수 사용 
FROM PATIENT
WHERE AGE <=12 AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME