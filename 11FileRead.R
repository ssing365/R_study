# 데이터 파일 읽기

# 작업 디렉토리 지정 및 확인
# 우리의 워크스페이스로 작업디렉토리르 지정해야 하위 경로를 정학히 인식한다.
setwd("C:/workspace/R")
getwd()

# 텍스트 파일 읽어오기. 구분자가 공백이거나 택이면 sep 속성을 생략할 수 있다.
df_txt_exam1 <- read.table("./resData/txt_exam1.txt", header=1)
df_txt_exam1

# 구분자가 , 인 파일 읽어오기. 탭이면 \t 로 작성
df_txt_exam2 <- read.table("/resData/txt_exam2.txt", sep = ",")
df_txt_exam2

#컬럼며잉 없는 파일 읽어오기
# header=F면 첫번째 부터 데이터로 컬러명은 v1, v2... 와같이 지정된다.
df_txt_exam3 <- read.table("./resData/txt_exam3.txt", sep= ",", header=F)
df_txt_exam3

# 컬럼명 변경하기 : names() 함수 사용
names(df_txt_exam3) <- c("id", "class", "math","english","science")
df_txt_exam3

#----------------------------------------------

# csv 파일은 별도의 패키지 없이 내장 함수를 사용해서 읽을 수 있다.
df_csv_exam1 <- read.csv("./resData/csv_exam1.csv")
df_csv_exam1

# 문자가 들어있는 파일을 읽을 때는 stringsAsFactors = F 로 설정
df_csv_exam2 <- read.csv("./resData/csv_exam2.csv", stringsAsFactors = F, fileEncoding ='utf-8', encoding="utf-8")

df_csv_exam2

# 컬럼명이 없고 구분자가 | 인 파일 읽어오기
df_csv_exam3 <- read.csv("./resData/csv_exam3.csv", sep="|", header = F)
df_csv_exam3

# 컬럼명 변경하기
names(df_csv_exam) <- c("id","class","math","english", "science")
df_csv_exam3

#----------------------------------------------
install.packages("readxl")
library(readxl)

df_excel <- read_excel("./resData/excel_exam.xlsx")
df_excel

# 첫번째 해잉 변수명이 아닐때
df_excel_novar <- read_excel("./resData/excel_exam_novar.xlsx", col_names =F)
df_excel_novar

# 엑셀 파일의 시트가 여러개 있을때 (여기서는 세번째 시트를 읽음)
df_excel_sheet <- read_excel("./resData/excel_exam_sheet.xlsx", sheet =3)
df_excel_sheet

df_exam <- read_excel("./resData/excel_exam_sheet.xlsx", col_names = F, sheet=3)
df_exam
