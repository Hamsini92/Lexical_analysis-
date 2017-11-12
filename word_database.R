#After downloading the hui.lui.pos and hui.lui.neg, mention below the location of the file

pos.words = scan('C:/Users/Hamsini Sankaran/Downloads/Twitter-Sentiment-Analysis-R-Tutorials-master/Twitter-Sentiment-Analysis-R-Tutorials-master/positive-words.txt', what='character', comment.char=';') 
neg.words = scan('C:/Users/Hamsini Sankaran/Downloads/Twitter-Sentiment-Analysis-R-Tutorials-master/Twitter-Sentiment-Analysis-R-Tutorials-master/negative-words.txt', what='character', comment.char=';')


#Adding words to positive and negative databases

pos.words=c(pos.words, 'Congrats', 'prizes', 'prize', 'thanks', 'thnx', 'Grt', 'gr8', 'plz', 'trending', 'recovering', 'brainstorm', 'leader')
neg.words = c(neg.words, 'Fight', 'fighting', 'wtf', 'arrest', 'no', 'not')
