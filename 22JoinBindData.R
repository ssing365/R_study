# 가로로 데이터 합치기

# 중간고사 데이터 생성
test1 <- data.frame(id = c(1,2,3,4,5),
                    midterm = c(60,80,70,90,85))

# 기말고사 데이터 생성
test2 <- data.frame(id = c(1,2,3,4,5),
                    final = c(70,83,65,95,80))

# 출력
test1
test2

# dplyr: id 기준으로 합쳐 total에 할당
total <- left_join(test1, test2, by="id")
total

# -------------------------------
# 샘플 데이터 읽어 데이터프레임 생성
exam <- read.csv("./resData/csv_exam1.csv")
exam
table(exam$class)

name <- data.fram(class = c(1,2,3,4,5),
                  teacher = c("kim", "lee", "park", "choi", "jung"))
name

name2 <- data.fram(class = c(1,2,3,4),
                  teacher = c("kim", "lee", "park", "choi" ))
name2

name3 <- data.fram(class = c(1,2,3,4,5,6),
                  teacher = c("kim", "lee", "park", "choi", "jung", "aaaa"))
name3

exam_new = left_join(exam, name3, by="class")
exam_new

# 세로로 데이터 합치기

# 학생 1~5번 시험 데이터 생성
group_a <- data.frame(id = c(1,2,3,4,5),
                      test=c(60,80,70,90,85))

# 학생 1~6번 시험 데이터 생성
group_b <- data.frame(id = c(6,7,8,9,10),
                      test=c(70,83,65,95,80))

group_a
group_b

# 데이터 합쳐 group_all에 할당
# 데이터를 세로로 합칠 때는 두 데이터의 변수명이 같아야 함
# 변수명이 다르면 rename()을 이용
group_all <- bind_rows(group_a, group_b)
group_all




                  