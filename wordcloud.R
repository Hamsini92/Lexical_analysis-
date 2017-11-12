iphone_text = sapply(iphone.tweets, function(x) x$getText()) #sapply returns a vector 
df <- do.call("rbind", lapply(iphone.tweets, as.data.frame)) #lapply returns a list
trump_text <- sapply(df$text,function(row) iconv(row, "latin1", "ASCII", sub=""))
str(trump_text) #gives the summary/internal structure of an R object

library(tm) #tm: text mining
iphone_corpus <- Corpus(VectorSource(trump_text)) #corpus is a collection of text documents
iphone_corpus
inspect(iphone_corpus[1])

#clean text
library(wordcloud)
iphone_clean <- tm_map(iphone_corpus, removePunctuation)
iphone_clean <- tm_map(iphone_clean, removeWords, stopwords("english"))
iphone_clean <- tm_map(iphone_clean, removeNumbers)
iphone_clean <- tm_map(iphone_clean, stripWhitespace)
wordcloud(iphone_clean, random.order=F,max.words=80, col=rainbow(50), scale=c(3.5,1))
