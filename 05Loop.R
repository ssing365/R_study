# for() 함수

# for() 함수
# c() 함수를 통해 1~10까지의 벡터를 생성
i <- c(1:10)

# 앞에서 생성한 벡터를 통해 반복
for(n in i){
  # cat()은 줄바꿈 기능이 없으므로 필요시 \n 추가
  cat(n," * 10 = ", n*10, "\n")
}

for(n in i){
  # print()는 자체적인 줄바꿈 기능이 있음
  print(n * 10)
  print(n)
}

# next : java의 continue와 동일. 반복문의 처음으로 돌아간다.
for(n in i){
  if(n %% 2 == 0){
    next
  } else{
    print(n)
  }
}

# 벡터 데이터 사용하기
yourName = c("강백호", "서태웅", "채치수", "송태섭", "정대만")
for(n in yourName){
  print(n)
}

# while() 함수
i = 0
while(i<10){
  print(i)
  i <- i + 1
}