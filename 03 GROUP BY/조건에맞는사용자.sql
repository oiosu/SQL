-- 조건에 맞는 사용자와 총 거래금액 조회하기
-- USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 완료된 중고 거래의 총금액이 70만 원 이상
-- 인 사람의 회원 ID, 닉네임, 총거래금액을 조회
-- 결과는 총거래금액을 기준으로 오름차순 정렬

/* SELECT USER_ID, NICKNAME, TOTAL_SALES
FROM USED_GOODS_BOARD, USED_GOODS_USER
TOTAL_SALES는 AS로!
ORDER BY 는 총거래금액 오름차순으로 정렬하기
고민이 되는 점은 완료된 거래의 총금액을 70만원 이상 을 GROUP BY 로 어떻게 작성해야할지에 대한 것임
ORDER BY STATUS가 = 'DONE' 이고 PICE가 >= 70 인것을 묶어주고 ORDER BY 로 오름차순 정렬 코드를 고민  */

SELECT B.USER_ID, B.NICKNAME, SUM(A.PRICE) AS TOTAL_SALES 
FROM USED_GOODS_BOARD A
JOIN USED_GOODS_USER B ON A.WRITER_ID = B.USER_ID
WHERE A.STATUS = 'DONE'
GROUP BY B.USER_ID
HAVING TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES

-- A.STATUS = 'DONE' : 완료된 중고거래 
-- HAVING TOTAL_SALES >= 700000 : 거래된 총 금액이 70 만원이상 
-- SUM 함수를 기준으로 정렬을 하고 있기 때문에, WHERE 절을 사용할 수 없어
-- HAVING을 사용한다. 
