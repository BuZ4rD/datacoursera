


fileUrl <- "./data/getdata_wksst8110.for"

SST <- read.fwf(fileUrl, skip=4, widths=c(12, 7, 4, 9, 4, 9, 4, 9, 4))
head(SST)

sum(SST[,4])
