-- 이름이 있는 동물의 아이디 
-- 동물 보호소에 들어온 동물 중, 이름이 있는 동물의 ID를 조회
-- 단, ID는 오름차순 정렬
SELECT ANIMAL_ID 
FROM ANIMAL_INS 
WHERE NAME IS NOT NULL