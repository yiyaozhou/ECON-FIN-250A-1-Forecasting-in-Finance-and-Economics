# Estimate quadratic trend model to data
# More comonig on this technology
library(forecast)
logan.data <- read.csv("LoganPassengers.csv")
logan.data <- logan.data[logan.data$total<5000000,]
logan.ts <- ts(logan.data$total,start=c(2002,10), freq=12)
# fit linear trend
atrlogan.lm <- tslm(logan.ts ~ trend )
# fit linear trend and quadratic trend
# logan.lm <- tslm(logan.ts ~ trend + I(trend^2) )
# logan.lm <- tslm(logan.ts ~ trend + I(trend^2) + I(trend^3) )
# set up multiple plots
par(mfrow=c(1,1))
plot(logan.ts,xlab="Time",ylab="Ridership",bty="l")
lines(logan.lm$fitted,lwd = 2)
grid()
# Extra stuff for zoom plot too
# ridership.ts.zoom <- window(ridership.ts,start=c(1997,1),end=c(2000,12))
# plot(ridership.ts.zoom,xlab="Time",ylab="Ridership",ylim=c(1300,2300),bty="l")