library(readr)
telecall<-read.csv(file.choose())
View(telecall)
attach(telecall)

table(telecall)


chisq.test(Phillippines~Indonesia~Malta~India,correct = TRUE)
