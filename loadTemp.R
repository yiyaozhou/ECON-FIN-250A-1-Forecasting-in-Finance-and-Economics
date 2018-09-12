# load global surface temps
# Global land/sea temperature anomaly
# Deviation from 1951-1980
# temp is annual mean
# lowess5 is smoothed
# Source: https://data.giss.nasa.gov/gistemp/graphs/
temp.data <- read.csv("globalTemps.csv")
temp.ts <- ts(temp.data$temp,start=1880,freq=1)
temp.smooth <- ts(temp.data$Lowess5,start=1880,freq=1)


