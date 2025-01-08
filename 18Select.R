## 필요한 변수만 추출하기

# 변수 추출하기
exam %>% select(math)
exam %>% select(english)
# 여러 개의 변수 추출
exam %>% select(class, math, english)
# 변수 제외하기
exam %>% select(-math)
# 여러 개의 변수 제외
exam %>% select(-math, -english)

# ----------------------------
# dplyr 패키지 함수 조합하기

# class가 1인 행만 추출한 후 english 추출
exam %>% filter(class == 1) %>%  select(english)

# 가독성 있게 줄 바꾸기
exam %>% 
  filter(class == 1) %>% 
  select(english)

# 이 문장은 에러 발생
exam %>% filter(class == 1)
  %>% select(english)

# 데이터의 앞 부분만 출력
exam %>%
  select(id, math) %>% 
  head # 6행까지

exam %>% 
  select(id, math) %>% 
  head(10) #10행까지