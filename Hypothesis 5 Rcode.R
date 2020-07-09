library(readr)
fantaloon<-read.csv(file.choose())
View(fantaloon)
attach(fantaloon)

table1<-table(Weekdays,Weekend)

prop.test(x=c(66,47),n=c(223,167),conf.level = .95,correct=FALSE,alternative="less")

