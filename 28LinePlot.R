# 선그래프 - 시간에 따라 달라지는 데이터 표현하기

mpg
economics

# x축 : 시간, y축 : 실업자
ggplot(data= economics, aes(x=date, y=unemploy)) + geom_line()