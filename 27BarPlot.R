# 막대그래프 : 집단 간 차이 표현하기

library(dplyr)

# 집단별 평균표 만들기
# drv는 전륜(f), 후륜(r), 4륜(4)를 의미
# 그룹으로 만든 후 고속도로 연비의 평균을 구함
df_mpg <- mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy))

# 그래프 생성하기
ggplot(data = df_mpg, aes(x = drv, y = mean_hwy)) + geom_col()

# 크기 순으로 정렬하기
# -막대는 기본적으로 범주의 알파벳 순서로 정렬됨
# -reorder()를 사용하면 값의 크기 순으로 정렬할 수 있다.
# -정렬 기준 변수 앞에 - 기호를 붙이면 내림차순으로 정렬할 수 잇다.
ggplot(data = df_mpg, aes(x=reorder(drv, mean_hwy), y = mean_hwy)) + geom_col()
ggplot(data = df_mpg, aes(x=reorder(drv, -mean_hwy), y = mean_hwy)) + geom_col()


# 빈도 막대 그래프 만들기
# y축 없이 x축만 지정하고 geom_col()대신에 geom_bar()를 사용한다.
ggplot(data = mpg, aes(x=drv)) + geom_bar()
ggplot(data = mpg, aes(x=hwy)) + geom_bar()