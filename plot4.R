data <- read.table("data//household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses=c("character", "character", "numeric"))
TwoDaydata<-data[data$Date == "1/2/2007" | data$Date ==  "2/2/2007",]
TwoDaydata$DateTime <- strptime(paste(TwoDaydata$Date, TwoDaydata$Time), "%d/%m/%Y %H:%M:%S")

png(filename="plot4.png",width=480,height=480,units="px")
par(mfrow = c(2, 2))
plot(TwoDaydata$DateTime, TwoDaydata$Global_active_power, type="l", xlab="", ylab="Global Active Power")

plot(TwoDaydata$DateTime, TwoDaydata$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(TwoDaydata$DateTime, TwoDaydata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(TwoDaydata$DateTime, TwoDaydata$Sub_metering_2, type="l", col="red")
lines(TwoDaydata$DateTime, TwoDaydata$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

plot(TwoDaydata$DateTime, TwoDaydata$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
