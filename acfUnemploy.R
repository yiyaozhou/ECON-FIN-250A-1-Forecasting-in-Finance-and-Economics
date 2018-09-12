# Load unemployment
# US monthly unemployment series
# Deasonalized monthly
# Source: FRED
library(ggplot2)

unemploy.data <- read.csv("UNRATE.csv")
unemploy.ts <- ts(unemploy.data$UNRATE,start=c(1948,1),freq=12)

# Compute and plot autocorrelations
p <- ggAcf(unemploy.ts)
print(p)


# Now, some fake data

# y = rnorm(10000)
# p <- ggAcf(y)
# print(p)
