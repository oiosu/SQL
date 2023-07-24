-- 재구매가 일어난 상품과 회원 리스트 구하기
-- ONLINE_SALE 테이블에서 동일한 회원이 동일한 상품을 재구매한 데이터를 구하기
-- 재구매한 회원 ID와 재구매한 상품 ID를 출력
-- 회원 ID를 기준으로 오름차순 정렬
-- 회원 ID가 같다면 상품 ID를 기준으로 내림차순 정렬

SELECT USER_ID, PRODUCT_ID FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING count(*) >= 2
ORDER BY USER_ID, PRODUCT_ID DESC