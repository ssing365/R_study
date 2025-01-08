install.packages('ggplot2')
library(ggplot2)

# 빈도 막대 그래프
# 하위속성
#   geom : 그래프의 종류 (point,line, bar 등)
#   main : 그래프이 제목
#   xlab, ylab : x, y 축의 라벨
#   fill : 색상 설정

alpha <- c('a','a','a','b','b','c')
qplot(alpha)
qplot(alpha, geom = "bar", main= "Bar Plot", xlab = "Category", ylab = "Count", fill= I("skyblue"))

# 함수의 기능에 대한 도움말
?qplot

#산점도 생성
#rnorm() : 정규분포를 따르는 난수를 생성. 평균과 표준편차를 지정하면 그에 맞게 난수를 생성해준다.
x <- rnorm(100)
y <- rnorm(100)
qplot(x, y, mian = "Scatter Plot", xlab = "X-axis", ylab = "Y-axis")

# 히스토그램 생성
data <- rnorm(1000)
qplot(data, geom = "histogram", binwidth = 0.2, main= "Histogram", xlab = "Values", ylab = "Frequency", fill=I("lightblue"), col = I("black"))