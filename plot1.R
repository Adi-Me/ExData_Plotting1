data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrow = 2880, col.names = colnames(read.table("household_power_consumption.txt", sep = ";", nrow = 1, header = TRUE)))
plotData <- data[, "Global_active_power"]
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(plotData, col = "RED", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()