library(forecast)
library(ggplot2)
# Passengers (All Carriers - Boston, MA: Logan International (Origin Airport))  
# (www.bts.dot.gov)
logan.data <- read.csv("LoganPassengers.csv")
# data comes as monthly entries with annual totals (see website)
# need to remove annual values (these are just much bigger than monthly)
# set 
logan.data <- logan.data[logan.data$total<5000000,]
logan.ts <- ts(logan.data$total,start=c(2002,10), freq=12)
plot(logan.ts,xlab="Year",ylab="Passengers",bty="l")
grid()
# if you want to try ggplot2
# my favorite basic would be
# p <- autoplot(logan.ts)
# p <- autoplot(logan.ts)+theme_light(base_size=16)
# print(p)