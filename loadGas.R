# US product supplied of finished motor gasoline
# Source U.S. Energy Information Administration
library(forecast)
gas.data <- read.csv("gasoline.csv")
gas.ts <- ts(gas.data$gasoline,start=c(1945,1),freq=12)
plot(gas.ts)
grid()
