-- 주문량이 많은 아이스크림들 조회하기 

-- 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로 
-- 상위 3개의 맛을 조회

-- 7월 아이스크림 총주문량과 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로 상위 3개의 맛 조회 하면
-- Strawberry(520 + 220 + 3,100 = 3,840), mango(790 + 110 + 2,900 = 3,800), chocolate(520 + 3,200 = 3,720)

-- 상반기 테이블을 JOIN기준 테이블로 잡고 
SELECT F.FLAVOR 
FROM FIRST_HALF F
-- 7월 테이블을 JOIN 한다. 
JOIN JULY AS J 
-- ON 조건절에는 두개의 테이블에 모두 존재하는 FLAVOR로 잡기
ON F.FLAVOR = J.FLAVOR
GROUP BY F.FLAVOR
ORDER BY SUM(F.TOTAL_ORDER) + SUM(J.TOTAL_ORDER) DESC LIMIT 3



/* 참고 : https://velog.io/@zinu/%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-%EC%A3%BC%EB%AC%B8%EB%9F%89%EC%9D%B4-%EB%A7%8E%EC%9D%80-%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC%EB%93%A4-%EC%A1%B0%ED%9A%8C%ED%95%98%EA%B8%B0MySQLJOIN */