-- 조건에 맞는 회원수 구하기 
-- USER_INFO 테이블에서 2021년에 가입한 회원 중 나이가 20세이상 29세 이하
-- 회원이 몇 명인지 출력

SELECT count(USER_ID) as USERS
FROM USER_INFO
WHERE YEAR(JOINED) = '2021' and AGE BETWEEN 20 and 29;

-- 1) 회원이 몇 명인지 출력해야 하므로 SELECT문에 
-- count(USER_ID) as USERS가 들어간다.

-- 2)  USER_INFO 테이블에서 정보를 가져오므로 FROM USER_INFO이다.
