library(tmcn)
library(tm)
system("wget https://ceiba.ntu.edu.tw/course/6d0f76/content/MYJ1030101.clean.txt")
path <- "MYJ1030101.clean.txt"
text <- readLines(path,encoding = "UTF-8")
vs <- VectorSource(text)
txt <- Corpus(vs)
ma <-tm_map(txt, removeWords, stopwordsCN())
dtm <- DocumentTermMatrix(ma)
freq.terms <- findFreqTerms(dtm, lowfreq = 3)
freq.terms
write(freq.terms, file = "b01202065.txt")
