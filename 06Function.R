# 사용자 정의 함수

# 함수1
# 함수 정의시에는 function 키워드를 통해 JS와 동일한 형식으로 작성
fn1 <- function(){
  cat("매개변수X, 반환값X\n")
  2+3
}
# 함수 호출
fn1()
# 함수를 변수에 할당
myFn1 <- fn1()
# 함수 정의시 return은 없지만 결과가 변수에 할당된다.
myFn1

# 함수2
fn2 <- function(){
  cat("매개변수X, 반환값0\n")
  return (2+3)
}

# 함수의 반환값을 변수에 할당. <- 연산자 사용.
myFunc <- fn2()
myFunc

# 함수3
fn3 <- function(x, y){
  cat("매개변수0, 반환값X\n")
  x + y
}
# return은 없으나 변수를 좌측에 설정하여 반환값을 받을 수 있음
fn3(2,3)

# 함수4
fn4 <- function(x,y){
  cat("매개변수0, 반환값0\n")
  return (x + y)
}

# 함수의 반환값을 변수에 할당. = 연산자 사용.
myFunc = fn4(2,3)
myFunc

# 구구단 출력 함수
gugudan <- function(i,j){
  for(dan in i){
    for(su in j){
      cat(dan, "*", su, "=", dan*su, " ")
      cat("\n")
    }
    cat("\n")
  }
}

# 각 범위의 벡터를 생성한 후 인수로 사용
dan <- c(2:9)
su <- c(1:9)
gugudan(dan,su)