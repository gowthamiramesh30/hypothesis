library(readr)
cutlet<-read.csv(file.choose())

shapiro.test(cutlet$Unit.A)#normality test
shapiro.test(cutlet$Unit.B)

#paired t-test
t.test(cutlet$Unit.A,cutlet$Unit.B,alternative = "two.sided",conf.level = 0.95,paired = TRUE)
