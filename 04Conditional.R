# 3개의 변수 선언 : 세미콜론으로 구분한다.
x <- 50; y <- 4; z <- x*y

# if() 함수로 조건 확인
if(x*y > 40){
  cat('x * y의 결과는 40이상입니다.')
  cat("x * y=", z)
}

# cat() 함수
#   : 콘솔에 지정된 문자열이나 변수를 출력한다.
#   단순한 출력 용도로 사용된다.

# scan() 함수
#   : 사용자로부터 입력을 받을때 사용한다. 실행 후
#     콘솔에서 값을 입력한 후 엔터키를 2번 눌러야 한다.
#     인수가 없는 경우에는 '숫자'를 입력해야한다.

# 사용자 입력1
score <-scan()
result <- "노력"
if(score >= 80){
  result <- "우수"
}
cat("당신의 학점 :",score)
cat(result, "입니다.")

jumsu <- scan()
if(jumsu >= 90){
  result ="A학점"
}else if(jumsu >= 80){
  result = "B학점"
}else if(jumsu >= 70){
  result ="C학점"
}else if(jumsu >= 60){
  result = "D학점"
}else{
  result = "F학점"
}

# if~else 문은 아래와 같이 작성하면 에러가 발생된다. 중괄호의 끝과 else를 반드시 한줄에 작성해야 한다.

# if(jumsu >= 90){
#   result ="A학점"
# }
# else if(jumsu >= 80){
#   result = "B학점"
# }
# else if(jumsu >= 70){
#   result ="C학점"
# }
# else if(jumsu >= 60){
#   result = "D학점"
# }
# else{
#   result = "F학점"
# }

# stringr 패키지 설치 및 라이브러리 로드
install.packages("stringr") # pip install 과 동일
library(stringr) # import 와 동일한 역할


# str_c : 문자열을 연결하여 새로운 문자열 반환
str = stringr::str_c(result, " : ", jumsu)
cat("당신의 학점은",str)

# ifelse() 함수 : 3항 연산자와 유사
score <- scan()
ifelse(score >=80, "우수", "노력")
ifelse(x >= 20&y<0, x^2,sqrt(y))

# scan()함수에 what 인수는 입력받을 데이터의 유형을 지정한다.
# what="" 과 같이 지정하면 문자열을 입력받도록 설정된다.

# switch() : 주어진 값에 따라 하나를 선택하여 실행하는 조건문
empname <- scan(what = "")

# 문자형을 사용하는 경웨는 특정 라벨과 일치하는 항목을 선택한다. 일치하는 라벨이 없다면 마지막 항목(default)이 선택된다.
switch(empname,
       "홍길동"= cat(100),
       "전우치"= cat(200),
       "손오공"= cat(300),
       cat("같은 값이 없습니다."))

choice <- scan()
#숫자형인 경우에는 라벨을 별도로 기술하지 않고 1부터 순서대로 부여된다. 아래의 경우 1~3까지으 라벨이 생성된다.
result <- switch(choice,
                 "유비",
                 "관우",
                 "장비")
# 만약 4로 입력하면 결과는 NULL이 출력된다.
print(result)

# which() 함수
# 백터 객체를 대상으로 특정 데이터를 검색할때 사용한다. 데이터가 없으면 0, 있으면 해당 인덱스를 반환한다. R에서 벡터의 인덱스는 1부터 시작하기 때문.
name <- c("홍길동","전우치","손오공","해리포터")
which(name == "전우치") # 1
which(name == "유비") # integer(0) 출력됨
