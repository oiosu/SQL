-- 상위 n개 레코드 
-- 동물 보호소에 가장 먼저 들어온 동물의 이름을 조회

SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME ASC
LIMIT 1;