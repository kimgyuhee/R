install.packages("multilinguer")
multilinguer::install_jdk()
install.packages(c("hash", "tau", "Sejong", "RSQLite", "devtools", "bit", "rex", "lazyeval", "htmlwidgets", "crosstalk", "promises", "later", "sessioninfo", "xopen", "bit64", "blob", "DBI", "memoise", "plogr", "covr", "DT", "rcmdcheck", "rversions"), type = "binary")
install.packages("remotes")
remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"), force = T) 
install.packages("KoNLP")
install.packages("stringr")

install.packages('rjava')

library(multilinguer)
library(KoNLP)

a= " 바람이 부는 날에는 빈대떡을 먹고 싶다"
extractNoun(a)

useSejongDic()
useNIADic()
txt = "오늘은 토요일 라이언이랑 고기 잡으러 갈까? 춘식이랑 산책이나나 갈까? 훌쩍 이 사각의 정글을 빠져나가면 바닷 바람이 내 가슴속에 불어오겠지"

SimplePos09(txt)

