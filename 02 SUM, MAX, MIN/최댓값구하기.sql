-- 최댓값 구하기 
-- 가장 최근에 들어온 동물은 언제 들어왔는지 조회

SELECT MAX(DATETIME) AS 시간
FROM ANIMAL_INS;