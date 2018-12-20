#install.packages("CASdatasets", repos = "http://cas.uqam.ca/pub/R/")
library(CASdatasets)
data(freMTPLfreq)
data(freMTPL2freq)
data(freMTPLsev)
data(freMTPL2sev)

head(freMTPLsev)
hist(freMTPLsev$ClaimAmount, xlim=c(0,20000), breaks = 5000)
hist(table(freMTPLsev$PolicyID))
head(freMTPLfreq)

names(freMTPLsev)
names(freMTPL2freq)
names(freMTPLfreq)

write.csv(freMTPLsev, "ClaimAmounts1.csv")
write.csv(freMTPL2sev, "ClaimAmounts2.csv")
write.csv(freMTPLfreq, "PolicyDetails1.csv")
write.csv(freMTPL2freq, "PolicyDetails2.csv")


hist(freMTPL2freq$Density)

data=read.csv("PolicyDetails1.csv")
plot(data$ClaimNb)
