dat<-read.csv(file.choose())
View(dat)
attach(dat)
d=aov(Empowerment~Transform)
summary(d)
# We accept the null hypothesis

#MLR model
dat1<-read.csv(file.choose())
dat1
pairs(dat1, pch=15, lower.panel = NULL, main="Scatter Plot matrix")
attach(dat1)
cor(dat1)
model<-lm(Stereotype.Ad.frequency~Average.Income+Spending+Age+Gender)
model
summary(model)
#Gender has a significant impact over the dependanat variable Setreotype/Ad frequency

#STACKED BAR PLOT
dat2<-read.csv(file.choose())
View(dat2)
#install.packages("ggplot2")
library(ggplot2)
ggplot(dat2,aes(x=Countries,y=Values_in_billions,fill=Variables))+geom_bar(stat="identity")+ labs(title = "Comparison")+theme_bw()



#MULTIPLE BAR DIAGRAM
dat2<-read.csv(file.choose())
View(dat2)
#install.packages("ggplot2")
library(ggplot2)
ggplot(dat2,aes(x=Degree,y=Spending_in_dollars,fill=Gender))+geom_bar(stat="identity",position="dodge")+ labs(title = "Comparison of Spending according to Level of Education and Gender")+theme_bw()
