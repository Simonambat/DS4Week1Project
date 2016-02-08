#setting WD
#setwd("/home/simon/R/DS4-wk1")
# Preparing dataset pwr
pwr <- read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Preparing subset of data for Feb 1 & 2, 2007
feb_pwr <- pwr[pwr$Date %in% c("1/2/2007","2/2/2007") ,]
# head(feb_pwr)
# Converting to numeric
# Global_active_power <- as.numeric(feb_pwr$Global_active_power)
# picking Dat & Time
dt_tm <- strptime(paste(feb_pwr$Date, feb_pwr$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
submeter1 <- as.numeric(feb_pwr$Sub_metering_1)
submeter2 <- as.numeric(feb_pwr$Sub_metering_2)
submeter3 <- as.numeric(feb_pwr$Sub_metering_3)
# Submetering to numeric
# Plotting
plot(dt_tm,submeter1, type="l",  xlab="",ylab="Energy sub metering")
lines(dt_tm,submeter2, type="l",col="red")
lines(dt_tm,submeter3, type="l",col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, col=c("black", "red", "blue"))

# Saving in graphic file png
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
