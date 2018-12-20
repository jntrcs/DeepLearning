library(CASdatasets)
data(freMTPLfreq)


realSample<-freMTPLfreq[sample(1:nrow(freMTPLfreq), 10000),]
fakeSample=read.csv("generated2.csv")
head(fakeSample)

head(realSample)
require(stringr)
fakeSample$Claims=as.numeric(str_sub(fakeSample$Claims,-1,-1))
table(fakeSample$Claims)/nrow(fakeSample)
table(realSample$ClaimNb)/nrow(realSample)

table(realSample$Brand)/nrow(realSample)
table(fakeSample$Brand)/nrow(fakeSample)

table(realSample$Gas)/nrow(realSample)
table(fakeSample$Gas)/nrow(fakeSample)

table(realSample$Power)/nrow(realSample)
table(fakeSample$Power)/nrow(fakeSample)

table(realSample$Region)/nrow(realSample)
table(fakeSample$Region)/nrow(fakeSample)

hist(realSample$Exposure)
hist(fakeSample$Exposure)

hist(realSample$CarAge, breaks=100)
hist(fakeSample$Car.Age, breaks=100)
mean(realSample$CarAge)
mean(fakeSample$Car.Age)

hist(realSample$DriverAge, breaks=100)
hist(fakeSample$Driver.Age, breaks=100)

hist(realSample$Density, breaks=100)
hist(fakeSample$Density, breaks=100)

cor(realSample$Exposure, realSample$ClaimNb)
cor(fakeSample$Exposure, fakeSample$Claims)

cor(realSample$DriverAge, realSample$CarAge)
cor(fakeSample$Driver.Age, fakeSample$Car.Age)
plot(realSample$DriverAge~realSample$CarAge,xlim=c(0,30))

cor(realSample$Density, realSample$CarAge)
cor(fakeSample$Density, fakeSample$Car.Age)

cor(realSample$Density, realSample$Exposure)
cor(fakeSample$Density, fakeSample$Exposure)
plot(fakeSample$Density~fakeSample$Exposure)
plot(realSample$Density~realSample$Exposure)

table(realSample$Brand, realSample$Gas)
table(fakeSample$Brand, fakeSample$Gas)

rand<-sample(0:1, 1)
if(rand)d=fakeSample else d=realSample
d[sample(1:1000, 1), ]
