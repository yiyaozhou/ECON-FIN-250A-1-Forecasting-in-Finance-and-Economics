# Set up simple dataframe
x <- 1:10
y <- seq(1.,5.5,0.5)
cityList <- c("Boston","Providence","Brookline","Newton","Weston","Cambridge","Concord","Springfield","Lincoln",
          "Hudson")

cityDF <- data.frame(City = cityList,snow = x, rain = y)