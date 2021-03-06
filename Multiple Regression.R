
female <- read.csv("female.csv",fileEncoding = 'UTF-8-BOM') #Read in Data
pairs(female, panel = panel.smooth) #initial linearity check

first<-lm(LE~TFR+MORT+TFR*MORT,data=female, na.action = na.omit) #initial Regression
summary(first)

#check for Linearity
par(mfrow=c(2,2))
plot(first)
second<-lm(LE~TFR+MORT+TFR*MORT+I(TFR^2)+I(MORT^2), data = female)
summary(second)
plot(second)

third<-update(second,~.-TFR:MORT)
summary(third)

fourth<-update(third,~.-I(TFR^2))
summary(fourth)
plot(fourth)

#test for homoscedacity: no homo because scale_location doesn't fan out


#autocorrelation check
install.packages("carData")
library(car)
durbinWatsonTest(fourth)

#Multicollinearity check
cor(female$TFR, female$MORT, use = "complete.obs")

#influential data point check
Maxcook<-cooks.distance(fourth)
cooks.distance(fourth)
print(max(Maxcook))

predict(fourth)
