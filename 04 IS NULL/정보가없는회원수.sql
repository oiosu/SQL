-- 나이 정보가 없는 회원 수 구하기 
-- USER_INFO 테이블에서 나이 정보가 없는 회원이 몇 명인지 출력
-- 이때 컬럼명은 USERS로 지정

SELECT COUNT(*) AS USER
FROM USER_INFO
WHERE AGE IS NULL
