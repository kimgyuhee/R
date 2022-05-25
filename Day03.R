library(KoNLP)
library(stringr)

extractNoun('오늘 먹은 된장찌개는 세상에서 가장 맛있었다.')
extractNoun('선풍기를 틀고 수박을 먹으며 만화책을 보는 것은 재미있다.')

food <- paste(SimplePos09('오늘 먹은 된장찌개는 세상에서 가장 맛있었다.'))
food

NP <- str_match(food, '([가-힣]+)/[NP]')
NP

food <- paste(SimplePos09('선풍기를 틀고 수박을 먹으며 만화책을 보는 것은 재미있다.'))
food

NP <- str_match(food, '([가-힣]+)/[NP]')
NP

food <- paste(SimplePos09('선풍기를 틀고 수박을 먹으며 만화책을 보는 것은 재미있다.'))
food

NP <- str_match(food, '[가-힣]') 
NP

food <- paste(SimplePos09('선풍기를 틀고 수박을 먹으며 만화책을 보는 것은 재미있다.'))
food

NP <- str_match(food, '[가-힣]+') 
NP

food <- paste(SimplePos09('선풍기를 틀고 수박을 먹으며 만화책을 보는 것은 재미있다.'))
food

NP <- str_match(food, '[가-힣]+/N') 
NP

food <- paste(SimplePos09('선풍기를 틀고 수박을 먹으며 만화책을 보는 것은 재미있다.'))
food

NP <- str_match(food, '([가-힣]+)/N') 
NP

food <- paste(SimplePos09('선풍기를 틀고 수박을 먹으며 만화책을 보는 것은 재미있다.'))
food

keyword <- NP[,2]
keyword

keyword[!is.na(keyword)] 

setwd("c:\\R_Data") 
data1 <- readLines("우도맛집추천.txt") 
data1 = as.character(data1)          
longpos <- paste(SimplePos09(data1))
longpos

NP <- str_match_all(longpos,'([가-힣]+)/[NP]')
NP

length(NP)
foo <- c()
alldata = c()

for(k in 1:length(NP)) { 
  foo <- NP[[k]][,2]
  alldata = c(alldata,foo)
  print(foo)
}

data3 = Filter(function(x){nchar(x) >=2},alldata)
data3


score = 0
for(i in 3) {
  score = i+1 
}
score       

score = 0
for(i in c(5,10,15)) {
  score = score + i 
}
score

score = 0
for(i in 1:100){
  score = score + i
  #print(score)
}
score

setwd("c:\\R_Data")
data1 <- readLines("우도맛집추천.txt") 
data1 

longpos <- paste(SimplePos09(data1))
longpos

NP <- str_match(longpos, '([가-힣]+)/[NP]')
NP

keyword <- NP[,2]
keyword

data2 = keyword[!is.na(keyword)]
data2

data3 = unlist(data2)
data3 

data3 = Filter(function(x){nchar(x) >=2},data3)

count = length(data3)
count

for(i in 1:count){
  data3 = gsub("소섬바라기","",data3)
}
data3



why <- 1

typeof(why); why
typeof("1") # character
typeof(1L) # integer
typeof(1:10) # integer

test1 <- factor(1:10); test1
typeof(test1) # integer
