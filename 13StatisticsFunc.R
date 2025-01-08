# 데이터 로딩
exam <- read.csv("./resData/csv_exam1.csv")

# 앞에서부터 6행까지 출력
head(exam)
# 앞에서부터 10행까지 출력
head(exam, 10)
# 뒤에서부터 6행까지 출력
tail(exam)
# 뒤에서부터 10행까지 출력
tail(exam, 10)

#데이터 뷰어 창에서 데이터 확인(대문자 V로 시작)
View(exam)

#데이터가 몇행 몇열로 구성되어 있는지 출력
dim(exam)

#데이터의 속성 파악
str(exam)

#요약 통계량 산출
summary(exam)

# 상자 그래프(중아값, 사분위수, 이상치 등을 한눈에 파악할 수잇는 그래프)
boxplot(exam$math)