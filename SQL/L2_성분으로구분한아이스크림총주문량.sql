/*
https://school.programmers.co.kr/learn/courses/30/lessons/133026
문제 설명
다음은 아이스크림 가게의 상반기 주문 정보를 담은 FIRST_HALF 테이블과 아이스크림 성분에 대한 정보를 담은 ICECREAM_INFO 테이블입니다. FIRST_HALF 테이블 구조는 다음과 같으며, SHIPMENT_ID, FLAVOR, TOTAL_ORDER 는 각각 아이스크림 공장에서 아이스크림 가게까지의 출하 번호, 아이스크림 맛, 상반기 아이스크림 총주문량을 나타냅니다. FIRST_HALF 테이블의 기본 키는 FLAVOR입니다.

NAME	TYPE	NULLABLE
SHIPMENT_ID	INT(N)	FALSE
FLAVOR	VARCHAR(N)	FALSE
TOTAL_ORDER	INT(N)	FALSE
ICECREAM_INFO 테이블 구조는 다음과 같으며, FLAVOR, INGREDITENT_TYPE 은 각각 아이스크림 맛, 아이스크림의 성분 타입을 나타냅니다. INGREDIENT_TYPE에는 아이스크림의 주 성분이 설탕이면 sugar_based라고 입력되고, 아이스크림의 주 성분이 과일이면 fruit_based라고 입력됩니다. ICECREAM_INFO의 기본 키는 FLAVOR입니다. ICECREAM_INFO테이블의 FLAVOR는 FIRST_HALF 테이블의 FLAVOR의 외래 키입니다.

NAME	TYPE	NULLABLE
FLAVOR	VARCHAR(N)	FALSE
INGREDIENT_TYPE	VARCHAR(N)	FALSE
문제
상반기 동안 각 아이스크림 성분 타입과 성분 타입에 대한 아이스크림의 총주문량을 총주문량이 작은 순서대로 조회하는 SQL 문을 작성해주세요. 이때 총주문량을 나타내는 컬럼명은 TOTAL_ORDER로 지정해주세요.

예시
예를 들어 FIRST_HALF 테이블이 다음과 같고

SHIPMENT_ID	FLAVOR	TOTAL_ORDER
101	chocolate	3200
102	vanilla	2800
103	mint_chocolate	1700
104	caramel	2600
105	white_chocolate	3100
106	peach	2450
107	watermelon	2150
108	mango	2900
109	strawberry	3100
110	melon	3150
111	orange	2900
112	pineapple	2900
ICECREAM_INFO 테이블이 다음과 같다면

FLAVOR	INGREDIENT_TYPE
chocolate	sugar_based
vanilla	sugar_based
mint_chocolate	sugar_based
caramel	sugar_based
white_chocolate	sugar_based
peach	fruit_based
watermelon	fruit_based
mango	fruit_based
strawberry	fruit_based
melon	fruit_based
orange	fruit_based
pineapple	fruit_based
상반기에 아이스크림의 주 성분이 설탕인 아이스크림들에 대한 총주문량을 구하면 3,200 + 2,800 + 1,700 + 2,600 + 3,100 = 13,400입니다. 아이스크림의 주 성분이 과일인 아이스크림들에 대한 총주문량을 구하면 3,100 + 2,450 + 2,150 + 2,900 + 3,150 + 2,900 + 2,900 = 19,550입니다. 따라서 총주문량이 작은 순서대로 조회하는 SQL 문을 실행하면 다음과 같이 나와야 합니다.

INGREDIENT_TYPE	TOTAL_ORDER
sugar_based	13400
fruit_based	19550
*/


SELECT T2.INGREDIENT_TYPE, SUM(T1.TOTAL_ORDER) AS TOTAL_ORDER
FROM FIRST_HALF T1, ICECREAM_INFO T2
WHERE T1.FLAVOR = T2.FLAVOR
GROUP BY T2.INGREDIENT_TYPE


/*
처음에 너무 어렵게 생각해서 아래처럼 *스칼라 서브 쿼리로 작성하려고 했다. 그럴 필요가 없었다. 
SELECT T2.INGREDIENT_TYPE, (
    SELECT SUM(T1.TOTAL_ORDER)
    FROM FIRST_HALF T1
    WHERE T1.FLAVOR = T2.FLAVOR
) AS TOTAL_ORDER
FROM ICECREAM_INFO T2
GROUP BY T2.INGREDIENT_TYPE

* 스칼라 서브 쿼리   SELECT 절에서 사용하는 서브쿼리
* 인라인 뷰         FROM 절에서 사용하는 서브쿼리
*/
