system("wget -N https://ceiba.ntu.edu.tw/course/6d0f76/content/1001_chinatimes.txt")
system("wget -N https://ceiba.ntu.edu.tw/course/6d0f76/content/jieba.R")

text=scan(file='1001_chinatimes.txt',what='char')
library(jiebaR)
words_vector=worker()<=text
words_vector
words_char=paste(words_vector,collapse=' ')
write(x=words_char,file='b01202065.seg')

library(tm)

vs <- VectorSource(words_vector)
vs

txt <- Corpus(vs)
tdm<- TermDocumentMatrix(txt,control = list(wordLengths = c(1, Inf) ))
temp <- inspect(tdm)
FreqMat <- data.frame(row.names = rownames(temp), Freq = rowSums(temp))

FreqMat = FreqMat[order(FreqMat$Freq,decreasing = TRUE),,drop=FALSE]
FreqMat


write.table(FreqMat, file='b01202065.csv',col.names = FALSE, quote = FALSE)

system("rm 1001_chinatimes.txt")
system("rm jieba.R")


