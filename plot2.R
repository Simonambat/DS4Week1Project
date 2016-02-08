#setting WD
setwd("/home/simon/R/DS4-wk1")
# Preparing dataset pwr
pwr <- read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Preparing subset of data for Feb 1 & 2, 2007
feb_pwr <- pwr[pwr$Date %in% c("1/2/2007","2/2/2007") ,]

# Converting to numeric
Global_active_power <- as.numeric(feb_pwr$Global_active_power)
# picking Dat & Time
dt_tm <- strptime(paste(feb_pwr$Date, feb_pwr$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
# Plotting
plot(dt_tm,Global_active_power, type="l",  xlab="",ylab="Global Active Power(kilowatts)")

# Saving in graphic file png
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
