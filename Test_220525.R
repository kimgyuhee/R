why <- 1 # why라는 변수에 double 자료형 1을 대입한다.

typeof(why); why #double
typeof("1") # character
typeof(1L) # integer
typeof(1:10) # integer
typeof(10000L)
1L+3
typeof(1L+3)
typeof(1L/3); 1L/3

test1 <- factor(1:10); test1
typeof(test1) # integer
# Levels: 1 2 3 4 5 6 7 8 9 10

test2 <- c(1:10); test2; typeof(test2) #integer

test3 <- ordered(1:10); test3; typeof(test3) #integer
# Levels: 1 < 2 < 3 < 4 < 5 < 6 < 7 < 8 < 9 < 10

test4 <- ordered(1,8); test4; typeof(test4)

x <- data.frame(a=c(1,2,3), b=c("a", NA, "c"), c=c("a", "b", NA))
x

na.omit(x)
na.exclude(x)


address <- c("서울", "서울", "홍콩"); address
income <- c(4500, 0, 0); income
smoke <- c(TRUE, FALSE, FALSE); smoke
v4 <- c(6, 12, 3); v4
v5 <- c(7, 19, 31); v5
v6 <- c(v4, v5) # 벡터를 묶으면 벡터
v6
v4+v5
v4*v5
v4/v5
v4-v5

################### 소수점 자리 조정하기 #########################

