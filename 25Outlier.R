# 이상치 정제하기

# 이상치가 포함된 데이터 생성
# sex는 1 또는 2, score는 5점 이하만 정상값
outlier <- data.frame(sex = c(1,2,1,3,2,1),
                     score = c(5,4,3,4,2,6))
outlier

# 이상치 확인
table(outlier$sex)
table(outlier$score)

# 이상치 값을 결측 처리하기 
# sex가 3이면 NA로 대체
outlier$sex <- ifelse(outlier$sex == 3, NA, outlier$sex)
outlier

# score가 5초과하면 NA 대체
outlier$score <- ifelse(outlier$score > 5, NA, outlier$score)
outlier

# 결측치 제거하여 최종 이상치 정제
# filter로 성별과 점수의 결측치 제거
# 성별로 그룹화한 후 점수의 평균으로 파생변수 생성
outlier %>% 
  filter(!is.na(sex) & !is.na(score)) %>% 
  group_by(sex) %>% 
  summarise(mean_score = mean(score))

# -------------------------------------------
# 고속도로 연비 데이터를 통해 박스플롯 출력
boxplot(mpg$hwy)
# 박스플롯 통계치 출력
boxplot(mpg$hwy)$stats
# 12~37 이외 값 NA 할당
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
# 결측치 확인
table(is.na(mpg$hwy))
# 최종 정제
mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy, na.rm = T))
