# 상자그림 - 집단 간 분포 차이 표현하기
mpg

ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()

boxplot(mpg$hwy)
?boxplot