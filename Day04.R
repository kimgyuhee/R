library(KoNLP) 
library(stringr) 

text <- SimplePos09('날씨가 좋아서 산책을 하러 나갔다.') 
pos <- paste(SimplePos09(text)) 
nouns <- str_match(pos,'[가-힣]+/N') 
nouns
nouns[!is.na(nouns)]

text <- SimplePos09('날씨가 좋아서 산책을 하러 나갔다.') 
pos <- paste(SimplePos09(text)) 
nouns <- str_match(pos,'([가-힣]+)/N') 
nouns[complete.cases(nouns), 2]

library(KoNLP) 
library(stringr) 
text <- SimplePos09('날씨가 좋아서 산책을 하러 나갔다.') 

get.nouns <- function(texts){ 
  texts <- as.character(texts) 
  pos <- paste(SimplePos09(texts)) 
  nouns <- str_match(pos,'([가-힣]+)/N') 
  nouns[complete.cases(nouns), 2] 
} 
get.nouns

texts <- c('날씨가 좋아서 산책을 하러 나갔다.', '밤 하늘에 빛나는 저녁 별빛 산책') 


install.packages("tm")
library(tm)
cps <- VCorpus(VectorSource(texts)) 
cps
tdm <- TermDocumentMatrix(cps, control = list(tokenize=get.nouns, wordLengths=c(2,5))) 
as.matrix(tdm)

setwd("c:\\R_Data")
library(tm) 
library(KoNLP) 
library(rvest) 
install.packages("wordcloud")
library(wordcloud) 

useSejongDic()
useNIADic()
options(mc.cores =1)  
text <- readLines("우도맛집추천.txt",encoding="UTF-8") 
text
text = repair_encoding(text)
text

doc <- Corpus(VectorSource(text)) 
doc
words <- function(doc){
  doc <- as.character(doc)
  extractNoun(doc)
  str_replace_all(doc,"[^[:graph:]]", " ") 
}
words

tdm <- TermDocumentMatrix(doc,  
                          control=list(      
                            tokenize=words,  
                            removeNumbers=T,   
                            removePunctuation=T, 
                            wordLengths=c(1, 10) 
                            
                          ))
tdm
Encoding(tdm$dimnames$Terms) = 'euc-kr' 
tdm2 <- as.matrix(tdm) 
tdm2
tdm3 = rowSums(tdm2)
tdm3
tdm4 = tdm3[order(tdm3, decreasing = T)]
tdm4
class(tdm4)
as.data.frame(tdm4)
as.data.frame(tdm4[1:20])
wordTdm= as.data.frame(tdm4)
wordTdm

wordcloud(words = rownames(wordTdm), freq = wordTdm$tdm4, min.freq = 1,
          random.order=FALSE, rot.per=0.35,max.words = 100,colors=brewer.pal(10, "RdBu"))
class(wordTdm)
wordTdm

install.packages("wordcloud2")
library(wordcloud2)
words = list(word = rownames(wordTdm),freq = wordTdm$tdm4)
wcount = as.data.frame(words)
wordcloud2(wcount, color = "random-dark", fontFamily = '나눔고딕')
demoFreq
