data <- read.table("data//household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses=c("character", "character", "numeric"))
TwoDaydata<-data[data$Date == "1/2/2007" | data$Date ==  "2/2/2007",]
TwoDaydata$DateTime <- strptime(paste(TwoDaydata$Date, TwoDaydata$Time), "%d/%m/%Y %H:%M:%S")
TwoDaydata$Date <- strptime(TwoDaydata$Date, "%d/%m/%Y")
png(filename="plot2.png",width=480,height=480,units="px")
plot(TwoDaydata$DateTime, TwoDaydata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
