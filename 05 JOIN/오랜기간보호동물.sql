-- 오랜 기간 보호한 동물(1) 
-- 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회
-- 이때 결과는 보호 시작일 순으로 조회

SELECT A.NAME, A.DATETIME
FROM ANIMAL_INS A 
LEFT JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.ANIMAL_ID IS NULL
ORDER BY A.DATETIME
LIMIT 3

-- 엑셀 표 생각하면서 배웠던 거 다시 복습이 필요함 