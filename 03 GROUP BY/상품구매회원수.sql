-- 년, 월, 성별 별 상품 구매 회원 수 구하기 
-- USER_INFO 테이블과 ONLINE_SALE 테이블에서 년, 월, 성별 별로 상품을 구매한 회원수를 집계
-- 결과는 년, 월, 성별을 기준으로 오름차순 정렬
-- 이때, 성별 정보가 없는 경우결과에서 제외 

-- 중복 제거 : DISTINCT 


SELECT YEAR(SALES_DATE) AS YEAR, MONTH(SALES_DATE) AS MONTH, GENDER, 
    COUNT(DISTINCT A.USER_ID) AS USERS
-- 판매 정보가 담인 ONLINE_SLAE을 A로 지정한다. (기준 테이블)
FROM ONLINE_SALE A
-- USER_INFO 테이블과 조인 (= 조인 대상 테이블)
JOIN USER_INFO B ON A.USER_ID = B.USER_ID
-- 성별 정보가 없는 경우 결과에서 제외하기 (IS NOT NULL을 통해 제거)
WHERE GENDER IS NOT NULL
-- 년, 월, 성별 별로 상품을 구매한 회원수를 집계 
GROUP BY YEAR(SALES_DATE), MONTH(SALES_DATE), GENDER
-- 년, 월 성별을 기준으로 오름차순 정렬 
ORDER BY YEAR(SALES_DATE), MONTH(SALES_DATE), GENDER