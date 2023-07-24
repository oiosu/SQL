-- 조건에 부합하는 중고거래 댓글 조회하기
-- USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 2022년 10월에 작성된
-- 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 
-- 댓글 작성일을 조회하는 SQL
-- 결과는 댓글 작성일을 기준으로 오름차순 정렬
-- 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬
-- 주의사항 : CREATED_DATE의 포맷이 예시의 포맷과 일치해야 정답


-- 답을 찾아보기전의 생각1 : 2022년 10월 같은 경우에는 DATE_FORMAT 하기
-- 생각2 : 2개의 테이블을 JOIN 하여 원하는 테이블 잦기 
-- 생각3 : ORDER BY를 통해 댓글 작성일, 오름차순과 IF 절을 통해 
-- 다시 게시글 제목을 기준으로 오름차순 정렬하기

SELECT A.TITLE, A.BOARD_ID, B.REPLY_ID, B.WRITER_ID, B.CONTENTS,
       DATE_FORMAT(B.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD AS A
INNER JOIN USED_GOODS_REPLY AS B 
ON A.BOARD_ID = B.BOARD_ID
WHERE SUBSTR(A.CREATED_DATE, 1, 7) = '2022-10'
ORDER BY B.CREATED_DATE ASC, A.TITLE ASC;