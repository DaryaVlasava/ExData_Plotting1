eda_project1 <- function(){
  
  # loading data
  data <- read.table("household_power_consumption.txt", sep=";", header = TRUE)
  indexes <- (data$Date == "1/2/2007") | (data$Date == "2/2/2007")
  # select rows from date 1/2/2007 to date 2/2/2007
  selection <- data[indexes,]
  
  # plot 3
  # save plot to png graphics device
  png("plot3.png", bg = "transparent")
  # convert Sub_metering variables to numeric type
  sbm1 <- as.numeric(as.character(selection$Sub_metering_1))
  sbm2 <- as.numeric(as.character(selection$Sub_metering_2))
  sbm3 <- as.numeric(as.character(selection$Sub_metering_3))
  
  plot(datetime, sbm1, type = "l", ylab = "Energy sub metering", xlab = "")
  # add other Sub_metering data to the plot
  lines(datetime, sbm2, col = "red")
  lines(datetime, sbm3, col = "blue")
  # set a legend
  legend('topright', legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1)
  dev.off()
  
}