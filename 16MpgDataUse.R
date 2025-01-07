# ggplot2 패키지 로드
library(ggplot2)

# mpg 데이터 준비
# data("mpg") # ggplot2에 내장된 mpg 데이터 불러오기
mpg <- as.data.frame(ggplot2::mpg) # 새로운 데이터프레임 생성

head(mpg)
# tail(mpg)
# View(mpg)
# dim(mpg)
# str(mpg)
# summary(mpg)
?mpg

# 통합 연비 파생 변수 만들기
# 통합 연비 = (도시 연비 + 고속도로 연비) / 2
mpg$total <- (mpg$cty + mpg$hwy) / 2

mpg

# 히스토그램으로 통합 연비 분포 확인
hist(mpg$total,
     main = "통합 연비 히스토그램",
     xlab = "통합 연비",
     col = "skyblue",
     border = "white")

# 연비 기준값 정하기
# 기준값: 통합 연비 25 이상을 고연비로 간주
fuel_efficiency_threshold <- 25

# 조건문을 이용한 파생 변수 생성 (합격/불합격)
# 삼항연산자와 같이 "조건, true, false"형식으로 파생변수 생성 통합연비가 25 이상인 경우 '합격'으로 처리
mpg$pass_fail <- ifelse(mpg$total >= fuel_efficiency_threshold,
                        "합격", "불합격")

# 빈도표 생성
pass_fail_table <- table(mpg$pass_fail)
print(pass_fail_table)

# 막대 그래프로 합격/불합격 빈도 표현
barplot(pass_fail_table,
        main = "연비 합격/불합격 빈도",
        col = c("tomato", "steelblue"),
        names.arg = c("불합격", "합격"),
        ylab = "빈도",
        xlab = "판정")

# 중첩 조건문 활용한 등급 변수 생성
# 등급 분류 기준:
# A: 통합 연비 >= 30
# B: 25 <= 통합 연비 < 30
# C: 20 <= 통합 연비 < 25
# D: 통합 연비 < 20
mpg$grade <- ifelse(mpg$total >= 30, "A",
                    ifelse(mpg$total >= 25, "B",
                           ifelse(mpg$total >= 20, "C", "D")))

# 등급 빈도표 생성
grade_table <- table(mpg$grade)
print(grade_table)

# 막대 그래프로 등급 빈도 표현
barplot(grade_table,
        main = "통합 연비 등급 빈도",
        col = c("gold", "lightgreen", "skyblue", "gray"),
        names.arg = c("A", "B", "C", "D"),
        ylab = "빈도",
        xlab = "등급")

