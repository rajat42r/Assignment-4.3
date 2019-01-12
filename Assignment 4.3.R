#1
states=rownames(USArrests)
states
regmatches(states,gregexpr("w",states))
regmatches(states,gregexpr("W",states))

#2
library(stringi)
c<-stri_length(states)
c
a<-data.frame(states,c)
a
library(ggplot2)
ggplot()+geom_histogram(aes(x=a$c))
