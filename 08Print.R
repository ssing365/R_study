# 출력정리

# sprintf()
# 특정한 규칙에 맞게 문자열로 변환 출력
# %d : 정수
# %f : 실수
# %s : 문자열

a <- 123
b <- '안녕하세요'
c <- 3.14
sprintf("정수 : %d", a)
sprintf("문자열 : %s", b)
sprintf("실수 : %f, %.2f", c, c)

# 자리수지정
sprintf("%5d",a)
sprintf("%5d", 123456)

# cat()과 print() 차이
for(i in 1:3) print(i) # 줄바꿈된다.
for(i in 1:3) cat(i) # 줄바꿈 없이 출력된다.