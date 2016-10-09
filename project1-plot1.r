# Generating Plot 1
setwd(choose.dir())
datafile <- file("household_power_consumption.txt")
HPC <- read.table(text = grep("^[1,2]/2/2007", readLines(datafile), value = TRUE),col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
png(file="plot1.png",width = 480, height = 480, units = "px")
hist(HPC$Global_active_power, col = "red", main = ("Global Active Power"), xlab = "Global Active Power (kilowatts)")
dev.off()
