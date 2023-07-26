-- 상품을 구매한 회원 비율 구하기 
-- USER_INFO 테이블과 ONLINE_SALE 테이블에서 2021년에 가입한 전체 회원들 중 
-- 상품을 구매한 회원수와 상품을 구매한 회원의 비율
-- (=2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)을
-- 년, 월 별로 출력
-- 품을 구매한 회원의 비율은 소수점 두번째자리에서 반올림
-- 전체 결과는 년을 기준으로 오름차순 정렬
-- 년이 같다면 월을 기준으로 오름차순 정렬

SELECT year(sales_date) as year,month(sales_date) as month, count(distinct user_id) as puchased_users,
# 구매 비율
round(count(distinct user_id)/(select count(*) from user_info where year(joined)=2021),1) as puchased_ratio
from online_sale
where user_id in (select user_id from user_info where year(joined) = 2021)
group by year(sales_date),month(sales_date)
order by year,month


/* 참고 : https://chaemi720.tistory.com/239 */