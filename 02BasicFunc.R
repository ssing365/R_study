# 숫자 변수 선언
num <- c(1,2,3)

#평균
mean(num)

# 최대값
max(num)

# 최소값
min(num)

#문자열 변수 선언
str1 <- c("I","am","a","boy.")

# 문자열을 하나로 합치기(옵션 설정시 등호(=)가 사용됨)
paste(str1, collapse=",")
paste(str1, collapse=" ")

# 함수의 반환값으로 새로운 변수 생성
num_avr <- mean(num)
num_avr