-- 인기있는 아이스크림
-- 상반기에 판매된 아이스크림의앗을 총주문량을 기준으로 내림차순 정렬
-- 총주문량이 같다면 출하 번호를 기준으로 오름차순 정렬

-- 처음작성한 코드 
SELECT FLAVOR FROM FIRST_HALF
WHERE TOTAL_ORDER 
ORDER BY TOTAL_ORDER DESC

--정답 코드 
SELECT FLAVOR FROM FIRST_HALF
WHERE TOTAL_ORDER 
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID
