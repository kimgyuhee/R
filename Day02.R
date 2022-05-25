setwd("c:\\R_Data") 
install.packages("rvest")
install.packages("httr")

library(rvest) 
library(httr) 
library(KoNLP)

url = 'https://search.daum.net/search?nil_suggest=btn&w=blog&DA=PGD&q=%EC%A0%9C%EC%A3%BC%EB%8F%84+%EC%9A%B0%EB%8F%84+%EC%97%AC%ED%96%89+%EC%BD%94%EC%8A%A4&p=1' 

response = GET(url) 
response

htxt = read_html(response)
comments = html_nodes(htxt, 'div.cont_inner') 

data = html_text(comments) 
data

write(data,"우도맛집추천.txt") 

data1 <- readLines("우도맛집추천.txt") 
data1 

data2 <- sapply(data1,extractNoun,USE.NAMES=F)
data2

data3 <- unlist(data2) 
data3

data3 = gsub("[0-9]", "", data3) 
data3 = gsub("[a-z]", "", data3) 
data3 = gsub("[A-Z]", "", data3) 
data3 = gsub("[:punct:]", "", data3) 

data3 <- Filter(function(x) {nchar(x) >= 2} ,data3)
data3

write(unlist(data3),"우도맛집명사.txt")


typeof(10)
typeof(10L)
x <- c( 1, 10, 7 )
x
x[ c( 2 : 3 ) ] 

y <- c( a=1, b=10, c=7)
y

p <- c ( 3, 5, 6, 8 )
q <- c ( 3, 3, 3 )
p + q
X2 <- diag(10)
X2
X2 <- diag(1:10)
X2 <- diag(c(1,3,5,7,9))
X2 <- diag(1, 5); X2

list1 <- list(a1=1, b1=1:3)
list2 <- list(a2=c("Kim", "Park"))
list1
list2
c(list1, list2)

name   <- c("kim","lee","park","Oh")
sex    <- c('f','m','f','m')
income <- c(100,102,300,204)
d1     <- data.frame(name=name, gender=sex, incom=income)
            