install.packages("reshape2")
library(reshape2)

# 데이터프레임 한 번에 만들기
df_score <- data.frame(English = c(90, 80, 60, 70),
                       Math = c(50,60,100,20),
                       Class = c(1,1,2,2),
                       Name = c("홍길동", "전우치", "손오공", "해리포터"))

df_score

# 변수명에 대문자가 섞이는 실수를 막기 위해
# 변수명을 구하는 names()와 소문자로 치환하는 tolower()이용
names(df_score) <- tolower(names(df_score))
df_score

# melt() 함수 : 가로로 긴 형태의 데이터를 세로로 전환
# 형식 : melt(데이터셋, id.var="기준열", measure.vars="변환열")
# na.rm = TRUE : 결측치 포함
df_score2 <- melt(df_score, id.var="name",
                  measure.vars="math", na.rm=TRUE)
df_score2

df_score3 <- melt(df_score, id.var="name",
                  measure.vars=c("english","math"))
df_score3


df_score4 <- melt(df_score, id.var=c("name","class"),
                  measure.vars=c("english", "math"))
df_score4

# 긴 형식을 넓은 형식으로
#   dcast(데이터셋, 기준열~변환열)
wide1 <- dcast(df_score3, name~variable)
head(wide1)

wide2 <- dcast(df_score4, name + class ~ variable)
head(wide2)
