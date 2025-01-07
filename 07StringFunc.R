# stringr 패키지
install.packages("stringr")
library("stringr")

str01 = "홍길동11전우치22손오공33Hello44"

# 문자열 길이 구하기
strLen <- str_length(str01)
strLen

# 문자열 위치 구하기 : 처음과 끝 부분의 인덱스 변환
strLoc <- str_locate(str01, "전우치")
strLoc

# 부분 문자열 구하기
str02 <- str_sub(str01, 1, strLen-9)
# 앞에서 구한 strLen 이용
str02
str03 <- str_sub(str01,1,5)
# 앞에서 구한 strLoc 값 참고
str03

# 대소문자 변경하기
str04 <- str_to_upper(str01)
str04
str05 <- str_to_lower(str01)
str05

# 문자열 교체 :(변수, 찾을 문자열, 변경할 문자열)
str06 <- str_replace(str01, "전우치","강감찬")
str06

# 문자열 결합
str07 <- str_c("***",str01,"***")
str07

# 문자열 분리
str08 = "홍길동, 저우치, 손오공, 해리포터"
str09 <- str_split(str08, ",")
str09

# 벡터 문자열로 합치기 : 콤마를 사용
str10 <- paste(str09, collapse = ",")
str10

str11 = c("홍길동","전우치","손오공", "해리포터")
str11
str12 <- paste(str11, collapse =",")
str12
