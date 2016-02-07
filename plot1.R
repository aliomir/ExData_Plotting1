a<-read.table("household_power_consumption.txt", sep = ";",header = TRUE)
library(dplyr)
b<-filter(a, Date=="1/2/2007" | Date=="2/2/2007")
glo<-as.numeric(paste(b[,3]))
png("plot1.png", width=480, height=480)
hist(glo, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()

