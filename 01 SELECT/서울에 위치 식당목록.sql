-- 서울에 위치한 식당 목록 출력하기 
-- REST_INFO 와 REST_REVIEW 테이블에서 서울에 위치한 식당들의 식당ID, 
-- 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수를 조회하는 SQL문
-- 리뷰 평균 점수는 소수점 세 번째 자리에서 반올림 
-- 결과는 평균점수를 기준으로 내림차순 정렬 
-- 평균 점수가 같다면 즐겨찾기 수를 기준으로 내림차순 정렬

SELECT A.REST_ID, B.REST_NAME, B.FOOD_TYPE, B.FAVORITES, B.ADDRESS, 
       ROUND(AVG(A.REVIEW_SCORE),2) AS SCORE
FROM REST_REVIEW A
JOIN REST_INFO B ON A.REST_ID = B.REST_ID
GROUP BY A.REST_ID
HAVING B.ADDRESS LIKE '서울%'
ORDER BY SCORE DESC, B.FAVORITES DESC

-- 리뷰에 대해 식당 데이터를 JOIN 연산 한다
-- 식당번호를 기준으로 ORDER BY 연산하고 ROUND, AVG 함수를 원하는 결과값 얻기 
-- GROUP BY 에 대해 조건을 걸기 위해 HAVING과 LIKE를 이용하기
-- 두가지 기준으로 정렬하기
-- 따로 서브쿼리까지는 할 필요가 없다?

