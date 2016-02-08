#setting WD
setwd("/home/simon/R/DS4-wk1")
# Preparing dataset pwr
pwr <- read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
names(pwr)
#feb_pwr1 <- pwr[pwr$Date %in% c(as.Date('2007-02-01'),as.Date('2007-02-02')), ]
#head(feb_pwr)

#names(pwr)
# Preparing subset of data for Feb 1 & 2, 2007
feb_pwr <- pwr[pwr$Date %in% c("1/2/2007","2/2/2007") ,]
head(feb_pwr1)
# Drawing Histogram
hist(as.numeric(feb_pwr$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power(kilowatts)")

# Saving in graphic file png
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
