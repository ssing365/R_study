## 순서대로 정렬하기

# math 오름차순 정렬
exam %>% arrange(math)

# 내림차순 정렬
exam %>% arrange(desc(math))

# class 및 math 오름차순 정렬
exam %>% arrange(class, math)

