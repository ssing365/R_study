#대입연산
num1 <- 5
num2 <- 3

# 산술연산자
result1 <- num1 + num2
result2 <- num1 - num2
result3 <- num1 * num2
result4 <- num1 / num2
result5 <- num1 %/% num2 #몫
result6 <- num1 %% num2  #나머지
result7 <- num1 ^ 2      #제곱
result8 <- num1 ^ num2   #num2승(거듭제곱)

# 결과확인
result5
result6
result7

# 관계연산자
boolean1 <- num1 == num2
boolean2 <- num1 != num2
boolean3 <- num1 > num2
boolean4 <- num1 >= num2
boolean5 <- num1 < num2
boolean6 <- num1 <= num2

#논리연산자
logical1 <- num1>=50 & num2<=10
logical2 <- num1>=50 | num2<=10
logical3 <- !(num1>=50)

#배타적 논리합
x <- TRUE
y <- FALSE
z <- TRUE
xor(x,y) #두 논리값이 다른경우 TRUE
xor(x,z) #두 논리값이 같으면 FALSE