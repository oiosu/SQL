-- 역순 정렬하기 
-- 동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 조회하는 SQL
-- 이때 결과는 ANIMAL_ID 역순

SELECT NAME, DATETIME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC