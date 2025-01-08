# 결측치 정제하기

# 결측치 찾기
# 결측치가 포함된 데이터프레임 생성
df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5,4,3,4, NA))
df

# 결측치 확인
is.na(df)
# 결측치 빈도 출력
table(is.na(df))
# 성별, 점수의 결측치 빈도
table(is.na(df$sex))
table(is.na(df$score))

# 평균, 합계 산출 - NA출력됨
mean(df$score)
sum(df$score)

# ----------------------------------
# 함수의 결측치 제외 기능 이용하기

# 결측치를 제거하므로 정상 출력됨
mean(df$score, na.rm = T)
sum(df$score, na.rm = T)

# csv에서 데이터 불러오기
exam <- read.csv("./resData/csv_exam1.csv")
# 요소 출력
exam[1, "math"]
# 3, 8, 15행의 math컬럼에 NA할당
exam[c(3, 8, 15), "math"] <- NA
exam


# math 평균 산출 : 결측치 있으므로 NA출력됨
exam %>%  summarise(mean_math = mean(math))

# math 결측치 제외하고  평균 산출
exam %>%  summarise(mean_math = mean(math, na.rm = T))

# 3과목의 평균, 합계, 중간값 산출
exam %>% summarise(mean_math = mean(math, na.rm=T),
                   sum_math = sum(math, na.rm=T),
                   median_math = median(math, na.rm=T))

# --------------------------------
# 결측치 제거

library(dplyr)
table(is.na(df$score))

# score가 NA인 데이터만 출력
df %>% filter(is.na(score))
# score 결측치 제거 후 출력
df %>% filter(!is.na(score))

# 결측치 제거 후 변수에 저장
df_nomiss1 <- df %>%  filter(!is.na(score))
# 평균
mean(df_nomiss1$score)
# 합계
sum(df_nomiss1$score)
# score, sex 결측치 제거
df_nomiss2 <- df %>%  filter(!is.na(score) & !is.na(sex))
df_nomiss2

# 모든 변수에 결측치 없는 데이터 추출
# - 결측치가 하나라도 있다면 제거됨
# - 간편하지만 분석에 필요한 행까지 손실된다는 단점이 있다.
df_nomiss3 <- na.omit(df)
df_nomiss3

# ------------------------------
# 결측치 대체법
# - 결측치를 제거하는 대신 다른 값을 채워 넣는 방법

# 결측치 제외하고 math 평균 산출
mean(exam$amth, na.rm = T)
# math가 NA면 평균값으로 결측치를 55로 대체
exam$math <- ifelse(is.na(exam$math), 55, exam$math)
# 결측치 빈도표 생성
table(is.na(exam$math))
# 출력
exam
# math 평균 계산
mean(exam$math)

