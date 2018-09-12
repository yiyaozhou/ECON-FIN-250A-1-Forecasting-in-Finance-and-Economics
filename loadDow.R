# load dow data
# this Program loads the dow series from 1897 on.
# Notes:  
#         Volume are in 100's of shares (yahoo reports raw shares) 
#         divide by 10 to get thousands
# Series break at 7/30/1914 for market shutdown (GFD fills)
library(zoo)
dow.data <- read.csv("DowDaily.csv")
n = nrow(dow.data)

# Interpret dates
dates <- as.Date(dow.data$Date,format="%m/%d/%Y")

# generate price and volume zoo time series
dowts <- zoo(dow.data$Close,dates)
dowVolts <- zoo(dow.data$Volume,dates)

# generate return time series
retts <- diff(log(dowts))