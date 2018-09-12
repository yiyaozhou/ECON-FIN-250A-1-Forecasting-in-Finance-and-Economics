# Display subwindow of data set
library(forecast)
# Load airport passenger data
logan.data <- read.csv("LoganPassengers.csv")
logan.data <- logan.data[logan.data$total<5000000,]
logan.ts <- ts(logan.data$total,start=c(2002,10), freq=12)
# create subwindow (3 years)
logan.ts.zoom <- window(logan.ts,start=c(2002,10),end=c(2005,12))
# plot it
plot(logan.ts.zoom,xlab="Year",ylab="Passengers",bty="l")
grid()