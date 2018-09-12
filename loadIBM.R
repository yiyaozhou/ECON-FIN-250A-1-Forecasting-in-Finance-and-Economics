# load up and build vwret 
ibmmkt <- read.csv("ibmcrsp.csv")
# Hint :  look at what is in ibmmkt with head(ibmmkt)
# ibmmkt is an R dataframe
ibmts <- ts(ibmmkt$RET,start=c(1927,1),freq=12)
vwts <-  ts(ibmmkt$vwretd,start=c(1927,1),freq=12)
tbts   <-  ts(ibmmkt$t90ret,start=c(1927,1),freq=12)

# replace missing returns with 0 (hopefully not too many)
ibmts[ is.na(ibmts) ] <- 0 

#calculate excess returns
ibmex <- ibmts - tbts
vwex  <- vwts - tbts

# estimate IBM beta
# lm is basic linear model in R
# Note model notation
# to get info type summary(capm.mod)
capm.mod <- lm(ibmex ~ vwex)