library(readr)

lab<-read.csv(file.choose())
attach(lab)



shapiro.test(Laboratory.1)
shapiro.test(Laboratory.2)
shapiro.test(Laboratory.3)
shapiro.test(Laboratory.4)

stacked_data<-stack(lab)
View(stacked_data)
attach(stacked_data)
install.packages("car")
library(car)
leveneTest(values~ind,data=stacked_data)
anova_result<-aov(values~ind,data=stacked_data)
View(anova_result)
summary(anova_result)
