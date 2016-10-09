
## Generating Plot 3

setwd(choose.dir())
datafile <- file("household_power_consumption.txt")
HPC <- read.table(text = grep("^[1,2]/2/2007", readLines(datafile), value = TRUE),col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
png(file="plot3.png",width = 480, height = 480, units = "px")
with(HPC, {plot(Sub_metering_1 ~ Datetime, type = "l",ylab = "Global Active Power (kilowatts)", xlab = "")
        lines(Sub_metering_2 ~ Datetime, col = 'Red')
        lines(Sub_metering_3 ~ Datetime, col = 'Blue')
     })
     legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
            legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
     