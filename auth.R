#install.packages("ROAuth")
library(twitteR)
library(ROAuth)
library(plyr)
require(bitops)
library('RCurl')
library(dplyr)
library(stringr)
library(ggplot2)

#connect to API
download.file(url='http://curl.haxx.se/ca/cacert.pem', destfile='cacert.pem')
reqURL <- 'https://api.twitter.com/oauth/request_token'
accessURL <- 'https://api.twitter.com/oauth/access_token'
authURL <- 'https://api.twitter.com/oauth/authorize'

consumer_key <-  #Insert your consumer key
  "2kwfZmq7UNwJLvyytR3ysWTuS"
consumer_secret <- #Insert your consumer secret
  "P9UidP7Kn700xwkyKjmkEBWN4YE2eLwEYkuU9k8UhtEyCWWS4B"
access_token <- #Insert your access token
  "890454041720889344-SuYBqzwtygEaSmgZCWJok7adGUFBb3f"
access_secret <- #Insert your access secret
  "50SGRWj9jgsJDGoN9Uaz7yyIKCS0dszQJS70CsxS7xsli"
twitteR:::setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)


#Cred <- OAuthFactory$new(consumerKey=consumer_key,
 #                        consumerSecret=consumer_secret,
 #                        requestURL=reqURL,
 #                        accessURL=accessURL,
 #                         authURL=authURL)
#Cred$handshake(cainfo = system.file('CurlSSL', 'cacert.pem', package = 'RCurl')) #There is URL in Console. You need to go to, get code and enter it in Console


