## 집단별로 요약하기

# 데이터프레임 생성
exam <- read.csv("./resData/csv_exam4.csv")
exam

# math 평균 산출
# 기본 방식
mean_math = mean(exam$math)
mean_math
# dplyr
exam %>% summarise(mean_math = mean(math))

# 집단별로 요약 - 단독으로 사용하면 아무런 효과가 없다.
exam %>% group_by(class)
# 집단별로 요약 : class별로 분리한 후 math의 평균 산출
exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math))

# 여러 요약 통계량 한 번에 산출하기
exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math),
            sum_math = sum(math),
            median_math = median(math),
            n = n())

# ----------------------------------------------
library(ggplot2)

mpg <- as.data.frame(ggplot2::mpg)
# 각 집단 별로 다시 집단 나누기
# 회사별로 집단을 나눈 후 다시 구동 방식 별로 나눠 도시 연비 평균 구하기
mpg %>% 
  group_by(manufacturer, drv) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  head(10)

# 회사별로 suv자동차의 도시 및 고속도로 통합 연비 평균을 구해
# 내림차순으로 정렬하고 1~5위까지 출력하기
mpg %>% 
  group_by(manufacturer) %>% 
  filter(class == 'suv') %>% 
  mutate(tot = (cty+hwy)/2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)