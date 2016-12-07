
housing <- read.csv("landdata-states-2016q1.xls")
head(housing[1:5])



datos<-sample(1:6,10,replace = TRUE)
x<-data.frame(datos)

actividades<-1:6
factores<-LETTERS[1:6]
y<-data.frame(actividades,factores)

z<-merge(x,y,by="datos")

library(plyr)

z<-join(x, y, type = "inner")
?join