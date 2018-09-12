# load key libraries
library(ggplot2)
library(forecast)

# Estimate quadratic trend model to data
# More comonig on this technology
library(forecast)
logan.data <- read.csv("LoganPassengers.csv")
logan.data <- logan.data[logan.data$total<5000000,]
logan.ts <- ts(logan.data$total,start=c(2002,10), freq=12)

# ggplot2 seasonal plotting
p <- gglagplot(logan.ts)
print(p)
