#변수명 바꾸기

#패키지 설치 및 로드
install.packages("dplyr")
library(dplyr)

#데이터프레임 생성
df_var_change1 <- data.frame(var11 = c(1,2,1),
                             var12 = c(2,3,2))
df_var_change1

#데이터프레임 복사
df_var_change2 <- df_var_change1
df_var_change2

#컬럼명 변경
names(df_var_change2) <- c("var21", "var22")
df_var_change2

#컬럼명 전체를 소문자로 변경
names(df_var_change2) <- tolower(names(df_var_change2))
df_var_change2

# 변수명 바꾸기 : dplyr함수를 사용해서 var22를 v32로 변경한다.
df_var_change2 <- rename(df_var_change2, v32 = var22)
df_var_change2
