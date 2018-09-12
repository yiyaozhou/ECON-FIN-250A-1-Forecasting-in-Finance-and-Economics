# Load unemployment
# US monthly unemployment series
# Deasonalized monthly
# Source: FRED
unemploy.data <- read.csv("UNRATE.csv")
unemploy.ts <- ts(unemploy.data$UNRATE,start=c(1948,1),freq=12)
plot(unemploy.ts)
grid()