-- 가격대 별 상품 개수 구하기 
-- PRODUCT 테이블에서 만원 단위의 가격대 별로 상품 개수를 출력
-- 이때 컬럼명은 각각 컬럼명은 PRICE_GROUP, PRODUCTS로 지정
-- 가격대 정보는 각 구간의 최소금액(10,000원 이상 ~ 20,000 미만인 구간인 경우 10,000)으로 표시
-- 결과는 가격대를 기준으로 오름차순 정렬

-- CASE 사용하기
SELECT(
    CASE 
        WHEN PRICE < 10000 THEN 0  
        ELSE TRUNCATE(PRICE, -4)
        END) AS PRICE_GROUP, COUNT(PRODUCT_ID) AS PRODUCT
FROM PRODUCT
-- 가격대별이기에 그룹핑 기준으로 가격대로 한다. 
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP

/* CASE WHEN 조건 THEN '반환값' WHEN 조건 THEN '반환 값' ELSE 'WHEN 조건에 해당 안되는 경우 반환 값' END
1) WHEN과 THEN은 한쌍이어야 한다. 
2) WHEN과 THEN은 다수가 존재할 수 있다.
3) ELSE가 존재하면 모든 조건에 해당하지 않는 경우에 반환 값을 설정 가능
4) ELSE가 존재하지 않고 조건에 맞지 않아서 반환 값이 없으면 NULL 반환 */