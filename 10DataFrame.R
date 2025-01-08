#데이터 프레임

# 데이터 준비
english <- c(90, 80, 60, 70)
math <- c(50, 60, 100, 20)

#데이터프레임 만들기
df_midterm <- data.frame(english, math)
df_midterm

#데이터 추가1
class <- c(1,1,2,2)
name <- c("홍길동", "전우치", "손오공", "해리포터")
df_midterm <- data.frame(english, math, class, name)
df_midterm

# 컬럼 추가 : cbind(기존데이터프레임, 추가할 컬럼정보)
df_midterm <- cbind(df_midterm, age=c(25, 26, 27, 28))
df_midterm


# 데이터 추가2 : rbind(기존 데이터프레임, 새로운 데이터프레임)
df_midterm <- rbind(df_midterm, data.frame(english=50, math=50, class=3, name="멀린", age=30))
df_midterm

df_midterm2 <- data.frame(english2 = c(90, 80, 70, 60),
                          math2 = c(55, 66, 77, 88),
                          class2 = c(1,1,2,2),
                          name2 = c("유비", "관우","장비","조자룡"))

english2 # 에러발생. 데이터 프레임의 컬럼으로만 사용되었음.
#데이터프레임 출력
df_midterm2
#여기서는 영어 컬럼이 출력됨. 컬럼명을 기술할때는 $를 사용함.
df_midterm2$english2

#간단한 분석
# 영어의 평균
mean(df_midterm2$english2)
# 수학의 최대값
max(df_midterm2$math2)
