eda_project1 <- function(){
  
  # loading data
  data <- read.table("household_power_consumption.txt", sep=";", header = TRUE)
  indexes <- (data$Date == "1/2/2007") | (data$Date == "2/2/2007")
  # select rows from date 1/2/2007 to date 2/2/2007
  selection <- data[indexes,]
  
  # plot 4
  # save plot to png graphics device
  png("plot4.png", bg = "transparent")
  voltage <- as.numeric(as.character(selection$Voltage))
  GRP <- as.numeric(as.character(selection$Global_reactive_power))
  
  # plot graphics as 2*2 grid
  par(mfrow = c(2,2))
  plot(datetime, GAP, type = "l", ylab = "Global Active Power", xlab = "")
  
  plot(datetime, voltage, type = "l", ylab = "Voltage", xlab = "datetime")
  
  plot(datetime, sbm1, type = "l", ylab = "Energy sub metering", xlab = "")
  lines(datetime, sbm2, col = "red")
  lines(datetime, sbm3, col = "blue")
  legend('topright', legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1)
  
  plot(datetime, GRP, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
  dev.off()
  
}