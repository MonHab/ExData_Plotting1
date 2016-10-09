## Generating Plot 2
setwd(choose.dir())
datafile <- file("household_power_consumption.txt")
HPC <- read.table(text = grep("^[1,2]/2/2007", readLines(datafile), value = TRUE),col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
HPC$Date <- as.Date(HPC$Date, format = "%d/%m/%Y")
HPCweektime <- paste(as.Date(HPC$Date), HPC$Time)
HPC$Datetime <- as.POSIXct(HPCweektime)
png(file="plot2.png",width = 480, height = 480, units = "px")
plot(HPC$Global_active_power ~ HPC$Datetime, type = "l",ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
 