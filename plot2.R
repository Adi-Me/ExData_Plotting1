data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrow = 2880, col.names = colnames(read.table("household_power_consumption.txt", sep = ";", nrow = 1, header = TRUE)))
data$date_time <- paste(data$Date, data$Time)
data$date_time <- strptime(data$date_time, "%d/%m/%Y %H:%M:%S")
plotData <- data[, c("date_time", "Global_active_power")]
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(plotData, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()