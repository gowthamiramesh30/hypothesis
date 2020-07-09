library(readr)
buyerratio<-read.csv(file.choose())
attach(buyerratio)
View(buyerratio)

stack_buyer<-stack(buyerratio)

shapiro.test(stack_buyer$value)

mood.medtest(stack_buyer$values)



