## 파생변수 추가하기
 
# 점수를 합계한 total 변수 추가
exam %>% 
  mutate(total = math + english + science) %>% 
  head

# 총합과 평균 변수 추가
exam %>% 
  mutate(total = math + english + science,
         mean = (math + english + science)/3) %>% 
  head

# 조건 추가 : 과학 점수가 60점 이상일 때 통과
exam %>% 
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>% 
  head

# 추가한 변수를 dplyr 코드에 바로 활용
exam %>% 
  mutate(total = math + english + science) %>% 
  arrange(total) %>% 
  head

# dplyr 패키지 함수들은 변수명 앞에 데이터프레임명을 반복해 입력하지 않으므로 코드가 간결해지는 장점이 있다.
# 앞에서는 기본 문법을 이용해 파생 변수를 추가했는데, 이때는 변수명마다 데이터프레임명이 반복되어 사용되었다.