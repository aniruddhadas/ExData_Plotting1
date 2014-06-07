data <- read.table("data//household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses=c("character", "character", "numeric"))
head(data)
TwoDaydata<-data[data$Date == "1/2/2007" | data$Date ==  "2/2/2007",]
png(filename="plot1.png",width=480,height=480,units="px")
hist(TwoDaydata$Global_active_power,main="Global Active Power", xlab="Global Active Power (Killowats)",col="red")
dev.off()
