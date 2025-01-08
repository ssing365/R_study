# 조건에 맞는 데이터만 추출하기 : ROW
install.packages("dplyr")
library(dplyr)

# 작업 디렉토리 지정
setwd("C:/workspace/R")

# 샘플 데이터로 데이터프레임 생성
exam <- read.csv("./resData/csv_exam1.csv")
exam

# 파이프 연산자( %>% ) 입력 단축키 : ctrl + shift + m

# exam에서 class가 1인 경우만 추출하여 출력
exam %>% filter(class == 1)
# 2반인 경우만 추출
exam %>% filter(class == 2)
# 1반이 아닌 경우
exam %>% filter(class != 1)
# 3반이 아닌 경우
exam %>% filter(class != 3)

# ----------------------------
# 초과, 미만, 이상, 이하 조건달기

# 수학 점수가 50점 초과한 경우
exam %>% filter(math>50)
# 수학 점수가 50점 미만인 경우
exam %>% filter(math<50)
# 영어 점수가 80점 이상인 경우
exam %>% filter(english >= 80)
# 영어 점수가 80점 이하인 경우
exam %>% filter(english <= 80)

# ----------------------------
# and : 여러 조건을 충족하는 행 추출하기

# 1반이면서 수학 점수가 50점 이상인 경우
exam %>% filter(class == 1 & math >= 50)
# 2반이면서 영어 점수가 80점 이상인 경우 
exam %>% filter(class == 2 & english >= 80)


# ----------------------------
# or : 여러 조건 중 하나 이상 충족하는 행 추출하기
exam %>% filter(math >= 90 | english >= 90)
exam %>% filter(english < 90 | science < 50)

# ----------------------------
# 목록에 해당하는 행 추출하기
exam %>% filter(class == 1 | class == 3 | class == 5)
# %in% 기호는 변수의 값이 지정한 조건 목록에 해당하는지 확인
exam %>%  filter(class %in% c(1,3,5))
# 따라서 위 두 문장은 동일 결과 추출

# ----------------------------
# 추출한 행으로 데이터 만들기

# class가 1인 행 추출 후 class1에 할당
class1 <- exam %>% filter(class == 1)
# class2 추출 후 할당
class2 <- exam %>% filter(class == 2)

# 평균 구하기
mean(class1$math)
mean(class2$math)