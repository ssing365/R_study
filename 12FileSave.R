df_txt_exam1
df_csv_exam1
df_excel
write.table(df_txt_exam1,file= "./saveFiles/test.txt")

write.table(df_csv_exam1, file="./saveFiles/test.csv")

install.packages("xlsx")
library(xlsx)
write.xlsx(df_excel, file="./saveFiles/test.xlsx")

save(df_csv_exam1, file = "./saveFiles/test.rda")

rm(df_csv_exam1)
df_csv_exam1

# 저당된 rda 데이터 파일 불러오기
# 변수명을 별도로 지정하지않아도, 저장에 사용된 변수명으로 로드하게된다.
laad("./saveFiles/test.rda")
df_csv_exam1
